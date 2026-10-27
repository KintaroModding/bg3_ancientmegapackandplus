# Ancient Mega Pack + Plus

**Made by Paramonov.** This page lists Paramonov's two Baldur's Gate 3 mods together: **Ancient Mega Pack** (AMP)
and its patch **Ancient Mega Pack Plus**. The downloads are Paramonov's own packages from mod.io, unchanged, listed
here with Paramonov's permission.

> **Want to fix or add something? Go to Paramonov's repository.**
>
> Changes, fixes and translations go only to
> [Paramonov86/AncientMegaPack-BG3](https://github.com/Paramonov86/AncientMegaPack-BG3), as a pull request. Read its
> [CONTRIBUTING.md](https://github.com/Paramonov86/AncientMegaPack-BG3/blob/main/CONTRIBUTING.md) first.
>
> The repository behind this page only republishes the releases. It takes no changes, no issues and no pull
> requests. When Paramonov merges a change and releases it on mod.io, the new version shows up here by itself.

## What it does

Ancient Mega Pack is a free game mode for Baldur's Gate 3 with random loot. More than 2,500 handcrafted artifacts
replace the fixed items of the game, so every run builds a different character.

- **Random equipment loot.** Chests, merchants, bosses, quest rewards and world drops pull from AMP's pools instead
  of the game's fixed lists. The pools follow the Act, the place and the kind of boss: a necromancer drops
  necromantic gear. Most artifacts come in 4 rarities, from Uncommon to Legendary.
- **Boss and quest rewards.** More than 22 major bosses offer a themed reward menu: you pick one artifact, and the
  rest vanish. Quests work the same way, with 5 reward tiers.
- **Void Capsules and Planar Coins.** 22 kinds of capsules give targeted loot, by equipment slot or by theme. Boss
  kills give the coins that open them.
- **Runic Shards.** More than 300 enchantments for any weapon or armor: change the damage type, add Armour Class,
  lower the critical hit threshold, and more.
- **Ancient Orbs.** 60 orbs in 15 elements for the instrument slot, with passive bonuses and abilities.
- **Interplanar Chests.** Dozens per run, in random places in all Acts.
- **Training Ring.** Practice dummies and fights, all 2,500 items in 22 chests, the difficulty mode, hints, and
  optional auto-loot and auto-sell.
- **Three difficulty modes:** Casual, Normal and Hard. On top of them: the Pyre, which makes boss fights harder the
  faster you win them; the opt-in ULTRA mode with its mini-bosses; and the Avarice switch for richer rewards.

Ancient Mega Pack got its last base update in June 2026. **Ancient Mega Pack Plus** holds all the work since then:

- The fixes of 40 updates, most of them reported on the AMP Discord server.
- New ULTRA mini-bosses, and Vludber back as the Chaos King.
- Difficulty piece by piece: every challenge has its own switch on the Training Ring, with two new ones, Reckoning
  and Full Moon.
- From level 6, enemies also follow the gear your party wears, in tiers T1 to T6.
- 133 new Runic Shards, 48 new items (Hatul Expansion 2), and many items rebalanced.
- Quick Resolve finishes some long quests in one step, and the Loot Manager sorts loot into bags.
- At the end of the campaign, the game tells you whether you beat AMP on a legitimate run.

Every release here holds the changelogs of both mods.

## Screenshots

![Ancient Mega Pack](docs/cover.jpg)

More screenshots and a video are on the
[Ancient Mega Pack page on mod.io](https://mod.io/g/baldursgate3/m/ancient-mega-pack-rel).

## How to install

These steps are for PC. On PS5 and Xbox, subscribe to both mods in the in-game mod manager instead.

1. Download both `.pak` files from the latest release: `REL_Full_Ancient_….pak` is Ancient Mega Pack,
   `AMP_Plus_….pak` is Ancient Mega Pack Plus.
2. Copy both to `%LOCALAPPDATA%\Larian Studios\Baldur's Gate 3\Mods`, or import them with BG3 Mod Manager.
3. Enable both in your mod manager (BG3 Mod Manager or the in-game mod manager), in this order: your other mods,
   then **Ancient Mega Pack**, then **Ancient Mega Pack Plus**. Plus needs Ancient Mega Pack and does nothing on its
   own.
4. Start a new game. AMP replaces the whole loot system, so it cannot join a running game. Plus can join a run that
   already uses AMP.

No Script Extender is needed.

If you subscribed to the mods on mod.io in the game, you do not need these files. Do not install both: two copies of
the same mod conflict.

To update, replace both files with the ones from the newest release. Most changes apply to new areas. New scripted
features need a new game.

## How to use

- Find the **Training Ring** at the start of the game, near the dead illithid. On first use, a setup wizard walks you
  through the options.
- Choose the difficulty mode at the start of the campaign. You can switch it at any time on the Training Ring.
  Normal is the best start: it is balanced around solo or duo Honour Mode.
- Turn on **Bloom** in the graphics settings. Many AMP items have visual effects that need it.
- Items leave merchants after a rest on purpose, so buy before you rest. On Casual, merchants restock instead.

## Compatibility

- Game version: Patch 8.
- Merchants: at the start of a campaign, you choose between AMP's merchants and keeping the items of other mods at
  merchants.
- Other equipment mods: Paramonov's [ParaTool](https://github.com/Paramonov86/Para_Tool) puts their items into AMP's
  loot pools.
- DnD 5.5e: also install the AMP compatibility patch for it (see the mod.io page).
- FED: works with ParaTool. Load AMP below FED.
- Bug fix collections: load them above AMP.
- Cosmetic and dye mods: no conflict. All AMP items use the game's models, and all of them can be dyed.
- Trials of Tav: Reloaded: fully supported, AMP items drop there.

## Known issues

- Items show "not found": update to the newest release. If it stays, report the item and your game language.
- Report bugs in the mod to [Paramonov's issues](https://github.com/Paramonov86/AncientMegaPack-BG3/issues) or on the
  [AMP Discord server](https://discord.gg/X8BQxYhvNW), not to openmods.
- Problems with this page or its downloads, for example a missing file: tell openmods on its Discord server.

## How to build

Nothing to build here: the downloads are Paramonov's own packages from mod.io, unchanged. Paramonov's repository
holds the source (stats, Osiris goals, localization, scripts and every `.lsx`), but not the textures, effects and
compiled story, so it cannot build a complete package by itself.

The repository behind this page copies the packages. Every hour, its job checks both mods on mod.io. For a new
version, it makes a release with both `.pak` files, checked against mod.io's MD5. Details:
[FORK.md](https://github.com/KintaroModding/bg3_ancientmegapackandplus/blob/main/FORK.md).

## Credits

- **Ancient Mega Pack** and **Ancient Mega Pack Plus** by **Paramonov**, 2023 to 2026: all of the mod.
  [GitHub](https://github.com/Paramonov86/AncientMegaPack-BG3),
  [mod.io](https://mod.io/g/baldursgate3/m/ancient-mega-pack-rel),
  [Discord](https://discord.gg/X8BQxYhvNW).
- Balance and testing: Demps, Gumsoul, Hammerbro, Jerovich, Lakil, Moezilla, Never, Ryz, Renee, sidj, Sliebheinne,
  Solo Giallo, TacticalFox27, top5g04t, Triode, wh1te_ghost, Zanth, GGtsune, Zy, menuk, Zetsubow, KPW99, Gab, Flex,
  CloudCTRL, cjm, Hatul, Ultrapoor, Mafusail, Kang, Keeper, Fernanda, Talam, Vludber, Zheaniv, Hastred, Zlayer,
  Sir Copperbottom, Koy, Tapo4ek and RusMage. The changelogs thank everyone else who helped.
- To support Paramonov, see the [mod.io page](https://mod.io/g/baldursgate3/m/ancient-mega-pack-rel).
- This listing and its releases: KintaroModding, for openmods, with Paramonov's permission. It changes nothing in the
  mod.

License: MIT, Paramonov's license (see the
[LICENSE](https://github.com/Paramonov86/AncientMegaPack-BG3/blob/main/LICENSE)). Paramonov also writes: "All AMP
assets are community property. Use anything in your own mods — commercial or free, no permission needed."
