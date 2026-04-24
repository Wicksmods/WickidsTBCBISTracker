# Wick's TBC BIS Tracker — Changelog

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
