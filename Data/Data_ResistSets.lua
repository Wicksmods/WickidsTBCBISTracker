-- Wick's TBC BIS Tracker
-- Data_ResistSets.lua - Fire / Nature / Frost resistance gear sets
-- These appear as special "specs" under their class so they slot into the
-- existing class/spec selector without UI changes.
-- Sources: Wowhead TBC Classic resistance guides

WTBT_Data = WTBT_Data or {}

-- =============================================================================
-- WARLOCK — FIRE RESISTANCE
-- Relevant for: Magtheridon's Lair, early SSC (Lady Vashj adds)
-- =============================================================================
WTBT_Data["Warlock"] = WTBT_Data["Warlock"] or {}
WTBT_Data["Warlock"]["Fire Resist"] = {
    [1] = {
        Head = {
            { name = "Helm of the Burning Soul",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28784 },
            { name = "Frozen Shadoweave Hood",         source = "Tailoring (Shadoweave set)",          sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
        },
        Neck = {
            { name = "Pendant of Frozen Flame",        source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25900 },
            { name = "Brooch of Heightened Potential", source = "Nightbane — Karazhan",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Flameheart Shoulderguards",      source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21868 },
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
        },
        Back = {
            { name = "Cloak of the Black Void",        source = "Tailoring (Shadoweave set)",          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24249 },
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Flameheart Vest",                source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21865 },
            { name = "Spellfire Robe",                 source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21848 },
        },
        Wrist = {
            { name = "Flameheart Bracers",             source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21867 },
            { name = "Bracers of Havok",               source = "Tailoring",                           sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
        },
        Hands = {
            { name = "Flameheart Gloves",              source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21866 },
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
        },
        Waist = {
            { name = "Spellfire Belt",                 source = "Tailoring (Spellfire set)",           sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
            { name = "Girdle of Ruination",            source = "Tailoring",                           sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring",                           sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Voidheart Leggings",             source = "Karazhan",                            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28966 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave set)",          sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
        },
        Ring1 = {
            { name = "Ring of Resilient Flame",        source = "Heroic Shadow Labyrinth — Murmur",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28227 },
            { name = "Band of Crimson Fury",           source = "Netherspite — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
        },
        OffHand = {
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
        },
        Relic = {
            { name = "Tirisfal Wand of Ascendancy",    source = "Shade of Aran — Karazhan",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
}

-- =============================================================================
-- WARRIOR — FIRE RESISTANCE
-- Relevant for: Magtheridon's Lair, Leotheras the Blind (SSC)
-- =============================================================================
WTBT_Data["Warrior"] = WTBT_Data["Warrior"] or {}
WTBT_Data["Warrior"]["Fire Resist"] = {
    [1] = {
        Head = {
            { name = "Flamebane Helm",                 source = "Blacksmithing craft",                 sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 30996 },
            { name = "Helm of the Burning Soul",       source = "Magtheridon — Magtheridon's Lair",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28784 },
        },
        Neck = {
            { name = "Pendant of Frozen Flame",        source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25900 },
        },
        Shoulder = {
            { name = "Flamebane Pauldrons",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30997 },
        },
        Back = {
            { name = "Wildguard Cloak",                source = "Leatherworking craft",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 25632 },
        },
        Chest = {
            { name = "Flamebane Breastplate",          source = "Blacksmithing craft",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30994 },
        },
        Wrist = {
            { name = "Flamebane Bracers",              source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30993 },
        },
        Hands = {
            { name = "Flamebane Gloves",               source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30995 },
        },
        Waist = {
            { name = "Crimson Girdle of the Indomitable", source = "Karazhan",                         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28566 },
        },
        Legs = {
            { name = "Greaves of the Shatterer",       source = "High King Maulgar — Gruul's Lair",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28798 },
        },
        Feet = {
            { name = "Battlescar Boots",               source = "Karazhan",                            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of Resilient Flame",        source = "Heroic Shadow Labyrinth — Murmur",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28227 },
        },
        Ring2 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Trinket1 = {
            { name = "Gnomeregan Auto-Blocker 600",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "King's Defender",                source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",         source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
        },
    },
}

-- =============================================================================
-- WARRIOR — NATURE RESISTANCE
-- Relevant for: Hydross the Unstable (SSC Phase 2+)
-- =============================================================================
WTBT_Data["Warrior"]["Nature Resist"] = {
    [2] = {
        Head = {
            { name = "Wildguard Helm",                 source = "Blacksmithing craft",                 sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 30999 },
        },
        Neck = {
            { name = "Pendant of the Null Rune",       source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25901 },
        },
        Shoulder = {
            { name = "Wildguard Pauldrons",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31000 },
        },
        Back = {
            { name = "Sylvanaar Elite Cloakguard",     source = "Bladespire Hold — Blade's Edge",      sourceType = "quest", gems = {},                   enchant = nil, itemId = 30000 },
            { name = "Cenarion Expedition Cloak",      source = "Cenarion Expedition — Honored",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 25632 },
        },
        Chest = {
            { name = "Wildguard Breastplate",          source = "Blacksmithing craft",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30998 },
        },
        Wrist = {
            { name = "Wildguard Bracers",              source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31001 },
        },
        Hands = {
            { name = "Wildguard Gauntlets",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31002 },
        },
        Waist = {
            { name = "Crimson Girdle of the Indomitable", source = "Karazhan",                         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28566 },
        },
        Legs = {
            { name = "Wildguard Leggings",             source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31003 },
        },
        Feet = {
            { name = "Battlescar Boots",               source = "Karazhan",                            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of the Earthen Shielding",  source = "Heroic The Steamvault — Warlord Kalithresh", sourceType = "drop", gems = {},             enchant = nil, itemId = 27815 },
        },
        Ring2 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Trinket1 = {
            { name = "Gnomeregan Auto-Blocker 600",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "King's Defender",                source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",         source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
        },
    },
}

-- =============================================================================
-- WARRIOR — FROST RESISTANCE
-- Relevant for: Sapphiron (Naxx — not standard TBC, but classic carry-over)
-- and Lady Vashj frost shock mechanics in SSC
-- =============================================================================
WTBT_Data["Warrior"]["Frost Resist"] = {
    [2] = {
        Head = {
            { name = "Iceguard Helm",                  source = "Blacksmithing craft",                 sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 31005 },
        },
        Neck = {
            { name = "Pendant of Thawing",             source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25902 },
        },
        Shoulder = {
            { name = "Iceguard Pauldrons",             source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Frost Resistance Cloak",         source = "Leatherworking craft",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 25634 },
        },
        Chest = {
            { name = "Iceguard Breastplate",           source = "Blacksmithing craft",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Iceguard Bracers",               source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31007 },
        },
        Hands = {
            { name = "Iceguard Gauntlets",             source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31008 },
        },
        Waist = {
            { name = "Crimson Girdle of the Indomitable", source = "Karazhan",                         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28566 },
        },
        Legs = {
            { name = "Iceguard Leggings",              source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31009 },
        },
        Feet = {
            { name = "Battlescar Boots",               source = "Karazhan",                            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of Crystalline Ice",        source = "Heroic Underbog — Hungarfen",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27814 },
        },
        Ring2 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Trinket1 = {
            { name = "Gnomeregan Auto-Blocker 600",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "King's Defender",                source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",         source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
        },
    },
}

-- =============================================================================
-- PALADIN — FIRE RESISTANCE
-- Relevant for: Magtheridon's Lair (offtank)
-- =============================================================================
WTBT_Data["Paladin"] = WTBT_Data["Paladin"] or {}
WTBT_Data["Paladin"]["Fire Resist"] = {
    [1] = {
        Head = {
            { name = "Flamebane Helm",                 source = "Blacksmithing craft",                 sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 30996 },
            { name = "Helm of the Burning Soul",       source = "Magtheridon — Magtheridon's Lair",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28784 },
        },
        Neck = {
            { name = "Pendant of Frozen Flame",        source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25900 },
        },
        Shoulder = {
            { name = "Flamebane Pauldrons",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30997 },
        },
        Back = {
            { name = "Wildguard Cloak",                source = "Leatherworking craft",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 25632 },
        },
        Chest = {
            { name = "Flamebane Breastplate",          source = "Blacksmithing craft",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30994 },
        },
        Wrist = {
            { name = "Flamebane Bracers",              source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30993 },
        },
        Hands = {
            { name = "Flamebane Gloves",               source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 30995 },
        },
        Waist = {
            { name = "Girdle of the Immovable",        source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29264 },
        },
        Legs = {
            { name = "Greaves of the Shatterer",       source = "High King Maulgar — Gruul's Lair",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28798 },
        },
        Feet = {
            { name = "Boots of the Righteous Path",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29254 },
        },
        Ring1 = {
            { name = "Ring of Resilient Flame",        source = "Heroic Shadow Labyrinth — Murmur",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28227 },
        },
        Ring2 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Trinket1 = {
            { name = "Gnomeregan Auto-Blocker 600",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "Continuum Blade",                source = "Keepers of Time — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29165 },
        },
        OffHand = {
            { name = "Crest of the Sha'tar",           source = "Sha'tar — Exalted",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29266 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
        },
    },
}

-- =============================================================================
-- PALADIN — NATURE RESISTANCE
-- Relevant for: Hydross the Unstable (SSC Phase 2+)
-- =============================================================================
WTBT_Data["Paladin"]["Nature Resist"] = {
    [2] = {
        Head = {
            { name = "Wildguard Helm",                 source = "Blacksmithing craft",                 sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 30999 },
        },
        Neck = {
            { name = "Pendant of the Null Rune",       source = "Jewelcrafting craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 25901 },
        },
        Shoulder = {
            { name = "Wildguard Pauldrons",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31000 },
        },
        Back = {
            { name = "Cenarion Expedition Cloak",      source = "Cenarion Expedition — Honored",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 25632 },
        },
        Chest = {
            { name = "Wildguard Breastplate",          source = "Blacksmithing craft",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30998 },
        },
        Wrist = {
            { name = "Wildguard Bracers",              source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31001 },
        },
        Hands = {
            { name = "Wildguard Gauntlets",            source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31002 },
        },
        Waist = {
            { name = "Girdle of the Immovable",        source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29264 },
        },
        Legs = {
            { name = "Wildguard Leggings",             source = "Blacksmithing craft",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 31003 },
        },
        Feet = {
            { name = "Boots of the Righteous Path",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29254 },
        },
        Ring1 = {
            { name = "Ring of the Earthen Shielding",  source = "Heroic The Steamvault — Warlord Kalithresh", sourceType = "drop", gems = {},             enchant = nil, itemId = 27815 },
        },
        Ring2 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Trinket1 = {
            { name = "Gnomeregan Auto-Blocker 600",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "Continuum Blade",                source = "Keepers of Time — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29165 },
        },
        OffHand = {
            { name = "Crest of the Sha'tar",           source = "Sha'tar — Exalted",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29266 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
        },
    },
}
