# Wick's TBC BIS Tracker — Changelog

## 1.4.2 — 2026-04-25

### BIS source corrections — full-suite audit pass

Audited every `drop`-sourced item across all 12 spec data files against AtlasLoot Classic's TBC drop tables. Corrected ~120 entries (~310 lines) where the listed boss or dungeon was wrong. Item stats and recommendations are unchanged — only the "where it drops from" text is fixed.

**Highlights (highest-occurrence corrections):**

- **Beast Lord Helm** (28275) — was "The Black Stalker — The Underbog", now "Pathaleon — Mechanar".
- **Slippers of the Seacaller** (32239) — was Karathress / Reliquary / Badge Vendor, now "High Warlord Naj'entus — Black Temple".
- **Ring of Ancient Knowledge** (32527) — was Illidan Stormrage, now "Trash — Black Temple".
- **Insidious Bands** (32324) — was Bloodboil / Illidan / Akama, now "Teron Gorefiend — Black Temple".
- **Translucent Spellthread Necklace** (32349) — was Bloodboil / Akama, now "Reliquary of the Lost — Black Temple".
- **Wand of the Forgotten Star** (29982) — was Kael'thas, now "High Astromancer Solarian — Tempest Keep".
- **Beast Lord Mantle** (27801) — was "Warbringer O'mrogg — Shattered Halls", now "Warlord Kalithresh — The Steamvault".
- **Chronicle of Dark Secrets** (30872) — was Anetheron / Azgalor, now "Rage Winterchill — Hyjal Summit".
- **Tirisfal Wand of Ascendancy** (28673) — was Illhoof, now "Shade of Aran — Karazhan".

**Pattern noted in Warrior data:** several Black Temple drops were defaulted to Illidan Stormrage when they're actually earlier-tier bosses (Teron Gorefiend, Reliquary of the Lost, Naj'entus). Looks like copy-paste drift; corrected throughout.

**Broken entries (itemId ↔ name mismatch — both itemId and source corrected, name kept as author intent):**

- Iron Band of the Unbreakable (Paladin) — itemId 27822 → 27436, source "Lieutenant Drake — Old Hillsbrad".
- Shermanar Great-Ring (Paladin) — itemId 29172 → 28675, source "Shade of Aran — Karazhan".
- Wrathtide Longbow (Hunter) — itemId 27903 → 29351 (source already correct).
- Fiend Slayer Boots (Hunter) — itemId 28549 → 28746, source "Chess Event — Karazhan".
- Boots of Valiance (Warrior) — itemId 28747 → 28569, source "Moroes — Karazhan".
- Girdle of the Deathdealer (Warrior) — itemId 28799 → 29247, source "Aeonus — Heroic Black Morass".
- Bangle of Endless Blessings (Resto Druid P1) — itemId 28674 → 28370, source "Warp Splinter — The Botanica".

**Source-type fixes (Balance Druid P4):** three items previously marked `sourceType = "badge"` actually drop in Black Temple — corrected to `"drop"` with proper boss source: Slippers of the Seacaller, Ring of Captured Storms, Naturewarden's Treads.

**Two entries left untouched pending review:**

- itemId 28296 in Paladin file labeled "Libram of Divine Purpose" — TBC libram naming is ambiguous and we want a definitive call before changing it.
- itemId 28555 across Warlock + Mage files labeled "Ashton's Ring of Adornment" — actual itemId 28555 is "Seal of the Exorcist" (PvP); intended item couldn't be identified.

**Visual note:** column alignment of `sourceType` / `gems` / `enchant` may have drifted on some rows where the corrected source string is longer or shorter than the original. Lua doesn't care; a follow-up formatting pass can re-align if it's visually distracting in diffs.

## 1.4.1 — 2026-04-24

### Housekeeping

Release zip no longer contains a stray `.claude/` tooling config folder. That was a local Claude Code permission allowlist with no sensitive content, but it didn't belong in a public addon zip. No functional changes — v1.4.0 users can safely stay on this version if they prefer.

## 1.4.0 — 2026-04-23

### New: Gems tab

Added a fourth tab alongside BIS, Custom Lists, and Consumables. Class + spec dropdowns drive a per-spec gem recommendation list grouped by socket color: **Meta / Red / Yellow / Blue / Hybrid**.

- Data sourced from Wowhead TBC Classic class guides — rare Outland gems (Living Ruby / Dawnstone / Star of Elune / Noble Topaz / Nightseye / Talasite) as the mainstream recommendations that remain competitive through most of TBC's lifecycle.
- Socket bonuses matched only where the bonus is worth chasing — tanks, healers, Bear druids. Pure DPS casters slam Runed Living Ruby in every color and ignore the bonus.
- Pre-hit-cap warlock path uses Great Dawnstone (+8 Spell Hit) in yellow sockets; post-hit-cap swaps back to Runed.
- Special cases: Feral Cat has no meta socket (Wolfshead Helm); Prot Paladin threat is spell-based and uses Runed Living Ruby; Resto Shaman's yellow is Quick Dawnstone (+8 Spell Haste).
- In-game tooltip on hover is authoritative.

New data file: `Data\Data_Gems.lua`. All 9 classes and all specs covered.

## 1.3.1 — 2026-04-21

### Brand identity pass

Normalized theme color tokens to the locked Wick brand palette. Part of a coordinated brand-identity pass across all three Wick addons (BIS Tracker, CD Tracker, Trade Hall) so every addon in the suite uses identical hex-exact values.

**Visual impact:** imperceptible — shifts are <2 sRGB units per channel.

| Token          | Before                            | After                               |
|----------------|-----------------------------------|-------------------------------------|
| C_BG           | `0.05, 0.04, 0.08, 0.97`          | `0.051, 0.039, 0.078, 0.97`         |
| C_HEADER_BG    | `0.09, 0.07, 0.16, 1`             | `0.090, 0.067, 0.141, 1`            |
| C_BORDER       | `0.22, 0.18, 0.36, 1`             | `0.220, 0.188, 0.345, 1`            |
| C_GREEN        | `0.31, 0.78, 0.47, 1`             | `0.310, 0.780, 0.471, 1`            |
| C_TEXT_NORMAL  | `0.83, 0.78, 0.63, 1`             | `0.831, 0.784, 0.631, 1`            |

Also snapped every raw `SetColorTexture(0.22, 0.18, 0.36, …)`-style literal in the file to the new values so there's no drift between the constants and inline uses.

Brand spec lives at `memory/reference_wick_brand_style.md` in the project memory.
