-- ============================================================
-- Wick's TBC BIS Tracker — Endgame Gems Data
-- Best gems per class/spec for TBC Classic (2.5.5)
-- Sourced from Wowhead TBC Classic class guides.
-- ============================================================

WTBT_Gems = WTBT_Gems or {}

-- ------------------------------------------------------------
-- Gem category definitions (display order)
-- ------------------------------------------------------------
-- Each entry: { category, name, itemId, stat }
--   category: "Meta" | "Red" | "Yellow" | "Blue" | "Hybrid"

-- ============================================================
-- WARRIOR
-- ============================================================
local WARRIOR_DPS_GEMS = {
    { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage (needs 2R/2Y/2B)" },
    { category = "Red",    name = "Bold Living Ruby",              itemId = 24027, stat = "+8 Strength" },
    { category = "Yellow", name = "Inscribed Noble Topaz",         itemId = 24058, stat = "+4 Strength, +4 Crit Rating (orange)" },
    { category = "Yellow", name = "Smooth Dawnstone",              itemId = 24048, stat = "+8 Crit Rating (pre-raid)" },
    { category = "Blue",   name = "Sovereign Nightseye",           itemId = 24054, stat = "+4 Strength, +6 Stamina (purple)" },
    { category = "Hybrid", name = "Jagged Talasite",               itemId = 24067, stat = "+4 Crit Rating, +6 Stamina (green)" },
}
WTBT_Gems["Warrior"] = {
    ["Arms"] = WARRIOR_DPS_GEMS,
    ["Fury"] = WARRIOR_DPS_GEMS,
    ["Protection"] = {
        { category = "Meta",   name = "Powerful Earthstorm Diamond",   itemId = 25896, stat = "+18 Stamina, +5% Stun Resist (needs 3 blue)" },
        { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage (threat alt)" },
        { category = "Red",    name = "Solid Star of Elune",           itemId = 24033, stat = "+12 Stamina (slam stam everywhere)" },
        { category = "Red",    name = "Shifting Nightseye",            itemId = 24055, stat = "+4 Agility, +6 Stamina (avoidance+EH, purple)" },
        { category = "Yellow", name = "Solid Star of Elune",           itemId = 24033, stat = "+12 Stamina (ignore yellow bonus)" },
        { category = "Yellow", name = "Enduring Talasite",             itemId = 24062, stat = "+4 Defense Rating, +6 Stamina (green)" },
        { category = "Blue",   name = "Solid Star of Elune",           itemId = 24033, stat = "+12 Stamina" },
        { category = "Hybrid", name = "Glinting Noble Topaz",          itemId = 24061, stat = "+4 Agility, +4 Hit Rating (orange — hit cap)" },
    },
}

-- ============================================================
-- PALADIN
-- ============================================================
WTBT_Gems["Paladin"] = {
    ["Holy"] = {
        { category = "Meta",   name = "Insightful Earthstorm Diamond", itemId = 25901, stat = "+12 Intellect, chance to restore 300 mana" },
        { category = "Meta",   name = "Bracing Earthstorm Diamond",    itemId = 25897, stat = "+13 Healing, -2% threat (throughput alt)" },
        { category = "Red",    name = "Teardrop Living Ruby",          itemId = 24029, stat = "+7 Healing Power" },
        { category = "Yellow", name = "Brilliant Dawnstone",           itemId = 24047, stat = "+8 Intellect" },
        { category = "Yellow", name = "Luminous Noble Topaz",          itemId = 24060, stat = "+5 Healing, +4 Intellect (orange)" },
        { category = "Blue",   name = "Royal Nightseye",               itemId = 24057, stat = "+5 Healing, +2 MP5 (purple)" },
    },
    ["Protection"] = {
        { category = "Meta",   name = "Powerful Earthstorm Diamond",   itemId = 25896, stat = "+18 Stamina, +5% Stun Resist" },
        { category = "Meta",   name = "Chaotic Skyfire Diamond",       itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage (threat alt)" },
        { category = "Red",    name = "Runed Living Ruby",             itemId = 24030, stat = "+9 Spell Damage (Holy Shield/Consecrate threat)" },
        { category = "Yellow", name = "Veiled Noble Topaz",            itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange)" },
        { category = "Blue",   name = "Solid Star of Elune",           itemId = 24033, stat = "+12 Stamina" },
        { category = "Hybrid", name = "Glowing Nightseye",             itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple — throughput+EH)" },
        { category = "Hybrid", name = "Enduring Talasite",             itemId = 24062, stat = "+4 Defense Rating, +6 Stamina (green — def cap)" },
    },
    ["Retribution"] = {
        { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage" },
        { category = "Red",    name = "Bold Living Ruby",              itemId = 24027, stat = "+8 Strength" },
        { category = "Yellow", name = "Inscribed Noble Topaz",         itemId = 24058, stat = "+4 Strength, +4 Crit Rating (orange)" },
        { category = "Yellow", name = "Rigid Dawnstone",               itemId = 24051, stat = "+8 Hit Rating (until hit capped)" },
        { category = "Blue",   name = "Sovereign Nightseye",           itemId = 24054, stat = "+4 Strength, +6 Stamina (purple)" },
    },
}

-- ============================================================
-- HUNTER
-- ============================================================
local HUNTER_GEMS = {
    { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage" },
    { category = "Red",    name = "Delicate Living Ruby",          itemId = 24028, stat = "+8 Agility" },
    { category = "Yellow", name = "Wicked Noble Topaz",            itemId = 31868, stat = "+4 Agility, +6 Attack Power (orange)" },
    { category = "Yellow", name = "Rigid Dawnstone",               itemId = 24051, stat = "+8 Hit Rating (until hit capped)" },
    { category = "Blue",   name = "Shifting Nightseye",            itemId = 24055, stat = "+4 Agility, +6 Stamina (purple)" },
    { category = "Hybrid", name = "Glinting Noble Topaz",          itemId = 24061, stat = "+4 Agility, +4 Hit Rating (orange)" },
}
WTBT_Gems["Hunter"] = {
    ["Beast Mastery"] = HUNTER_GEMS,
    ["Marksmanship"]  = HUNTER_GEMS,
    ["Survival"]      = HUNTER_GEMS,
}

-- ============================================================
-- ROGUE
-- ============================================================
local ROGUE_GEMS = {
    { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage" },
    { category = "Red",    name = "Delicate Living Ruby",          itemId = 24028, stat = "+8 Agility" },
    { category = "Yellow", name = "Glinting Noble Topaz",          itemId = 24061, stat = "+4 Agility, +4 Hit Rating (orange)" },
    { category = "Yellow", name = "Rigid Dawnstone",               itemId = 24051, stat = "+8 Hit Rating (until hit capped)" },
    { category = "Blue",   name = "Shifting Nightseye",            itemId = 24055, stat = "+4 Agility, +6 Stamina (purple)" },
}
WTBT_Gems["Rogue"] = {
    ["Combat"]        = ROGUE_GEMS,
    ["Assassination"] = ROGUE_GEMS,
    ["Subtlety"]      = ROGUE_GEMS,
}

-- ============================================================
-- PRIEST
-- ============================================================
local PRIEST_HEAL_GEMS = {
    { category = "Meta",   name = "Insightful Earthstorm Diamond", itemId = 25901, stat = "+12 Intellect, chance to restore 300 mana" },
    { category = "Meta",   name = "Bracing Earthstorm Diamond",    itemId = 25897, stat = "+13 Healing, -2% threat" },
    { category = "Meta",   name = "Mystical Skyfire Diamond",      itemId = 25893, stat = "+12 Crit Rating, chance for 320 Haste (throughput alt)" },
    { category = "Red",    name = "Teardrop Living Ruby",          itemId = 24029, stat = "+7 Healing Power" },
    { category = "Yellow", name = "Luminous Noble Topaz",          itemId = 24060, stat = "+5 Healing, +4 Intellect (orange)" },
    { category = "Blue",   name = "Royal Nightseye",               itemId = 24057, stat = "+5 Healing, +2 MP5 (purple)" },
}
WTBT_Gems["Priest"] = {
    ["Holy"]       = PRIEST_HEAL_GEMS,
    ["Discipline"] = PRIEST_HEAL_GEMS,
    ["Shadow"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",     itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Meta",   name = "Mystical Skyfire Diamond",    itemId = 25893, stat = "+12 Crit Rating, chance for 320 Haste (pre-raid)" },
        { category = "Red",    name = "Runed Living Ruby",           itemId = 24030, stat = "+9 Spell Damage (slam everywhere)" },
        { category = "Yellow", name = "Potent Noble Topaz",          itemId = 24059, stat = "+5 Spell Damage, +4 Crit Rating (orange)" },
        { category = "Yellow", name = "Veiled Noble Topaz",          itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange — hit path)" },
        { category = "Blue",   name = "Glowing Nightseye",           itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
    },
}

-- ============================================================
-- SHAMAN
-- ============================================================
WTBT_Gems["Shaman"] = {
    ["Restoration"] = {
        { category = "Meta",   name = "Bracing Earthstorm Diamond",    itemId = 25897, stat = "+13 Healing, -2% threat" },
        { category = "Meta",   name = "Insightful Earthstorm Diamond", itemId = 25901, stat = "+12 Intellect, chance to restore 300 mana" },
        { category = "Red",    name = "Teardrop Living Ruby",          itemId = 24029, stat = "+7 Healing Power" },
        { category = "Yellow", name = "Quick Dawnstone",               itemId = 35315, stat = "+8 Spell Haste Rating" },
        { category = "Yellow", name = "Luminous Noble Topaz",          itemId = 24060, stat = "+5 Healing, +4 Intellect (orange)" },
        { category = "Blue",   name = "Royal Nightseye",               itemId = 24057, stat = "+5 Healing, +2 MP5 (purple)" },
    },
    ["Enhancement"] = {
        { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage" },
        { category = "Red",    name = "Bold Living Ruby",              itemId = 24027, stat = "+8 Strength" },
        { category = "Yellow", name = "Inscribed Noble Topaz",         itemId = 24058, stat = "+4 Strength, +4 Crit Rating (orange)" },
        { category = "Blue",   name = "Sovereign Nightseye",           itemId = 24054, stat = "+4 Strength, +6 Stamina (purple)" },
    },
    ["Elemental"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",     itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Red",    name = "Runed Living Ruby",           itemId = 24030, stat = "+9 Spell Damage (slam everywhere)" },
        { category = "Yellow", name = "Reckless Noble Topaz",        itemId = 35316, stat = "+5 Spell Damage, +4 Haste Rating (orange — haste path)" },
        { category = "Yellow", name = "Potent Noble Topaz",          itemId = 24059, stat = "+5 Spell Damage, +4 Crit Rating (orange — crit path)" },
        { category = "Blue",   name = "Glowing Nightseye",           itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
    },
}

-- ============================================================
-- MAGE
-- ============================================================
WTBT_Gems["Mage"] = {
    ["Arcane"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",    itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Red",    name = "Runed Living Ruby",          itemId = 24030, stat = "+9 Spell Damage" },
        { category = "Yellow", name = "Brilliant Dawnstone",        itemId = 24047, stat = "+8 Intellect (Arcane stacks Int)" },
        { category = "Blue",   name = "Glowing Nightseye",          itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
        { category = "Blue",   name = "Royal Nightseye",            itemId = 24057, stat = "+5 Healing, +2 MP5 (purple — mp5 alt)" },
    },
    ["Fire"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",    itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Red",    name = "Runed Living Ruby",          itemId = 24030, stat = "+9 Spell Damage (slam everywhere)" },
        { category = "Yellow", name = "Veiled Noble Topaz",         itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange)" },
        { category = "Yellow", name = "Potent Noble Topaz",         itemId = 24059, stat = "+5 Spell Damage, +4 Crit Rating (orange — after hit cap)" },
        { category = "Blue",   name = "Glowing Nightseye",          itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
    },
    ["Frost"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",    itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Red",    name = "Runed Living Ruby",          itemId = 24030, stat = "+9 Spell Damage (slam everywhere)" },
        { category = "Yellow", name = "Veiled Noble Topaz",         itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange)" },
        { category = "Yellow", name = "Potent Noble Topaz",         itemId = 24059, stat = "+5 Spell Damage, +4 Crit Rating (orange — after hit cap)" },
        { category = "Blue",   name = "Glowing Nightseye",          itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
    },
}

-- ============================================================
-- WARLOCK
-- ============================================================
local WARLOCK_GEMS = {
    { category = "Meta",   name = "Chaotic Skyfire Diamond",    itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
    { category = "Meta",   name = "Mystical Skyfire Diamond",   itemId = 25893, stat = "+12 Crit Rating, chance for 320 Haste (Demo alt)" },
    { category = "Red",    name = "Runed Living Ruby",          itemId = 24030, stat = "+9 Spell Damage (after hit cap)" },
    { category = "Yellow", name = "Great Dawnstone",            itemId = 31861, stat = "+8 Spell Hit Rating (slam yellow pre-cap)" },
    { category = "Yellow", name = "Veiled Noble Topaz",         itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange)" },
    { category = "Yellow", name = "Potent Noble Topaz",         itemId = 24059, stat = "+5 Spell Damage, +4 Crit Rating (orange — post hit cap)" },
    { category = "Blue",   name = "Glowing Nightseye",          itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
}
WTBT_Gems["Warlock"] = {
    ["Affliction"]  = WARLOCK_GEMS,
    ["Demonology"]  = WARLOCK_GEMS,
    ["Destruction"] = WARLOCK_GEMS,
}

-- ============================================================
-- DRUID
-- ============================================================
WTBT_Gems["Druid"] = {
    ["Restoration"] = {
        { category = "Meta",   name = "Bracing Earthstorm Diamond",    itemId = 25897, stat = "+13 Healing, -2% threat" },
        { category = "Meta",   name = "Insightful Earthstorm Diamond", itemId = 25901, stat = "+12 Intellect, chance to restore 300 mana" },
        { category = "Red",    name = "Teardrop Living Ruby",          itemId = 24029, stat = "+7 Healing Power" },
        { category = "Yellow", name = "Luminous Noble Topaz",          itemId = 24060, stat = "+5 Healing, +4 Intellect (orange)" },
        { category = "Blue",   name = "Royal Nightseye",               itemId = 24057, stat = "+5 Healing, +2 MP5 (purple)" },
    },
    ["Balance"] = {
        { category = "Meta",   name = "Chaotic Skyfire Diamond",    itemId = 34220, stat = "+12 Crit Rating, +3% Crit Damage" },
        { category = "Red",    name = "Runed Living Ruby",          itemId = 24030, stat = "+9 Spell Damage (slam everywhere)" },
        { category = "Yellow", name = "Veiled Noble Topaz",         itemId = 31867, stat = "+5 Spell Damage, +4 Hit Rating (orange)" },
        { category = "Blue",   name = "Glowing Nightseye",          itemId = 24056, stat = "+5 Spell Damage, +5 Stamina (purple)" },
    },
    -- Feral Cat: Wolfshead Helm (8345) has no meta socket — no meta gem.
    ["Feral"] = {
        { category = "Meta",   name = "Relentless Earthstorm Diamond", itemId = 32409, stat = "+12 Agility, +3% Crit Damage (Bear — Cat uses Wolfshead, no meta)" },
        { category = "Red",    name = "Delicate Living Ruby",          itemId = 24028, stat = "+8 Agility" },
        { category = "Yellow", name = "Glinting Noble Topaz",          itemId = 24061, stat = "+4 Agility, +4 Hit Rating (orange)" },
        { category = "Blue",   name = "Shifting Nightseye",            itemId = 24055, stat = "+4 Agility, +6 Stamina (purple)" },
        { category = "Hybrid", name = "Solid Star of Elune",           itemId = 24033, stat = "+12 Stamina (Bear EH)" },
        { category = "Hybrid", name = "Enduring Talasite",             itemId = 24062, stat = "+4 Defense Rating, +6 Stamina (green — Bear def cap)" },
    },
}

-- ============================================================
-- CATEGORY DISPLAY ORDER & COLORS
-- ============================================================
WTBT_GemCategories = {
    { key = "Meta",   color = { 0.85, 0.65, 0.30 } },  -- orange-gold
    { key = "Red",    color = { 0.90, 0.30, 0.30 } },  -- red
    { key = "Yellow", color = { 0.95, 0.85, 0.30 } },  -- yellow
    { key = "Blue",   color = { 0.30, 0.60, 0.90 } },  -- blue
    { key = "Hybrid", color = { 0.70, 0.40, 0.85 } },  -- purple
}

-- ============================================================
-- NOTE: Data sourced from Wowhead TBC Classic class guides.
-- Rare Outland gems (Living Ruby / Dawnstone / Star of Elune /
-- Noble Topaz / Nightseye / Talasite) are Wowhead's mainstream
-- recommendations — they remained competitive through most of
-- TBC's lifecycle. Epic Jewelcrafter cuts (Crimson Spinel etc.)
-- came later-phase; the in-game tooltip is authoritative.
-- ============================================================
