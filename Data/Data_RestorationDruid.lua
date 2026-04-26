-- Wick's TBC BIS Tracker
-- Data_RestorationDruid.lua
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
WTBT_Data["Druid"]["Restoration"] = {

    -- =========================================================
    -- PHASE 1 — Karazhan / Gruul's Lair / Magtheridon's Lair
    -- =========================================================
    [1] = {
        Head = {
            { name = "Whitemend Hood",                     source = "Tailoring",                          sourceType = "craft", gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 24264 },
            { name = "Crown of Malorne",                   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29086 },
        },
        Neck = {
            { name = "Archaic Charm of Presence",          source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
            { name = "Teeth of Gruul",                     source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28822 },
        },
        Shoulder = {
            { name = "Primal Mooncloth Shoulders",         source = "Tailoring (Mooncloth)",              sourceType = "craft", gems = { "blue", "yellow" }, enchant = "Greater Inscription of Discipline", itemId = 21874 },
            { name = "Shoulderguards of Malorne",          source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 29089 },
        },
        Back = {
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan",     sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
            { name = "Lifegiving Cloak",                   source = "World Drop — Outlands",              sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 31329 },
        },
        Chest = {
            { name = "Primal Mooncloth Robe",              source = "Tailoring (Mooncloth)",              sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
            { name = "Chestguard of Malorne",              source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                          enchant = "Exceptional Stats (+6 all stats)", itemId = 29087 },
            { name = "Windhawk Hauberk",                   source = "Leatherworking (Tribal)",            sourceType = "craft", gems = { "red", "red", "yellow" },  enchant = "Exceptional Stats (+6 all stats)", itemId = 29522 },
        },
        Wrist = {
            { name = "Bindings of the Timewalker",         source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29183 },
            { name = "Windhawk Bracers",                   source = "Leatherworking (Tribal)",            sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29523 },
        },
        Hands = {
            { name = "Mitts of the Treemender",            source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28521 },
            { name = "Gloves of the Living Touch",         source = "Crafted",                            sourceType = "craft", gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 29506 },
        },
        Waist = {
            { name = "Primal Mooncloth Belt",              source = "Tailoring (Mooncloth)",              sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
            { name = "Cord of Nature's Sustenance",        source = "Raid Drop",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28655 },
        },
        Legs = {
            { name = "Gilded Trousers of Benediction",     source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
            { name = "Legguards of Malorne",               source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                       enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29088 },
        },
        Feet = {
            { name = "Gold-Leaf Wildboots",                source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30737 },
            { name = "Forestlord Striders",                source = "Raid Drop",                          sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28752 },
        },
        Ring1 = {
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Jade Ring of the Everliving",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
        },
        Ring2 = {
            { name = "Naaru Lightwarden's Band",           source = "Quest: The Fall of Magtheridon",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
            { name = "Ring of Convalescence",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28731 },
            { name = "Band of Halos",                      source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29169 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",              source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",                source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Eye of the Dead",                    source = "Naxxramas",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 23047 },
            { name = "Lower City Prayerbook",              source = "Lower City — Revered",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
            { name = "Bangle of Endless Blessings",        source = "Warp Splinter — The Botanica",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28370 },
        },
        MainHand = {
            { name = "Light's Justice",                    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
            { name = "Shard of the Virtuous",              source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28522 },
        },
        OffHand = {
            { name = "Tears of Heaven",                    source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29274 },
            { name = "Aran's Soothing Sapphire",           source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28728 },
        },
        Relic = {
            { name = "Idol of the Avian Heart",            source = "Raid Drop",                          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28568 },
            { name = "Idol of the Emerald Queen",          source = "Shadow Labyrinth",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27886 },
            { name = "Harold's Rejuvenating Broach",       source = "Quest: Ultimate Bloodsport",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 25643 },
        },
    },

    -- =========================================================
    -- PHASE 2 — Serpentshrine Cavern / The Eye (Tempest Keep)
    -- =========================================================
    [2] = {
        Head = {
            { name = "Nordrassil Headguard",               source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30219 },
            { name = "Wonderheal XT40 Shades",             source = "Engineering (BoP)",                  sourceType = "craft", gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32479 },
        },
        Neck = {
            { name = "Lord Sanguinar's Claim",             source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Teeth of Gruul",                     source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28822 },
        },
        Shoulder = {
            { name = "Nordrassil Life-Mantle",             source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30221 },
            { name = "Runetotem's Mantle",                 source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 30111 },
        },
        Back = {
            { name = "Sunshower Light Cloak",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
            { name = "Lifegiving Cloak",                   source = "World Drop — Outlands",              sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 31329 },
        },
        Chest = {
            { name = "Nordrassil Chestguard",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30216 },
            { name = "Primal Mooncloth Robe",              source = "Tailoring (Mooncloth)",              sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
        },
        Wrist = {
            { name = "Grove-Bands of Remulos",             source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30062 },
            { name = "Bindings of the Timewalker",         source = "Keepers of Time — Exalted",          sourceType = "rep",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29183 },
        },
        Hands = {
            { name = "Mitts of the Treemender",            source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28521 },
            { name = "Nordrassil Gloves",                  source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 30217 },
        },
        Waist = {
            { name = "Primal Mooncloth Belt",              source = "Tailoring (Mooncloth)",              sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
            { name = "Belt of the Long Road",              source = "Tailoring (AH)",                     sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 30036 },
            { name = "Girdle of Zaetar",                   source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29984 },
        },
        Legs = {
            { name = "Gilded Trousers of Benediction",     source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
            { name = "Earthsoul Leggings",                 source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                       enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 28591 },
            { name = "Nordrassil Life-Kilt",               source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                       enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30220 },
        },
        Feet = {
            { name = "Gold-Leaf Wildboots",                source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30737 },
            { name = "Orca-Hide Boots",                    source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30092 },
            { name = "Soul-Strider Boots",                 source = "Fathom-Lord Karathress — SSC",          sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30100 },
        },
        Ring1 = {
            { name = "Coral Band of the Revived",          source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
            { name = "Jade Ring of the Everliving",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
        },
        Ring2 = {
            { name = "Ring of Flowing Light",              source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",          sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",              source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",                source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Lower City Prayerbook",              source = "Lower City — Revered",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
            { name = "Pendant of the Violet Eye",          source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28727 },
        },
        MainHand = {
            { name = "Lightfathom Scepter",                source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
            { name = "Light's Justice",                    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
        },
        OffHand = {
            { name = "Talisman of the Sun King",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29923 },
            { name = "Aran's Soothing Sapphire",           source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28728 },
        },
        Relic = {
            { name = "Idol of the Emerald Queen",          source = "Shadow Labyrinth",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27886 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },

    -- =========================================================
    -- PHASE 3 — Black Temple / Hyjal Summit
    -- =========================================================
    [3] = {
        Head = {
            { name = "Thunderheart Helmet",                source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31037 },
            { name = "Cowl of Benevolence",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32329 },
        },
        Neck = {
            { name = "Lord Sanguinar's Claim",             source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Nadina's Pendant of Purity",         source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
        },
        Shoulder = {
            { name = "Thunderheart Spaulders",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 31047 },
            { name = "Shoulderpads of Renewed Life",       source = "Leatherworking (BoP)",               sourceType = "craft", gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 32583 },
            { name = "Swiftheal Mantle",                   source = "Tailoring (BoP)",                    sourceType = "craft", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 32585 },
        },
        Back = {
            { name = "Shroud of the Highborne",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of Forgiveness",              source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32337 },
            { name = "Shroud of the Final Stand",          source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 34012 },
        },
        Chest = {
            { name = "Thunderheart Tunic",                 source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31041 },
            { name = "Nordrassil Chestguard",              source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 30216 },
        },
        Wrist = {
            { name = "Rejuvenating Bracers",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30868 },
            { name = "Bracers of Martyrdom",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30871 },
            { name = "Swiftheal Wraps",                    source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
            { name = "Bracers of Renewed Life",            source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32582 },
        },
        Hands = {
            { name = "Botanist's Gloves of Growth",        source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32328 },
            { name = "Gloves of Unfailing Faith",          source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32353 },
            { name = "Thunderheart Gloves",                source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 31032 },
        },
        Waist = {
            { name = "Angelista's Sash",                   source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
            { name = "Belt of Primal Majesty",             source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32339 },
            { name = "Belt of Divine Guidance",            source = "High Nethermancer Zerevor — BT",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32519 },
        },
        Legs = {
            { name = "Leggings of Eternity",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
            { name = "Kilt of Immortal Nature",            source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 32271 },
            { name = "Thunderheart Legguards",             source = "The Illidari Council — Black Temple", sourceType = "drop", gems = {},                   enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 31045 },
        },
        Feet = {
            { name = "Boots of the Divine Light",          source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
            { name = "Gold-Leaf Wildboots",                source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30737 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",            source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Coral Band of the Revived",          source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
        },
        Ring2 = {
            { name = "Band of the Eternal Restorer",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
            { name = "Jade Ring of the Everliving",        source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",              source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29376 },
            { name = "Memento of Tyrande",                 source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        Trinket2 = {
            { name = "Direbrew Hops",                      source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
            { name = "Ashtongue Talisman of Equilibrium",  source = "Ashtongue Deathsworn — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 32486 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Hammer of Atonement",                source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30918 },
        },
        OffHand = {
            { name = "Scepter of Purification",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
            { name = "Touch of Inspiration",               source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32350 },
            { name = "Tears of Heaven",                    source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29274 },
        },
        TwoHand = {
            { name = "Apostle of Argus",                   source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30908 },
            { name = "Staff of Immaculate Recovery",       source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32344 },
        },
        Relic = {
            { name = "Idol of the Emerald Queen",          source = "Shadow Labyrinth",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27886 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
            { name = "Harold's Rejuvenating Broach",       source = "Quest: Ultimate Bloodsport",         sourceType = "quest", gems = {},                   enchant = nil, itemId = 25643 },
        },
    },

    -- =========================================================
    -- PHASE 4 — Zul'Aman
    -- =========================================================
    [4] = {
        Head = {
            { name = "Thunderheart Helmet",                source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31037 },
            { name = "Cowl of Benevolence",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32329 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",           source = "Akil'zon — Zul'Aman",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Lord Sanguinar's Claim",             source = "Kael'thas — Tempest Keep (Quest)",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 30018 },
        },
        Shoulder = {
            { name = "Thunderheart Spaulders",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 31047 },
            { name = "Gnarled Ironwood Pauldrons",         source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 33287 },
        },
        Back = {
            { name = "Shroud of the Highborne",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Shroud of Forgiveness",              source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32337 },
        },
        Chest = {
            { name = "Thunderheart Tunic",                 source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 31041 },
            { name = "Robes of Heavenly Purpose",          source = "Nalorakk — Zul'Aman",               sourceType = "drop",  gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 33203 },
        },
        Wrist = {
            { name = "Rejuvenating Bracers",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30868 },
            { name = "Swiftheal Wraps",                    source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
            { name = "Bracers of Renewed Life",            source = "Leatherworking (AH)",                sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32582 },
        },
        Hands = {
            { name = "Botanist's Gloves of Growth",        source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32328 },
            { name = "Light-Blessed Bonds",                source = "G'eras — Badge Vendor",              sourceType = "badge", gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 33587 },
        },
        Waist = {
            { name = "Angelista's Sash",                   source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
            { name = "Life-step Belt",                     source = "Zul'Aman Timed Chest (1st)",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33483 },
            { name = "Belt of Primal Majesty",             source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32339 },
        },
        Legs = {
            { name = "Leggings of Eternity",               source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
            { name = "Kilt of Immortal Nature",            source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 32271 },
        },
        Feet = {
            { name = "Boots of the Divine Light",          source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
            { name = "Gold-Leaf Wildboots",                source = "Doom Lord Kazzak — World Boss",      sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30737 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",            source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Coral Band of the Revived",          source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
        },
        Ring2 = {
            { name = "Band of the Eternal Restorer",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
            { name = "Signet of the Quiet Forest",         source = "Zul'Aman Timed Chest (3rd)",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33498 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",              source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29376 },
            { name = "Memento of Tyrande",                 source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        Trinket2 = {
            { name = "Direbrew Hops",                      source = "Coren Direbrew — Brewfest",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
            { name = "Oshu'gun Relic",                     source = "Quest Reward",                       sourceType = "quest", gems = {},                   enchant = nil, itemId = 25634 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Lightfathom Scepter",                source = "Lady Vashj — Serpentshrine Cavern",  sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
        },
        OffHand = {
            { name = "Scepter of Purification",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
            { name = "Touch of Inspiration",               source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32350 },
        },
        Relic = {
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
            { name = "Idol of the Emerald Queen",          source = "Shadow Labyrinth",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27886 },
        },
    },

    -- =========================================================
    -- PHASE 5 — Sunwell Plateau
    -- =========================================================
    [5] = {
        Head = {
            { name = "Cowl of Light's Purity",             source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 34339 },
            { name = "Cover of Ursol the Wise",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = "Glyph of Renewal (+35 Healing)", itemId = 34245 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",           source = "Akil'zon — Zul'Aman",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Amulet of Flowing Life",             source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34360 },
        },
        Shoulder = {
            { name = "Spaulders of Reclamation",           source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 34209 },
            { name = "Shawl of Wonderment",                source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 34202 },
        },
        Back = {
            { name = "Shroud of Forgiveness",              source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32337 },
            { name = "Shroud of the Highborne",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
        },
        Chest = {
            { name = "Sunglow Vest",                       source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34212 },
            { name = "Robes of Faltered Light",            source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34233 },
            { name = "Robe of Eternal Light",              source = "Tailoring (BoP)",                    sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34365 },
            { name = "Leather Chestguard of the Sun",      source = "Leatherworking (BoP)",               sourceType = "craft", gems = {},                   enchant = "Exceptional Stats (+6 all stats)", itemId = 34371 },
        },
        Wrist = {
            { name = "Thunderheart Bracers",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 34445 },
            { name = "Rejuvenating Bracers",               source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30868 },
        },
        Hands = {
            { name = "Handguards of the Dawn",             source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "red" },            enchant = "Major Healing (+35 Healing)", itemId = 34342 },
            { name = "Leather Gauntlets of the Sun",       source = "Leatherworking",                     sourceType = "craft", gems = { "red" },            enchant = "Major Healing (+35 Healing)", itemId = 34372 },
            { name = "Hands of Eternal Light",             source = "Tailoring",                          sourceType = "craft", gems = { "red" },            enchant = "Major Healing (+35 Healing)", itemId = 34367 },
            { name = "Tranquil Majesty Wraps",             source = "Sunwell Plateau Trash",              sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 34351 },
        },
        Waist = {
            { name = "Thunderheart Belt",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34554 },
            { name = "Angelista's Sash",                   source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
        },
        Legs = {
            { name = "Breeches of Natural Splendor",       source = "Vendor: Yrma (Sunwell)",             sourceType = "drop",  gems = {},                   enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 34384 },
            { name = "Pantaloons of Calming Strife",       source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 34170 },
        },
        Feet = {
            { name = "Thunderheart Boots",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 34571 },
            { name = "Boots of the Divine Light",          source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",            source = "Black Temple Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Band of Lucent Beams",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34166 },
        },
        Ring2 = {
            { name = "Ring of Flowing Life",               source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34363 },
            { name = "Band of the Eternal Restorer",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",              source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                  enchant = nil, itemId = 29376 },
            { name = "Glimmering Naaru Sliver",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34430 },
        },
        Trinket2 = {
            { name = "Redeemer's Alchemist Stone",         source = "Alchemy",                            sourceType = "craft", gems = {},                   enchant = nil, itemId = 35750 },
            { name = "Memento of Tyrande",                 source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
        },
        MainHand = {
            { name = "Hammer of Sanctification",           source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34335 },
            { name = "Golden Staff of the Sin'dorei",      source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34337 },
            { name = "Apostle of Argus",                   source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30908 },
        },
        OffHand = {
            { name = "Book of Highborne Hymns",            source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34206 },
            { name = "Scepter of Purification",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
        },
        Relic = {
            { name = "Idol of the Emerald Queen",          source = "Shadow Labyrinth",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27886 },
            { name = "Idol of the Raven Goddess",          source = "Quest: Vanquish the Raven God (Heroic Sethekk)", sourceType = "quest", gems = {},      enchant = nil, itemId = 32387 },
        },
    },
}
