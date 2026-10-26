# Ancient Mega Pack for Baldur's Gate 3

Source files of Ancient Mega Pack and its AMP Plus module, as they ship in the release.

Two mods live side by side:

- `REL_Full_Ancient_c6c0d2bd-...` is the main pack.
- `AMP_Plus_fcf1d25f-...` loads after it and overrides entries by name. Fixes and new content go here.

Each mod has a `Public/` part (stats, root templates, AI, assets data) and a `Mods/` part
(Osiris goals, localization, Anubis scripts, levels).

What is here: stats, Osiris goals, localization in all languages, behaviour scripts, and every
`.lsx`. Binary `.lsf` files were converted to `.lsx` so they can be read and diffed.
Textures, effects and compiled story are not included; get them from the release.

Found a bug and know the fix? Open a pull request. See [CONTRIBUTING.md](CONTRIBUTING.md).
