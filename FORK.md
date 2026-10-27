# About this fork

This repository is a fork of [AncientMegaPack-BG3](https://github.com/Paramonov86/AncientMegaPack-BG3), the source of
**Ancient Mega Pack** and **Ancient Mega Pack Plus** for Baldur's Gate 3 by **Paramonov**. All of the mod is
Paramonov's work. The official downloads are on mod.io:
[Ancient Mega Pack](https://mod.io/g/baldursgate3/m/ancient-mega-pack-rel) and
[Ancient Mega Pack Plus](https://mod.io/g/baldursgate3/m/ancient-mega-pack-plus).

## Why it exists

The author publishes the mods on mod.io and shares their source on GitHub, but makes no GitHub releases. With the
author's permission, this fork puts the author's mod.io packages into GitHub releases, so that the mod can be listed
on [openmods](https://openmods.nexus), which links to these releases.

## What this fork changes

Nothing in the mod. The packages in the releases are the author's files from mod.io, unchanged: this fork builds
nothing, because the source holds no textures and effects. The source itself is only ever changed in the author's
repository.

This fork adds these files:

- `.github/workflows/mirror-modio.yml` and `.github/scripts/mirror-modio.sh`: the job below.
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

Problems with the mod itself belong to the [author's repository](https://github.com/Paramonov86/AncientMegaPack-BG3).
Problems with the releases of this fork belong to this fork.

## License

MIT, the author's license, unchanged (see [LICENSE](LICENSE)).
