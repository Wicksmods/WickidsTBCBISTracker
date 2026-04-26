-- Wick's TBC BIS Tracker
-- Data_Warlock.lua — Destruction, Affliction, Demonology (Phases 1–5)
-- Source: Wowhead TBC Classic Warlock Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Warlock"] = WTBT_Data["Warlock"] or {}

-- =============================================================================
-- DESTRUCTION
-- =============================================================================
WTBT_Data["Warlock"]["Destruction"] = {
    [1] = {
        Head = {
            { name = "Voidheart Crown",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28963 },
            { name = "Spellstrike Hood",               source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Collar of the Aldor",            source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
        },
        Neck = {
            { name = "Brooch of Unquenchable Fury",    source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Adornment of Stolen Souls",      source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Pendant of the Violet Eye",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Pauldrons of the Aldor",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
            { name = "Mantle of the Mind Flayer",      source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Shadow-Cloak of Dalaran",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Spellfire Robe",                 source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21848 },
            { name = "Voidheart Robe",                 source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28964 },
            { name = "Robe of the Elder Scribes",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bracers of Havok",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Crimson Bracers of Gloom",       source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Spellfire Gloves",               source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21847 },
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
        },
        Waist = {
            { name = "Spellfire Belt",                 source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
            { name = "Girdle of Ruination",            source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Inferno Waist Cord",             source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Voidheart Leggings",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28966 },
            { name = "Legwraps of the Aldor",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Ruby Slippers",                  source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",           source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Ashton's Ring of Adornment",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "The Lightning Capacitor",        source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",              source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Talon of the Tempest",           source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Bloodmaw Magus-Blade",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        OffHand = {
            { name = "Flametongue Seal",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29270 },
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
            { name = "Karaborian Talisman",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
        },
        Relic = {
            { name = "Tirisfal Wand of Ascendancy",    source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
            { name = "Eredar Wand of Obliteration",    source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
        },
    },
    [2] = {
        Head = {
            { name = "Destruction Holo-gogs",          source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
            { name = "Hood of the Corruptor",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30212 },
        },
        Neck = {
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Mantle of the Corruptor",        source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30215 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Corruptor",          source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30214 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Spellfire Gloves",               source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21847 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Corruptor",      source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30213 },
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
        },
        Feet = {
            { name = "Boots of Blasting",              source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Ring2 = {
            { name = "Band of Eternity",               source = "Scale of the Sands — Quest",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Merciless Gladiator's Spellblade", source = "PvP Vendor",                       sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32053 },
            { name = "Fang of the Leviathan",          source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30095 },
        },
        OffHand = {
            { name = "Fathomstone",                    source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
            { name = "Flametongue Seal",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29270 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Nethervoid Cloak",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32590 },
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Anetheron's Noose",              source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [4] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "Loop of Cursed Bones",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33466 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
            { name = "Shadowcaster's Drape",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33591 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Footpads of Madness",            source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33357 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Ring of Captured Storms",        source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Carved Witch Doctor's Stick",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33192 },
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Acumen", source = "Shattered Sun Offensive — Exalted", sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
        },
        Shoulder = {
            { name = "Amice of the Convoker",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34210 },
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",     source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Sunfire Robe",                   source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Fel Conquerer Raiments",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34232 },
        },
        Wrist = {
            { name = "Bracers of the Malefic",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34436 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
            { name = "Sunfire Handwraps",              source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 34366 },
        },
        Waist = {
            { name = "Belt of the Malefic",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34541 },
        },
        Legs = {
            { name = "Leggings of Calamity",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Boots of the Malefic",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34564 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",           source = "Jewelcrafting (Sunwell)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Ring2 = {
            { name = "Ring of Omnipotence",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
            { name = "Mana Attuned Band",              source = "Timed Chest — Zul'Aman",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Scryer's Blade of Focus",        source = "Shattered Sun Offensive — Exalted",  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34895 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Heart of the Pit",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}

-- =============================================================================
-- AFFLICTION
-- =============================================================================
WTBT_Data["Warlock"]["Affliction"] = {
    [1] = {
        Head = {
            { name = "Voidheart Crown",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28963 },
            { name = "Spellstrike Hood",               source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Collar of the Aldor",            source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
        },
        Neck = {
            { name = "Brooch of Unquenchable Fury",    source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Adornment of Stolen Souls",      source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Pendant of the Violet Eye",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Frozen Shadoweave Shoulders",    source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
            { name = "Pauldrons of the Aldor",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Shadow-Cloak of Dalaran",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Voidheart Robe",                 source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28964 },
            { name = "Frozen Shadoweave Robe",         source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
            { name = "Robe of the Elder Scribes",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bracers of Havok",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Crimson Bracers of Gloom",       source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Handwraps of Flowing Thought",   source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
        },
        Waist = {
            { name = "Girdle of Ruination",            source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Inferno Waist Cord",             source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Voidheart Leggings",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28966 },
            { name = "Legwraps of the Aldor",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Ruby Slippers",                  source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",           source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
            { name = "Ashton's Ring of Adornment",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "The Lightning Capacitor",        source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",              source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Talon of the Tempest",           source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Bloodmaw Magus-Blade",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        OffHand = {
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
            { name = "Karaborian Talisman",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
        },
        Relic = {
            { name = "Tirisfal Wand of Ascendancy",    source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
            { name = "Eredar Wand of Obliteration",    source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
        },
    },
    [2] = {
        Head = {
            { name = "Destruction Holo-gogs",          source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
            { name = "Hood of the Corruptor",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30212 },
        },
        Neck = {
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Mantle of the Corruptor",        source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30215 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Corruptor",          source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30214 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Spellfire Gloves",               source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21847 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Corruptor",      source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30213 },
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
        },
        Feet = {
            { name = "Boots of Blasting",              source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Ring2 = {
            { name = "Band of Eternity",               source = "Scale of the Sands — Quest",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Merciless Gladiator's Spellblade", source = "PvP Vendor",                       sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32053 },
            { name = "Fang of the Leviathan",          source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30095 },
        },
        OffHand = {
            { name = "Fathomstone",                    source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
            { name = "Flametongue Seal",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29270 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Nethervoid Cloak",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32590 },
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Anetheron's Noose",              source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [4] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "Loop of Cursed Bones",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33466 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
            { name = "Shadowcaster's Drape",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33591 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Footpads of Madness",            source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33357 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Ring of Captured Storms",        source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Carved Witch Doctor's Stick",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33192 },
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Acumen", source = "Shattered Sun Offensive — Exalted", sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
        },
        Shoulder = {
            { name = "Amice of the Convoker",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34210 },
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",     source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Sunfire Robe",                   source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Fel Conquerer Raiments",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34232 },
        },
        Wrist = {
            { name = "Bracers of the Malefic",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34436 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
            { name = "Sunfire Handwraps",              source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 34366 },
        },
        Waist = {
            { name = "Belt of the Malefic",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34541 },
        },
        Legs = {
            { name = "Leggings of Calamity",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Boots of the Malefic",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34564 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",           source = "Jewelcrafting (Sunwell)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Ring2 = {
            { name = "Ring of Omnipotence",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
            { name = "Mana Attuned Band",              source = "Timed Chest — Zul'Aman",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Scryer's Blade of Focus",        source = "Shattered Sun Offensive — Exalted",  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34895 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Heart of the Pit",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}

-- =============================================================================
-- DEMONOLOGY
-- =============================================================================
WTBT_Data["Warlock"]["Demonology"] = {
    [1] = {
        Head = {
            { name = "Voidheart Crown",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28963 },
            { name = "Spellstrike Hood",               source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Collar of the Aldor",            source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
        },
        Neck = {
            { name = "Brooch of Unquenchable Fury",    source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Adornment of Stolen Souls",      source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Pendant of the Violet Eye",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Frozen Shadoweave Shoulders",    source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
            { name = "Pauldrons of the Aldor",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Shadow-Cloak of Dalaran",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Voidheart Robe",                 source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28964 },
            { name = "Frozen Shadoweave Robe",         source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
            { name = "Robe of the Elder Scribes",      source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bracers of Havok",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Crimson Bracers of Gloom",       source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Handwraps of Flowing Thought",   source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
        },
        Waist = {
            { name = "Girdle of Ruination",            source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Inferno Waist Cord",             source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Voidheart Leggings",             source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28966 },
            { name = "Legwraps of the Aldor",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Ruby Slippers",                  source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",           source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
            { name = "Ashton's Ring of Adornment",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "The Lightning Capacitor",        source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",              source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Talon of the Tempest",           source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Bloodmaw Magus-Blade",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        OffHand = {
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
            { name = "Karaborian Talisman",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
        },
        Relic = {
            { name = "Tirisfal Wand of Ascendancy",    source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
            { name = "Eredar Wand of Obliteration",    source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
        },
    },
    [2] = {
        Head = {
            { name = "Destruction Holo-gogs",          source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
            { name = "Hood of the Corruptor",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30212 },
        },
        Neck = {
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Voidheart Mantle",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28967 },
            { name = "Mantle of the Corruptor",        source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30215 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Corruptor",          source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30214 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Voidheart Gloves",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28968 },
            { name = "Spellfire Gloves",               source = "Tailoring (Spellfire)",               sourceType = "craft", gems = {},                   enchant = nil, itemId = 21847 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Corruptor",      source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30213 },
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
        },
        Feet = {
            { name = "Boots of Blasting",              source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Ring2 = {
            { name = "Band of Eternity",               source = "Scale of the Sands — Quest",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Trinket1 = {
            { name = "Quagmirran's Eye",               source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Merciless Gladiator's Spellblade", source = "PvP Vendor",                       sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32053 },
            { name = "Fang of the Leviathan",          source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30095 },
        },
        OffHand = {
            { name = "Fathomstone",                    source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
            { name = "Flametongue Seal",               source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29270 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Nethervoid Cloak",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32590 },
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Anetheron's Noose",              source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [4] = {
        Head = {
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Reliquary of the Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "Loop of Cursed Bones",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33466 },
        },
        Shoulder = {
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
            { name = "Shadowcaster's Drape",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33591 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robe of the Malefic",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31052 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Malefic",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31050 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Footpads of Madness",            source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33357 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Ring of Captured Storms",        source = "High Warlord Naj'entus — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Zhar'doom Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Carved Witch Doctor's Stick",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33192 },
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
            { name = "Hood of the Malefic",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31051 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Acumen", source = "Shattered Sun Offensive — Exalted", sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
        },
        Shoulder = {
            { name = "Amice of the Convoker",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34210 },
            { name = "Mantle of the Malefic",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31054 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",     source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Sunfire Robe",                   source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Fel Conquerer Raiments",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34232 },
        },
        Wrist = {
            { name = "Bracers of the Malefic",         source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34436 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
            { name = "Sunfire Handwraps",              source = "Tailoring (Sunwell)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 34366 },
        },
        Waist = {
            { name = "Belt of the Malefic",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34541 },
        },
        Legs = {
            { name = "Leggings of Calamity",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
            { name = "Leggings of the Malefic",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31053 },
        },
        Feet = {
            { name = "Boots of the Malefic",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34564 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",           source = "Jewelcrafting (Sunwell)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Ring2 = {
            { name = "Ring of Omnipotence",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
            { name = "Mana Attuned Band",              source = "Timed Chest — Zul'Aman",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Scryer's Blade of Focus",        source = "Shattered Sun Offensive — Exalted",  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34895 },
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Heart of the Pit",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}
