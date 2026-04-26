-- Wick's TBC BIS Tracker
-- Data_Paladin.lua — Holy, Protection, Retribution (Phases 1–5)
-- Source: Wowhead TBC Classic Paladin Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Paladin"] = WTBT_Data["Paladin"] or {}

-- =============================================================================
-- HOLY PALADIN
-- =============================================================================
WTBT_Data["Paladin"]["Holy"] = {
    [1] = {
        Head = {
            { name = "Justicar Diadem",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29061 },
            { name = "Whitemend Hood",                 source = "Tailoring",                          sourceType = "craft", gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 24264 },
        },
        Neck = {
            { name = "Archaic Charm of Presence",      source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
            { name = "Necklace of Eternal Hope",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29374 },
            { name = "Teeth of Gruul",                 source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28822 },
        },
        Shoulder = {
            { name = "Justicar Pauldrons",             source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 29064 },
            { name = "Primal Mooncloth Shoulders",     source = "Tailoring (Primal Mooncloth)",       sourceType = "craft", gems = { "blue", "yellow" }, enchant = "Greater Inscription of Discipline", itemId = 21874 },
        },
        Back = {
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan", sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
            { name = "Light-Touched Stole of Altruism", source = "Heroic Auchenai Crypts",           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29354 },
        },
        Chest = {
            { name = "Justicar Chestpiece",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29062 },
            { name = "Windhawk Hauberk",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29522 },
            { name = "Breastplate of the Lightbinder",  source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                          enchant = "Exceptional Stats (+6 all stats)", itemId = 28662 },
        },
        Wrist = {
            { name = "Windhawk Bracers",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29523 },
            { name = "Blessed Bracers",                source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 23539 },
            { name = "Bracers of Justice",             source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 28512 },
        },
        Hands = {
            { name = "Justicar Gloves",                source = "The Curator — Karazhan",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 29065 },
            { name = "Gauntlets of Renewed Hope",      source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28505 },
        },
        Waist = {
            { name = "Windhawk Belt",                  source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 29524 },
            { name = "Girdle of Truth",                source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28733 },
        },
        Legs = {
            { name = "Legplates of the Innocent",      source = "Chess Event — Karazhan",             sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 28748 },
            { name = "Justicar Leggings",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },         enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29063 },
        },
        Feet = {
            { name = "Boots of Valiance",              source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28569 },
            { name = "Forestlord Striders",            source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28752 },
        },
        Ring1 = {
            { name = "Naaru Lightwarden's Band",       source = "Quest: The Fall of Magtheridon",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
            { name = "Ring of Flowing Light",          source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
        },
        Ring2 = {
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Band of Halos",                  source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29373 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Pendant of the Violet Eye",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28727 },
            { name = "Lower City Prayerbook",          source = "Lower City — Revered",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
        },
        MainHand = {
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
            { name = "Shard of the Virtuous",          source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28522 },
        },
        OffHand = {
            { name = "Aegis of the Vindicator",        source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29458 },
            { name = "Triptych Shield of the Ancients", source = "Chess Event — Karazhan",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28754 },
            { name = "Tears of Heaven",                source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29274 },
        },
        Relic = {
            { name = "Libram of Souls Redeemed",       source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28592 },
            { name = "Libram of Mending",              source = "The Black Morass",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 23006 },
        },
    },
    [2] = {
        Head = {
            { name = "Crystalforge Greathelm",         source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30136 },
            { name = "Justicar Diadem",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29061 },
        },
        Neck = {
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Archaic Charm of Presence",      source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
        },
        Shoulder = {
            { name = "Crystalforge Pauldrons",         source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30138 },
            { name = "Coral-Barbed Shoulderpads",      source = "Leotheras — SSC",                    sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30097 },
        },
        Back = {
            { name = "Sunshower Light Cloak",          source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan", sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
        },
        Chest = {
            { name = "Crystalforge Chestpiece",        source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30134 },
            { name = "Justicar Chestpiece",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29062 },
        },
        Wrist = {
            { name = "Blackfathom Warbands",           source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30047 },
            { name = "Windhawk Bracers",               source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29523 },
        },
        Hands = {
            { name = "Glorious Gauntlets of Crestfall", source = "Lady Vashj — SSC",                 sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 30112 },
            { name = "Worldstorm Gauntlets",           source = "Solarian — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 29976 },
        },
        Waist = {
            { name = "Girdle of Fallen Stars",         source = "TK Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30030 },
            { name = "Primal Mooncloth Belt",          source = "Tailoring (Primal Mooncloth)",       sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
        },
        Legs = {
            { name = "Sunhawk Leggings",               source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29991 },
            { name = "Gilded Trousers of Benediction", source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
        },
        Feet = {
            { name = "Boots of Courage Unending",      source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30027 },
            { name = "Orca-Hide Boots",                source = "Leotheras — SSC",                    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30092 },
        },
        Ring1 = {
            { name = "Coral Band of the Revived",      source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
            { name = "Ring of Flowing Light",          source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
        },
        Ring2 = {
            { name = "Naaru Lightwarden's Band",       source = "Quest: The Fall of Magtheridon",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
            { name = "Phoenix-Ring of Rebirth",        source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29920 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Pendant of the Violet Eye",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28727 },
        },
        Trinket2 = {
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
            { name = "Lower City Prayerbook",          source = "Lower City — Revered",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
        },
        MainHand = {
            { name = "Lightfathom Scepter",            source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
        },
        OffHand = {
            { name = "Talisman of the Sun King",       source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29923 },
            { name = "Aegis of the Vindicator",        source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29458 },
        },
        Relic = {
            { name = "Libram of Souls Redeemed",       source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28592 },
            { name = "Libram of Absolute Truth",       source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30063 },
        },
    },
    [3] = {
        Head = {
            { name = "Lightbringer Greathelm",         source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30988 },
            { name = "Crystalforge Greathelm",         source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30136 },
        },
        Neck = {
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
        },
        Shoulder = {
            { name = "Lightbringer Pauldrons",         source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30996 },
            { name = "Glimmering Steel Mantle",        source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30878 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of the Final Stand",      source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34012 },
        },
        Chest = {
            { name = "Lightbringer Chestpiece",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30992 },
            { name = "Savior's Grasp",                 source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                          enchant = "Exceptional Stats (+6 all stats)", itemId = 30904 },
        },
        Wrist = {
            { name = "Blessed Adamantite Bracers",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30862 },
            { name = "Dawnsteel Bracers",              source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32571 },
        },
        Hands = {
            { name = "Glorious Gauntlets of Crestfall", source = "Lady Vashj — SSC",                 sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 30112 },
            { name = "Lightbringer Gloves",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 30983 },
        },
        Waist = {
            { name = "Girdle of Hope",                 source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30897 },
            { name = "Girdle of Fallen Stars",         source = "TK Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30030 },
        },
        Legs = {
            { name = "Lightbringer Leggings",          source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30994 },
            { name = "Leggings of Eternity",           source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
        },
        Feet = {
            { name = "Pearl Inlaid Boots",             source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32243 },
            { name = "Boots of the Divine Light",      source = "Hyjal Trash",                        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
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
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
        },
        Trinket2 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Hammer of Atonement",            source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30918 },
        },
        OffHand = {
            { name = "Felstone Bulwark",               source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32255 },
            { name = "Bastion of Light",               source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30882 },
            { name = "Scepter of Purification",        source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
        },
        Relic = {
            { name = "Libram of Souls Redeemed",       source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28592 },
            { name = "Libram of Absolute Truth",       source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30063 },
        },
    },
    [4] = {
        Head = {
            { name = "Lightbringer Greathelm",         source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30988 },
        },
        Neck = {
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
        },
        Shoulder = {
            { name = "Lightbringer Pauldrons",         source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30996 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Cloak of Ancient Rituals",       source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 33592 },
        },
        Chest = {
            { name = "Lightbringer Chestpiece",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30992 },
        },
        Wrist = {
            { name = "Blessed Adamantite Bracers",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30862 },
        },
        Hands = {
            { name = "Glorious Gauntlets of Crestfall", source = "Lady Vashj — SSC",                 sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 30112 },
        },
        Waist = {
            { name = "Girdle of Stromgarde's Hope",    source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33446 },
            { name = "Girdle of Hope",                 source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30897 },
        },
        Legs = {
            { name = "Lightbringer Leggings",          source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30994 },
        },
        Feet = {
            { name = "Pearl Inlaid Boots",             source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32243 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Signet of the Quiet Forest",     source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33498 },
        },
        Ring2 = {
            { name = "Ring of Calming Waves",          source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32238 },
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Trinket1 = {
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        Trinket2 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Dark Blessing",                  source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 33468 },
        },
        OffHand = {
            { name = "Felstone Bulwark",               source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32255 },
            { name = "Enamelled Disc of Mojo",         source = "Jan'alai — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33332 },
        },
        Relic = {
            { name = "Libram of Souls Redeemed",       source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28592 },
            { name = "Libram of Mending",              source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33502 },
        },
    },
    [5] = {
        Head = {
            { name = "Helm of Burning Righteousness",  source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 34243 },
            { name = "Lightbringer Greathelm",         source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30988 },
        },
        Neck = {
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
            { name = "Amulet of Flowing Life",         source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34360 },
        },
        Shoulder = {
            { name = "Spaulders of the Thalassian Savior", source = "Eredar Twins — Sunwell Plateau", sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 34193 },
            { name = "Lightbringer Pauldrons",         source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30996 },
        },
        Back = {
            { name = "Shroud of Redeemed Souls",       source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34205 },
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
        },
        Chest = {
            { name = "Garments of Serene Shores",      source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34229 },
            { name = "Sunblessed Breastplate",         source = "Blacksmithing (Sunmote)",            sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34379 },
            { name = "Lightbringer Chestpiece",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30992 },
        },
        Wrist = {
            { name = "Lightbringer Bracers",           source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 34432 },
            { name = "Blessed Adamantite Bracers",     source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30862 },
        },
        Hands = {
            { name = "Sunblessed Gauntlets",           source = "Blacksmithing (Sunmote)",            sourceType = "craft", gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 34380 },
            { name = "Glorious Gauntlets of Crestfall", source = "Lady Vashj — SSC",                 sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 30112 },
        },
        Waist = {
            { name = "Lightbringer Belt",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34487 },
            { name = "Girdle of Stromgarde's Hope",    source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33446 },
        },
        Legs = {
            { name = "Legplates of the Holy Juggernaut", source = "Kalecgos — Sunwell Plateau",      sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 34167 },
            { name = "Lightbringer Leggings",          source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30994 },
        },
        Feet = {
            { name = "Lightbringer Treads",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 34559 },
            { name = "Pearl Inlaid Boots",             source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32243 },
        },
        Ring1 = {
            { name = "Ring of Flowing Life",           source = "Jewelcrafting (BoE)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 34363 },
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
        },
        Ring2 = {
            { name = "Band of Lucent Beams",           source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34166 },
            { name = "Ring of Calming Waves",          source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32238 },
        },
        Trinket1 = {
            { name = "Glimmering Naaru Sliver",        source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34430 },
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        Trinket2 = {
            { name = "Redeemer's Alchemist Stone",     source = "Alchemy",                            sourceType = "craft", gems = {},                   enchant = nil, itemId = 35750 },
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
        },
        MainHand = {
            { name = "Hammer of Sanctification",       source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34335 },
            { name = "Archon's Gavel",                 source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34199 },
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
        },
        OffHand = {
            { name = "Aegis of Angelic Fortune",       source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34231 },
            { name = "Book of Highborne Hymns",        source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34206 },
            { name = "Felstone Bulwark",               source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32255 },
        },
        Relic = {
            { name = "Libram of Souls Redeemed",       source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28592 },
            { name = "Libram of Absolute Truth",       source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30063 },
        },
    },
}

-- =============================================================================
-- PROTECTION PALADIN
-- =============================================================================
WTBT_Data["Paladin"]["Protection"] = {
    [1] = {
        Head = {
            { name = "Justicar Faceguard",             source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29068 },
            { name = "Faceguard of Determination",     source = "G'eras — Badges of Justice",         sourceType = "badge", gems = { "meta", "red" },    enchant = nil, itemId = 32083 },
        },
        Neck = {
            { name = "Barbed Choker of Discipline",    source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28516 },
            { name = "Necklace of the Juggernaut",     source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29386 },
        },
        Shoulder = {
            { name = "Justicar Shoulderguards",        source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29070 },
            { name = "Spaulders of the Righteous",     source = "Laj — The Botanica",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27739 },
        },
        Back = {
            { name = "Gilded Thorium Cloak",           source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28660 },
            { name = "Farstrider Defender's Cloak",    source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29385 },
        },
        Chest = {
            { name = "Justicar Chestguard",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29066 },
            { name = "Panzar'Thar Breastplate",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                          enchant = nil, itemId = 28597 },
        },
        Wrist = {
            { name = "Vambraces of Courage",           source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
            { name = "Bracers of Dignity",             source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29252 },
        },
        Hands = {
            { name = "Justicar Handguards",            source = "The Curator — Karazhan",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 29067 },
            { name = "Iron Gauntlets of the Maiden",   source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28518 },
        },
        Waist = {
            { name = "Girdle of Valorous Deeds",       source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29253 },
            { name = "Crimson Girdle of the Indomitable", source = "Moroes — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28566 },
        },
        Legs = {
            { name = "Justicar Legguards",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29069 },
            { name = "Wrynn Dynasty Greaves",          source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28621 },
        },
        Feet = {
            { name = "Boots of the Righteous Path",    source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29254 },
            { name = "Ironstriders of Urgency",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
            { name = "Eaglecrest Warboots",            source = "Quest: Akama's Promise (SMV)",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 30735 },
        },
        Ring1 = {
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",    sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
            { name = "Shermanar Great-Ring",           source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28675 },
        },
        Ring2 = {
            { name = "A'dal's Signet of Defense",      source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 28792 },
            { name = "Iron Band of the Unbreakable",   source = "Lieutenant Drake — Old Hillsbrad",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27436 },
        },
        Trinket1 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
            { name = "Dabiri's Enigma",                source = "Quest: Dimensius the All-Devouring", sourceType = "quest", gems = {},                   enchant = nil, itemId = 30300 },
        },
        Trinket2 = {
            { name = "Figurine of the Colossus",       source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 27529 },
            { name = "Adamantine Figurine",            source = "Blackheart the Inciter — Heroic Shadow Labyrinth", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27891 },
        },
        MainHand = {
            { name = "King's Defender",                source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
            { name = "Continuum Blade",                source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29185 },
            { name = "Gavel of Unearthed Secrets",     source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30832 },
        },
        OffHand = {
            { name = "Aldori Legacy Defender",         source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28825 },
            { name = "Shield of Impenetrable Darkness", source = "Nightbane — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28606 },
            { name = "Crest of the Sha'tar",           source = "Sha'tar — Exalted",                  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29176 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
            { name = "Libram of Saints Departed",      source = "Darkweaver Syth — Sethekk Halls",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27917 },
        },
    },
    [2] = {
        Head = {
            { name = "Justicar Faceguard",             source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29068 },
            { name = "Crystalforge Faceguard",         source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30125 },
            { name = "Tankatronic Goggles",            source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32473 },
        },
        Neck = {
            { name = "The Darkener's Grasp",           source = "Kael'thas Quest — Tempest Keep",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 30007 },
            { name = "Barbed Choker of Discipline",    source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28516 },
        },
        Shoulder = {
            { name = "Justicar Shoulderguards",        source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29070 },
            { name = "Crystalforge Shoulderguards",    source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = nil, itemId = 30127 },
        },
        Back = {
            { name = "Phoenix-Wing Cloak",             source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29925 },
            { name = "Gilded Thorium Cloak",           source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 28660 },
        },
        Chest = {
            { name = "Justicar Chestguard",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29066 },
            { name = "Crystalforge Chestguard",        source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30123 },
        },
        Wrist = {
            { name = "Wristguards of Determination",   source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32515 },
            { name = "Vambraces of Courage",           source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28502 },
        },
        Hands = {
            { name = "Justicar Handguards",            source = "The Curator — Karazhan",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 29067 },
            { name = "Crystalforge Handguards",        source = "Leotheras — SSC",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30124 },
        },
        Waist = {
            { name = "Belt of the Guardian",           source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 30034 },
            { name = "Girdle of Valorous Deeds",       source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29253 },
        },
        Legs = {
            { name = "Justicar Legguards",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29069 },
            { name = "Crystalforge Legguards",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30126 },
        },
        Feet = {
            { name = "Boots of the Protector",         source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 30033 },
            { name = "Boots of the Righteous Path",    source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29254 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",         source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
            { name = "Violet Signet of the Great Protector", source = "The Violet Eye — Exalted",    sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29279 },
        },
        Ring2 = {
            { name = "Seventh Ring of the Tirisfalen",  source = "TK Trash",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30028 },
            { name = "A'dal's Signet of Defense",      source = "Aldor/Scryer Vendor",                sourceType = "rep",   gems = {},                   enchant = nil, itemId = 28792 },
        },
        Trinket1 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
            { name = "Scarab of Displacement",         source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30629 },
        },
        Trinket2 = {
            { name = "Figurine of the Colossus",       source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 27529 },
            { name = "Darkmoon Card: Vengeance",       source = "Darkmoon Faire",                     sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        MainHand = {
            { name = "Fang of the Leviathan",          source = "Leotheras — SSC",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30095 },
            { name = "King's Defender",                source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28749 },
        },
        OffHand = {
            { name = "Crest of the Sha'tar",           source = "Sha'tar — Exalted",                  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29176 },
            { name = "Shield of Impenetrable Darkness", source = "Nightbane — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28606 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
        },
    },
    [3] = {
        Head = {
            { name = "Faceplate of the Impenetrable",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32521 },
            { name = "Lightbringer Faceguard",         source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30987 },
        },
        Neck = {
            { name = "Pendant of Titans",              source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32362 },
            { name = "The Darkener's Grasp",           source = "Kael'thas Quest — Tempest Keep",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 30007 },
        },
        Shoulder = {
            { name = "Lightbringer Shoulderguards",    source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 30998 },
            { name = "Pauldrons of Abyssal Fury",      source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32250 },
        },
        Back = {
            { name = "Pepe's Shroud of Pacification",  source = "Hyjal Trash",                        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34010 },
            { name = "Phoenix-Wing Cloak",             source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29925 },
        },
        Chest = {
            { name = "Lightbringer Chestguard",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30991 },
            { name = "Glory of the Defender",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                          enchant = nil, itemId = 30896 },
        },
        Wrist = {
            { name = "The Seeker's Wristguards",       source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32279 },
            { name = "Eternium Shell Bracers",         source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32232 },
        },
        Hands = {
            { name = "Lightbringer Handguards",        source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30985 },
            { name = "Royal Gauntlets of Silvermoon",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29998 },
        },
        Waist = {
            { name = "Girdle of Mighty Resolve",       source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32342 },
            { name = "Girdle of Stability",            source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32333 },
        },
        Legs = {
            { name = "Lightbringer Legguards",         source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30995 },
            { name = "Praetorian's Legguards",         source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32263 },
        },
        Feet = {
            { name = "Tide-stomper's Greaves",         source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32245 },
            { name = "Boots of the Resilient",         source = "Solarian — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32267 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",         source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
            { name = "Band of the Abyssal Lord",       source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32261 },
        },
        Ring2 = {
            { name = "Band of the Eternal Defender",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29297 },
            { name = "Ring of Sundered Souls",         source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
        },
        Trinket1 = {
            { name = "Shadowmoon Insignia",            source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32501 },
            { name = "Darkmoon Card: Vengeance",       source = "Darkmoon Faire",                     sourceType = "quest", gems = {},                   enchant = nil, itemId = 31858 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
            { name = "Scarab of Displacement",         source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30629 },
        },
        MainHand = {
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
            { name = "Hammer of Judgement",            source = "Hyjal/BT Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34009 },
        },
        OffHand = {
            { name = "Bulwark of Azzinoth",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
            { name = "Kaz'rogal's Hardened Heart",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30889 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
            { name = "Tome of the Lightbringer",       source = "Vendor",                             sourceType = "badge", gems = {},                   enchant = nil, itemId = 32368 },
        },
    },
    [4] = {
        Head = {
            { name = "Faceplate of the Impenetrable",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32521 },
            { name = "Battleworn Tuskguard",           source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 33421 },
        },
        Neck = {
            { name = "Pendant of Titans",              source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32362 },
            { name = "The Darkener's Grasp",           source = "Kael'thas Quest — Tempest Keep",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 30007 },
        },
        Shoulder = {
            { name = "Lightbringer Shoulderguards",    source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 30998 },
            { name = "Pauldrons of Abyssal Fury",      source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32250 },
        },
        Back = {
            { name = "Slikk's Cloak of Placation",     source = "G'eras — 60 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33593 },
            { name = "Pepe's Shroud of Pacification",  source = "Hyjal Trash",                        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34010 },
        },
        Chest = {
            { name = "Lightbringer Chestguard",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30991 },
            { name = "Chestguard of the Stoic Guardian", source = "G'eras — 60 Badges of Justice",   sourceType = "badge", gems = {},                          enchant = nil, itemId = 33522 },
        },
        Wrist = {
            { name = "The Seeker's Wristguards",       source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32279 },
            { name = "Bracers of the Ancient Phalanx", source = "G'eras — 35 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33516 },
        },
        Hands = {
            { name = "Lightbringer Handguards",        source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30985 },
            { name = "Bonefist Gauntlets",             source = "G'eras — 60 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33517 },
        },
        Waist = {
            { name = "Girdle of the Protector",        source = "G'eras — 60 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33524 },
            { name = "Girdle of Mighty Resolve",       source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32342 },
        },
        Legs = {
            { name = "Lightbringer Legguards",         source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30995 },
            { name = "Unwavering Legguards",           source = "G'eras — 75 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33515 },
        },
        Feet = {
            { name = "Sabatons of the Righteous Defender", source = "G'eras — 60 Badges of Justice",  sourceType = "badge", gems = {},                   enchant = nil, itemId = 33523 },
            { name = "Jungle Stompers",                source = "Nalorakk — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33191 },
        },
        Ring1 = {
            { name = "Ring of Sundered Souls",         source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30083 },
            { name = "Signet of the Last Defender",    source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33499 },
        },
        Ring2 = {
            { name = "Band of the Eternal Defender",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29297 },
            { name = "Band of the Abyssal Lord",       source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32261 },
        },
        Trinket1 = {
            { name = "Shadowmoon Insignia",            source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32501 },
            { name = "Commendation of Kael'thas",      source = "Magisters' Terrace",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34473 },
        },
        Trinket2 = {
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
            { name = "Scarab of Displacement",         source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30629 },
        },
        MainHand = {
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
            { name = "Amani Punisher",                 source = "Akil'zon — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33283 },
        },
        OffHand = {
            { name = "Bulwark of Azzinoth",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
            { name = "Bulwark of the Amani Empire",    source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33326 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
            { name = "Libram of Divine Purpose",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33504 },
        },
    },
    [5] = {
        Head = {
            { name = "Helm of Uther's Resolve",        source = "Sunwell Plateau Vendor",             sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34401 },
            { name = "Faceplate of the Impenetrable",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32521 },
        },
        Neck = {
            { name = "Collar of the Pit Lord",         source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34178 },
            { name = "Pendant of Titans",              source = "Reliquary of Souls — Black Temple",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32362 },
        },
        Shoulder = {
            { name = "Spaulders of the Thalassian Defender", source = "Sunwell Plateau Vendor",       sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34389 },
            { name = "Pauldrons of Perseverance",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34192 },
        },
        Back = {
            { name = "Crimson Paragon's Cover",        source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34190 },
            { name = "Slikk's Cloak of Placation",     source = "G'eras — 60 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 33593 },
        },
        Chest = {
            { name = "Heroic Judicator's Chestguard",  source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34216 },
            { name = "Lightbringer Chestguard",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30991 },
        },
        Wrist = {
            { name = "Lightbringer Wristguards",       source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34433 },
            { name = "The Seeker's Wristguards",       source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32279 },
        },
        Hands = {
            { name = "Borderland Fortress Grips",      source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34352 },
            { name = "Lightbringer Handguards",        source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30985 },
        },
        Waist = {
            { name = "Lightbringer Waistguard",        source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34488 },
            { name = "Girdle of Mighty Resolve",       source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32342 },
        },
        Legs = {
            { name = "Judicator's Legguards",          source = "Sunwell Plateau Vendor",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 34382 },
            { name = "Lightbringer Legguards",         source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30995 },
        },
        Feet = {
            { name = "Lightbringer Stompers",          source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34560 },
            { name = "Tide-stomper's Greaves",         source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32245 },
        },
        Ring1 = {
            { name = "Ring of Hardened Resolve",       source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34213 },
        },
        Ring2 = {
            { name = "Ring of the Stalwart Protector", source = "G'eras — 60 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 34888 },
            { name = "Band of the Eternal Defender",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29297 },
        },
        Trinket1 = {
            { name = "Commendation of Kael'thas",      source = "Magisters' Terrace",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34473 },
        },
        Trinket2 = {
            { name = "Shadowmoon Insignia",            source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32501 },
            { name = "Moroes' Lucky Pocket Watch",     source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28528 },
        },
        MainHand = {
            { name = "Tempest of Chaos",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30910 },
        },
        OffHand = {
            { name = "Sword Breaker's Bulwark",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34185 },
            { name = "Bulwark of Azzinoth",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32375 },
        },
        Relic = {
            { name = "Libram of Repentance",           source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29388 },
        },
    },
}

-- =============================================================================
-- RETRIBUTION PALADIN
-- =============================================================================
WTBT_Data["Paladin"]["Retribution"] = {
    [1] = {
        Head = {
            { name = "Justicar Crown",                 source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29073 },
            { name = "Warpstalker Helm",               source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30731 },
        },
        Neck = {
            { name = "Choker of Vile Intent",          source = "G'eras — 25 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
            { name = "Worgen Claw Necklace",           source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28509 },
        },
        Shoulder = {
            { name = "Justicar Shoulderplates",        source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29075 },
            { name = "Ripfiend Shoulderplates",        source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30740 },
        },
        Back = {
            { name = "Vengeance Wrap",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            { name = "Black-Iron Battlecloak",         source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30729 },
        },
        Chest = {
            { name = "Justicar Breastplate",           source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29071 },
            { name = "Terrorweave Tunic",              source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30730 },
        },
        Wrist = {
            { name = "Bladespire Warbands",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
            { name = "Black Felsteel Bracers",         source = "Blacksmithing",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 23537 },
        },
        Hands = {
            { name = "Grips of Deftness",              source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
            { name = "Liar's Tongue Gloves",           source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28776 },
            { name = "Gauntlets of Martial Perfection", source = "Chess Event — Karazhan",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28747 },
        },
        Waist = {
            { name = "Girdle of the Endless Pit",      source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28779 },
            { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
        },
        Legs = {
            { name = "Shattrath Leggings",             source = "Quest",                              sourceType = "quest", gems = {},                   enchant = nil, itemId = 30257 },
            { name = "Skulker's Greaves",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
        },
        Feet = {
            { name = "Ironstriders of Urgency",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
            { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
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
            { name = "Ashtongue Talisman of Zeal",     source = "Quest",                              sourceType = "quest", gems = {},                   enchant = nil, itemId = 32486 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Abacus of Violent Odds",         source = "Heroic Mechanar",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        MainHand = {
            { name = "Lionheart Champion",             source = "Weaponsmithing",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 28429 },
            { name = "Gorehowl",                       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28773 },
        },
        OffHand = nil,
        Relic = {
            { name = "Libram of Avengement",           source = "Heroic Blood Furnace",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27484 },
            { name = "Libram of Divine Purpose",       source = "Heroic Steamvault",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28296 },
        },
    },
    [2] = {
        Head = {
            { name = "Furious Gizmatic Goggles",       source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32461 },
            { name = "Crystalforge War-Helm",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30131 },
        },
        Neck = {
            { name = "Pendant of the Perilous",        source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30022 },
            { name = "Choker of Vile Intent",          source = "G'eras — 25 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",   source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
            { name = "Crystalforge Shoulderbraces",    source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = nil, itemId = 30133 },
        },
        Back = {
            { name = "Razor-Scale Battlecloak",        source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30098 },
            { name = "Vengeance Wrap",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
        },
        Chest = {
            { name = "Crystalforge Breastplate",       source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30129 },
            { name = "Justicar Breastplate",           source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29071 },
        },
        Wrist = {
            { name = "Bracers of Eradication",         source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30057 },
            { name = "Bladespire Warbands",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28795 },
        },
        Hands = {
            { name = "Gloves of the Searing Grip",     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29947 },
            { name = "Grips of Deftness",              source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Girdle of the Endless Pit",      source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28779 },
        },
        Legs = {
            { name = "Greaves of the Bloodwarder",     source = "Solarian — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29950 },
            { name = "Shattrath Leggings",             source = "Quest",                              sourceType = "quest", gems = {},                   enchant = nil, itemId = 30257 },
        },
        Feet = {
            { name = "Warboots of Obliteration",       source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30081 },
            { name = "Ironstriders of Urgency",        source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28608 },
        },
        Ring1 = {
            { name = "Shapeshifter's Signet",          source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Ring2 = {
            { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Tsunami Talisman",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Abacus of Violent Odds",         source = "Heroic Mechanar",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        MainHand = {
            { name = "Lionheart Executioner",          source = "Weaponsmithing",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 28430 },
            { name = "Twinblade of the Phoenix",       source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29993 },
        },
        OffHand = nil,
        Relic = {
            { name = "Libram of Avengement",           source = "Heroic Blood Furnace",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27484 },
        },
    },
    [3] = {
        Head = {
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
            { name = "Lightbringer War-Helm",          source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30989 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
            { name = "Pendant of the Perilous",        source = "SSC Trash",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30022 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",   source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
            { name = "Swiftstrike Shoulders",          source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red" },     enchant = nil, itemId = 32581 },
        },
        Back = {
            { name = "Cloak of Darkness",              source = "Leatherworking (Violet Eye Exalted)", sourceType = "craft", gems = {},                  enchant = nil, itemId = 33122 },
            { name = "Razor-Scale Battlecloak",        source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30098 },
        },
        Chest = {
            { name = "Midnight Chestguard",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
            { name = "Lightbringer Breastplate",       source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30990 },
        },
        Wrist = {
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
            { name = "Bracers of Eradication",         source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30057 },
        },
        Hands = {
            { name = "Grips of Damnation",             source = "Reliquary of Lost — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32347 },
            { name = "Gloves of the Searing Grip",     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29947 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Shadow-walker's Cord",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32265 },
        },
        Legs = {
            { name = "Bow-stitched Leggings",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30900 },
            { name = "Lightbringer Greaves",           source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },         enchant = nil, itemId = 30993 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
            { name = "Warboots of Obliteration",       source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30081 },
        },
        Ring1 = {
            { name = "Shapeshifter's Signet",          source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Band of Devastation",            source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32526 },
        },
        Ring2 = {
            { name = "Unstoppable Aggressor's Ring",   source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32335 },
            { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
        },
        Trinket1 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Madness of the Betrayer",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            { name = "Madness of the Betrayer",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
        },
        MainHand = {
            { name = "Torch of the Damned",            source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32332 },
            { name = "Cataclysm's Edge",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        OffHand = nil,
        Relic = {
            { name = "Libram of Avengement",           source = "Heroic Blood Furnace",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27484 },
        },
    },
    [4] = {
        Head = {
            { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",   source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",   source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
        },
        Back = {
            { name = "Cloak of Fiends",                source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33590 },
            { name = "Cloak of Darkness",              source = "Leatherworking (Violet Eye Exalted)", sourceType = "craft", gems = {},                  enchant = nil, itemId = 33122 },
        },
        Chest = {
            { name = "Midnight Chestguard",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
        },
        Wrist = {
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
        },
        Hands = {
            { name = "Grips of Damnation",             source = "Reliquary of Lost — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32347 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Bow-stitched Leggings",          source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30900 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Band of Devastation",            source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32526 },
            { name = "Signet of Primal Wrath",         source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Ring2 = {
            { name = "Shapeshifter's Signet",          source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
        },
        Trinket1 = {
            { name = "Berserker's Call",               source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
        },
        MainHand = {
            { name = "Torch of the Damned",            source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32332 },
            { name = "Cataclysm's Edge",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        OffHand = nil,
        Relic = {
            { name = "Libram of Avengement",           source = "Heroic Blood Furnace",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27484 },
        },
    },
    [5] = {
        Head = {
            { name = "Duplicitous Guise",              source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
            { name = "Coif of Alleria",                source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34333 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Might", source = "SSO Exalted",                        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34679 },
            { name = "Clutch of Demise",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Pauldrons of Berserking",        source = "Sunwell Plateau Vendor",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 34388 },
            { name = "Shoulderpads of Vehemence",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34195 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",      source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34241 },
            { name = "Cloak of Fiends",                source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33590 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34397 },
            { name = "Warharness of Reckless Fury",    source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                          enchant = nil, itemId = 34215 },
        },
        Wrist = {
            { name = "Lightbringer Bands",             source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34431 },
            { name = "Bindings of Lightning Reflexes", source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32574 },
        },
        Hands = {
            { name = "Thalassian Ranger Gauntlets",    source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34343 },
            { name = "Gloves of Immortal Dusk",        source = "Leatherworking (Sunmote)",           sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
        },
        Waist = {
            { name = "Lightbringer Girdle",            source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34485 },
            { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
        },
        Legs = {
            { name = "Felfury Legplates",              source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34180 },
            { name = "Leggings of the Immortal Night", source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
        },
        Feet = {
            { name = "Lightbringer Boots",             source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34561 },
            { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
        },
        Ring1 = {
            { name = "Hard Khorium Band",              source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
            { name = "Band of Ruinous Delight",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
        },
        Ring2 = {
            { name = "Band of Devastation",            source = "BT Trash",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32526 },
        },
        Trinket1 = {
            { name = "Shard of Contempt",              source = "Magisters' Terrace",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34472 },
            { name = "Blackened Naaru Sliver",         source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 34427 },
        },
        Trinket2 = {
            { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        MainHand = {
            { name = "Apolyon, the Soul-Render",       source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34247 },
            { name = "Cataclysm's Edge",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30902 },
        },
        OffHand = nil,
        Relic = {
            { name = "Libram of Avengement",           source = "Heroic Blood Furnace",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27484 },
        },
    },
}
