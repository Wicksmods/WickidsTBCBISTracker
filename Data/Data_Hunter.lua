-- Wick's TBC BIS Tracker
-- Data_Hunter.lua — Beast Mastery, Marksmanship, Survival (Phases 1–5)
-- Source: Wowhead TBC Classic Hunter Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Hunter"] = WTBT_Data["Hunter"] or {}

-- =============================================================================
-- BEAST MASTERY
-- =============================================================================
WTBT_Data["Hunter"]["Beast Mastery"] = {
    [1] = {
        Head = {
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
            { name = "Demon Stalker Greathelm",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29081 },
        },
        Neck = {
            { name = "Choker of Vile Intent",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
            { name = "Worgen Claw Necklace",           source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28509 },
        },
        Shoulder = {
            { name = "Beast Lord Mantle",              source = "Warbringer O'mrogg — Shattered Halls", sourceType = "drop", gems = {},                  enchant = nil, itemId = 27801 },
            { name = "Demon Stalker Shoulderguards",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" }, enchant = nil, itemId = 29084 },
            { name = "Mantle of Shadowy Embrace",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Drape of the Dark Reavers",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
            { name = "Cloak of the Pit Stalker",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28777 },
        },
        Chest = {
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
            { name = "Primalstrike Vest",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29525 },
        },
        Wrist = {
            { name = "Nightfall Wristguards",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29246 },
            { name = "Primalstrike Bracers",           source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29527 },
            { name = "Vambraces of Daring",            source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Beast Lord Handguards",          source = "Warchief Kargath — Shattered Halls", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27474 },
            { name = "Grips of Deftness",              source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
            { name = "Demon Stalker Gauntlets",        source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29082 },
        },
        Waist = {
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
            { name = "Girdle of Treachery",            source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
            { name = "Primalstrike Belt",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29526 },
        },
        Legs = {
            { name = "Scaled Greaves of the Marksman", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30739 },
            { name = "Skulker's Greaves",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Demon Stalker Greaves",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29083 },
        },
        Feet = {
            { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Fiend Slayer Boots",             source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28549 },
            { name = "Ironstriders of Urgency",        source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of the Recalcitrant",       source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Garona's Signet Ring",           source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",         source = "Pathaleon — Heroic Mechanar",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Romulo's Poison Vial",           source = "Opera — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28579 },
        },
        MainHand = {
            { name = "Claw of the Watcher",            source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27846 },
            { name = "Blinkstrike",                    source = "World Drop",                         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31332 },
        },
        OffHand = {
            { name = "Blade of the Unrequited",        source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28572 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Barrel-Blade Longrifle",         source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
            { name = "Wrathtide Longbow",              source = "Warlord Kalithresh — Heroic Steamvault", sourceType = "drop", gems = {},                enchant = nil, itemId = 27903 },
        },
    },
    [2] = {
        Head = {
            { name = "Rift Stalker Helm",              source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30141 },
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Rift Stalker Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30143 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Rift Stalker Hauberk",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30139 },
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
        },
        Wrist = {
            { name = "Vambraces of Ending",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29966 },
        },
        Hands = {
            { name = "Rift Stalker Gauntlets",         source = "Leotheras the Blind — SSC",          sourceType = "token", gems = {},                   enchant = nil, itemId = 30140 },
        },
        Waist = {
            { name = "Belt of Deep Shadow",            source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30040 },
        },
        Legs = {
            { name = "Leggings of Murderous Intent",   source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
        },
        Feet = {
            { name = "Cobra-Lash Boots",               source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30104 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Talon of the Phoenix",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Netherstrand Longbow",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30318 },
            { name = "Serpent Spine Longbow",           source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30105 },
        },
    },
    [3] = {
        Head = {
            { name = "Gronnstalker's Helmet",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31003 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Softstep Boots of Tracking",     source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Ring2 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Trinket1 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        Trinket2 = {
            { name = "Ashtongue Talisman of Swiftness", source = "Ashtongue Deathsworn — Exalted",   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 32487 },
        },
        MainHand = {
            { name = "Talon of the Phoenix",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Black Bow of the Betrayer",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32336 },
        },
    },
    [4] = {
        Head = {
            { name = "Gronnstalker's Helmet",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31003 },
        },
        Neck = {
            { name = "Choker of Serrated Blades",      source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32591 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Softstep Boots of Tracking",     source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Signet of Primal Wrath",         source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Ring2 = {
            { name = "Stormrage Signet Ring",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Trinket1 = {
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Dagger of Bad Mojo",             source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33389 },
        },
        OffHand = {
            { name = "Dagger of Bad Mojo",             source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33389 },
        },
        Relic = {
            { name = "Black Bow of the Betrayer",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32336 },
        },
    },
    [5] = {
        Head = {
            { name = "Coif of Alleria",                source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
            { name = "Duplicitous Guise",              source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
        },
        Neck = {
            { name = "Hard Khorium Choker",            source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Clutch of Demise",               source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
            { name = "Mantle of the Golden Forest",    source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34194 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Carapace of Sun and Shadow",     source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34369 },
        },
        Wrist = {
            { name = "Gronnstalker's Bracers",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34443 },
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gloves of Immortal Dusk",        source = "Leatherworking",                     sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
            { name = "Thalassian Ranger Gauntlets",    source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
        },
        Waist = {
            { name = "Gronnstalker's Belt",            source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34549 },
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Leggings of the Immortal Night", source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
            { name = "Starstalker Legguards",          source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34168 },
        },
        Feet = {
            { name = "Gronnstalker's Boots",           source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34570 },
            { name = "Shadowmaster's Boots",           source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Band of Ruinous Delight",        source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
            { name = "Hard Khorium Band",              source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Ring2 = {
            { name = "Angelista's Revenge",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34887 },
            { name = "Signet of Primal Wrath",         source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Blackened Naaru Sliver",         source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Hand of the Deceiver",           source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
        },
        OffHand = {
            { name = "Crux of the Apocalypse",         source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34329 },
            { name = "Shiv of Exsanguination",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34197 },
        },
        Relic = {
            { name = "Thori'dal, the Stars' Fury",     source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34334 },
            { name = "Golden Bow of Quel'Thalas",      source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- =============================================================================
-- MARKSMANSHIP
-- =============================================================================
WTBT_Data["Hunter"]["Marksmanship"] = {
    [1] = {
        Head = {
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
            { name = "Demon Stalker Greathelm",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29081 },
        },
        Neck = {
            { name = "Choker of Vile Intent",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
            { name = "Worgen Claw Necklace",           source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28509 },
        },
        Shoulder = {
            { name = "Beast Lord Mantle",              source = "Warbringer O'mrogg — Shattered Halls", sourceType = "drop", gems = {},                  enchant = nil, itemId = 27801 },
            { name = "Demon Stalker Shoulderguards",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" }, enchant = nil, itemId = 29084 },
            { name = "Mantle of Shadowy Embrace",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Drape of the Dark Reavers",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
            { name = "Cloak of the Pit Stalker",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28777 },
        },
        Chest = {
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
            { name = "Primalstrike Vest",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29525 },
        },
        Wrist = {
            { name = "Nightfall Wristguards",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29246 },
            { name = "Primalstrike Bracers",           source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29527 },
            { name = "Vambraces of Daring",            source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Beast Lord Handguards",          source = "Warchief Kargath — Shattered Halls", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27474 },
            { name = "Grips of Deftness",              source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
            { name = "Demon Stalker Gauntlets",        source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29082 },
        },
        Waist = {
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
            { name = "Girdle of Treachery",            source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
            { name = "Primalstrike Belt",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29526 },
        },
        Legs = {
            { name = "Scaled Greaves of the Marksman", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30739 },
            { name = "Skulker's Greaves",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Demon Stalker Greaves",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29083 },
        },
        Feet = {
            { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Fiend Slayer Boots",             source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28549 },
            { name = "Ironstriders of Urgency",        source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of the Recalcitrant",       source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Garona's Signet Ring",           source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",         source = "Pathaleon — Heroic Mechanar",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Romulo's Poison Vial",           source = "Opera — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28579 },
        },
        MainHand = {
            { name = "Mooncleaver",                    source = "Weaponsmithing",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 28435 },
            { name = "Claw of the Watcher",            source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27846 },
        },
        OffHand = {
            { name = "Blade of the Unrequited",        source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28572 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Barrel-Blade Longrifle",         source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
            { name = "Wrathtide Longbow",              source = "Warlord Kalithresh — Heroic Steamvault", sourceType = "drop", gems = {},                enchant = nil, itemId = 27903 },
        },
    },
    [2] = {
        Head = {
            { name = "Rift Stalker Helm",              source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30141 },
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
            { name = "Choker of Vile Intent",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
        },
        Shoulder = {
            { name = "Rift Stalker Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30143 },
            { name = "Beast Lord Mantle",              source = "Warbringer O'mrogg — Shattered Halls", sourceType = "drop", gems = {},                  enchant = nil, itemId = 27801 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Rift Stalker Hauberk",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30139 },
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
        },
        Wrist = {
            { name = "Vambraces of Ending",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29966 },
        },
        Hands = {
            { name = "Rift Stalker Gauntlets",         source = "Leotheras the Blind — SSC",          sourceType = "token", gems = {},                   enchant = nil, itemId = 30140 },
        },
        Waist = {
            { name = "Belt of Deep Shadow",            source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30040 },
        },
        Legs = {
            { name = "Leggings of Murderous Intent",   source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
        },
        Feet = {
            { name = "Cobra-Lash Boots",               source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30104 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Talon of the Phoenix",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Netherstrand Longbow",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30318 },
            { name = "Serpent Spine Longbow",           source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30105 },
        },
    },
    [3] = {
        Head = {
            { name = "Gronnstalker's Helmet",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31003 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Softstep Boots of Tracking",     source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Ring2 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Trinket1 = {
            { name = "Madness of the Betrayer",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Talon of the Phoenix",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Black Bow of the Betrayer",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32336 },
        },
    },
    [4] = {
        Head = {
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Serrated Blades",      source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32591 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Softstep Boots of Tracking",     source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Signet of Primal Wrath",         source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Ring2 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Trinket1 = {
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Boundless Agony",                source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30901 },
        },
        OffHand = {
            { name = "Dagger of Bad Mojo",             source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33389 },
        },
        Relic = {
            { name = "Black Bow of the Betrayer",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32336 },
        },
    },
    [5] = {
        Head = {
            { name = "Coif of Alleria",                source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
            { name = "Duplicitous Guise",              source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
        },
        Neck = {
            { name = "Hard Khorium Choker",            source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Clutch of Demise",               source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
            { name = "Mantle of the Golden Forest",    source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34194 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Carapace of Sun and Shadow",     source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34369 },
        },
        Wrist = {
            { name = "Gronnstalker's Bracers",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34443 },
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gloves of Immortal Dusk",        source = "Leatherworking",                     sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
            { name = "Thalassian Ranger Gauntlets",    source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
        },
        Waist = {
            { name = "Gronnstalker's Belt",            source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34549 },
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Leggings of the Immortal Night", source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
            { name = "Starstalker Legguards",          source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34168 },
        },
        Feet = {
            { name = "Gronnstalker's Boots",           source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34570 },
            { name = "Shadowmaster's Boots",           source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Band of Ruinous Delight",        source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
            { name = "Hard Khorium Band",              source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Ring2 = {
            { name = "Angelista's Revenge",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34887 },
            { name = "Signet of Primal Wrath",         source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Blackened Naaru Sliver",         source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Hand of the Deceiver",           source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
        },
        OffHand = {
            { name = "Crux of the Apocalypse",         source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34329 },
            { name = "Shiv of Exsanguination",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34197 },
        },
        Relic = {
            { name = "Thori'dal, the Stars' Fury",     source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34334 },
            { name = "Golden Bow of Quel'Thalas",      source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- =============================================================================
-- SURVIVAL
-- =============================================================================
WTBT_Data["Hunter"]["Survival"] = {
    [1] = {
        Head = {
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
            { name = "Demon Stalker Greathelm",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29081 },
        },
        Neck = {
            { name = "Jagged Bark Pendant",            source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28343 },
            { name = "Choker of Vile Intent",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
            { name = "Worgen Claw Necklace",           source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28509 },
        },
        Shoulder = {
            { name = "Beast Lord Mantle",              source = "Warbringer O'mrogg — Shattered Halls", sourceType = "drop", gems = {},                  enchant = nil, itemId = 27801 },
            { name = "Demon Stalker Shoulderguards",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" }, enchant = nil, itemId = 29084 },
            { name = "Mantle of Shadowy Embrace",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Drape of the Dark Reavers",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Cloak of the Pit Stalker",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28777 },
        },
        Chest = {
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
            { name = "Primalstrike Vest",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29525 },
        },
        Wrist = {
            { name = "Nightfall Wristguards",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29246 },
            { name = "Primalstrike Bracers",           source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29527 },
            { name = "Vambraces of Daring",            source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Beast Lord Handguards",          source = "Warchief Kargath — Shattered Halls", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27474 },
            { name = "Grips of Deftness",              source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
            { name = "Demon Stalker Gauntlets",        source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29082 },
        },
        Waist = {
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
            { name = "Girdle of Treachery",            source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
            { name = "Primalstrike Belt",              source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29526 },
        },
        Legs = {
            { name = "Scaled Greaves of the Marksman", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30739 },
            { name = "Skulker's Greaves",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Demon Stalker Greaves",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29083 },
        },
        Feet = {
            { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Fiend Slayer Boots",             source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28549 },
            { name = "Ironstriders of Urgency",        source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28747 },
        },
        Ring1 = {
            { name = "Ring of the Recalcitrant",       source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Garona's Signet Ring",           source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",         source = "Pathaleon — Heroic Mechanar",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Romulo's Poison Vial",           source = "Opera — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28579 },
        },
        MainHand = {
            { name = "Legacy",                         source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28587 },
            { name = "Claw of the Watcher",            source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27846 },
        },
        OffHand = {
            { name = "Stormreaver Warblades",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28315 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Barrel-Blade Longrifle",         source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30724 },
        },
    },
    [2] = {
        Head = {
            { name = "Rift Stalker Helm",              source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30141 },
            { name = "Beast Lord Helm",                source = "The Black Stalker — The Underbog",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28275 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Rift Stalker Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30143 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            { name = "Vengeance Wrap",                 source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Rift Stalker Hauberk",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30139 },
            { name = "Beast Lord Cuirass",             source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28228 },
        },
        Wrist = {
            { name = "Vambraces of Ending",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29966 },
        },
        Hands = {
            { name = "Rift Stalker Gauntlets",         source = "Leotheras the Blind — SSC",          sourceType = "token", gems = {},                   enchant = nil, itemId = 30140 },
        },
        Waist = {
            { name = "Belt of Deep Shadow",            source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30040 },
        },
        Legs = {
            { name = "Leggings of Murderous Intent",   source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
        },
        Feet = {
            { name = "Cobra-Lash Boots",               source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30104 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Netherbane",                     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29924 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Serpent Spine Longbow",           source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30105 },
        },
    },
    [3] = {
        Head = {
            { name = "Gronnstalker's Helmet",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31003 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Don Alejandro's Money Belt",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30879 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",           source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Trinket1 = {
            { name = "Madness of the Betrayer",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        Trinket2 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        MainHand = {
            { name = "Blade of Infamy",                source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30881 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Halberd of Desolation",          source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32248 },
        },
    },
    [4] = {
        Head = {
            { name = "Gronnstalker's Helmet",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31003 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
        },
        Chest = {
            { name = "Gronnstalker's Chestguard",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31004 },
        },
        Wrist = {
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gronnstalker's Gloves",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31001 },
        },
        Waist = {
            { name = "Don Alejandro's Money Belt",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30879 },
        },
        Legs = {
            { name = "Gronnstalker's Leggings",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31005 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",           source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Signet of Primal Wrath",         source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Ring2 = {
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Trinket1 = {
            { name = "Madness of the Betrayer",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Blade of Infamy",                source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30881 },
        },
        OffHand = {
            { name = "Claw of the Phoenix",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29948 },
        },
        Relic = {
            { name = "Halberd of Desolation",          source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32248 },
        },
    },
    [5] = {
        Head = {
            { name = "Coif of Alleria",                source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
            { name = "Duplicitous Guise",              source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
        },
        Neck = {
            { name = "Clutch of Demise",               source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Gronnstalker's Spaulders",       source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31006 },
            { name = "Mantle of the Golden Forest",    source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34194 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
            { name = "Shadowmoon Destroyer's Drape",   source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Carapace of Sun and Shadow",     source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34369 },
        },
        Wrist = {
            { name = "Gronnstalker's Bracers",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34443 },
            { name = "Insidious Bands",                source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Gloves of Immortal Dusk",        source = "Leatherworking",                     sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
            { name = "Thalassian Ranger Gauntlets",    source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
        },
        Waist = {
            { name = "Gronnstalker's Belt",            source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34549 },
            { name = "Boneweave Girdle",               source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
        },
        Legs = {
            { name = "Leggings of the Immortal Night", source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
            { name = "Starstalker Legguards",          source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34168 },
        },
        Feet = {
            { name = "Gronnstalker's Boots",           source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34570 },
            { name = "Shadowmaster's Boots",           source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Hard Khorium Band",              source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Ring2 = {
            { name = "Band of Ruinous Delight",        source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Blackened Naaru Sliver",         source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Hand of the Deceiver",           source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
        },
        OffHand = {
            { name = "Vanir's Left Fist of Brutality", source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34951 },
            { name = "Shiv of Exsanguination",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34197 },
        },
        Relic = {
            { name = "Thori'dal, the Stars' Fury",     source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34334 },
            { name = "Golden Bow of Quel'Thalas",      source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}
