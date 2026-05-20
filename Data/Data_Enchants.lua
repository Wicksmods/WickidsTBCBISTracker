-- Wick's TBC BIS Tracker
-- Data_Enchants.lua - Recommended enchants per slot per spec for TBC Classic 2.5.5
-- Format: WTBT_Enchants[class][spec] = { { slot, name, stat, note, mats } }
--   slot  : matches WTBT.SLOTS key (Head, Shoulder, Back, Chest, Wrist, Hands, Legs, Feet, MainHand, OffHand, Relic)
--   name  : enchant / inscription / kit name
--   stat  : short benefit string shown on the row
--   note  : optional caveat (rep requirement, class-only, etc.)
--   mats  : optional array of { name, count } for required materials
-- Neck, Waist, Ring*, Trinket* have no enchants in TBC — omitted intentionally.
-- Shoulder inscriptions (Aldor/Scryer) and head glyphs (rep) have no mats — purchased.
-- Leg kits (Nethercleft/Nethercobra/Cobrahide/Runic Spellthread) are LW/Tailoring crafts.

WTBT_Enchants = WTBT_Enchants or {}

-- ============================================================
-- SHARED ENCHANT SETS (reused across specs)
-- ============================================================

local TANK_WARRIOR_ENCHANTS = {
    { slot = "Head",     name = "Glyph of the Defender",             stat = "+16 Defense, +17 Dodge",           note = "Cenarion Expedition — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Warding",    stat = "+15 Dodge, +10 Defense",           note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Knight", stat = "+15 Dodge, +10 Defense",           note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Steelweave",        stat = "+12 Defense Rating",
      mats = { {name="Greater Planar Essence", count=8}, {name="Primal Earth", count=8} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Health", stat = "+150 Health",
      mats = { {name="Arcane Dust", count=10}, {name="Major Healing Potion", count=6} } },
    { slot = "Wrist",    name = "Enchant Bracer — Major Defense",    stat = "+12 Defense Rating",
      mats = { {name="Small Prismatic Shard", count=2}, {name="Arcane Dust", count=10} } },
    { slot = "Hands",    name = "Enchant Gloves — Threat",           stat = "+2% Threat",
      mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Life", count=8} } },
    { slot = "Legs",     name = "Cobrahide Leg Armor",               stat = "+40 Resilience, +12 Agility",      note = "Leatherworking kit",
      mats = { {name="Cobra Scales", count=4}, {name="Primal Earth", count=4} } },
    { slot = "Feet",     name = "Enchant Boots — Fortitude",         stat = "+12 Stamina",
      mats = { {name="Arcane Dust", count=12} } },
    { slot = "MainHand", name = "Enchant 2H Weapon — Major Agility", stat = "+35 Agility",
      mats = { {name="Large Prismatic Shard", count=8}, {name="Greater Planar Essence", count=6}, {name="Arcane Dust", count=20} } },
    { slot = "OffHand",  name = "Enchant Shield — Tough Shield",     stat = "+18 Block Value",
      mats = { {name="Arcane Dust", count=6}, {name="Primal Earth", count=10} } },
}

local MELEE_DPS_WARRIOR_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Blade",  stat = "+26 Attack Power, +14 Crit",       note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
      mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
    { slot = "Wrist",    name = "Enchant Bracer — Brawn",            stat = "+12 Strength",
      mats = { {name="Arcane Dust", count=6} } },
    { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
      mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
    { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit",
      mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
    { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
      mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
    { slot = "OffHand",  name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
      mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
}

local CASTER_DPS_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Power",                    stat = "+22 Spell Power, +14 Hit",         note = "Violet Eye — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Discipline", stat = "+18 Spell Power, +10 Crit",        note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Orb",   stat = "+12 Spell Power, +15 Crit",        note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Subtlety",          stat = "-2% Threat",
      mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Shadow", count=8} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
      mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
    { slot = "Wrist",    name = "Enchant Bracer — Spellpower",       stat = "+15 Spell Power",
      mats = { {name="Large Prismatic Shard", count=6}, {name="Primal Fire", count=6}, {name="Primal Water", count=6} } },
    { slot = "Hands",    name = "Enchant Gloves — Major Spellpower", stat = "+20 Spell Power",
      mats = { {name="Greater Planar Essence", count=6}, {name="Large Prismatic Shard", count=6}, {name="Primal Mana", count=6} } },
    { slot = "Legs",     name = "Runic Spellthread",                 stat = "+35 Spell Power, +20 Stamina",     note = "Tailoring kit",
      mats = { {name="Primal Nether", count=1}, {name="Primal Life", count=4}, {name="Netherweb Spider Silk", count=4} } },
    { slot = "Feet",     name = "Enchant Boots — Boar's Speed",      stat = "+9 Stamina, Minor Speed",
      mats = { {name="Large Prismatic Shard", count=8}, {name="Primal Earth", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Spellsurge",       stat = "Chance to restore 300 mana on cast",
      mats = { {name="Large Prismatic Shard", count=12}, {name="Greater Planar Essence", count=10}, {name="Arcane Dust", count=20} } },
}

local HEALER_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Renewal",                  stat = "+22 Healing, +7 MP5",              note = "Violet Eye — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Faith",      stat = "+33 Healing, +7 MP5",              note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Oracle", stat = "+22 Healing, +6 MP5",              note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Subtlety",          stat = "-2% Threat",
      mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Shadow", count=8} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
      mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
    { slot = "Wrist",    name = "Enchant Bracer — Restore Mana Prime", stat = "+6 MP5",
      mats = { {name="Greater Planar Essence", count=8} } },
    { slot = "Hands",    name = "Enchant Gloves — Major Healing",    stat = "+35 Healing Power",
      mats = { {name="Large Prismatic Shard", count=6}, {name="Greater Planar Essence", count=6}, {name="Primal Life", count=6} } },
    { slot = "Legs",     name = "Runic Spellthread",                 stat = "+35 Spell Power, +20 Stamina",     note = "Tailoring kit",
      mats = { {name="Primal Nether", count=1}, {name="Primal Life", count=4}, {name="Netherweb Spider Silk", count=4} } },
    { slot = "Feet",     name = "Enchant Boots — Boar's Speed",      stat = "+9 Stamina, Minor Speed",
      mats = { {name="Large Prismatic Shard", count=8}, {name="Primal Earth", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Spellsurge",       stat = "Chance to restore 300 mana on cast",
      mats = { {name="Large Prismatic Shard", count=12}, {name="Greater Planar Essence", count=10}, {name="Arcane Dust", count=20} } },
}

local HUNTER_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Blade",  stat = "+26 Attack Power, +14 Crit",       note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
      mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
    { slot = "Wrist",    name = "Enchant Bracer — Assault",          stat = "+24 Attack Power",
      mats = { {name="Arcane Dust", count=6} } },
    { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
      mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
    { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit",
      mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
    { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
      mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
    { slot = "Relic",    name = "Stabilized Eternium Scope",         stat = "+28 Ranged Attack Power",          note = "Engineering",
      mats = { {name="Stabilized Eternium Scope", count=1} } },
}

local ROGUE_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted" },
    { slot = "Shoulder", name = "Greater Inscription of the Blade",  stat = "+26 Attack Power, +14 Crit",       note = "Scryer — Exalted (alt)" },
    { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
      mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
    { slot = "Wrist",    name = "Enchant Bracer — Assault",          stat = "+24 Attack Power",
      mats = { {name="Arcane Dust", count=6} } },
    { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
      mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
    { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit",
      mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
    { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
      mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
      mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
    { slot = "OffHand",  name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
      mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
}

-- ============================================================
-- WARRIOR
-- ============================================================

local RESIST_TANK_ENCHANTS = {
    { slot = "Head",     name = "Glyph of the Defender",             stat = "+16 Defense, +17 Dodge",           note = "Cenarion Expedition — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Warding",    stat = "+15 Dodge, +10 Defense",           note = "Aldor — Exalted" },
    { slot = "Back",     name = "Enchant Cloak — Steelweave",        stat = "+12 Defense Rating",
      mats = { {name="Greater Planar Essence", count=8}, {name="Primal Earth", count=8} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Health", stat = "+150 Health",
      mats = { {name="Arcane Dust", count=10}, {name="Major Healing Potion", count=6} } },
    { slot = "Wrist",    name = "Enchant Bracer — Major Defense",    stat = "+12 Defense Rating",
      mats = { {name="Small Prismatic Shard", count=2}, {name="Arcane Dust", count=10} } },
    { slot = "Hands",    name = "Enchant Gloves — Threat",           stat = "+2% Threat",
      mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Life", count=8} } },
    { slot = "Legs",     name = "Cobrahide Leg Armor",               stat = "+40 Resilience, +12 Agility",      note = "Leatherworking kit",
      mats = { {name="Cobra Scales", count=4}, {name="Primal Earth", count=4} } },
    { slot = "Feet",     name = "Enchant Boots — Fortitude",         stat = "+12 Stamina",
      mats = { {name="Arcane Dust", count=12} } },
    { slot = "MainHand", name = "Enchant 2H Weapon — Major Agility", stat = "+35 Agility",
      mats = { {name="Large Prismatic Shard", count=8}, {name="Greater Planar Essence", count=6}, {name="Arcane Dust", count=20} } },
    { slot = "OffHand",  name = "Enchant Shield — Tough Shield",     stat = "+18 Block Value",
      mats = { {name="Arcane Dust", count=6}, {name="Primal Earth", count=10} } },
}

WTBT_Enchants["Warrior"] = {
    ["Arms"]          = MELEE_DPS_WARRIOR_ENCHANTS,
    ["Fury"]          = MELEE_DPS_WARRIOR_ENCHANTS,
    ["Protection"]    = TANK_WARRIOR_ENCHANTS,
    ["Fire Resist"]   = RESIST_TANK_ENCHANTS,
    ["Nature Resist"] = RESIST_TANK_ENCHANTS,
    ["Frost Resist"]  = RESIST_TANK_ENCHANTS,
}

-- ============================================================
-- PALADIN
-- ============================================================
WTBT_Enchants["Paladin"] = {
    ["Holy"]       = HEALER_ENCHANTS,
    ["Protection"] = {
        { slot = "Head",     name = "Glyph of the Defender",             stat = "+16 Defense, +17 Dodge",           note = "Cenarion Expedition — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Warding",    stat = "+15 Dodge, +10 Defense",           note = "Aldor — Exalted" },
        { slot = "Shoulder", name = "Greater Inscription of the Knight", stat = "+15 Dodge, +10 Defense",           note = "Scryer — Exalted (alt)" },
        { slot = "Back",     name = "Enchant Cloak — Steelweave",        stat = "+12 Defense Rating",
          mats = { {name="Greater Planar Essence", count=8}, {name="Primal Earth", count=8} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Health", stat = "+150 Health",
          mats = { {name="Arcane Dust", count=10}, {name="Major Healing Potion", count=6} } },
        { slot = "Wrist",    name = "Enchant Bracer — Major Defense",    stat = "+12 Defense Rating",
          mats = { {name="Small Prismatic Shard", count=2}, {name="Arcane Dust", count=10} } },
        { slot = "Hands",    name = "Enchant Gloves — Threat",           stat = "+2% Threat",
          mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Life", count=8} } },
        { slot = "Legs",     name = "Cobrahide Leg Armor",               stat = "+40 Resilience, +12 Agility",      note = "Leatherworking kit",
          mats = { {name="Cobra Scales", count=4}, {name="Primal Earth", count=4} } },
        { slot = "Feet",     name = "Enchant Boots — Fortitude",         stat = "+12 Stamina",
          mats = { {name="Arcane Dust", count=12} } },
        { slot = "MainHand", name = "Enchant 2H Weapon — Major Agility", stat = "+35 Agility",
          mats = { {name="Large Prismatic Shard", count=8}, {name="Greater Planar Essence", count=6}, {name="Arcane Dust", count=20} } },
        { slot = "OffHand",  name = "Enchant Shield — Tough Shield",     stat = "+18 Block Value",
          mats = { {name="Arcane Dust", count=6}, {name="Primal Earth", count=10} } },
    },
    ["Retribution"] = {
        { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted" },
        { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
          mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
        { slot = "Wrist",    name = "Enchant Bracer — Brawn",            stat = "+12 Strength",
          mats = { {name="Arcane Dust", count=6} } },
        { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
          mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
        { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit",
          mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
        { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
        { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
          mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
        { slot = "Relic",    name = "N/A",                               stat = "Librams have no enchant slot" },
    },
    ["Fire Resist"]   = RESIST_TANK_ENCHANTS,
    ["Nature Resist"] = RESIST_TANK_ENCHANTS,
}

-- ============================================================
-- PRIEST
-- ============================================================
WTBT_Enchants["Priest"] = {
    ["Holy"]       = HEALER_ENCHANTS,
    ["Discipline"] = HEALER_ENCHANTS,
    ["Shadow"]     = {
        { slot = "Head",     name = "Glyph of Shadow",                   stat = "+23 Spell Power, +14 Hit",         note = "Violet Eye — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Discipline", stat = "+18 Spell Power, +10 Crit",        note = "Aldor — Exalted" },
        { slot = "Shoulder", name = "Greater Inscription of the Orb",   stat = "+12 Spell Power, +15 Crit",        note = "Scryer — Exalted (alt)" },
        { slot = "Back",     name = "Enchant Cloak — Subtlety",          stat = "-2% Threat",
          mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Shadow", count=8} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
          mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
        { slot = "Wrist",    name = "Enchant Bracer — Spellpower",       stat = "+15 Spell Power",
          mats = { {name="Large Prismatic Shard", count=6}, {name="Primal Fire", count=6}, {name="Primal Water", count=6} } },
        { slot = "Hands",    name = "Enchant Gloves — Major Spellpower", stat = "+20 Spell Power",
          mats = { {name="Greater Planar Essence", count=6}, {name="Large Prismatic Shard", count=6}, {name="Primal Mana", count=6} } },
        { slot = "Legs",     name = "Runic Spellthread",                 stat = "+35 Spell Power, +20 Stamina",     note = "Tailoring kit",
          mats = { {name="Primal Nether", count=1}, {name="Primal Life", count=4}, {name="Netherweb Spider Silk", count=4} } },
        { slot = "Feet",     name = "Enchant Boots — Boar's Speed",      stat = "+9 Stamina, Minor Speed",
          mats = { {name="Large Prismatic Shard", count=8}, {name="Primal Earth", count=8} } },
        { slot = "MainHand", name = "Enchant Weapon — Spellsurge",       stat = "Chance to restore 300 mana on cast",
          mats = { {name="Large Prismatic Shard", count=12}, {name="Greater Planar Essence", count=10}, {name="Arcane Dust", count=20} } },
        { slot = "Relic",    name = "N/A",                               stat = "Wands have no enchant slot" },
    },
}

-- ============================================================
-- DRUID
-- ============================================================
WTBT_Enchants["Druid"] = {
    ["Restoration"] = HEALER_ENCHANTS,
    ["Balance"]     = CASTER_DPS_ENCHANTS,
    ["Feral"]       = {
        { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted (Cat DPS)" },
        { slot = "Shoulder", name = "Greater Inscription of Warding",    stat = "+15 Dodge, +10 Defense",           note = "Aldor — Exalted (Bear Tank)" },
        { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
          mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
        { slot = "Wrist",    name = "Enchant Bracer — Assault",          stat = "+24 Attack Power",
          mats = { {name="Arcane Dust", count=6} } },
        { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
          mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
        { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit (Cat)",
          mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
        { slot = "Legs",     name = "Cobrahide Leg Armor",               stat = "+40 Resilience, +12 Agility",      note = "Leatherworking kit (Bear)",
          mats = { {name="Cobra Scales", count=4}, {name="Primal Earth", count=4} } },
        { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
        { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
          mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
        { slot = "Relic",    name = "N/A",                               stat = "Idols have no enchant slot" },
    },
}

-- ============================================================
-- SHAMAN
-- ============================================================
WTBT_Enchants["Shaman"] = {
    ["Restoration"] = HEALER_ENCHANTS,
    ["Enhancement"] = {
        { slot = "Head",     name = "Glyph of Ferocity",                 stat = "+34 Attack Power, +16 Hit",        note = "Cenarion Expedition — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Vengeance",  stat = "+30 Attack Power, +10 Crit",       note = "Aldor — Exalted" },
        { slot = "Shoulder", name = "Greater Inscription of the Blade",  stat = "+26 Attack Power, +14 Crit",       note = "Scryer — Exalted (alt)" },
        { slot = "Back",     name = "Enchant Cloak — Greater Agility",   stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=1}, {name="Arcane Dust", count=4}, {name="Primal Air", count=1} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
          mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
        { slot = "Wrist",    name = "Enchant Bracer — Assault",          stat = "+24 Attack Power",
          mats = { {name="Arcane Dust", count=6} } },
        { slot = "Hands",    name = "Enchant Gloves — Superior Agility", stat = "+15 Agility",
          mats = { {name="Greater Planar Essence", count=3}, {name="Small Prismatic Shard", count=3}, {name="Primal Air", count=2} } },
        { slot = "Legs",     name = "Nethercobra Leg Armor",             stat = "+50 Attack Power, +12 Crit",       note = "Leatherworking kit",
          mats = { {name="Cobra Scales", count=4}, {name="Primal Nether", count=1} } },
        { slot = "Feet",     name = "Enchant Boots — Dexterity",         stat = "+12 Agility",
          mats = { {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=8} } },
        { slot = "MainHand", name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
          mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
        { slot = "OffHand",  name = "Enchant Weapon — Mongoose",         stat = "+120 Agility, +2% Haste proc",
          mats = { {name="Large Prismatic Shard", count=10}, {name="Greater Planar Essence", count=8}, {name="Arcane Dust", count=40}, {name="Void Crystal", count=6} } },
        { slot = "Relic",    name = "N/A",                               stat = "Totems have no enchant slot" },
    },
    ["Elemental"] = {
        { slot = "Head",     name = "Glyph of Power",                    stat = "+22 Spell Power, +14 Hit",         note = "Violet Eye — Honored" },
        { slot = "Shoulder", name = "Greater Inscription of Discipline", stat = "+18 Spell Power, +10 Crit",        note = "Aldor — Exalted" },
        { slot = "Shoulder", name = "Greater Inscription of the Orb",   stat = "+12 Spell Power, +15 Crit",        note = "Scryer — Exalted (alt)" },
        { slot = "Back",     name = "Enchant Cloak — Subtlety",          stat = "-2% Threat",
          mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Shadow", count=8} } },
        { slot = "Chest",    name = "Enchant Chest — Exceptional Stats", stat = "+6 All Stats",
          mats = { {name="Large Prismatic Shard", count=4}, {name="Greater Planar Essence", count=4}, {name="Arcane Dust", count=4} } },
        { slot = "Wrist",    name = "Enchant Bracer — Spellpower",       stat = "+15 Spell Power",
          mats = { {name="Large Prismatic Shard", count=6}, {name="Primal Fire", count=6}, {name="Primal Water", count=6} } },
        { slot = "Hands",    name = "Enchant Gloves — Major Spellpower", stat = "+20 Spell Power",
          mats = { {name="Greater Planar Essence", count=6}, {name="Large Prismatic Shard", count=6}, {name="Primal Mana", count=6} } },
        { slot = "Legs",     name = "Runic Spellthread",                 stat = "+35 Spell Power, +20 Stamina",     note = "Tailoring kit",
          mats = { {name="Primal Nether", count=1}, {name="Primal Life", count=4}, {name="Netherweb Spider Silk", count=4} } },
        { slot = "Feet",     name = "Enchant Boots — Boar's Speed",      stat = "+9 Stamina, Minor Speed",
          mats = { {name="Large Prismatic Shard", count=8}, {name="Primal Earth", count=8} } },
        { slot = "MainHand", name = "Enchant Weapon — Spellsurge",       stat = "Chance to restore 300 mana on cast",
          mats = { {name="Large Prismatic Shard", count=12}, {name="Greater Planar Essence", count=10}, {name="Arcane Dust", count=20} } },
        { slot = "Relic",    name = "N/A",                               stat = "Totems have no enchant slot" },
    },
}

-- ============================================================
-- MAGE
-- ============================================================
WTBT_Enchants["Mage"] = {
    ["Fire"]   = CASTER_DPS_ENCHANTS,
    ["Frost"]  = CASTER_DPS_ENCHANTS,
    ["Arcane"] = CASTER_DPS_ENCHANTS,
}

-- ============================================================
-- WARLOCK
-- ============================================================

local RESIST_CASTER_ENCHANTS = {
    { slot = "Head",     name = "Glyph of Power",                    stat = "+22 Spell Power, +14 Hit",         note = "Violet Eye — Honored" },
    { slot = "Shoulder", name = "Greater Inscription of Discipline", stat = "+18 Spell Power, +10 Crit",        note = "Aldor — Exalted" },
    { slot = "Back",     name = "Enchant Cloak — Subtlety",          stat = "-2% Threat",
      mats = { {name="Small Prismatic Shard", count=4}, {name="Greater Planar Essence", count=2}, {name="Primal Shadow", count=8} } },
    { slot = "Chest",    name = "Enchant Chest — Exceptional Health", stat = "+150 Health",
      mats = { {name="Arcane Dust", count=10}, {name="Major Healing Potion", count=6} } },
    { slot = "Wrist",    name = "Enchant Bracer — Major Defense",    stat = "+12 Defense Rating",
      mats = { {name="Small Prismatic Shard", count=2}, {name="Arcane Dust", count=10} } },
    { slot = "Hands",    name = "Enchant Gloves — Major Spellpower", stat = "+20 Spell Power",
      mats = { {name="Greater Planar Essence", count=6}, {name="Large Prismatic Shard", count=6}, {name="Primal Mana", count=6} } },
    { slot = "Legs",     name = "Runic Spellthread",                 stat = "+35 Spell Power, +20 Stamina",     note = "Tailoring kit",
      mats = { {name="Primal Nether", count=1}, {name="Primal Life", count=4}, {name="Netherweb Spider Silk", count=4} } },
    { slot = "Feet",     name = "Enchant Boots — Boar's Speed",      stat = "+9 Stamina, Minor Speed",
      mats = { {name="Large Prismatic Shard", count=8}, {name="Primal Earth", count=8} } },
    { slot = "MainHand", name = "Enchant Weapon — Spellsurge",       stat = "Chance to restore 300 mana on cast",
      mats = { {name="Large Prismatic Shard", count=12}, {name="Greater Planar Essence", count=10}, {name="Arcane Dust", count=20} } },
}

WTBT_Enchants["Warlock"] = {
    ["Destruction"]  = CASTER_DPS_ENCHANTS,
    ["Affliction"]   = CASTER_DPS_ENCHANTS,
    ["Demonology"]   = CASTER_DPS_ENCHANTS,
    ["Fire Resist"]  = RESIST_CASTER_ENCHANTS,
}

-- ============================================================
-- HUNTER
-- ============================================================
WTBT_Enchants["Hunter"] = {
    ["Beast Mastery"]  = HUNTER_ENCHANTS,
    ["Marksmanship"]   = HUNTER_ENCHANTS,
    ["Survival"]       = HUNTER_ENCHANTS,
}

-- ============================================================
-- ROGUE
-- ============================================================
WTBT_Enchants["Rogue"] = {
    ["Combat"]        = ROGUE_ENCHANTS,
    ["Assassination"] = ROGUE_ENCHANTS,
    ["Subtlety"]      = ROGUE_ENCHANTS,
}
