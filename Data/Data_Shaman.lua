-- Wick's TBC BIS Tracker
-- Data_Shaman.lua — Restoration, Enhancement, Elemental (Phases 1–5)
-- Source: Wowhead TBC Classic Shaman Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Shaman"] = WTBT_Data["Shaman"] or {}

-- =============================================================================
-- RESTORATION
-- =============================================================================
WTBT_Data["Shaman"]["Restoration"] = {
    [1] = {
        Head = {
            { name = "Whitemend Hood",                 source = "Tailoring",                          sourceType = "craft", gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 24264 },
            { name = "Cyclone Headdress",              source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29028 },
        },
        Neck = {
            { name = "Archaic Charm of Presence",      source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
            { name = "Emberspur Talisman",             source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Cyclone Shoulderpads",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 29031 },
            { name = "Primal Mooncloth Shoulders",     source = "Tailoring (Primal Mooncloth)",       sourceType = "craft", gems = { "blue", "yellow" }, enchant = "Greater Inscription of Discipline", itemId = 21874 },
        },
        Back = {
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan", sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
            { name = "Lifegiving Cloak",               source = "World Drop — Outlands",              sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 31329 },
        },
        Chest = {
            { name = "Windhawk Hauberk",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29522 },
            { name = "Cyclone Hauberk",                source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29029 },
            { name = "Primal Mooncloth Robe",          source = "Tailoring (Primal Mooncloth)",       sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
        },
        Wrist = {
            { name = "Windhawk Bracers",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29523 },
            { name = "Bindings of the Timewalker",     source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29183 },
        },
        Hands = {
            { name = "Gloves of Centering",            source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28520 },
            { name = "Cyclone Gloves",                 source = "Karazhan",                           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 29032 },
        },
        Waist = {
            { name = "Windhawk Belt",                  source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 29524 },
            { name = "Primal Mooncloth Belt",          source = "Tailoring (Primal Mooncloth)",       sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
        },
        Legs = {
            { name = "Gilded Trousers of Benediction", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
            { name = "Cyclone Kilt",                   source = "Karazhan",                           sourceType = "drop",  gems = { "red", "red" },        enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29030 },
        },
        Feet = {
            { name = "Gold-Leaf Wildboots",            source = "World Drop",                         sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30737 },
            { name = "Forestlord Striders",            source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28752 },
        },
        Ring1 = {
            { name = "Jade Ring of the Everliving",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
            { name = "Ring of Flowing Light",          source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
        },
        Ring2 = {
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Naaru Lightwarden's Band",       source = "Quest: The Fall of Magtheridon",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Lower City Prayerbook",          source = "Lower City — Honored",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
            { name = "Scarab of the Infinite Cycle",   source = "Aeonus — The Black Morass",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28190 },
        },
        MainHand = {
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
            { name = "Shard of the Virtuous",          source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28522 },
        },
        OffHand = {
            { name = "Aegis of the Vindicator",        source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29458 },
            { name = "Triptych Shield of the Ancients", source = "Karazhan",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28754 },
        },
        Relic = {
            { name = "Totem of Healing Rains",         source = "Drop",                               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28523 },
            { name = "Totem of the Plains",            source = "Heroic Hellfire Ramparts",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 25645 },
        },
    },
    [2] = {
        Head = {
            { name = "Cataclysm Headguard",            source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30166 },
            { name = "Whitemend Hood",                 source = "Tailoring",                          sourceType = "craft", gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 24264 },
        },
        Neck = {
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Archaic Charm of Presence",      source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
        },
        Shoulder = {
            { name = "Cataclysm Shoulderguards",       source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30168 },
            { name = "Cyclone Shoulderpads",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 29031 },
        },
        Back = {
            { name = "Sunshower Light Cloak",          source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan", sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
        },
        Chest = {
            { name = "Cataclysm Chestguard",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30164 },
            { name = "Windhawk Hauberk",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29522 },
        },
        Wrist = {
            { name = "Blackfathom Warbands",           source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30047 },
            { name = "Windhawk Bracers",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29523 },
        },
        Hands = {
            { name = "Worldstorm Gauntlets",           source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 29976 },
            { name = "Cyclone Gloves",                 source = "Karazhan",                           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 29032 },
        },
        Waist = {
            { name = "Girdle of Fallen Stars",         source = "TK Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30030 },
            { name = "Windhawk Belt",                  source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 29524 },
        },
        Legs = {
            { name = "Sunhawk Leggings",               source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29991 },
            { name = "Gilded Trousers of Benediction", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
        },
        Feet = {
            { name = "Orca-Hide Boots",                source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30092 },
            { name = "Boots of Courage Unending",      source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30027 },
        },
        Ring1 = {
            { name = "Jade Ring of the Everliving",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
            { name = "Phoenix-Ring of Rebirth",        source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29920 },
        },
        Ring2 = {
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Naaru Lightwarden's Band",       source = "Quest: The Fall of Magtheridon",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Scarab of the Infinite Cycle",   source = "Aeonus — The Black Morass",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28190 },
            { name = "Lower City Prayerbook",          source = "Lower City — Honored",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
        },
        MainHand = {
            { name = "Lightfathom Scepter",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
        },
        OffHand = {
            { name = "Aegis of the Vindicator",        source = "SSC",                                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29458 },
            { name = "Triptych Shield of the Ancients", source = "Karazhan",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28754 },
        },
        Relic = {
            { name = "Totem of Healing Rains",         source = "Drop",                               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28523 },
            { name = "Totem of the Plains",            source = "Heroic Hellfire Ramparts",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 25645 },
        },
    },
    [3] = {
        Head = {
            { name = "Skyshatter Helmet",              source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31012 },
            { name = "Cataclysm Headguard",            source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30166 },
        },
        Neck = {
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
        },
        Shoulder = {
            { name = "Skyshatter Shoulderpads",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31022 },
            { name = "Cataclysm Shoulderguards",       source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30168 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of the Final Stand",      source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34012 },
        },
        Chest = {
            { name = "Skyshatter Chestguard",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31016 },
            { name = "Cataclysm Chestguard",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30164 },
        },
        Wrist = {
            { name = "Living Earth Bindings",          source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32577 },
            { name = "Blessed Adamantite Bracers",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30862 },
        },
        Hands = {
            { name = "Botanist's Gloves of Growth",    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32328 },
            { name = "Skyshatter Gloves",              source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 31007 },
        },
        Waist = {
            { name = "Naturalist's Preserving Cinch",  source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32258 },
            { name = "Girdle of Hope",                 source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30897 },
        },
        Legs = {
            { name = "Skyshatter Leggings",            source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 31019 },
            { name = "Leggings of Eternity",           source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
        },
        Feet = {
            { name = "Stillwater Boots",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30873 },
            { name = "Pearl Inlaid Boots",             source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32243 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Ring of Calming Waves",          source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32238 },
        },
        Ring2 = {
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
            { name = "Coral Band of the Revived",      source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
        },
        Trinket1 = {
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
        },
        Trinket2 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Lower City Prayerbook",          source = "Lower City — Honored",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Hammer of Atonement",            source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30918 },
        },
        OffHand = {
            { name = "Tears of Heaven",                source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29274 },
            { name = "Bastion of Light",               source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30882 },
        },
        Relic = {
            { name = "Totem of Healing Rains",         source = "Drop",                               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28523 },
            { name = "Totem of the Plains",            source = "Heroic Hellfire Ramparts",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 25645 },
        },
    },
    [4] = {
        Head = {
            { name = "Skyshatter Helmet",              source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31012 },
            { name = "Helm of Soothing Currents",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32241 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",       source = "Akil'zon — Zul'Aman",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
        },
        Shoulder = {
            { name = "Skyshatter Shoulderpads",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31022 },
            { name = "Living Earth Shoulders",         source = "Leatherworking",                     sourceType = "craft", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 32579 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of the Final Stand",      source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34012 },
        },
        Chest = {
            { name = "Skyshatter Chestguard",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31016 },
            { name = "Cataclysm Chestguard",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30164 },
        },
        Wrist = {
            { name = "Living Earth Bindings",          source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32577 },
            { name = "Swiftheal Wraps",                source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
        },
        Hands = {
            { name = "Botanist's Gloves of Growth",    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32328 },
            { name = "Spiritwalker Gauntlets",         source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32275 },
        },
        Waist = {
            { name = "Naturalist's Preserving Cinch",  source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32258 },
            { name = "Belt of Primal Majesty",         source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32339 },
        },
        Legs = {
            { name = "Skyshatter Leggings",            source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 31019 },
        },
        Feet = {
            { name = "Treads of the Life Path",        source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 33324 },
            { name = "Stillwater Boots",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30873 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Signet of the Quiet Forest",     source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33498 },
        },
        Ring2 = {
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Trinket1 = {
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
        },
        Trinket2 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Tome of Diabolic Remedy",        source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33828 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Dark Blessing",                  source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 33468 },
        },
        OffHand = {
            { name = "Bastion of Light",               source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30882 },
            { name = "Felstone Bulwark",               source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32255 },
        },
        Relic = {
            { name = "Totem of Healing Rains",         source = "Drop",                               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28523 },
            { name = "Totem of Living Water",          source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33505 },
        },
    },
    [5] = {
        Head = {
            { name = "Shroud of Chieftain Ner'zhul",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 34402 },
            { name = "Skyshatter Helmet",              source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31012 },
        },
        Neck = {
            { name = "Amulet of Flowing Life",         source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34360 },
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
        },
        Shoulder = {
            { name = "Equilibrium Epaulets",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 34208 },
            { name = "Skyshatter Shoulderpads",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31022 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of Redeemed Souls",       source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34205 },
        },
        Chest = {
            { name = "Sunglow Vest",                   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34212 },
            { name = "Skyshatter Chestguard",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31016 },
        },
        Wrist = {
            { name = "Living Earth Bindings",          source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32577 },
            { name = "Skyshatter Bracers",             source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 34438 },
        },
        Hands = {
            { name = "Leather Gauntlets of the Sun",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 34372 },
            { name = "Botanist's Gloves of Growth",    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32328 },
        },
        Waist = {
            { name = "Naturalist's Preserving Cinch",  source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32258 },
            { name = "Skyshatter Belt",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34543 },
        },
        Legs = {
            { name = "Kilt of Spiritual Reconstruction", source = "Sunwell Plateau",                  sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 34383 },
            { name = "Skyshatter Leggings",            source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 31019 },
        },
        Feet = {
            { name = "Treads of the Life Path",        source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 33324 },
            { name = "Stillwater Boots",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30873 },
        },
        Ring1 = {
            { name = "Ring of Flowing Life",           source = "Jewelcrafting (BoE)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 34363 },
            { name = "Band of Lucent Beams",           source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34166 },
        },
        Ring2 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Trinket1 = {
            { name = "Glimmering Naaru Sliver",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34430 },
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        Trinket2 = {
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
        },
        MainHand = {
            { name = "Hammer of Sanctification",       source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34335 },
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
        },
        OffHand = {
            { name = "Aegis of Angelic Fortune",       source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34231 },
            { name = "Tears of Heaven",                source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29274 },
        },
        Relic = {
            { name = "Totem of Living Water",          source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33505 },
            { name = "Totem of Healing Rains",         source = "Drop",                               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28523 },
        },
    },
}

-- =============================================================================
-- ENHANCEMENT
-- =============================================================================
WTBT_Data["Shaman"]["Enhancement"] = {
    [1] = {
        Head = {
            { name = "Cyclone Helm",                   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29040 },
            { name = "Wastewalker Helm",               source = "Warp Splinter — The Botanica",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 28182 },
        },
        Neck = {
            { name = "Choker of Vile Intent",          source = "G'eras — 25 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
            { name = "Worgen Claw Necklace",           source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28509 },
        },
        Shoulder = {
            { name = "Cyclone Shoulderplates",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29043 },
            { name = "Ripfiend Shoulderplates",        source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30740 },
        },
        Back = {
            { name = "Vengeance Wrap",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Black-Iron Battlecloak",         source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30729 },
        },
        Chest = {
            { name = "Terrorweave Tunic",              source = "Doomwalker — World Boss",             sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30730 },
            { name = "Ebon Netherscale Breastplate",   source = "Dragonscale Leatherworking",         sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29515 },
        },
        Wrist = {
            { name = "Ebon Netherscale Bracers",       source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29517 },
            { name = "Bladespire Warbands",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Liar's Tongue Gloves",           source = "Magtheridon's Lair",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28776 },
            { name = "Grips of Deftness",              source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
        },
        Waist = {
            { name = "Ebon Netherscale Belt",          source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29516 },
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
        },
        Legs = {
            { name = "Skulker's Greaves",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
            { name = "Shattrath Leggings",             source = "Quest",                              sourceType = "quest", gems = {},                   enchant = nil, itemId = 30257 },
        },
        Feet = {
            { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            { name = "Ironstriders of Urgency",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
        },
        Ring1 = {
            { name = "Shapeshifter's Signet",          source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Garona's Signet Ring",           source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Abacus of Violent Odds",         source = "Heroic Mechanar",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Hourglass of the Unraveller",    source = "Temporus — The Black Morass",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28034 },
        },
        MainHand = {
            { name = "Gladiator's Cleaver",            source = "Arena PvP",                          sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28308 },
            { name = "Spiteblade",                     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28729 },
        },
        OffHand = {
            { name = "Gladiator's Right Ripper",       source = "Arena PvP",                          sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28313 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — The Black Morass",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Totem of the Astral Winds",      source = "Heroic Mana-Tombs",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27815 },
            { name = "Stonebreaker's Totem",           source = "Quest: Spirits of Auchindoun",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27984 },
        },
    },
    [2] = {
        Head = {
            { name = "Cataclysm Helm",                 source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30190 },
            { name = "Surestrike Goggles v2.0",        source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32474 },
        },
        Neck = {
            { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
            { name = "Pendant of the Perilous",        source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30022 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",   source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
            { name = "Cyclone Shoulderplates",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29043 },
        },
        Back = {
            { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            { name = "Vengeance Wrap",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Cataclysm Chestplate",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30185 },
            { name = "Terrorweave Tunic",              source = "Doomwalker — World Boss",             sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30730 },
        },
        Wrist = {
            { name = "True-Aim Stalker Bands",         source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30091 },
            { name = "Vambraces of Ending",            source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29966 },
        },
        Hands = {
            { name = "Cataclysm Gauntlets",            source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30189 },
            { name = "Gloves of the Searing Grip",     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29947 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
        },
        Legs = {
            { name = "Cataclysm Legplates",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30192 },
            { name = "Skulker's Greaves",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
        },
        Feet = {
            { name = "Boots of Utter Darkness",        source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30039 },
            { name = "Cobra-Lash Boots",               source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30104 },
        },
        Ring1 = {
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
            { name = "Shapeshifter's Signet",          source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
        },
        Ring2 = {
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Hourglass of the Unraveller",    source = "Temporus — The Black Morass",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28034 },
        },
        MainHand = {
            { name = "Rod of the Sun King",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29996 },
            { name = "Talon of the Phoenix",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        OffHand = {
            { name = "Merciless Gladiator's Cleaver",  source = "Arena PvP (Season 2)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 31965 },
            { name = "Netherbane",                     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29924 },
        },
        Relic = {
            { name = "Totem of the Astral Winds",      source = "Heroic Mana-Tombs",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27815 },
            { name = "Stonebreaker's Totem",           source = "Quest: Spirits of Auchindoun",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27984 },
        },
    },
    [3] = {
        Head = {
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
            { name = "Skyshatter Cover",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31015 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
            { name = "Choker of Serrated Blades",      source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32591 },
        },
        Shoulder = {
            { name = "Swiftstrike Shoulders",          source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red" },     enchant = nil, itemId = 32581 },
            { name = "Mantle of Darkness",             source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32377 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
            { name = "Cloak of Darkness",              source = "Leatherworking (Violet Eye Exalted)", sourceType = "craft", gems = {},                  enchant = nil, itemId = 33122 },
        },
        Chest = {
            { name = "Midnight Chestguard",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
            { name = "Nether Shadow Tunic",            source = "Supremus — Black Temple",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 32252 },
        },
        Wrist = {
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
            { name = "Insidious Bands",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Grips of Damnation",             source = "Reliquary of Lost — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32347 },
            { name = "Fists of Mukoa",                 source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32234 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Shadow-walker's Cord",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32265 },
        },
        Legs = {
            { name = "Bow-stitched Leggings",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30900 },
            { name = "Cataclysm Legplates",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30192 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
            { name = "Softstep Boots of Tracking",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Trinket1 = {
            { name = "Madness of the Betrayer",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
        },
        MainHand = {
            { name = "Syphon of the Nathrezim",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32262 },
            { name = "Rod of the Sun King",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29996 },
        },
        OffHand = {
            { name = "Syphon of the Nathrezim",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32262 },
            { name = "Talon of the Phoenix",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        Relic = {
            { name = "Totem of the Astral Winds",      source = "Heroic Mana-Tombs",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27815 },
            { name = "Stonebreaker's Totem",           source = "Quest: Spirits of Auchindoun",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27984 },
        },
    },
    [4] = {
        Head = {
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Swiftstrike Shoulders",          source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red" },     enchant = nil, itemId = 32581 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
            { name = "Cloak of Fiends",                source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33590 },
        },
        Chest = {
            { name = "Midnight Chestguard",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
        },
        Wrist = {
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
            { name = "Insidious Bands",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
        },
        Hands = {
            { name = "Fists of Mukoa",                 source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32234 },
            { name = "Grips of Damnation",             source = "Reliquary of Lost — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32347 },
        },
        Waist = {
            { name = "Boneweave Girdle",               source = "Reliquary of Lost — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32346 },
            { name = "Shadow-walker's Cord",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32265 },
        },
        Legs = {
            { name = "Bow-stitched Leggings",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30900 },
        },
        Feet = {
            { name = "Softstep Boots of Tracking",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
            { name = "Shadowmaster's Boots",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            { name = "Signet of Primal Wrath",         source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Ring2 = {
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Trinket1 = {
            { name = "Madness of the Betrayer",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        Trinket2 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Berserker's Call",               source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        MainHand = {
            { name = "Syphon of the Nathrezim",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32262 },
        },
        OffHand = {
            { name = "Syphon of the Nathrezim",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32262 },
            { name = "Talon of the Phoenix",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32944 },
        },
        Relic = {
            { name = "Stonebreaker's Totem",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33507 },
        },
    },
    [5] = {
        Head = {
            { name = "Duplicitous Guise",              source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Hard Khorium Choker",            source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Clutch of Demise",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Demontooth Shoulderpads",        source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 34392 },
            { name = "Swiftstrike Shoulders",          source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red" },     enchant = nil, itemId = 32581 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",      source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
            { name = "Shadowmoon Destroyer's Drape",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Carapace of Sun and Shadow",     source = "Leatherworking (Sunmote)",           sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34369 },
        },
        Wrist = {
            { name = "Skyshatter Wristguards",         source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34439 },
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
        },
        Hands = {
            { name = "Thalassian Ranger Gauntlets",    source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
            { name = "Gloves of Immortal Dusk",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34370 },
        },
        Waist = {
            { name = "Skyshatter Girdle",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34545 },
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Leggings of the Immortal Night", source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
            { name = "Bow-stitched Leggings",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30900 },
        },
        Feet = {
            { name = "Skyshatter Greaves",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34567 },
            { name = "Softstep Boots of Tracking",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32510 },
        },
        Ring1 = {
            { name = "Band of Ruinous Delight",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
            { name = "Hard Khorium Band",              source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
        },
        Ring2 = {
            { name = "Stormrage Signet Ring",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Trinket1 = {
            { name = "Blackened Naaru Sliver",         source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 34427 },
            { name = "Shard of Contempt",              source = "Magisters' Terrace",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34472 },
        },
        Trinket2 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Madness of the Betrayer",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Hand of the Deceiver",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
            { name = "Syphon of the Nathrezim",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32262 },
        },
        OffHand = {
            { name = "Mounting Vengeance",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34346 },
            { name = "Claw of Molten Fury",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32946 },
        },
        Relic = {
            { name = "Stonebreaker's Totem",           source = "Vendor",                             sourceType = "badge", gems = {},                   enchant = nil, itemId = 33507 },
        },
    },
}

-- =============================================================================
-- ELEMENTAL
-- =============================================================================
WTBT_Data["Shaman"]["Elemental"] = {
    [1] = {
        Head = {
            { name = "Cyclone Faceguard",              source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29035 },
            { name = "Spellstrike Hood",               source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
        },
        Neck = {
            { name = "Adornment of Stolen Souls",      source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Brooch of Unquenchable Fury",    source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
        },
        Shoulder = {
            { name = "Cyclone Shoulderguards",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29037 },
            { name = "Spaulders of Oblivion",          source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30725 },
        },
        Back = {
            { name = "Brute Cloak of the Ogre-Magi",  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Netherstrike Breastplate",       source = "Dragonscale Leatherworking",         sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29519 },
            { name = "Cyclone Chestguard",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29033 },
        },
        Wrist = {
            { name = "Netherstrike Bracers",           source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29521 },
            { name = "Crimson Bracers of Gloom",       source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30732 },
        },
        Hands = {
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon's Lair",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
            { name = "Cyclone Handguards",             source = "The Curator — Karazhan",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 29034 },
        },
        Waist = {
            { name = "Netherstrike Belt",              source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29520 },
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Cyclone Legguards",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29036 },
        },
        Feet = {
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Boots of Blasting",              source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Ring of Unrelenting Storms",     source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30667 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Cobalt Band of Tyrigosa",        source = "Nexus-Prince Shaffar — Mana-Tombs",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28227 },
        },
        Trinket1 = {
            { name = "The Lightning Capacitor",        source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
            { name = "Quagmirran's Eye",               source = "Heroic Slave Pens",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",              source = "Scryers — Revered",                  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Gladiator's Gavel",              source = "Arena PvP",                          sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28297 },
        },
        OffHand = {
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
            { name = "Orb of the Soul-Eater",          source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
        },
        Relic = {
            { name = "Totem of the Void",              source = "Mechanar",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28248 },
            { name = "Totem of Wrath's Tempest",       source = "Quest: The Cipher of Damnation",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 30023 },
        },
    },
    [2] = {
        Head = {
            { name = "Cataclysm Headpiece",            source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30171 },
            { name = "Cyclone Faceguard",              source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29035 },
        },
        Neck = {
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
            { name = "Adornment of Stolen Souls",      source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
        },
        Shoulder = {
            { name = "Cataclysm Shoulderpads",         source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = nil, itemId = 30173 },
            { name = "Cyclone Shoulderguards",         source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29037 },
        },
        Back = {
            { name = "Brute Cloak of the Ogre-Magi",  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Royal Cloak of the Sunstriders", source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29992 },
        },
        Chest = {
            { name = "Cataclysm Chestpiece",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30169 },
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
            { name = "Netherstrike Bracers",           source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29521 },
        },
        Hands = {
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon's Lair",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
            { name = "Cataclysm Handgrips",            source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30170 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Netherstrike Belt",              source = "Dragonscale Leatherworking",         sourceType = "craft", gems = {},                   enchant = nil, itemId = 29520 },
        },
        Legs = {
            { name = "Cataclysm Leggings",             source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30172 },
            { name = "Spellstrike Pants",              source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
        },
        Feet = {
            { name = "Velvet Boots of the Guardian",   source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30067 },
            { name = "Boots of Blasting",              source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Ring of Unrelenting Storms",     source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30667 },
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Ring2 = {
            { name = "Band of Eternity",               source = "Scale of the Sands Quest",           sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
        },
        Trinket1 = {
            { name = "The Lightning Capacitor",        source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
            { name = "Quagmirran's Eye",               source = "Heroic Slave Pens",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Sextant of Unstable Currents",   source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30626 },
        },
        MainHand = {
            { name = "The Nexus Key",                  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29988 },
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
        },
        OffHand = {
            { name = "Fathomstone",                    source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
        },
        Relic = {
            { name = "Totem of the Void",              source = "Mechanar",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28248 },
            { name = "Totem of Wrath's Tempest",       source = "Quest: The Cipher of Damnation",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 30023 },
        },
    },
    [3] = {
        Head = {
            { name = "Skyshatter Headguard",           source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31014 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
            { name = "Translucent Spellthread Necklace", source = "Reliquary of Lost — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
        },
        Shoulder = {
            { name = "Skyshatter Mantle",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31023 },
            { name = "Mantle of Nimble Thought",       source = "Tailoring",                          sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 32587 },
        },
        Back = {
            { name = "Cloak of the Illidari Council",  source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32331 },
            { name = "Brute Cloak of the Ogre-Magi",  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
        },
        Chest = {
            { name = "Skyshatter Breastplate",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31017 },
            { name = "Cataclysm Chestpiece",           source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30169 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Skyshatter Gauntlets",           source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31008 },
            { name = "Cataclysm Handgrips",            source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30170 },
        },
        Waist = {
            { name = "Flashfire Girdle",               source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32276 },
            { name = "Waistwrap of Infinity",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Skyshatter Legguards",           source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 31020 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Velvet Boots of the Guardian",   source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30067 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
            { name = "Ring of Unrelenting Storms",     source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30667 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Hex Shrunken Head",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        Trinket2 = {
            { name = "The Lightning Capacitor",        source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
            { name = "The Nexus Key",                  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29988 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
            { name = "Fathomstone",                    source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
        },
        Relic = {
            { name = "Totem of Ancestral Guidance",    source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32330 },
            { name = "Totem of the Void",              source = "Mechanar",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28248 },
        },
    },
    [4] = {
        Head = {
            { name = "Skyshatter Headguard",           source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31014 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",       source = "Akil'zon — Zul'Aman",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Loop of Cursed Bones",           source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33466 },
        },
        Shoulder = {
            { name = "Skyshatter Mantle",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31023 },
        },
        Back = {
            { name = "Cloak of the Illidari Council",  source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32331 },
            { name = "Shadowcaster's Drape",           source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33591 },
        },
        Chest = {
            { name = "Skyshatter Breastplate",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31017 },
            { name = "Hauberk of the Furious Elements", source = "G'eras — Badges of Justice",        sourceType = "badge", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 33965 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Skyshatter Gauntlets",           source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31008 },
        },
        Waist = {
            { name = "Flashfire Girdle",               source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32276 },
        },
        Legs = {
            { name = "Skyshatter Legguards",           source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 31020 },
        },
        Feet = {
            { name = "Boots of Oceanic Fury",          source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32242 },
            { name = "Slippers of the Seacaller",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Captured Storms",        source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
            { name = "Mana Attuned Band",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Ring2 = {
            { name = "Ring of Ancient Knowledge",      source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Hex Shrunken Head",              source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        Trinket2 = {
            { name = "The Lightning Capacitor",        source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
            { name = "Fetish of the Primal Gods",      source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33334 },
        },
        Relic = {
            { name = "Totem of Ancestral Guidance",    source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32330 },
            { name = "Skycall Totem",                  source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33506 },
        },
    },
    [5] = {
        Head = {
            { name = "Cowl of Gul'dan",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34332 },
        },
        Neck = {
            { name = "Pendant of Sunfire",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34359 },
        },
        Shoulder = {
            { name = "Skyshatter Mantle",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31023 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",     source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Skyshatter Breastplate",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31017 },
        },
        Wrist = {
            { name = "Skyshatter Bands",               source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34437 },
        },
        Hands = {
            { name = "Gauntlets of the Ancient Shadowmoon", source = "Sunwell Plateau",               sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34350 },
        },
        Waist = {
            { name = "Skyshatter Cord",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34542 },
        },
        Legs = {
            { name = "Skyshatter Legguards",           source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 31020 },
        },
        Feet = {
            { name = "Skyshatter Treads",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34566 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34362 },
        },
        Ring2 = {
            { name = "Ring of Ancient Knowledge",      source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Shifting Naaru Sliver",          source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
        },
        OffHand = nil,
        Relic = {
            { name = "Totem of Ancestral Guidance",    source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32330 },
        },
    },
}
