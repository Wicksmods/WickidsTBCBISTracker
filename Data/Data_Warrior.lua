-- Wick's TBC BIS Tracker
-- Data_Warrior.lua — Arms, Fury, Protection (Phases 1–5)
-- Source: Wowhead TBC Classic Warrior Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Warrior"] = WTBT_Data["Warrior"] or {}

-- =============================================================================
-- ARMS
-- =============================================================================
WTBT_Data["Warrior"]["Arms"] = {
    [1] = {
        Head = {
            { name = "Warbringer Battle-Helm",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29021 },
            { name = "Helm of the Claw",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28803 },
            { name = "Ragesteel Helm",                    source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28587 },
        },
        Neck = {
            { name = "Adamantine Chain of the Unbroken",  source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29349 },
            { name = "Worgen Claw Necklace",              source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28674 },
            { name = "Haramad's Bargain",                 source = "The Consortium — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29119 },
        },
        Shoulder = {
            { name = "Ragesteel Shoulders",               source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 33173 },
            { name = "Warbringer Shoulderplates",         source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29023 },
            { name = "Shoulderguards of the Bold",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Vengeance Wrap",                    source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Drape of the Dark Reavers",         source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
            { name = "Blood Knight War Cloak",            source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28529 },
        },
        Chest = {
            { name = "Warbringer Breastplate",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29019 },
            { name = "Ragesteel Breastplate",             source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28483 },
            { name = "Hauberk of the War Bringer",        source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 28726 },
        },
        Wrist = {
            { name = "Bladespire Warbands",               source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
            { name = "Vambraces of Courage",              source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
            { name = "Black Felsteel Bracers",            source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 23517 },
        },
        Hands = {
            { name = "Gauntlets of Martial Perfection",   source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28824 },
            { name = "Liar's Tongue Gloves",              source = "Magtheridon — Magtheridon's Lair",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28776 },
            { name = "Gauntlets of Renewed Hope",         source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28520 },
        },
        Waist = {
            { name = "Girdle of the Endless Pit",         source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28779 },
            { name = "Girdle of the Deathdealer",         source = "Aeonus — Heroic Black Morass",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
            { name = "Belt of the Tracker",               source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
        },
        Legs = {
            { name = "Skulker's Greaves",                 source = "Karazhan",                           sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Scaled Greaves of the Marksman",    source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30739 },
            { name = "Wrynn Dynasty Greaves",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28621 },
        },
        Feet = {
            { name = "Ironstriders of Urgency",           source = "Nightbane — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
            { name = "Edgewalker Longboots",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Boots of Valiance",                 source = "Moroes — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28569 },
        },
        Ring1 = {
            { name = "Ring of Reciprocity",               source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30738 },
            { name = "Garona's Signet Ring",              source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Ring2 = {
            { name = "Shapeshifter's Signet",             source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Ring of a Thousand Marks",          source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Band of the Eternal Champion",      source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",            source = "Pathaleon — Mechanar Heroic",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",                  source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Icon of Unyielding Courage",        source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28121 },
            { name = "Hourglass of the Unraveller",       source = "Temporus — Black Morass",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28034 },
        },
        MainHand = {
            { name = "Lionheart Champion",                source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28429 },
            { name = "Gorehowl",                          source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28773 },
            { name = "The Planar Edge",                   source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28434 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Barrel-Blade Longrifle",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
            { name = "Wrathtide Longbow",                 source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28659 },
        },
    },
    [2] = {
        Head = {
            { name = "Destroyer Battle-Helm",             source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30120 },
        },
        Neck = {
            { name = "Pendant of the Perilous",           source = "Trash — SSC",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30022 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",      source = "Hydross the Unstable — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
            { name = "Destroyer Shoulderblades",          source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30122 },
        },
        Back = {
            { name = "Black-Iron Battlecloak",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30729 },
            { name = "Vengeance Wrap",                    source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Destroyer Breastplate",             source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30118 },
            { name = "Bloodsea Brigand's Vest",           source = "Fathom-Lord Karathress — SSC",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30101 },
        },
        Wrist = {
            { name = "Bracers of Eradication",            source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30057 },
        },
        Hands = {
            { name = "Gloves of the Searing Grip",        source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29947 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Murderous Intent",      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
        },
        Feet = {
            { name = "Warboots of Obliteration",          source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30081 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of Reciprocity",               source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30738 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Tsunami Talisman",                  source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
        },
        MainHand = {
            { name = "Twinblade of the Phoenix",          source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29993 },
            { name = "Lionheart Executioner",             source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28430 },
        },
        Relic = {
            { name = "Serpent Spine Longbow",             source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30105 },
        },
    },
    [3] = {
        Head = {
            { name = "Cursed Vision of Sargeras",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",      source = "Supremus — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
            { name = "Swiftsteel Shoulders",              source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 32570 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",      source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Onslaught Breastplate",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30975 },
            { name = "Midnight Chestguard",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
        },
        Wrist = {
            { name = "Deadly Cuffs",                      source = "Rage Winterchill — Hyjal Summit",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30863 },
            { name = "Insidious Bands",                   source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Grips of Silent Justice",           source = "Shade of Akama — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32278 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Divine Retribution",    source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32341 },
        },
        Feet = {
            { name = "Dreadboots of the Legion",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32345 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",             source = "Illidan Stormrage — Black Temple",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Unstoppable Aggressor's Ring",      source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32335 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Cataclysm's Edge",                  source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        Relic = {
            { name = "Twisted Blades of Zarak",           source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32326 },
        },
    },
    [4] = {
        Head = {
            { name = "Cursed Vision of Sargeras",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",      source = "Supremus — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
            { name = "Swiftsteel Shoulders",              source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 32570 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",      source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
            { name = "Dory's Embrace",                    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33484 },
        },
        Chest = {
            { name = "Onslaught Breastplate",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30975 },
            { name = "Midnight Chestguard",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
        },
        Wrist = {
            { name = "Deadly Cuffs",                      source = "Rage Winterchill — Hyjal Summit",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30863 },
            { name = "Insidious Bands",                   source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Grips of Silent Justice",           source = "Shade of Akama — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32278 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Divine Retribution",    source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32341 },
        },
        Feet = {
            { name = "Dreadboots of the Legion",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32345 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",             source = "Illidan Stormrage — Black Temple",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Signet of Primal Wrath",            source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Berserker's Call",                  source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Cataclysm's Edge",                  source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        Relic = {
            { name = "Ancient Amani Longbow",             source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33474 },
        },
    },
    [5] = {
        Head = {
            { name = "Coif of Alleria",                   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
            { name = "Crown of Anasterian",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34345 },
        },
        Neck = {
            { name = "Hard Khorium Choker",               source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Clutch of Demise",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Pauldrons of Berserking",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 34388 },
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
        },
        Wrist = {
            { name = "Onslaught Bracers",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34441 },
        },
        Hands = {
            { name = "Thalassian Ranger Gauntlets",       source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
            { name = "Gloves of Immortal Dusk",           source = "Blacksmithing",                      sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
        },
        Waist = {
            { name = "Onslaught Belt",                    source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34546 },
        },
        Legs = {
            { name = "Felfury Legplates",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34180 },
        },
        Feet = {
            { name = "Onslaught Treads",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34569 },
        },
        Ring1 = {
            { name = "Band of Ruinous Delight",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
        },
        Ring2 = {
            { name = "Hard Khorium Band",                 source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Trinket1 = {
            { name = "Blackened Naaru Sliver",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
        },
        Trinket2 = {
            { name = "Shard of Contempt",                 source = "Priestess Delrissa — Heroic Magisters' Terrace",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34472 },
        },
        MainHand = {
            { name = "Apolyon, the Soul-Render",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34247 },
            { name = "Cataclysm's Edge",                  source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        Relic = {
            { name = "Golden Bow of Quel'Thalas",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- =============================================================================
-- FURY
-- =============================================================================
WTBT_Data["Warrior"]["Fury"] = {
    [1] = {
        Head = {
            { name = "Warbringer Battle-Helm",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29021 },
            { name = "Helm of the Claw",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28803 },
            { name = "Ragesteel Helm",                    source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28587 },
        },
        Neck = {
            { name = "Adamantine Chain of the Unbroken",  source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29349 },
            { name = "Worgen Claw Necklace",              source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28674 },
            { name = "Haramad's Bargain",                 source = "The Consortium — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29119 },
        },
        Shoulder = {
            { name = "Ripfiend Shoulderplates",           source = "Doom Lord Kazzak — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30740 },
            { name = "Warbringer Shoulderplates",         source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29023 },
            { name = "Shoulderguards of the Bold",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Black-Iron Battlecloak",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30729 },
            { name = "Vengeance Wrap",                    source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Drape of the Dark Reavers",         source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
        },
        Chest = {
            { name = "Terrorweave Tunic",                 source = "Doomwalker — World Boss",             sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30730 },
            { name = "Warbringer Breastplate",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29019 },
            { name = "Hauberk of the War Bringer",        source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 28726 },
        },
        Wrist = {
            { name = "Bladespire Warbands",               source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
            { name = "Vambraces of Courage",              source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
            { name = "Black Felsteel Bracers",            source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 23517 },
        },
        Hands = {
            { name = "Gauntlets of Martial Perfection",   source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28824 },
            { name = "Liar's Tongue Gloves",              source = "Magtheridon — Magtheridon's Lair",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28776 },
            { name = "Gauntlets of Renewed Hope",         source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28520 },
        },
        Waist = {
            { name = "Girdle of the Endless Pit",         source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28779 },
            { name = "Girdle of the Deathdealer",         source = "Aeonus — Heroic Black Morass",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
            { name = "Belt of the Tracker",               source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
        },
        Legs = {
            { name = "Scaled Greaves of the Marksman",    source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30739 },
            { name = "Skulker's Greaves",                 source = "Karazhan",                           sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Wrynn Dynasty Greaves",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28621 },
        },
        Feet = {
            { name = "Ironstriders of Urgency",           source = "Nightbane — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
            { name = "Edgewalker Longboots",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Boots of Valiance",                 source = "Moroes — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28569 },
        },
        Ring1 = {
            { name = "Ring of Reciprocity",               source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30738 },
            { name = "Garona's Signet Ring",              source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",          source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Shapeshifter's Signet",             source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Band of the Eternal Champion",      source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",            source = "Pathaleon — Mechanar Heroic",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",                  source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Hourglass of the Unraveller",       source = "Temporus — Black Morass",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28034 },
            { name = "Icon of Unyielding Courage",        source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28121 },
        },
        MainHand = {
            { name = "Dragonmaw",                         source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28438 },
            { name = "King's Defender",                   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
            { name = "The Decapitator",                   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28767 },
        },
        OffHand = {
            { name = "Gladiator's Slicer",                source = "Arena PvP",                          sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28295 },
            { name = "Hope Ender",                        source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30733 },
            { name = "Latro's Shifting Sword",            source = "Aeonus — Black Morass",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Barrel-Blade Longrifle",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
            { name = "Sunfury Bow of the Phoenix",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Wrathtide Longbow",                 source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28659 },
        },
    },
    [2] = {
        Head = {
            { name = "Destroyer Battle-Helm",             source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30120 },
        },
        Neck = {
            { name = "Pendant of the Perilous",           source = "Trash — SSC",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30022 },
        },
        Shoulder = {
            { name = "Destroyer Shoulderblades",          source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30122 },
        },
        Back = {
            { name = "Black-Iron Battlecloak",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30729 },
        },
        Chest = {
            { name = "Destroyer Breastplate",             source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30118 },
        },
        Wrist = {
            { name = "Bracers of Eradication",            source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30057 },
        },
        Hands = {
            { name = "Destroyer Gauntlets",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30119 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Murderous Intent",      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
        },
        Feet = {
            { name = "Warboots of Obliteration",          source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30081 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",          source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",                  source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Dragonstrike",                      source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28439 },
        },
        OffHand = {
            { name = "Talon of Azshara",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30082 },
        },
        Relic = {
            { name = "Serpent Spine Longbow",             source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30105 },
        },
    },
    [3] = {
        Head = {
            { name = "Cursed Vision of Sargeras",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",      source = "Supremus — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",      source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Onslaught Breastplate",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30975 },
        },
        Wrist = {
            { name = "Deadly Cuffs",                      source = "Rage Winterchill — Hyjal Summit",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30863 },
        },
        Hands = {
            { name = "Grips of Silent Justice",           source = "Shade of Akama — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32278 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Divine Retribution",    source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32341 },
        },
        Feet = {
            { name = "Dreadboots of the Legion",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32345 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",             source = "Illidan Stormrage — Black Temple",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Unstoppable Aggressor's Ring",      source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32335 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
        },
        Relic = {
            { name = "Twisted Blades of Zarak",           source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32326 },
        },
    },
    [4] = {
        Head = {
            { name = "Cursed Vision of Sargeras",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",      source = "Supremus — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",      source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Onslaught Breastplate",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30975 },
        },
        Wrist = {
            { name = "Deadly Cuffs",                      source = "Rage Winterchill — Hyjal Summit",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30863 },
        },
        Hands = {
            { name = "Grips of Silent Justice",           source = "Shade of Akama — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32278 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of Divine Retribution",    source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32341 },
        },
        Feet = {
            { name = "Dreadboots of the Legion",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32345 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",             source = "Illidan Stormrage — Black Temple",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Signet of Primal Wrath",            source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Berserker's Call",                  source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
        },
        Relic = {
            { name = "Ancient Amani Longbow",             source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33474 },
        },
    },
    [5] = {
        Head = {
            { name = "Coif of Alleria",                   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
        },
        Neck = {
            { name = "Hard Khorium Choker",               source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Clutch of Demise",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Pauldrons of Berserking",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 34388 },
            { name = "Onslaught Shoulderblades",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30979 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Hard Khorium Battleplate",          source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34377 },
        },
        Wrist = {
            { name = "Onslaught Bracers",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34441 },
        },
        Hands = {
            { name = "Thalassian Ranger Gauntlets",       source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
            { name = "Gloves of Immortal Dusk",           source = "Blacksmithing",                      sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
        },
        Waist = {
            { name = "Onslaught Belt",                    source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34546 },
        },
        Legs = {
            { name = "Felfury Legplates",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34180 },
            { name = "Leggings of the Immortal Night",    source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
        },
        Feet = {
            { name = "Onslaught Treads",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34569 },
        },
        Ring1 = {
            { name = "Band of Ruinous Delight",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
        },
        Ring2 = {
            { name = "Hard Khorium Band",                 source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Trinket1 = {
            { name = "Blackened Naaru Sliver",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
        },
        Trinket2 = {
            { name = "Shard of Contempt",                 source = "Priestess Delrissa — Heroic Magisters' Terrace",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34472 },
            { name = "Dragonspine Trophy",                source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        MainHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
            { name = "Hand of the Deceiver",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
            { name = "Mounting Vengeance",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34346 },
        },
        Relic = {
            { name = "Golden Bow of Quel'Thalas",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- =============================================================================
-- PROTECTION
-- =============================================================================
WTBT_Data["Warrior"]["Protection"] = {
    [1] = {
        Head = {
            { name = "Warbringer Greathelm",              source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29011 },
            { name = "Eternium Greathelm",                source = "Blacksmithing",                      sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 23519 },
            { name = "Helm of the Stalwart Defender",     source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28801 },
        },
        Neck = {
            { name = "Necklace of the Juggernaut",        source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29386 },
            { name = "Barbed Choker of Discipline",       source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28674 },
            { name = "Lord Sanguinar's Claim",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28796 },
        },
        Shoulder = {
            { name = "Warbringer Shoulderplates",         source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29023 },
            { name = "Mantle of Abrahmis",                source = "Nightbane — Karazhan",               sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28743 },
            { name = "Shoulderguards of the Bold",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Gilded Thorium Cloak",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28660 },
            { name = "Farstrider Wildercloak",            source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28804 },
            { name = "Devilshark Cape",                   source = "The Steamvault Heroic",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27804 },
        },
        Chest = {
            { name = "Warbringer Chestguard",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29012 },
            { name = "Panzar'Thar Breastplate",           source = "Nightbane — Karazhan",               sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 28597 },
            { name = "Vindicator's Hauberk",              source = "Aldor — Exalted",                    sourceType = "rep",   gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29127 },
        },
        Wrist = {
            { name = "Vambraces of Courage",              source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
            { name = "Bracers of the Green Fortress",     source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 23535 },
            { name = "Bladespire Warbands",               source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Topaz-Studded Battlegrips",         source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30741 },
            { name = "Iron Gauntlets of the Maiden",      source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28518 },
            { name = "Gauntlets of Renewed Hope",         source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28520 },
        },
        Waist = {
            { name = "Crimson Girdle of the Indomitable", source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28566 },
            { name = "Girdle of the Immovable",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29264 },
            { name = "Girdle of the Endless Pit",         source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28779 },
        },
        Legs = {
            { name = "Wrynn Dynasty Greaves",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28621 },
            { name = "Legguards of the Fallen Defender",  source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28741 },
            { name = "Timewarden's Leggings",             source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29184 },
        },
        Feet = {
            { name = "Battlescar Boots",                  source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28747 },
            { name = "Eaglecrest Warboots",               source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28810 },
            { name = "Boots of Elusion",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        Ring1 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
            { name = "Ring of Unyielding Force",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29384 },
        },
        Ring2 = {
            { name = "Shapeshifter's Signet",             source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Iron Band of the Unbreakable",      source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Band of Impenetrable Defenses",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
        },
        Trinket1 = {
            { name = "Goblin Rocket Launcher",            source = "Engineering",                        sourceType = "craft", gems = {},                   enchant = nil, itemId = 23836 },
            { name = "Gnomeregan Auto-Blocker 600",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        Trinket2 = {
            { name = "Icon of Unyielding Courage",        source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28121 },
            { name = "Moroes' Lucky Pocket Watch",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
            { name = "Darkmoon Card: Vengeance",          source = "Darkmoon Faire Quest",               sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        MainHand = {
            { name = "King's Defender",                   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
            { name = "Dragonmaw",                         source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28438 },
            { name = "Blazeguard",                        source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28427 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",            source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
            { name = "Shield of Impenetrable Darkness",   source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28606 },
            { name = "Crest of the Sha'tar",              source = "Sha'tar — Exalted",                  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29266 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Barrel-Blade Longrifle",            source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
            { name = "Wrathtide Longbow",                 source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28659 },
        },
    },
    [2] = {
        Head = {
            { name = "Destroyer Greathelm",               source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30115 },
            { name = "Tankatronic Goggles",               source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32473 },
        },
        Neck = {
            { name = "Frayed Tether of the Drowned",      source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30099 },
        },
        Shoulder = {
            { name = "Destroyer Shoulderguards",          source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30117 },
        },
        Back = {
            { name = "Phoenix-Wing Cloak",                source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29925 },
        },
        Chest = {
            { name = "Destroyer Chestguard",              source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30113 },
        },
        Wrist = {
            { name = "Wristguards of Determination",      source = "The Eye Trash — Tempest Keep",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32515 },
            { name = "Vambraces of Courage",              source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
        },
        Hands = {
            { name = "Royal Gauntlets of Silvermoon",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29998 },
        },
        Waist = {
            { name = "Girdle of the Invulnerable",        source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30096 },
            { name = "Belt of One-Hundred Deaths",        source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Destroyer Legguards",               source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30116 },
        },
        Feet = {
            { name = "Boots of the Resilient",            source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32267 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",            source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
        },
        Ring2 = {
            { name = "Band of Eternity",                  source = "Scale of the Sands — Exalted",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 29294 },
        },
        Trinket1 = {
            { name = "Goblin Rocket Launcher",            source = "Engineering",                        sourceType = "craft", gems = {},                   enchant = nil, itemId = 23836 },
        },
        Trinket2 = {
            { name = "Gnomeregan Auto-Blocker 600",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29387 },
        },
        MainHand = {
            { name = "Dragonstrike",                      source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28439 },
            { name = "Mallet of the Tides",               source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30058 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",            source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
        },
        Relic = {
            { name = "Gyro-Balanced Khorium Destroyer",   source = "Engineering",                        sourceType = "craft", gems = {},                   enchant = nil, itemId = 32756 },
        },
    },
    [3] = {
        Head = {
            { name = "Faceplate of the Impenetrable",     source = "Supremus — Black Temple",            sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32521 },
            { name = "Onslaught Greathelm",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30974 },
        },
        Neck = {
            { name = "Pendant of Titans",                 source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32362 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderguards",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30980 },
        },
        Back = {
            { name = "Pepe's Shroud of Pacification",     source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34010 },
            { name = "Phoenix-Wing Cloak",                source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29925 },
        },
        Chest = {
            { name = "Onslaught Chestguard",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30976 },
            { name = "Glory of the Defender",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30896 },
        },
        Wrist = {
            { name = "The Seeker's Wristguards",          source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32279 },
            { name = "Eternium Shell Bracers",            source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32232 },
        },
        Hands = {
            { name = "Gauntlets of Enforcement",          source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32280 },
        },
        Waist = {
            { name = "Girdle of Stability",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32333 },
            { name = "Girdle of Mighty Resolve",          source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32342 },
        },
        Legs = {
            { name = "Onslaught Legguards",               source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30978 },
            { name = "Praetorian's Legguards",            source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32263 },
        },
        Feet = {
            { name = "Myrmidon's Treads",                 source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32268 },
            { name = "Tide-stomper's Greaves",            source = "High Warlord Naj'entus — BT",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32245 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",            source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
            { name = "Band of the Abyssal Lord",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32261 },
        },
        Ring2 = {
            { name = "Band of the Eternal Defender",      source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29297 },
        },
        Trinket1 = {
            { name = "Darkmoon Card: Vengeance",          source = "Darkmoon Faire Quest",               sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        Trinket2 = {
            { name = "Shadowmoon Insignia",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32501 },
            { name = "Moroes' Lucky Pocket Watch",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "Tempest of Chaos",                  source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Bulwark of Azzinoth",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
            { name = "Kaz'rogal's Hardened Heart",        source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30889 },
        },
        Relic = {
            { name = "Twisted Blades of Zarak",           source = "Teron Gorefiend — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32326 },
        },
    },
    [4] = {
        Head = {
            { name = "Faceplate of the Impenetrable",     source = "Supremus — Black Temple",            sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32521 },
            { name = "Battleworn Tuskguard",              source = "Zul'Aman",                           sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 33421 },
        },
        Neck = {
            { name = "Brooch of Deftness",                source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33296 },
        },
        Shoulder = {
            { name = "Onslaught Shoulderguards",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30980 },
        },
        Back = {
            { name = "Slikk's Cloak of Placation",        source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33593 },
            { name = "Pepe's Shroud of Pacification",     source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34010 },
        },
        Chest = {
            { name = "Onslaught Chestguard",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30976 },
            { name = "Chestguard of the Warlord",         source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33473 },
        },
        Wrist = {
            { name = "Bracers of the Ancient Phalanx",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33516 },
            { name = "Eternium Shell Bracers",            source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32232 },
        },
        Hands = {
            { name = "Gauntlets of Enforcement",          source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32280 },
        },
        Waist = {
            { name = "Girdle of Stability",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32333 },
        },
        Legs = {
            { name = "Onslaught Legguards",               source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30978 },
        },
        Feet = {
            { name = "Myrmidon's Treads",                 source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32268 },
            { name = "Skullshatter Warboots",             source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33303 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",            source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
        },
        Ring2 = {
            { name = "Band of the Abyssal Lord",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32261 },
        },
        Trinket1 = {
            { name = "Darkmoon Card: Vengeance",          source = "Darkmoon Faire Quest",               sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        Trinket2 = {
            { name = "Shadowmoon Insignia",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32501 },
        },
        MainHand = {
            { name = "Cleaver of the Unforgiving",        source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33476 },
            { name = "The Brutalizer",                    source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32254 },
        },
        OffHand = {
            { name = "Bulwark of Azzinoth",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
            { name = "Bulwark of the Amani Empire",       source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33326 },
        },
        Relic = {
            { name = "Ancient Amani Longbow",             source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33474 },
        },
    },
    [5] = {
        Head = {
            { name = "Crown of Dath'Remar",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34400 },
            { name = "Hard Khorium Goggles",              source = "Engineering",                        sourceType = "craft", gems = {},                   enchant = nil, itemId = 34357 },
        },
        Neck = {
            { name = "Collar of the Pit Lord",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34178 },
            { name = "Brooch of Deftness",                source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33296 },
        },
        Shoulder = {
            { name = "Pauldrons of Perseverance",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34192 },
            { name = "Onslaught Shoulderguards",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30980 },
        },
        Back = {
            { name = "Crimson Paragon's Cover",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34190 },
            { name = "Slikk's Cloak of Placation",        source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33593 },
        },
        Chest = {
            { name = "Breastplate of Agony's Aversion",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34394 },
            { name = "Hard Khorium Battleplate",          source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34377 },
        },
        Wrist = {
            { name = "Onslaught Wristguards",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34442 },
            { name = "Bracers of the Ancient Phalanx",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33516 },
        },
        Hands = {
            { name = "Borderland Fortress Grips",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34352 },
            { name = "Gauntlets of Enforcement",          source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32280 },
        },
        Waist = {
            { name = "Onslaught Waistguard",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34547 },
        },
        Legs = {
            { name = "Felstrength Legplates",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34381 },
            { name = "Onslaught Legguards",               source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30978 },
        },
        Feet = {
            { name = "Onslaught Boots",                   source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34568 },
        },
        Ring1 = {
            { name = "Ring of Hardened Resolve",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34213 },
        },
        Ring2 = {
            { name = "Ring of the Stalwart Protector",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 34888 },
        },
        Trinket1 = {
            { name = "Commendation of Kael'thas",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34473 },
        },
        Trinket2 = {
            { name = "Darkmoon Card: Vengeance",          source = "Darkmoon Faire Quest",               sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        MainHand = {
            { name = "Dragonscale-Encrusted Longblade",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34164 },
            { name = "The Brutalizer",                    source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32254 },
        },
        OffHand = {
            { name = "Sword Breaker's Bulwark",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34185 },
            { name = "Bulwark of Azzinoth",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
        },
        Relic = {
            { name = "Golden Bow of Quel'Thalas",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}
