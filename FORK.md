# About this fork

> **Do not change the mod here.** Every change, fix or translation goes to the author's repository,
> [Paramonov86/AncientMegaPack-BG3](https://github.com/Paramonov86/AncientMegaPack-BG3), as a pull request. Read its
> [CONTRIBUTING.md](https://github.com/Paramonov86/AncientMegaPack-BG3/blob/main/CONTRIBUTING.md) first.
>
> This fork takes no pull requests and no issues, and nobody edits the mod here. It only republishes the author's
> mod.io packages as GitHub releases. When the author merges a change and releases it on mod.io, this fork picks it
> up by itself.

This repository is a fork of [AncientMegaPack-BG3](https://github.com/Paramonov86/AncientMegaPack-BG3), the source of
**Ancient Mega Pack** and **Ancient Mega Pack Plus** for Baldur's Gate 3 by **Paramonov**. All of the mod is
Paramonov's work. The official downloads are on mod.io:
[Ancient Mega Pack](https://mod.io/g/baldursgate3/m/ancient-mega-pack-rel) and
[Ancient Mega Pack Plus](https://mod.io/g/baldursgate3/m/ancient-mega-pack-plus).

## Why it exists

The author publishes the mods on mod.io and shares their source on GitHub, but makes no GitHub releases. With the
author's permission, this fork puts the author's mod.io packages into GitHub releases, so that the mod can be listed
on [openmods](https://openmods.nexus/mods/kintaromodding/bg3_ancientmegapackandplus), which links to these releases.

## What this fork changes

Nothing in the mod, now or later. The packages in the releases are the author's files from mod.io, unchanged: this
fork builds nothing, because the source holds no textures and effects. The source in this fork is only ever changed
by merging the author's own commits.

This fork adds these files, and only these:

- `.github/workflows/mirror-modio.yml` and `.github/scripts/mirror-modio.sh`: the job below.
- `openmods.json`, `openmods.md` and `docs/cover.jpg`: the listing on openmods. The cover is the author's picture from
  mod.io, used with the author's permission.
- `FORK.md`: this file.

## Branches and releases

- `main` follows the author's repository, plus the files above. The job merges the author's new commits every hour.
- Every hour the job also reads both mods on mod.io (the live file for Windows). When one of them has a new version,
  it downloads both, checks them against mod.io's MD5, and makes a release with the two `.pak` files and the
  author's changelogs.
- A release is tagged `v<Ancient Mega Pack version>-plus-<Ancient Mega Pack Plus version>`, for example
  `v22.74.1.2-plus-1.14.1.64`.
- The job needs the repository secret `MODIO_API_KEY`, a mod.io API key.

## Reports

Bugs in the mod go to the [author's issues](https://github.com/Paramonov86/AncientMegaPack-BG3/issues) or to the
[AMP Discord server](https://discord.gg/X8BQxYhvNW). Problems with the releases of this fork, for example a missing
file, go to the openmods Discord server (linked on [openmods](https://openmods.nexus)).

## License

MIT, the author's license, unchanged (see [LICENSE](LICENSE)).
