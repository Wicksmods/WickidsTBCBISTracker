-- Wick's TBC BIS Tracker
-- Data_FeralDruid.lua
--
-- Structure per item:
--   name       string  item name
--   source     string  boss/vendor/craft name
--   sourceType string  "drop"|"craft"|"badge"|"rep"|"quest"|"pvp"|"token"
--   gems       table   list of gem color strings
--   enchant    string  recommended enchant (nil if none)
--   itemId     number  wowhead item ID

WTBT_Data = WTBT_Data or {}
WTBT_Data["Druid"] = WTBT_Data["Druid"] or {}
WTBT_Data["Druid"]["Feral"] = {

    -- =========================================================
    -- PHASE 1 — Karazhan / Gruul's Lair / Magtheridon's Lair
    -- =========================================================
    [1] = {
        Head = {
            { name = "Wolfshead Helm",                     source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 8345 },
            { name = "Stag-Helm of Malorne",               source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29098 },
            { name = "Mask of the Deceiver",               source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 28796 },
        },
        Neck = {
            { name = "Braided Eternium Chain",             source = "Jewelcrafting (AH)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 24114 },
            { name = "Choker of Vile Intent",              source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29381 },
        },
        Shoulder = {
            { name = "Mantle of Malorne",                  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 29100 },
            { name = "Wastewalker Shoulderpads",           source = "Avatar of Martyred — Heroic Auchenai", sourceType = "drop", gems = {},                  enchant = "Greater Inscription of Vengeance", itemId = 27797 },
        },
        Back = {
            { name = "Drape of the Dark Reavers",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 28672 },
            { name = "Vengeance Wrap",                     source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 24259 },
        },
        Chest = {
            { name = "Breastplate of Malorne",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 29096 },
            { name = "Terrorweave Tunic",                  source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30730 },
        },
        Wrist = {
            { name = "Nightfall Wristguards",              source = "Epoch Hunter — Heroic Old Hillsbrad", sourceType = "drop", gems = {},                   enchant = "Assault (+24 AP)", itemId = 29246 },
            { name = "Primalstrike Bracers",               source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = "Assault (+24 AP)", itemId = 25690 },
            { name = "Veteran's Dragonhide Bracers",       source = "Honor Points (PvP)",                 sourceType = "pvp",   gems = {},                   enchant = "Assault (+24 AP)", itemId = 32811 },
        },
        Hands = {
            { name = "Gloves of Dexterous Manipulation",   source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 28506 },
            { name = "Grips of Deftness",                  source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 30644 },
        },
        Waist = {
            { name = "Girdle of the Deathdealer",          source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
            { name = "Girdle of Treachery",                source = "Echo of Medivh — Karazhan (Chess)",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
            { name = "Gronn-Stitched Girdle",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
        },
        Legs = {
            { name = "Skulker's Greaves",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 28741 },
            { name = "Clefthoof Hide Leggings",            source = "Quest: Showdown",                    sourceType = "quest", gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 31544 },
        },
        Feet = {
            { name = "Edgewalker Longboots",               source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 28545 },
            { name = "Fel Leather Boots",                  source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 25686 },
        },
        Ring1 = {
            { name = "Shapeshifter's Signet",              source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
            { name = "Garona's Signet Ring",               source = "The Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Ring2 = {
            { name = "Ring of the Recalcitrant",           source = "Quest: Magtheridon",                 sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",         sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
            { name = "Band of Anguish",                    source = "Quest: Heroic Black Morass",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 29177 },
        },
        Trinket1 = {
            { name = "Mark of the Champion",               source = "Quest: Naxxramas",                   sourceType = "quest", gems = {},                   enchant = nil, itemId = 23206 },
            { name = "Dragonspine Trophy",                 source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",                   source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29383 },
            { name = "Hourglass of the Unraveller",        source = "Temporus — Heroic Black Morass",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28034 },
            { name = "Abacus of Violent Odds",             source = "Pathaleon — Heroic Mechanar",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
        },
        MainHand = {
            { name = "Terestian's Stranglestaff",          source = "Illhoof — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 28658 },
            { name = "Gladiator's Maul",                   source = "Arena Vendor (Arena Points)",         sourceType = "pvp",   gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 28476 },
            { name = "Feral Staff of Lashing",             source = "Warp Splinter — Heroic Botanica",    sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 29359 },
        },
        Relic = {
            { name = "Everbloom Idol",                     source = "G'eras — Shattrath City (15 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29390 },
            { name = "Idol of Feral Shadows",              source = "Zereketh — The Arcatraz",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28372 },
        },
    },

    -- =========================================================
    -- PHASE 2 — Serpentshrine Cavern / The Eye (Tempest Keep)
    -- =========================================================
    [2] = {
        Head = {
            { name = "Wolfshead Helm",                     source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 8345 },
            { name = "Stag-Helm of Malorne",               source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29098 },
        },
        Neck = {
            { name = "Braided Eternium Chain",             source = "Jewelcrafting (AH)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 24114 },
            { name = "Telonicus's Pendant of Mayhem",      source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Shoulderpads of the Stranger",       source = "Hydross — Serpentshrine Cavern",     sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 30055 },
            { name = "Mantle of Malorne",                  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 29100 },
            { name = "Nordrassil Feral-Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 30230 },
        },
        Back = {
            { name = "Drape of the Dark Reavers",          source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 28672 },
            { name = "Thalassian Wildercloak",             source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 29994 },
        },
        Chest = {
            { name = "Bloodsea Brigand's Vest",            source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30101 },
            { name = "Breastplate of Malorne",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 29096 },
            { name = "Nordrassil Chestplate",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30222 },
        },
        Wrist = {
            { name = "Vambraces of Ending",                source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 29966 },
            { name = "Nightfall Wristguards",              source = "Epoch Hunter — Heroic Old Hillsbrad", sourceType = "drop", gems = {},                   enchant = "Assault (+24 AP)", itemId = 29246 },
        },
        Hands = {
            { name = "Gloves of the Searing Grip",         source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 29947 },
            { name = "Nordrassil Handgrips",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 30223 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",         source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Gronn-Stitched Girdle",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
            { name = "Girdle of the Deathdealer",          source = "Aeonus — Heroic Black Morass",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
        },
        Legs = {
            { name = "Skulker's Greaves",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 28741 },
            { name = "Leggings of Murderous Intent",       source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 29995 },
            { name = "Nordrassil Feral-Kilt",              source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 30229 },
        },
        Feet = {
            { name = "Edgewalker Longboots",               source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 28545 },
            { name = "Boots of Natural Grace",             source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 30098 },
            { name = "Fel Leather Boots",                  source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 25686 },
        },
        Ring1 = {
            { name = "Ring of Lethality",                  source = "Hydross — Serpentshrine Cavern",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
            { name = "Garona's Signet Ring",               source = "The Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
        },
        Ring2 = {
            { name = "Band of the Ranger-General",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
            { name = "Ring of the Recalcitrant",           source = "Quest: Magtheridon",                 sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            { name = "Shapeshifter's Signet",              source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30834 },
        },
        Trinket1 = {
            { name = "Tsunami Talisman",                   source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Mark of the Champion",               source = "Quest: Naxxramas",                   sourceType = "quest", gems = {},                   enchant = nil, itemId = 23206 },
        },
        Trinket2 = {
            { name = "Bloodlust Brooch",                   source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29383 },
            { name = "Empty Mug of Direbrew",              source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38287 },
            { name = "Dragonspine Trophy",                 source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        MainHand = {
            { name = "Merciless Gladiator's Maul",         source = "Arena Vendor (Season 2)",             sourceType = "pvp",   gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 32014 },
            { name = "Terestian's Stranglestaff",          source = "Illhoof — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 28658 },
        },
        Relic = {
            { name = "Everbloom Idol",                     source = "G'eras — Shattrath City (15 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29390 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 3 — Black Temple / Hyjal Summit
    -- =========================================================
    [3] = {
        Head = {
            { name = "Wolfshead Helm",                     source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 8345 },
            { name = "Cursed Vision of Sargeras",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",       source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
            { name = "Telonicus's Pendant of Mayhem",      source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30017 },
        },
        Shoulder = {
            { name = "Thunderheart Pauldrons",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 31048 },
            { name = "Shoulderpads of the Stranger",       source = "Hydross — Serpentshrine Cavern",     sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 30055 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",       source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 32323 },
            { name = "Thalassian Wildercloak",             source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 29994 },
        },
        Chest = {
            { name = "Nether Shadow Tunic",                source = "Supremus — Black Temple",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 32252 },
            { name = "Thunderheart Chestguard",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31042 },
        },
        Wrist = {
            { name = "Insidious Bands",                    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 32324 },
            { name = "Vindicator's Dragonhide Bracers",    source = "Honor Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Assault (+24 AP)", itemId = 33881 },
        },
        Hands = {
            { name = "Gloves of the Searing Grip",         source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 29947 },
            { name = "Thunderheart Gauntlets",             source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 31034 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",         source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Don Alejandro's Money Belt",         source = "Anetheron — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30879 },
        },
        Legs = {
            { name = "Thunderheart Leggings",              source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 31044 },
            { name = "Leggings of Murderous Intent",       source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 29995 },
        },
        Feet = {
            { name = "Shadowmaster's Boots",               source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 32366 },
            { name = "Edgewalker Longboots",               source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 28545 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            { name = "Ring of Lethality",                  source = "Hydross — Serpentshrine Cavern",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
        },
        Ring2 = {
            { name = "Band of the Eternal Champion",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
            { name = "Band of the Ranger-General",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
        },
        Trinket1 = {
            { name = "Tsunami Talisman",                   source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Dragonspine Trophy",                 source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",            source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = nil, itemId = 32505 },
            { name = "Mark of the Champion",               source = "Quest: Naxxramas",                   sourceType = "quest", gems = {},                   enchant = nil, itemId = 23206 },
        },
        MainHand = {
            { name = "Vengeful Gladiator's Staff",         source = "Arena Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 33716 },
            { name = "Pillar of Ferocity",                 source = "Anetheron — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 30883 },
            { name = "Terestian's Stranglestaff",          source = "Illhoof — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 28658 },
        },
        Relic = {
            { name = "Everbloom Idol",                     source = "G'eras — Shattrath City (15 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29390 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 4 — Zul'Aman
    -- =========================================================
    [4] = {
        Head = {
            { name = "Wolfshead Helm",                     source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 8345 },
            { name = "Cursed Vision of Sargeras",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
            { name = "Vengeful Gladiator's Dragonhide Helm", source = "Arena Points (Season 3)",          sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 33672 },
        },
        Neck = {
            { name = "Choker of Endless Nightmares",       source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
            { name = "Telonicus's Pendant of Mayhem",      source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30017 },
            { name = "Choker of Serrated Blades",          source = "Black Temple/Hyjal Trash",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32591 },
        },
        Shoulder = {
            { name = "Thunderheart Pauldrons",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 31048 },
            { name = "Mantle of Malorne",                  source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 29100 },
        },
        Back = {
            { name = "Shadowmoon Destroyer's Drape",       source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 32323 },
            { name = "Thalassian Wildercloak",             source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 29994 },
        },
        Chest = {
            { name = "Nether Shadow Tunic",                source = "Supremus — Black Temple",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 32252 },
            { name = "Thunderheart Chestguard",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31042 },
        },
        Wrist = {
            { name = "Insidious Bands",                    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 32324 },
            { name = "Vindicator's Dragonhide Bracers",    source = "Honor Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Assault (+24 AP)", itemId = 33881 },
            { name = "Deadly Cuffs",                       source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 30863 },
            { name = "Master Assassin Wristwraps",         source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = "Assault (+24 AP)", itemId = 33540 },
        },
        Hands = {
            { name = "Gloves of the Searing Grip",         source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 29947 },
            { name = "Thunderheart Gauntlets",             source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 31034 },
        },
        Waist = {
            { name = "Belt of One-Hundred Deaths",         source = "Lady Vashj — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Don Alejandro's Money Belt",         source = "Anetheron — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30879 },
            { name = "Waistguard of the Great Beast",      source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 33583 },
        },
        Legs = {
            { name = "Thunderheart Leggings",              source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 31044 },
            { name = "Shady Dealer's Pantaloons",          source = "Azgalor — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 30898 },
            { name = "Skulker's Greaves",                  source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 28741 },
        },
        Feet = {
            { name = "Nyn'jah's Tabi Boots",               source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 33222 },
            { name = "Shadowmaster's Boots",               source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 32366 },
        },
        Ring1 = {
            { name = "Signet of Primal Wrath",             source = "Zul'Aman Timed Chest (3rd)",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
            { name = "Stormrage Signet Ring",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
        },
        Ring2 = {
            { name = "Band of the Eternal Champion",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
            { name = "Ring of Lethality",                  source = "Hydross — Serpentshrine Cavern",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
            { name = "Ring of Deceitful Intent",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32266 },
            { name = "Unstoppable Aggressor's Ring",       source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32335 },
        },
        Trinket1 = {
            { name = "Tsunami Talisman",                   source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
            { name = "Madness of the Betrayer",            source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = nil, itemId = 32505 },
            { name = "Berserker's Call",                   source = "Zul'jin — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33831 },
        },
        Trinket2 = {
            { name = "Mark of the Champion",               source = "Quest: Naxxramas",                   sourceType = "quest", gems = {},                   enchant = nil, itemId = 23206 },
            { name = "Dragonspine Trophy",                 source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            { name = "Bloodlust Brooch",                   source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29383 },
            { name = "Empty Mug of Direbrew",              source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38287 },
        },
        MainHand = {
            { name = "Vengeful Gladiator's Staff",         source = "Arena Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 33716 },
            { name = "Staff of Primal Fury",               source = "Hex Lord Malacrass — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 33465 },
            { name = "Pillar of Ferocity",                 source = "Anetheron — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 30883 },
        },
        Relic = {
            { name = "Everbloom Idol",                     source = "G'eras — Shattrath City (15 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29390 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
            { name = "Idol of Terror",                     source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 33509 },
            { name = "Idol of the White Stag",             source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 32257 },
        },
    },

    -- =========================================================
    -- PHASE 5 — Sunwell Plateau
    -- =========================================================
    [5] = {
        Head = {
            { name = "Duplicitous Guise",                  source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
            { name = "Thunderheart Cover",                 source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31039 },
            { name = "Cursed Vision of Sargeras",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
        },
        Neck = {
            { name = "Hard Khorium Choker",                source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
            { name = "Braided Eternium Chain",             source = "Jewelcrafting (AH)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 24114 },
            { name = "Clutch of Demise",                   source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
        },
        Shoulder = {
            { name = "Demontooth Shoulderpads",            source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red", "red" },     enchant = "Greater Inscription of Vengeance", itemId = 34392 },
            { name = "Thunderheart Pauldrons",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 31048 },
            { name = "Shoulderpads of Vehemence",          source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Vengeance", itemId = 34195 },
        },
        Back = {
            { name = "Cloak of Unforgivable Sin",          source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 34241 },
            { name = "Shadowmoon Destroyer's Drape",       source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+12 Agi)", itemId = 32323 },
        },
        Chest = {
            { name = "Bladed Chaos Tunic",                 source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34397 },
            { name = "Carapace of Sun and Shadow",         source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34369 },
            { name = "Thunderheart Chestguard",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31042 },
        },
        Wrist = {
            { name = "Thunderheart Wristguards",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 34444 },
            { name = "Insidious Bands",                    source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Assault (+24 AP)", itemId = 32324 },
        },
        Hands = {
            { name = "Gloves of Immortal Dusk",            source = "Leatherworking (AH)",                sourceType = "craft", gems = { "red" },             enchant = "Superior Agility (+15 Agi)", itemId = 34370 },
            { name = "Gloves of the Forest Drifter",       source = "Vendor: Yrma (Sunwell)",             sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 34408 },
            { name = "Thunderheart Gauntlets",             source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Superior Agility (+15 Agi)", itemId = 31034 },
        },
        Waist = {
            { name = "Thunderheart Waistguard",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34556 },
            { name = "Belt of One-Hundred Deaths",         source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            { name = "Belt of the Silent Path",            source = "Smith Hauthaa — Badge Vendor",       sourceType = "badge", gems = {},                   enchant = nil, itemId = 34929 },
        },
        Legs = {
            { name = "Leggings of the Immortal Night",     source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 34188 },
            { name = "Thunderheart Leggings",              source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 31044 },
            { name = "Leggings of the Immortal Beast",     source = "Vendor: Yrma (Sunwell)",             sourceType = "drop",  gems = {},                   enchant = "Nethercobra Leg Armor (+50 AP, +12 Crit)", itemId = 34385 },
        },
        Feet = {
            { name = "Nyn'jah's Tabi Boots",               source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 33222 },
            { name = "Thunderheart Treads",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 34573 },
            { name = "Shadowmaster's Boots",               source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Cat's Swiftness (+6 Agi, Minor Speed)", itemId = 32366 },
        },
        Ring1 = {
            { name = "Stormrage Signet Ring",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            { name = "Band of Ruinous Delight",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
        },
        Ring2 = {
            { name = "Angelista's Revenge",                source = "Smith Hauthaa — Badge Vendor",       sourceType = "badge", gems = {},                   enchant = nil, itemId = 34887 },
            { name = "Signet of Primal Wrath",             source = "Zul'Aman Timed Chest (3rd)",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
        },
        Trinket1 = {
            { name = "Shard of Contempt",                  source = "Priestess Delrissa — Heroic MgT",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34472 },
            { name = "Blackened Naaru Sliver",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
        },
        Trinket2 = {
            { name = "Madness of the Betrayer",            source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = nil, itemId = 32505 },
            { name = "Tsunami Talisman",                   source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30627 },
        },
        MainHand = {
            { name = "Stanchion of Primal Instinct",       source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 34198 },
            { name = "Staff of the Forest Lord",           source = "Smith Hauthaa — Badge Vendor",       sourceType = "badge", gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 34898 },
            { name = "Brutal Gladiator's Staff",           source = "Arena Points (Season 4)",            sourceType = "pvp",   gems = {},                   enchant = "Greater Agility (+35 Agi)", itemId = 35103 },
        },
        Relic = {
            { name = "Everbloom Idol",                     source = "G'eras — Shattrath City (15 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29390 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
            { name = "Idol of Terror",                     source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 33509 },
        },
    },
}
