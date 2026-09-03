# Wick's TBC BIS Tracker

> Best-in-slot gear tracking for every class, every spec, every phase of TBC Classic.

Part of the **Wick suite**, a family of TBC Classic addons built around a single
dark-purple, fel-green aesthetic. Clean information density, no fantasy scroll
texture, no Blizzard dialog chrome.

Current for **Phase 3, Black Temple and Mount Hyjal**.

---

## What it does

- **Full BIS lists** for every class and spec, Karazhan through Sunwell Plateau.
  New installs open on Phase 3.
- **Ranked alternates in every slot**, two to three deep, so you always have a
  fallback when the drop goes to someone else.
- **Source at a glance.** Every row is badged with where the item comes from:
  raid boss, tier token, dungeon, reputation, crafted, badge vendor or arena.
- **Enchants and gems** on their own sub-tabs, with sockets shown per item.
- **Track acquisition** per slot. Mark items obtained, ignored, or still hunting.
- **Compare upgrades** against what you are currently wearing, which is highlighted
  in the list.
- **Resistance sets** for the fights that need them, including the Shadow Resist
  swap for Mother Shahraz across all nine classes.
- **Arena templates** for Season 2 and Season 3, one click from the Custom Lists tab,
  alongside pre-raid BIS and a Mage Tank set for Krosh.
- **Consumables** per class and spec: flasks, elixirs, food, weapon coatings, potions.
- **Mini Dash**, a companion panel showing only the items you can get from the
  dungeon, zone or quests you are in right now.
- **Soft-reserve integration.** Paste a SoftRes.it export and see the whole raid's
  reserves with icons and tooltips.
- **Tooltip tags everywhere.** Any item tooltip in the game picks up the rank, spec
  and phase it is best for, so you can judge a drop without opening the panel.
- **Phase-aware.** Flip between P1, P2, P3, P4 and P5 without losing your place.

## Why it feels different

- Flat dark panel, thin 1px purple border, fel-green L-bracket corners. No dialog-box frame.
- Quality-colored item borders (epic purple, rare blue, and so on) inside the Wick chrome.
- Hover to preview, click to mark acquired. Nothing hidden behind a context menu.
- Pure Lua. One embedded library (LibDeflate), used only to decompress SoftRes strings.

## Installation

1. Install via the CurseForge client, or drop the folder into `Interface\AddOns\`.
2. Type `/bis` (or `/wtbt`) in chat to open the panel.
3. Pick class, spec and phase. Start ticking items off.

Other commands: `/bis phase 1-5` to switch phase, `/bis dash` for the Mini Dash,
`/bis sr` for SoftRes, `/bis tips` to toggle tooltip tags, `/bis reset` to restore
the panel's position and size.

## Compatibility

- **TBC Classic (Burning Crusade Classic / Anniversary)**, Interface 20505.
- SavedVariables per character for custom lists; shared settings account-wide.
- Optional: with **Wick's Wardrobe** installed, preview the set you are viewing
  on your own character straight from the panel.

## Part of the Wick suite

<!-- Manual list. `wick sync` only maintains README.md and MoreFromWick.lua, -->
<!-- so update this by hand when an addon ships. Source: WickSuite/wick.json. -->
- **Wick's TBC BIS Tracker** (you are here)
- [**Wick's CD Tracker**](https://www.curseforge.com/wow/addons/wicks-cd-tracker): Live party and raid cooldown tracker
- [**Wick's Trade Hall**](https://www.curseforge.com/wow/addons/trade-hall): Trade chat as a categorized bulletin board
- [**Wick's Macro Builder**](https://www.curseforge.com/wow/addons/wicks-macro-builder): Clean macro editor with chips and class presets
- [**Wick's Combat Log**](https://www.curseforge.com/wow/addons/wicks-combat-log): Live COMBAT_LOG_EVENT viewer with filters
- [**Wick's Stats**](https://www.curseforge.com/wow/addons/wicks-stats): Detailed stats Blizzard hides
- [**Wick's Quest Key**](https://www.curseforge.com/wow/addons/wicks-quest-key): ExtraActionButton for quest items
- [**Wick's Totems and Things**](https://www.curseforge.com/wow/addons/wicks-totems-and-things): Enhancement shaman command bar
- [**Wick's Bags**](https://www.curseforge.com/wow/addons/wicks-bags): Categorized bags + bank with masonry layout
- [**Wick's Travel Form**](https://www.curseforge.com/wow/addons/wicks-travel-form): Smart shapeshift binding for druids
- [**Wick's Ledger**](https://www.curseforge.com/wow/addons/wicks-ledger): Session earnings tracker with AH-priced loot
- [**Wick's Wardrobe**](https://www.curseforge.com/wow/addons/wicks-wardrobe): Tier set and weapon preview browser
- [**Wick's Survivors**](https://www.curseforge.com/wow/addons/wicks-survivors): Vampire Survivors-style wave survival minigame

---

`#4FC778` · Wick · TBC Classic
