#!/usr/bin/env bash
# Puts the author's newest mod.io packages of Ancient Mega Pack and Ancient Mega Pack Plus into a
# GitHub release of this fork, unchanged. Nothing is built here: the repository holds the source
# without textures and effects, so only the author's own packages are complete.
#
# Needs MODIO_API_KEY (a mod.io API key) and GH_TOKEN (may write releases). Runs in the workflow
# mirror-modio.yml, or by hand with bash, curl, jq, unzip, md5sum and the GitHub CLI.
set -euo pipefail

REPO="${GITHUB_REPOSITORY:-KintaroModding/bg3_ancientmegapackandplus}"
API="https://g-6715.modapi.io/v1/games/6715/mods" # Baldur's Gate 3 on mod.io
BASE_ID=4474487 # Ancient Mega Pack
PLUS_ID=6163496 # Ancient Mega Pack Plus

# The mod with its live file for Windows (the console files can lag behind).
mod() { curl -fsS -G "$API/$1" --data-urlencode "api_key=$MODIO_API_KEY" -H "X-Modio-Platform: windows"; }

base=$(mod "$BASE_ID")
plus=$(mod "$PLUS_ID")
base_version=$(jq -r .modfile.version <<<"$base")
plus_version=$(jq -r .modfile.version <<<"$plus")
tag="v$base_version-plus-$plus_version"

if gh release view "$tag" --repo "$REPO" >/dev/null 2>&1; then
  echo "$tag is released already."
  exit 0
fi

work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

# Downloads the mod's zip, checks it against mod.io's MD5 and unpacks its one .pak into $work/$2.
fetch() {
  local json=$1 dir="$work/$2"
  curl -fsSL -o "$dir.zip" "$(jq -r .modfile.download.binary_url <<<"$json")"
  echo "$(jq -r .modfile.filehash.md5 <<<"$json")  $dir.zip" | md5sum -c --quiet -
  unzip -q -j "$dir.zip" '*.pak' -d "$dir"
  if [ "$(ls "$dir" | wc -l)" -ne 1 ]; then
    echo "$2: expected exactly one .pak in the mod.io zip" >&2
    exit 1
  fi
}
fetch "$base" base
fetch "$plus" plus

# One table row per mod: name with its mod.io page, version, upload date and package name.
row() {
  local uploaded
  uploaded=$(date -u -d "@$(jq -r .modfile.date_added <<<"$1")" +%Y-%m-%d)
  echo "| [$(jq -r .name <<<"$1")]($(jq -r .profile_url <<<"$1")) | $(jq -r .modfile.version <<<"$1") | $uploaded | \`$(ls "$work/$2")\` |"
}
# The author's changelog with its line breaks kept (Markdown joins single lines otherwise).
changelog() { jq -r '.modfile.changelog // ""' <<<"$1" | sed 's/\r$//; s/$/  /'; }

{
  echo "The author's own packages from mod.io, unchanged. Install both with BG3 Mod Manager:"
  echo "Ancient Mega Pack Plus needs Ancient Mega Pack and loads after it."
  echo
  echo "| Mod | Version | Uploaded to mod.io | Package |"
  echo "| --- | --- | --- | --- |"
  row "$base" base
  row "$plus" plus
  echo
  echo "## Ancient Mega Pack $base_version"
  echo
  changelog "$base"
  echo
  echo "## Ancient Mega Pack Plus $plus_version"
  echo
  changelog "$plus"
} >"$work/notes.md"

gh release create "$tag" --repo "$REPO" --target main \
  --title "Ancient Mega Pack $base_version + Plus $plus_version" \
  --notes-file "$work/notes.md" "$work"/base/*.pak "$work"/plus/*.pak
