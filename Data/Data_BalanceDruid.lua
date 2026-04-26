-- Wick's TBC BIS Tracker
-- Data_BalanceDruid.lua
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
WTBT_Data["Druid"]["Balance"] = {

    -- =========================================================
    -- PHASE 1 — Karazhan / Gruul's Lair / Magtheridon's Lair
    -- =========================================================
    [1] = {
        Head = {
            { name = "Antlers of Malorne",                 source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 29093 },
            { name = "Uni-Mind Headdress",                 source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 28744 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Acumen",    source = "Shattered Sun Offensive Vendor",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
            { name = "Brooch of Unquenchable Fury",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
        },
        Shoulder = {
            { name = "Pauldrons of Malorne",               source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 29095 },
            { name = "Mana-Etched Spaulders",              source = "Mennu — Heroic Slave Pens",          sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 27796 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28766 },
            { name = "Ancient Spellcloak of the Highborne", source = "Doom Lord Kazzak — World Boss",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 30735 },
        },
        Chest = {
            { name = "Spellfire Robe",                     source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 21848 },
            { name = "Chestpiece of Malorne",              source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 29091 },
        },
        Wrist = {
            { name = "Windhawk Bracers",                   source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 29523 },
            { name = "Bracers of Havok",                   source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 24250 },
        },
        Hands = {
            { name = "Spellfire Gloves",                   source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 21847 },
            { name = "Soul-Eater's Handwraps",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 28780 },
        },
        Waist = {
            { name = "Spellfire Belt",                     source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
            { name = "Belt of Divine Inspiration",         source = "Raid Drop",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28799 },
        },
        Legs = {
            { name = "Spellstrike Pants",                  source = "Tailoring (AH)",                     sourceType = "craft", gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 24262 },
            { name = "Trial-Fire Trousers",                source = "Raid Drop",                          sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 28594 },
        },
        Feet = {
            { name = "Boots of Foretelling",               source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28517 },
            { name = "Ruby Slippers",                      source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28585 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Ring of Recurrence",                 source = "Echo of Medivh — Karazhan (Chess)",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
        },
        Ring2 = {
            { name = "Violet Signet of the Archmage",      source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
            { name = "Ashyen's Gift",                      source = "Cenarion Expedition — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29172 },
            { name = "Sparking Arcanite Ring",             source = "Dalliah — Heroic Arcatraz",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28227 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",        source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",                  source = "Scryer Vendor",                      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        Trinket2 = {
            { name = "Eye of Magtheridon",                 source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28789 },
            { name = "Quagmirran's Eye",                   source = "Quagmirran — Heroic Slave Pens",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 28770 },
            { name = "Talon of the Tempest",               source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 30723 },
            { name = "Eternium Runed Blade",               source = "Crafted/AH",                         sourceType = "craft", gems = {},                   enchant = "Spellpower", itemId = 23554 },
        },
        OffHand = {
            { name = "Talisman of Kalecgos",               source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29271 },
            { name = "Jewel of Infinite Possibilities",    source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28734 },
        },
        Relic = {
            { name = "Ivory Idol of the Moongoddess",     source = "Quest Reward",                       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27518 },
            { name = "Idol of the Avenger",                source = "Quest Reward",                       sourceType = "quest", gems = {},                   enchant = nil, itemId = 31025 },
        },
    },

    -- =========================================================
    -- PHASE 2 — Serpentshrine Cavern / The Eye (Tempest Keep)
    -- =========================================================
    [2] = {
        Head = {
            { name = "Nordrassil Headpiece",               source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 30233 },
            { name = "Magnified Moon Specs",               source = "Engineering (BoP)",                  sourceType = "craft", gems = { "meta" },           enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 32480 },
            { name = "Cowl of the Grand Engineer",         source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 29986 },
        },
        Neck = {
            { name = "The Sun King's Talisman",            source = "Quest: Kael'thas Verdant Sphere",    sourceType = "quest", gems = {},                   enchant = nil, itemId = 30015 },
            { name = "Eye of the Night",                   source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 24116 },
            { name = "Adornment of Stolen Souls",          source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
        },
        Shoulder = {
            { name = "Nordrassil Wrath-Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30235 },
            { name = "Mantle of the Elven Kings",          source = "Tempest Keep Trash",                 sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30024 },
            { name = "Illidari Shoulderpads",              source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30079 },
        },
        Back = {
            { name = "Ancient Spellcloak of the Highborne", source = "Doom Lord Kazzak — World Boss",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 30735 },
            { name = "Royal Cloak of the Sunstriders",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29992 },
            { name = "Ruby Drape of the Mysticant",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28766 },
        },
        Chest = {
            { name = "Nordrassil Chestpiece",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30231 },
            { name = "Vestments of the Sea-Witch",         source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30107 },
            { name = "Spellfire Robe",                     source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 21848 },
            { name = "Robe of Hateful Echoes",             source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30056 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",               source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 29918 },
            { name = "Windhawk Bracers",                   source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 29523 },
            { name = "Bracers of Havok",                   source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 24250 },
        },
        Hands = {
            { name = "Nordrassil Gauntlets",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 30232 },
            { name = "Anger-Spark Gloves",                 source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 30725 },
            { name = "Spellfire Gloves",                   source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 21847 },
        },
        Waist = {
            { name = "Belt of Blasting",                   source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Cord of Screaming Terrors",          source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30064 },
            { name = "Spellfire Belt",                     source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
        },
        Legs = {
            { name = "Spellstrike Pants",                  source = "Tailoring (AH)",                     sourceType = "craft", gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 24262 },
            { name = "Leggings of the Seventh Circle",     source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 30734 },
            { name = "Nordrassil Wrath-Kilt",              source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 30234 },
            { name = "Trousers of the Astromancer",        source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 29972 },
        },
        Feet = {
            { name = "Boots of Blasting",                  source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30037 },
            { name = "Velvet Boots of the Guardian",       source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30067 },
            { name = "Boots of Foretelling",               source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28517 },
        },
        Ring1 = {
            { name = "Ring of Endless Coils",              source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
            { name = "Band of Crimson Fury",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",                 source = "Echo of Medivh — Karazhan (Chess)",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Violet Signet of the Archmage",      source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",        source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29370 },
            { name = "Sextant of Unstable Currents",       source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30626 },
        },
        Trinket2 = {
            { name = "Quagmirran's Eye",                   source = "Quagmirran — Heroic Slave Pens",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "The Restrained Essence of Sapphiron", source = "Sapphiron — Naxxramas",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 23046 },
        },
        MainHand = {
            { name = "Talon of the Tempest",               source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 30723 },
            { name = "Nathrezim Mindblade",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 28770 },
            { name = "Merciless Gladiator's Gavel",        source = "Arena Points (Season 2)",            sourceType = "pvp",   gems = {},                   enchant = "Spellpower", itemId = 32963 },
        },
        TwoHand = {
            { name = "The Nexus Key",                      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 29988 },
            { name = "Merciless Gladiator's War Staff",    source = "Arena Points (Season 2)",            sourceType = "pvp",   gems = {},                   enchant = "Spellpower", itemId = 32055 },
        },
        OffHand = {
            { name = "Fathomstone",                        source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
            { name = "Talisman of Kalecgos",               source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29271 },
            { name = "Jewel of Infinite Possibilities",    source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28734 },
        },
        Relic = {
            { name = "Ivory Idol of the Moongoddess",     source = "Quest Reward",                       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27518 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 3 — Black Temple / Hyjal Summit
    -- =========================================================
    [3] = {
        Head = {
            { name = "Thunderheart Headguard",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 31040 },
            { name = "Cowl of the Illidari High Lord",     source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 32525 },
        },
        Neck = {
            { name = "The Sun King's Talisman",            source = "Quest: Kael'thas Verdant Sphere",    sourceType = "quest", gems = {},                   enchant = nil, itemId = 30015 },
            { name = "Translucent Spellthread Necklace",   source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
        },
        Shoulder = {
            { name = "Thunderheart Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 31049 },
            { name = "Hatefury Mantle",                    source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30884 },
        },
        Back = {
            { name = "Shroud of the Highborne",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Cloak of the Illidari Council",      source = "High Nethermancer Zerevor — BT",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32331 },
        },
        Chest = {
            { name = "Thunderheart Vest",                  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31043 },
            { name = "Nordrassil Chestpiece",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30231 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",          source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 32586 },
            { name = "Focused Mana Bindings",              source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 32270 },
        },
        Hands = {
            { name = "Thunderheart Handguards",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 31035 },
            { name = "Nordrassil Gauntlets",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 30232 },
        },
        Waist = {
            { name = "Anetheron's Noose",                  source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
            { name = "Belt of the Crescent Moon",          source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30914 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 30916 },
            { name = "Thunderheart Pants",                 source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 31046 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",          source = "High Warlord Naj'entus — BT",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32239 },
            { name = "Naturewarden's Treads",              source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32352 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",          source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
            { name = "Band of the Eternal Sage",           source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Ring2 = {
            { name = "Ring of Captured Storms",            source = "High Warlord Naj'entus — BT",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
            { name = "Ring of Endless Coils",              source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Ashtongue Talisman of Equilibrium",  source = "Ashtongue Deathsworn — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 32486 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",        source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29370 },
            { name = "Dark Iron Smoking Pipe",             source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38290 },
        },
        MainHand = {
            { name = "The Maelstrom's Fury",               source = "High Warlord Naj'entus — BT",        sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 32237 },
            { name = "Hammer of Judgement",                source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 34009 },
            { name = "Vengeful Gladiator's Gavel",         source = "Arena Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Spellpower", itemId = 33687 },
        },
        TwoHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                   enchant = "Spellpower", itemId = 32374 },
            { name = "Vengeful Gladiator's Battle Staff",  source = "Arena Points (Season 3)",            sourceType = "pvp",   gems = {},                   enchant = "Spellpower", itemId = 34540 },
            { name = "The Nexus Key",                      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 29988 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",          source = "Rage Winterchill — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
            { name = "Blind-Seers Icon",                   source = "Black Temple",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32361 },
        },
        Relic = {
            { name = "Ivory Idol of the Moongoddess",     source = "Quest Reward",                       sourceType = "quest", gems = {},                   enchant = nil, itemId = 27518 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 4 — Zul'Aman
    -- =========================================================
    [4] = {
        Head = {
            { name = "Thunderheart Headguard",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 31040 },
            { name = "Nordrassil Headpiece",               source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 30233 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",           source = "Akil'zon — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Shattered Sun Pendant of Acumen",    source = "Shattered Sun Offensive Vendor",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
        },
        Shoulder = {
            { name = "Thunderheart Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 31049 },
            { name = "Nordrassil Wrath-Mantle",            source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30235 },
        },
        Back = {
            { name = "Shroud of the Highborne",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Cloak of the Illidari Council",      source = "High Nethermancer Zerevor — BT",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32331 },
            { name = "Shadowcaster's Drape",               source = "Zul'Aman Timed Chest (1st)",         sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 33591 },
        },
        Chest = {
            { name = "Thunderheart Vest",                  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31043 },
            { name = "Nordrassil Chestpiece",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30231 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",          source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 32586 },
            { name = "Focused Mana Bindings",              source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 32270 },
        },
        Hands = {
            { name = "Thunderheart Handguards",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 31035 },
            { name = "Nordrassil Gauntlets",               source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 30232 },
        },
        Waist = {
            { name = "Anetheron's Noose",                  source = "Anetheron — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
            { name = "Belt of the Crescent Moon",          source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30914 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements",     source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 30916 },
            { name = "Thunderheart Pants",                 source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 31046 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",          source = "High Warlord Naj'entus — Black Temple",                       sourceType = "drop", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32239 },
            { name = "Naturewarden's Treads",              source = "Reliquary of the Lost — Black Temple",                       sourceType = "drop", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32352 },
        },
        Ring1 = {
            { name = "Band of the Eternal Sage",           source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
            { name = "Ring of Captured Storms",            source = "High Warlord Naj'entus — Black Temple",                       sourceType = "drop", gems = {},                   enchant = nil, itemId = 32247 },
        },
        Ring2 = {
            { name = "Mana Attuned Band",                  source = "Hex Lord Malacrass — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
            { name = "Ring of Ancient Knowledge",          source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Hex Shrunken Head",                  source = "Hex Lord Malacrass — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        Trinket2 = {
            { name = "Eye of Magtheridon",                 source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28789 },
            { name = "Icon of the Silver Crescent",        source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                   enchant = "Spellpower", itemId = 32374 },
            { name = "The Nexus Key",                      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 29988 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",          source = "Rage Winterchill — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
            { name = "Fetish of the Primal Gods",          source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33334 },
        },
        Relic = {
            { name = "Idol of the Unseen Moon",            source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 33510 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 5 — Sunwell Plateau
    -- =========================================================
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",             source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 34340 },
            { name = "Cover of Ursoc the Mighty",          source = "Vendor: Yrma (Sunwell)",             sourceType = "drop",  gems = {},                   enchant = "Glyph of Power (+22 SP, +14 Hit)", itemId = 34403 },
        },
        Neck = {
            { name = "Shattered Sun Pendant of Acumen",    source = "Shattered Sun Offensive Vendor",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 34678 },
            { name = "Amulet of Unfettered Magics",        source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34204 },
        },
        Shoulder = {
            { name = "Amice of the Convoker",              source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 34210 },
            { name = "Thunderheart Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 31049 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",         source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34242 },
            { name = "Cloak of the Illidari Council",      source = "High Nethermancer Zerevor — BT",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32331 },
        },
        Chest = {
            { name = "Sunfire Robe",                       source = "Tailoring (BoP)",                    sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34364 },
            { name = "Fel Conquerer Raiments",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34232 },
        },
        Wrist = {
            { name = "Thunderheart Bands",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 34446 },
            { name = "Bracers of Nimble Thought",          source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Spellpower (+15 SP)", itemId = 32586 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",       source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "red" },            enchant = "Major Spellpower (+20 SP)", itemId = 34344 },
            { name = "Tranquil Moonlight Wraps",           source = "Vendor: Yrma (Sunwell)",             sourceType = "drop",  gems = {},                   enchant = "Major Spellpower (+20 SP)", itemId = 34407 },
        },
        Waist = {
            { name = "Thunderheart Cord",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34555 },
            { name = "Anetheron's Noose",                  source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Calamity",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 34181 },
            { name = "Breeches of Natural Aggression",     source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 SP, +20 Sta)", itemId = 34169 },
        },
        Feet = {
            { name = "Thunderheart Footwraps",             source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 34572 },
            { name = "Slippers of the Seacaller",          source = "High Warlord Naj'entus — BT",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32239 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34362 },
            { name = "Ring of Omnipotence",                source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
        },
        Ring2 = {
            { name = "Ring of Ancient Knowledge",          source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
            { name = "Mana Attuned Band",                  source = "Hex Lord Malacrass — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",              source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
            { name = "The Skull of Gul'dan",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",                  source = "Hex Lord Malacrass — Zul'Aman",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
            { name = "The Skull of Gul'dan",               source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Sunflare",                           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 34336 },
            { name = "Reign of Misery",                    source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Spellpower", itemId = 34176 },
        },
        OffHand = {
            { name = "Heart of the Pit",                   source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
            { name = "Chronicle of Dark Secrets",          source = "Rage Winterchill — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Idol of the Unseen Moon",            source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = nil, itemId = 33510 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },
}
