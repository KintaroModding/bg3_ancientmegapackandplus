# Contributing

## Where a fix goes

The main pack (`REL_Full_Ancient`) is a finished release and is not edited. Every change goes
into `AMP_Plus`, which loads after it:

- Stats: override a base entry with `new entry` + `using` of the same name, restating only the
  fields you change. Last definition wins.
- Osiris: add or override rules in `Mods/AMP_Plus_.../Story/RawFiles/Goals/`. Goal files use CRLF.
- Localization: `Mods/AMP_Plus_.../Localization/<Language>/`.

A pull request that edits the main pack directly will be moved into AMP_Plus before merging.

## Rules

- New loca line = new handle. Generate one, then check it is not used anywhere in the repo:
  `python -c "import uuid;print('h'+str(uuid.uuid4()).replace('-','g'))"`.
  Reusing a handle silently overwrites some other text.
- When you add or change loca, do it in every language file, even if only English is translated.
- Keep `[1]`, `[2]` placeholders in descriptions. They scale with DescriptionParams.
- Edit `.lsx` only. The game reads `.lsf`, which is built from the `.lsx` on release.
- Comments are short and say why, not what.

## Things that bite

- Retracting DB rows while iterating the same DB cuts the iteration short. Collect, then delete.
- A recursive drain that also has a rule re-adding the row it removes crashes the game.
- INITSECTION runs only on a story that has never been saved. Existing saves need a reseed
  from KBSECTION, and a reseed must clear old rows first or the table doubles.
  Tables reseeded this way carry a version fact: bump it when you change their rows.
- `EnteredCombat` and similar events fire again on save load.
- Statuses sharing a StackId replace each other. Some variants share one on purpose.
- In Boosts, `IF(...)` gates only the first boost after it.
- A `using` override that sets Boosts or PassivesOnEquip replaces the inherited list, it does
  not add to it. Copy the whole list.
- Rules that look like duplicates (same event, different mode or status) usually are not.
  Check the conditions before merging them.

## License

By sending a pull request you agree that your change is published under the MIT license of
this repository.
