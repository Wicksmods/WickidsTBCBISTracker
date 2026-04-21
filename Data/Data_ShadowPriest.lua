-- Wick's TBC BIS Tracker
-- Data_ShadowPriest.lua — Shadow Priest (Phases 1–5)
-- Source: Wowhead TBC Classic Shadow Priest Guides
-- Note: Discipline Priest shares the Holy Priest BIS guide on Wowhead

WTBT_Data = WTBT_Data or {}
WTBT_Data["Priest"] = WTBT_Data["Priest"] or {}

-- Discipline uses same data as Holy (Wowhead has no separate Disc guide)
-- This is handled in Core.lua by aliasing Discipline → Holy

WTBT_Data["Priest"]["Shadow"] = {
    [1] = {
        Head = {
            { name = "Spellstrike Hood",               source = "Tailoring (AH)",                     sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Collar of Cho'gall",             source = "Gruul's Lair",                       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28804 },
            { name = "Soul-Collar of the Incarnate",   source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 29058 },
        },
        Neck = {
            { name = "Ritssyn's Lost Pendant",         source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30666 },
            { name = "Chain of the Twilight Owl",      source = "Jewelcrafting (AH)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 24121 },
            { name = "Natasha's Arcane Filament",      source = "Quest",                              sourceType = "quest", gems = {},                   enchant = nil, itemId = 31693 },
        },
        Shoulder = {
            { name = "Frozen Shadoweave Shoulders",    source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
            { name = "Soul-Mantle of the Incarnate",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 29060 },
            { name = "Spaulders of Oblivion",          source = "Murmur — Shadow Labyrinth",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27778 },
        },
        Back = {
            { name = "Shadow-Cloak of Dalaran",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
            { name = "Ruby Drape of the Mysticant",    source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",   source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
        },
        Chest = {
            { name = "Frozen Shadoweave Robe",         source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
            { name = "Shroud of the Incarnate",        source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 29056 },
            { name = "Robe of Oblivion",               source = "Murmur — Shadow Labyrinth",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28232 },
        },
        Wrist = {
            { name = "Bracers of Havok",               source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Harbinger Bands",                source = "Attumen the Huntsman — Karazhan",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Handwraps of Flowing Thought",   source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
            { name = "Anger-Spark Gloves",             source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30725 },
        },
        Waist = {
            { name = "Belt of Divine Inspiration",     source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28799 },
            { name = "Girdle of Ruination",            source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
        },
        Legs = {
            { name = "Spellstrike Pants",              source = "Tailoring (AH)",                     sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Trial-Fire Trousers",            source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28594 },
            { name = "Breeches of the Occultist",      source = "Aeonus — Black Morass",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30531 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Boots of Foretelling",           source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Ruby Slippers",                  source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
        },
        Ring1 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Cobalt Band of Tyrigosa",        source = "Heroic Mana-Tombs",                  sourceType = "quest", gems = {},                   enchant = nil, itemId = 29352 },
            { name = "Violet Signet of the Archmage",  source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Band of Crimson Fury",           source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Ashyen's Gift",                  source = "Cenarion Expedition — Exalted",      sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29172 },
            { name = "Seal of the Exorcist",           source = "Spirit Sages — Badges of Justice",   sourceType = "badge", gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Eye of Magtheridon",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28789 },
            { name = "Quagmirran's Eye",               source = "Heroic Slave Pens",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Quagmirran's Eye",               source = "Heroic Slave Pens",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "Scryer's Bloodgem",              source = "Scryers — Revered",                  sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Talon of the Tempest",           source = "Doomwalker — World Boss",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Gladiator's Spellblade",         source = "PvP Vendor",                         sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 28297 },
            { name = "Gavel of Unearthed Secrets",     source = "Lower City — Exalted",               sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30832 },
        },
        OffHand = {
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
            { name = "Khadgar's Knapsack",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29273 },
        },
        Relic = {
            { name = "The Black Stalk",                source = "Heroic Underbog",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29350 },
            { name = "Tirisfal Wand of Ascendancy",    source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
    [2] = {
        Head = {
            { name = "Destruction Holo-gogs",          source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
            { name = "Hood of the Avatar",             source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 30161 },
            { name = "Spellstrike Hood",               source = "Tailoring (AH)",                     sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
        },
        Neck = {
            { name = "Ritssyn's Lost Pendant",         source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30666 },
            { name = "The Sun King's Talisman",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Wings of the Avatar",            source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = { "red", "yellow" },  enchant = nil, itemId = 30163 },
            { name = "Frozen Shadoweave Shoulders",    source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
        },
        Back = {
            { name = "Royal Cloak of the Sunstriders", source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29992 },
            { name = "Shadow-Cloak of Dalaran",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Frozen Shadoweave Robe",         source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",           source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
            { name = "Bands of Nefarious Deeds",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
        },
        Hands = {
            { name = "Handwraps of Flowing Thought",   source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
            { name = "Soul-Eater's Handwraps",         source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
        },
        Waist = {
            { name = "Belt of Blasting",               source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
            { name = "Cord of Screaming Terrors",      source = "The Lurker Below — SSC",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30064 },
        },
        Legs = {
            { name = "Trousers of the Astromancer",    source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 29972 },
            { name = "Spellstrike Pants",              source = "Tailoring (AH)",                     sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
        },
        Feet = {
            { name = "Boots of the Shifting Nightmare", source = "Hydross the Unstable — SSC",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30050 },
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
        },
        Ring1 = {
            { name = "Ring of Endless Coils",          source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
            { name = "Band of Al'ar",                  source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29922 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",             source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Band of Crimson Fury",           source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Eye of Magtheridon",             source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28789 },
        },
        Trinket2 = {
            { name = "Quagmirran's Eye",               source = "Heroic Slave Pens",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",            source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Merciless Gladiator's Gavel",    source = "Arena Points (Season 2)",            sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 32963 },
        },
        OffHand = {
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
            { name = "Tirisfal Wand of Ascendancy",    source = "Karazhan",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
    [3] = {
        Head = {
            { name = "Hood of Absolution",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31064 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Translucent Spellthread Necklace", source = "Essence of Anger — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
            { name = "Ritssyn's Lost Pendant",         source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30666 },
        },
        Shoulder = {
            { name = "Shoulderpads of Absolution",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31070 },
            { name = "Mantle of Nimble Thought",       source = "Tailoring",                          sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 32587 },
            { name = "Hatefury Mantle",                source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30884 },
        },
        Back = {
            { name = "Nethervoid Cloak",               source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32590 },
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Shroud of Absolution",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31065 },
            { name = "Vestments of the Sea-Witch",     source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Handguards of Absolution",       source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31061 },
            { name = "Handwraps of Flowing Thought",   source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
        },
        Waist = {
            { name = "Waistwrap of Infinity",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
            { name = "Belt of Blasting",               source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Leggings of Devastation",        source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32367 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Frozen Shadoweave Boots",        source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
            { name = "Ring of Captured Storms",        source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32247 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Darkmoon Card: Crusade",         source = "Darkmoon Blessings Deck",            sourceType = "quest", gems = {},                   enchant = nil, itemId = 31856 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
            { name = "The Maelstrom's Fury",           source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32237 },
        },
        OffHand = {
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
            { name = "Chronicle of Dark Secrets",      source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
            { name = "Wand of Prismatic Focus",        source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32343 },
        },
    },
    [4] = {
        Head = {
            { name = "Hood of Absolution",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31064 },
            { name = "Cowl of the Illidari High Lord",  source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Loop of Cursed Bones",           source = "Zul'jin — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33466 },
            { name = "Translucent Spellthread Necklace", source = "Essence of Anger — Black Temple", sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
        },
        Shoulder = {
            { name = "Shoulderpads of Absolution",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31070 },
            { name = "Mantle of Nimble Thought",       source = "Tailoring",                          sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 32587 },
        },
        Back = {
            { name = "Nethervoid Cloak",               source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32590 },
            { name = "Shadowcaster's Drape",           source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33591 },
        },
        Chest = {
            { name = "Shroud of Absolution",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31065 },
            { name = "Robes of Rhonin",                source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30913 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",      source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
            { name = "Cuffs of Devastation",           source = "Rage Winterchill — Hyjal Summit",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Handguards of Absolution",       source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31061 },
            { name = "Studious Wraps",                 source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33586 },
        },
        Waist = {
            { name = "Waistwrap of Infinity",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
            { name = "Belt of Blasting",               source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements", source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
            { name = "Pantaloons of Arcane Annihilation", source = "G'eras — Badges of Justice",      sourceType = "badge", gems = { "red", "red", "blue" }, enchant = nil, itemId = 33584 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
            { name = "Footpads of Madness",            source = "Jan'alai — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33357 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",      source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
            { name = "Mana Attuned Band",              source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",       source = "Scale of the Sands — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "Hex Shrunken Head",              source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
            { name = "The Skull of Gul'dan",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Darkmoon Card: Crusade",         source = "Darkmoon Blessings Deck",            sourceType = "quest", gems = {},                   enchant = nil, itemId = 31856 },
            { name = "Icon of the Silver Crescent",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
            { name = "Amani Punisher",                 source = "Akil'zon — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33283 },
        },
        OffHand = {
            { name = "Fetish of the Primal Gods",      source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33334 },
            { name = "Orb of the Soul-Eater",          source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
        },
        Relic = {
            { name = "Carved Witch Doctor's Stick",    source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33192 },
            { name = "Wand of the Forgotten Star",     source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",         source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
            { name = "Hood of Absolution",             source = "Archimonde — Hyjal Summit",          sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 31064 },
        },
        Neck = {
            { name = "Amulet of Unfettered Magics",    source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34204 },
            { name = "Chain of the Twilight Owl",      source = "Jewelcrafting (AH)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 24121 },
        },
        Shoulder = {
            { name = "Shoulderpads of Absolution",     source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 31070 },
            { name = "Amice of the Convoker",          source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34210 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",     source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
            { name = "Nethervoid Cloak",               source = "Trash — Black Temple",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32590 },
        },
        Chest = {
            { name = "Sunfire Robe",                   source = "Tailoring (Sunmote)",                sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Fel Conquerer Raiments",         source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34232 },
            { name = "Shroud of Absolution",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 31065 },
        },
        Wrist = {
            { name = "Bracers of Absolution",          source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34434 },
            { name = "Bracers of Nimble Thought",      source = "Tailoring (AH)",                     sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",   source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
            { name = "Handguards of Absolution",       source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 31061 },
        },
        Waist = {
            { name = "Cord of Absolution",             source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34528 },
            { name = "Waistwrap of Infinity",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
        },
        Legs = {
            { name = "Leggings of Calamity",           source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
            { name = "Pantaloons of Growing Strife",   source = "Sunwell Plateau",                    sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34386 },
        },
        Feet = {
            { name = "Treads of Absolution",           source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34563 },
            { name = "Slippers of the Seacaller",      source = "Naj'entus — Black Temple",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Omnipotence",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
        },
        Ring2 = {
            { name = "Loop of Forged Power",           source = "Jewelcrafting (BoE)",                sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",          source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",              source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Grand Magister's Staff of Torrents", source = "Kil'jaeden — Sunwell Plateau",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34182 },
            { name = "Sunflare",                       source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34336 },
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Heart of the Pit",               source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
            { name = "Fetish of the Primal Gods",      source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33334 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",          source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}
