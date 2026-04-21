-- Wick's TBC BIS Tracker
-- Data_Rogue.lua — Combat, Assassination, Subtlety (Phases 1–5)
-- Source: Wowhead TBC Classic Rogue DPS Guides
-- Note: Wowhead uses a single unified Rogue DPS BIS list; armor is identical across specs.
-- Only weapons differ (swords/maces for Combat, daggers for Assassination).
-- Subtlety is not covered as a viable PvE spec; it aliases to Combat.

WTBT_Data = WTBT_Data or {}
WTBT_Data["Rogue"] = WTBT_Data["Rogue"] or {}

-- Helper: shared armor for all rogue specs
local function RogueArmor(phase)
    local data = {
        [1] = {
            Head = {
                { name = "Netherblade Facemask",           source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29044 },
                { name = "Wastewalker Helm",               source = "Heroic Dungeons",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28224 },
            },
            Neck = {
                { name = "Choker of Vile Intent",          source = "G'eras — 25 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
                { name = "Braided Eternium Chain",         source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 24114 },
            },
            Shoulder = {
                { name = "Wastewalker Shoulderpads",       source = "Heroic Auchenai Crypts",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27797 },
                { name = "Netherblade Shoulderpads",       source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29047 },
            },
            Back = {
                { name = "Drape of the Dark Reavers",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
                { name = "Vengeance Wrap",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24259 },
            },
            Chest = {
                { name = "Netherblade Chestpiece",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29045 },
                { name = "Terrorweave Tunic",              source = "Doomwalker — World Boss",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30730 },
            },
            Wrist = {
                { name = "Nightfall Wristguards",          source = "Epoch Hunter — Heroic Old Hillsbrad", sourceType = "drop", gems = {},                  enchant = nil, itemId = 29246 },
                { name = "Primalstrike Bracers",           source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 29527 },
                { name = "Vambraces of Daring",            source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28795 },
            },
            Hands = {
                { name = "Wastewalker Gloves",             source = "Heroic Shattered Halls",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27531 },
                { name = "Grips of Deftness",              source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30644 },
            },
            Waist = {
                { name = "Girdle of the Deathdealer",      source = "Heroic Black Morass",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
                { name = "Gronn-Stitched Girdle",          source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28828 },
                { name = "Girdle of Treachery",            source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28750 },
            },
            Legs = {
                { name = "Skulker's Greaves",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 28741 },
                { name = "Netherblade Breeches",           source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 29046 },
            },
            Feet = {
                { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
                { name = "Fiend Slayer Boots",             source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28549 },
                { name = "Ironstriders of Urgency",        source = "Netherspite — Karazhan",             sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28747 },
            },
            Ring1 = {
                { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
                { name = "Ring of the Recalcitrant",       source = "Quest: Nightbane — Karazhan",        sourceType = "quest", gems = {},                   enchant = nil, itemId = 28791 },
            },
            Ring2 = {
                { name = "Garona's Signet Ring",           source = "The Curator — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28649 },
                { name = "Violet Signet of the Master Assassin", source = "The Violet Eye — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29283 },
            },
            Trinket1 = {
                { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
                { name = "Romulo's Poison Vial",           source = "Opera — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28579 },
            },
            Trinket2 = {
                { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
                { name = "Abacus of Violent Odds",         source = "Pathaleon — Heroic Mechanar",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28288 },
            },
        },
        [2] = {
            Head = {
                { name = "Deathmantle Helm",               source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30146 },
                { name = "Deathblow X11 Goggles",          source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32478 },
            },
            Neck = {
                { name = "Choker of Vile Intent",          source = "G'eras — 25 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29381 },
                { name = "Telonicus's Pendant of Mayhem",  source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30017 },
            },
            Shoulder = {
                { name = "Deathmantle Shoulderpads",       source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = nil, itemId = 30149 },
                { name = "Shoulderpads of the Stranger",   source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30055 },
            },
            Back = {
                { name = "Drape of the Dark Reavers",      source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28672 },
                { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            },
            Chest = {
                { name = "Bloodsea Brigand's Vest",        source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30101 },
                { name = "Deathmantle Chestguard",         source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30144 },
            },
            Wrist = {
                { name = "Vambraces of Ending",            source = "Solarian — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29966 },
                { name = "Nightfall Wristguards",          source = "Heroic Old Hillsbrad",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29246 },
            },
            Hands = {
                { name = "Deathmantle Handguards",         source = "Leotheras — SSC",                    sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 30145 },
                { name = "Gloves of the Searing Grip",     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29947 },
            },
            Waist = {
                { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
                { name = "Girdle of the Deathdealer",      source = "Heroic Black Morass",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29247 },
            },
            Legs = {
                { name = "Deathmantle Legguards",          source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 30148 },
                { name = "Leggings of Murderous Intent",   source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29995 },
            },
            Feet = {
                { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
                { name = "Boots of Utter Darkness",        source = "Leatherworking",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30039 },
            },
            Ring1 = {
                { name = "Ring of Lethality",              source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30052 },
                { name = "Band of the Ranger-General",     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29997 },
            },
            Ring2 = {
                { name = "Ring of a Thousand Marks",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28757 },
            },
            Trinket1 = {
                { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            },
            Trinket2 = {
                { name = "Warp-Spring Coil",               source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30450 },
                { name = "Bloodlust Brooch",               source = "G'eras — 41 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29383 },
            },
        },
        [3] = {
            Head = {
                { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
                { name = "Slayer's Helm",                  source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31027 },
            },
            Neck = {
                { name = "Choker of Endless Nightmares",   source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32260 },
                { name = "Choker of Serrated Blades",      source = "Hyjal Trash",                        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32591 },
            },
            Shoulder = {
                { name = "Slayer's Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31030 },
                { name = "Swiftstrike Shoulders",          source = "Leatherworking",                     sourceType = "craft", gems = { "red", "red" },     enchant = nil, itemId = 32581 },
            },
            Back = {
                { name = "Shadowmoon Destroyer's Drape",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
                { name = "Thalassian Wildercloak",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29994 },
            },
            Chest = {
                { name = "Slayer's Chestguard",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31028 },
                { name = "Midnight Chestguard",            source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30905 },
            },
            Wrist = {
                { name = "Insidious Bands",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
                { name = "Deadly Cuffs",                   source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30863 },
            },
            Hands = {
                { name = "Slayer's Handguards",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31026 },
                { name = "Grips of Damnation",             source = "Essence of Anger — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32347 },
            },
            Waist = {
                { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
                { name = "Shadow-walker's Cord",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32265 },
            },
            Legs = {
                { name = "Slayer's Legguards",             source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 31029 },
                { name = "Shady Dealer's Pantaloons",      source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30898 },
            },
            Feet = {
                { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
                { name = "Edgewalker Longboots",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28545 },
            },
            Ring1 = {
                { name = "Stormrage Signet Ring",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            },
            Ring2 = {
                { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
            },
            Trinket1 = {
                { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            },
            Trinket2 = {
                { name = "Warp-Spring Coil",               source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30450 },
                { name = "Madness of the Betrayer",        source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32505 },
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
                { name = "Slayer's Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31030 },
            },
            Back = {
                { name = "Shadowmoon Destroyer's Drape",   source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32323 },
            },
            Chest = {
                { name = "Slayer's Chestguard",            source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31028 },
            },
            Wrist = {
                { name = "Insidious Bands",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
            },
            Hands = {
                { name = "Slayer's Handguards",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31026 },
            },
            Waist = {
                { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            },
            Legs = {
                { name = "Slayer's Legguards",             source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },     enchant = nil, itemId = 31029 },
            },
            Feet = {
                { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
            },
            Ring1 = {
                { name = "Stormrage Signet Ring",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
            },
            Ring2 = {
                { name = "Signet of Primal Wrath",         source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33496 },
                { name = "Band of the Eternal Champion",   source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29301 },
            },
            Trinket1 = {
                { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            },
            Trinket2 = {
                { name = "Warp-Spring Coil",               source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30450 },
            },
        },
        [5] = {
            Head = {
                { name = "Duplicitous Guise",              source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34244 },
                { name = "Cursed Vision of Sargeras",      source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32235 },
            },
            Neck = {
                { name = "Hard Khorium Choker",            source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34358 },
                { name = "Clutch of Demise",               source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34177 },
            },
            Shoulder = {
                { name = "Slayer's Shoulderpads",          source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31030 },
                { name = "Shoulderpads of Vehemence",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34195 },
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
                { name = "Slayer's Bracers",               source = "Kalecgos/Eredar Twins — Sunwell",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34448 },
                { name = "Insidious Bands",                source = "Teron Gorefiend — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32324 },
            },
            Hands = {
                { name = "Gloves of Immortal Dusk",        source = "Leatherworking (Sunmote)",           sourceType = "craft", gems = { "red" },             enchant = nil, itemId = 34370 },
                { name = "Slayer's Handguards",            source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31026 },
            },
            Waist = {
                { name = "Slayer's Belt",                  source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34558 },
                { name = "Belt of One-Hundred Deaths",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30106 },
            },
            Legs = {
                { name = "Leggings of the Immortal Night", source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34188 },
                { name = "Slayer's Legguards",             source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = { "red", "red" },         enchant = nil, itemId = 31029 },
            },
            Feet = {
                { name = "Slayer's Boots",                 source = "Sunwell Plateau",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34575 },
                { name = "Shadowmaster's Boots",           source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32366 },
            },
            Ring1 = {
                { name = "Stormrage Signet Ring",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32497 },
                { name = "Band of Ruinous Delight",        source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34189 },
            },
            Ring2 = {
                { name = "Hard Khorium Band",              source = "Jewelcrafting",                      sourceType = "craft", gems = {},                   enchant = nil, itemId = 34361 },
            },
            Trinket1 = {
                { name = "Dragonspine Trophy",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28830 },
            },
            Trinket2 = {
                { name = "Blackened Naaru Sliver",         source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34427 },
                { name = "Warp-Spring Coil",               source = "Void Reaver — Tempest Keep",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30450 },
            },
        },
    }
    return data[phase]
end

-- Weapons for Combat (swords/maces)
local CombatWeapons = {
    [1] = {
        MainHand = {
            { name = "Gladiator's Slicer",             source = "Arena PvP (Season 1)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28295 },
            { name = "Blinkstrike",                    source = "World Drop",                         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31332 },
            { name = "The Decapitator",                source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28767 },
        },
        OffHand = {
            { name = "Gladiator's Quickblade",         source = "Arena PvP (Season 1)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28307 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Black Morass",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Wrathtide Longbow",              source = "Warlord Kalithresh — Heroic Steamvault", sourceType = "drop", gems = {},                enchant = nil, itemId = 27903 },
        },
    },
    [2] = {
        MainHand = {
            { name = "Talon of Azshara",               source = "Morogrim Tidewalker — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30082 },
            { name = "Rod of the Sun King",            source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29996 },
        },
        OffHand = {
            { name = "Merciless Gladiator's Quickblade", source = "Arena PvP (Season 2)",             sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32027 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Black Morass",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [3] = {
        MainHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
            { name = "Blade of Infamy",                source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30881 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
            { name = "Blade of Savagery",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32369 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [4] = {
        MainHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
            { name = "Blade of Infamy",                source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30881 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
            { name = "Blade of Savagery",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32369 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [5] = {
        MainHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32837 },
            { name = "Hand of the Deceiver",           source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34331 },
        },
        OffHand = {
            { name = "Warglaive of Azzinoth",          source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32838 },
            { name = "Dragonscale-Encrusted Longblade", source = "Kalecgos — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34164 },
        },
        Relic = {
            { name = "Golden Bow of Quel'Thalas",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- Weapons for Assassination (daggers)
local AssassinWeapons = {
    [1] = {
        MainHand = {
            { name = "Gladiator's Shanker",            source = "Arena PvP (Season 1)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28310 },
            { name = "Emerald Ripper",                 source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28768 },
        },
        OffHand = {
            { name = "Gladiator's Shiv",               source = "Arena PvP (Season 1)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28303 },
            { name = "Latro's Shifting Sword",         source = "Aeonus — Black Morass",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28189 },
            { name = "Malchazeen",                     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
        },
        Relic = {
            { name = "Sunfury Bow of the Phoenix",     source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28772 },
            { name = "Wrathtide Longbow",              source = "Warlord Kalithresh — Heroic Steamvault", sourceType = "drop", gems = {},                enchant = nil, itemId = 27903 },
        },
    },
    [2] = {
        MainHand = {
            { name = "Fang of Vashj",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30103 },
            { name = "Heartrazor",                     source = "Solarian — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29962 },
        },
        OffHand = {
            { name = "Merciless Gladiator's Shiv",     source = "Arena PvP (Season 2)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32046 },
            { name = "Searing Sunblade",               source = "G'eras — 50 Badges of Justice",      sourceType = "badge", gems = {},                   enchant = nil, itemId = 29275 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [3] = {
        MainHand = {
            { name = "Shard of Azzinoth",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32471 },
            { name = "Tracker's Blade",                source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32253 },
        },
        OffHand = {
            { name = "Vengeful Gladiator's Shiv",      source = "Arena PvP (Season 3)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 33756 },
            { name = "Blade of Savagery",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32369 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [4] = {
        MainHand = {
            { name = "Shard of Azzinoth",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32471 },
            { name = "Tracker's Blade",                source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32253 },
        },
        OffHand = {
            { name = "Vengeful Gladiator's Shiv",      source = "Arena PvP (Season 3)",               sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 33756 },
            { name = "Blade of Savagery",              source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32369 },
        },
        Relic = {
            { name = "Arcanite Steam-Pistol",          source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29949 },
        },
    },
    [5] = {
        MainHand = {
            { name = "Crux of the Apocalypse",         source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34329 },
            { name = "Shard of Azzinoth",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32471 },
        },
        OffHand = {
            { name = "Fang of Kalecgos",               source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34165 },
        },
        Relic = {
            { name = "Golden Bow of Quel'Thalas",      source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34196 },
        },
    },
}

-- Build spec tables by merging armor + weapons
for phase = 1, 5 do
    local armor = RogueArmor(phase)
    if armor then
        -- Combat
        if not WTBT_Data["Rogue"]["Combat"] then WTBT_Data["Rogue"]["Combat"] = {} end
        WTBT_Data["Rogue"]["Combat"][phase] = {}
        for k, v in pairs(armor) do WTBT_Data["Rogue"]["Combat"][phase][k] = v end
        local cw = CombatWeapons[phase]
        if cw then
            for k, v in pairs(cw) do WTBT_Data["Rogue"]["Combat"][phase][k] = v end
        end

        -- Assassination
        if not WTBT_Data["Rogue"]["Assassination"] then WTBT_Data["Rogue"]["Assassination"] = {} end
        WTBT_Data["Rogue"]["Assassination"][phase] = {}
        for k, v in pairs(armor) do WTBT_Data["Rogue"]["Assassination"][phase][k] = v end
        local aw = AssassinWeapons[phase]
        if aw then
            for k, v in pairs(aw) do WTBT_Data["Rogue"]["Assassination"][phase][k] = v end
        end
    end
end

-- Subtlety aliases to Combat (not a viable PvE spec per Wowhead)
