-- Wick's TBC BIS Tracker
-- Data_Mage.lua — Fire, Frost, Arcane (Phases 1–5)
-- Source: Wowhead TBC Classic Mage Guides

WTBT_Data = WTBT_Data or {}
WTBT_Data["Mage"] = WTBT_Data["Mage"] or {}

-- =============================================================================
-- FIRE
-- =============================================================================
WTBT_Data["Mage"]["Fire"] = {
    [1] = {
        Head = {
            { name = "Collar of the Aldor",               source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
            { name = "Spellstrike Hood",                  source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Uni-Mind Headdress",                source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28744 },
        },
        Neck = {
            { name = "Brooch of Unquenchable Fury",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Adornment of Stolen Souls",         source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Pendant of the Violet Eye",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Pauldrons of the Aldor",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
            { name = "Mantle of the Mind Flayer",         source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
            { name = "Spaulders of the Torn-heart",       source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28612 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",     source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Shadow-Cloak of Dalaran",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Vestments of the Aldor",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29077 },
            { name = "Spellfire Robe",                    source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21848 },
            { name = "Robe of the Elder Scribes",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bands of Nefarious Deeds",          source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Bracers of Havok",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Crimson Bracers of Gloom",          source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Soul-Eater's Handwraps",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
            { name = "Gloves of the Aldor",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29075 },
            { name = "Handwraps of Flowing Thought",      source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
        },
        Waist = {
            { name = "Inferno Waist Cord",                source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
            { name = "Girdle of Ruination",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Spellfire Belt",                    source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
        },
        Legs = {
            { name = "Legwraps of the Aldor",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
            { name = "Spellstrike Pants",                 source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Pantaloons of Repentence",          source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28594 },
        },
        Feet = {
            { name = "Ruby Slippers",                     source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
            { name = "Boots of Foretelling",              source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Violet Signet of the Archmage",     source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
        },
        Ring2 = {
            { name = "Ring of Recurrence",                source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
            { name = "Ashton's Ring of Adornment",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "The Lightning Capacitor",           source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        Trinket2 = {
            { name = "Quagmirran's Eye",                  source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "Scryer's Bloodgem",                 source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Talon of the Tempest",              source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Bloodmaw Magus-Blade",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
            { name = "Nathrezim Mindblade",               source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
        },
        OffHand = {
            { name = "Karaborian Talisman",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
            { name = "Talisman of Nightbane",             source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28603 },
            { name = "Orb of the Soul-Eater",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
        },
        Relic = {
            { name = "Eredar Wand of Obliteration",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
            { name = "Tirisfal Wand of Ascendancy",       source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
    [2] = {
        Head = {
            { name = "Destruction Holo-gogs",             source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
        },
        Neck = {
            { name = "The Sun King's Talisman",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of the Elven Kings",         source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30024 },
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",        source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Robes of Tirisfal",                 source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30196 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",              source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Gauntlets of the Sun King",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29987 },
        },
        Waist = {
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Trousers of the Astromancer",       source = "High Astromancer Solarian — TK",     sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 29972 },
        },
        Feet = {
            { name = "Boots of Blasting",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Band of Eternity",                  source = "Scale of the Sands — Exalted",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Ring2 = {
            { name = "Ring of Endless Coils",             source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30109 },
            { name = "Band of Al'ar",                     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29922 },
        },
        Trinket1 = {
            { name = "Sextant of Unstable Currents",      source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30626 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Quagmirran's Eye",                  source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        MainHand = {
            { name = "The Nexus Key",                     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29988 },
        },
        OffHand = {
            { name = "Karaborian Talisman",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Cowl of the Illidari High Lord",    source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Hellfire-Encased Pendant",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32589 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
        },
        Back = {
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",         source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Tempest",             source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31055 },
        },
        Waist = {
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",          source = "The Scale of the Sands — Exalted",   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Serpent-Coil Braid",                source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30720 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [4] = {
        Head = {
            { name = "Cowl of the Illidari High Lord",    source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Hellfire-Encased Pendant",          source = "Supremus — Black Temple",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32589 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
        },
        Back = {
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",         source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Tempest",             source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31055 },
        },
        Waist = {
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Mana Attuned Band",                 source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",                 source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
            { name = "Cowl of the Illidari High Lord",    source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Amulet of Unfettered Magics",       source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34204 },
            { name = "Pendant of Sunfire",                source = "Sunwell Crafting",                   sourceType = "craft", gems = {},                   enchant = nil, itemId = 34359 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
            { name = "Amice of the Convoker",             source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34210 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",        source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Sunfire Robe",                      source = "Sunwell Crafting",                   sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of the Tempest",            source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34447 },
            { name = "Bracers of Nimble Thought",         source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",      source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
            { name = "Gloves of the Tempest",             source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31055 },
        },
        Waist = {
            { name = "Belt of the Tempest",               source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34557 },
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of Calamity",              source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Boots of the Tempest",              source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34574 },
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",              source = "Sunwell Crafting",                   sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
            { name = "Ring of Omnipotence",               source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
        },
        Ring2 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",                 source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Sunflare",                          source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34336 },
            { name = "Grand Magister's Staff of Torrents", source = "Brutallus — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34182 },
        },
        OffHand = {
            { name = "Heart of the Pit",                  source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",             source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}

-- =============================================================================
-- FROST
-- =============================================================================
WTBT_Data["Mage"]["Frost"] = {
    [1] = {
        Head = {
            { name = "Collar of the Aldor",               source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
            { name = "Spellstrike Hood",                  source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Uni-Mind Headdress",                source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28744 },
        },
        Neck = {
            { name = "Brooch of Unquenchable Fury",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Adornment of Stolen Souls",         source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Pendant of the Violet Eye",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Frozen Shadoweave Shoulders",       source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21869 },
            { name = "Pauldrons of the Aldor",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
            { name = "Mantle of the Mind Flayer",         source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Brute Cloak of the Ogre-Magi",     source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Shadow-Cloak of Dalaran",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Frozen Shadoweave Robe",            source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
            { name = "Vestments of the Aldor",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29077 },
            { name = "Robe of the Elder Scribes",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bracers of Havok",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",          source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Crimson Bracers of Gloom",          source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Anger-Spark Gloves",                source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30725 },
            { name = "Gloves of the Aldor",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29075 },
            { name = "Handwraps of Flowing Thought",      source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28507 },
        },
        Waist = {
            { name = "Girdle of Ruination",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Inferno Waist Cord",                source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
        },
        Legs = {
            { name = "Spellstrike Pants",                 source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Legwraps of the Aldor",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
        },
        Feet = {
            { name = "Frozen Shadoweave Boots",           source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21870 },
            { name = "Ruby Slippers",                     source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
            { name = "Boots of Foretelling",              source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
        },
        Ring1 = {
            { name = "Violet Signet of the Archmage",     source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
            { name = "Ring of Recurrence",                source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
        },
        Ring2 = {
            { name = "Band of Crimson Fury",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Ashton's Ring of Adornment",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "The Lightning Capacitor",           source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
        },
        Trinket2 = {
            { name = "Quagmirran's Eye",                  source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
            { name = "Scryer's Bloodgem",                 source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Talon of the Tempest",              source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Nathrezim Mindblade",               source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Bloodmaw Magus-Blade",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        OffHand = {
            { name = "Karaborian Talisman",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
            { name = "Talisman of Nightbane",             source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28603 },
            { name = "Orb of the Soul-Eater",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
        },
        Relic = {
            { name = "Eredar Wand of Obliteration",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
            { name = "Tirisfal Wand of Ascendancy",       source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
    [2] = {
        Head = {
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
            { name = "Destruction Holo-gogs",             source = "Engineering",                        sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 32494 },
        },
        Neck = {
            { name = "The Sun King's Talisman",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Ruby Drape of the Mysticant",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
        },
        Chest = {
            { name = "Vestments of the Sea-Witch",        source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
            { name = "Frozen Shadoweave Robe",            source = "Tailoring (Shadoweave)",             sourceType = "craft", gems = {},                   enchant = nil, itemId = 21871 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",              source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Gloves of Tirisfal",                source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30205 },
        },
        Waist = {
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of Tirisfal",              source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30207 },
        },
        Feet = {
            { name = "Boots of Blasting",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Band of Al'ar",                     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29922 },
        },
        Ring2 = {
            { name = "Band of Eternity",                  source = "Scale of the Sands — Exalted",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Trinket1 = {
            { name = "Sextant of Unstable Currents",      source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30626 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "The Nexus Key",                     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29988 },
        },
        OffHand = {
            { name = "Fathomstone",                       source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Cowl of the Illidari High Lord",    source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "The Sun King's Talisman",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
            { name = "Translucent Spellthread Necklace",  source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32349 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
        },
        Back = {
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",         source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Tempest",             source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31055 },
        },
        Waist = {
            { name = "Waistwrap of Infinity",             source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
        },
        Legs = {
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Band of the Eternal Sage",          source = "The Scale of the Sands — Exalted",   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Ashtongue Talisman of Insight",     source = "Ashtongue Deathsworn — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 32488 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [4] = {
        Head = {
            { name = "Cowl of the Illidari High Lord",    source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 32525 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",          source = "Halazzi — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
        },
        Back = {
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of Nimble Thought",         source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 32586 },
        },
        Hands = {
            { name = "Gloves of the Tempest",             source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31055 },
        },
        Waist = {
            { name = "Waistwrap of Infinity",             source = "Gurtogg Bloodboil — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32256 },
        },
        Legs = {
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Mana Attuned Band",                 source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        Trinket2 = {
            { name = "Hex Shrunken Head",                 source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [5] = {
        Head = {
            { name = "Dark Conjuror's Collar",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
        },
        Neck = {
            { name = "Amulet of Unfettered Magics",       source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34204 },
        },
        Shoulder = {
            { name = "Mantle of the Tempest",             source = "Mother Shahraz — Black Temple",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31059 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",        source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Sunfire Robe",                      source = "Sunwell Crafting",                   sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
            { name = "Robes of the Tempest",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31057 },
        },
        Wrist = {
            { name = "Bracers of the Tempest",            source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34447 },
        },
        Hands = {
            { name = "Handguards of Defiled Worlds",      source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = { "red" },             enchant = nil, itemId = 34344 },
        },
        Waist = {
            { name = "Belt of the Tempest",               source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34557 },
        },
        Legs = {
            { name = "Leggings of Calamity",              source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
        },
        Feet = {
            { name = "Boots of the Tempest",              source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34574 },
        },
        Ring1 = {
            { name = "Loop of Forged Power",              source = "Sunwell Crafting",                   sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Ring2 = {
            { name = "Ring of Omnipotence",               source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Sunflare",                          source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34336 },
        },
        OffHand = {
            { name = "Heart of the Pit",                  source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",             source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}

-- =============================================================================
-- ARCANE
-- =============================================================================
WTBT_Data["Mage"]["Arcane"] = {
    [1] = {
        Head = {
            { name = "Collar of the Aldor",               source = "Shade of Aran — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29076 },
            { name = "Spellstrike Hood",                  source = "Tailoring",                          sourceType = "craft", gems = { "meta", "red" },    enchant = nil, itemId = 24266 },
            { name = "Uni-Mind Headdress",                source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28744 },
        },
        Neck = {
            { name = "Adornment of Stolen Souls",         source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28762 },
            { name = "Brooch of Unquenchable Fury",       source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28530 },
            { name = "Pendant of the Violet Eye",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Pauldrons of the Aldor",            source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29079 },
            { name = "Mantle of the Mind Flayer",         source = "Trash — Karazhan",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28755 },
            { name = "Spaulders of the Torn-heart",       source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28612 },
        },
        Back = {
            { name = "Brute Cloak of the Ogre-Magi",     source = "High King Maulgar — Gruul's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28797 },
            { name = "Ruby Drape of the Mysticant",       source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28766 },
            { name = "Shadow-Cloak of Dalaran",           source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28570 },
        },
        Chest = {
            { name = "Spellfire Robe",                    source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21848 },
            { name = "Vestments of the Aldor",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29077 },
            { name = "Robe of the Elder Scribes",         source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28602 },
        },
        Wrist = {
            { name = "Bracers of Havok",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24250 },
            { name = "Bands of Nefarious Deeds",          source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28515 },
            { name = "Crimson Bracers of Gloom",          source = "Attumen — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28477 },
        },
        Hands = {
            { name = "Spellfire Gloves",                  source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21847 },
            { name = "Gloves of the Aldor",               source = "Curator — Karazhan",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29075 },
            { name = "Soul-Eater's Handwraps",            source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28780 },
        },
        Waist = {
            { name = "Spellfire Belt",                    source = "Tailoring (Spellfire)",              sourceType = "craft", gems = {},                   enchant = nil, itemId = 21846 },
            { name = "Girdle of Ruination",               source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 24256 },
            { name = "Inferno Waist Cord",                source = "Karazhan Trash",                     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30673 },
        },
        Legs = {
            { name = "Legwraps of the Aldor",             source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29078 },
            { name = "Spellstrike Pants",                 source = "Tailoring",                          sourceType = "craft", gems = { "red", "red", "blue" }, enchant = nil, itemId = 24262 },
            { name = "Pantaloons of Repentence",          source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28594 },
        },
        Feet = {
            { name = "Boots of Foretelling",              source = "Maiden of Virtue — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28517 },
            { name = "Ruby Slippers",                     source = "Opera Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28585 },
        },
        Ring1 = {
            { name = "Band of Crimson Fury",              source = "Netherspite — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28793 },
            { name = "Ring of Recurrence",                source = "Chess Event — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28753 },
        },
        Ring2 = {
            { name = "Violet Signet of the Archmage",     source = "The Violet Eye — Exalted",           sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29287 },
            { name = "Ashton's Ring of Adornment",        source = "Moroes — Karazhan",                  sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28555 },
        },
        Trinket1 = {
            { name = "The Lightning Capacitor",           source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28785 },
            { name = "Quagmirran's Eye",                  source = "Quagmirran — Slave Pens",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 27683 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
            { name = "Scryer's Bloodgem",                 source = "Scryer — Revered",                   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29132 },
        },
        MainHand = {
            { name = "Nathrezim Mindblade",               source = "Prince Malchezaar — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28770 },
            { name = "Talon of the Tempest",              source = "Doomwalker — World Boss",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30723 },
            { name = "Bloodmaw Magus-Blade",              source = "Gruul — Gruul's Lair",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28802 },
        },
        OffHand = {
            { name = "Talisman of Nightbane",             source = "Nightbane — Karazhan",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28603 },
            { name = "Karaborian Talisman",               source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28781 },
            { name = "Orb of the Soul-Eater",             source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29272 },
        },
        Relic = {
            { name = "Eredar Wand of Obliteration",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
            { name = "Tirisfal Wand of Ascendancy",       source = "Terestian Illhoof — Karazhan",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28673 },
        },
    },
    [2] = {
        Head = {
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
        },
        Neck = {
            { name = "The Sun King's Talisman",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Royal Cloak of the Sunstriders",    source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29992 },
        },
        Chest = {
            { name = "Robes of Tirisfal",                 source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30196 },
            { name = "Vestments of the Sea-Witch",        source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = nil, itemId = 30107 },
        },
        Wrist = {
            { name = "Mindstorm Wristbands",              source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29918 },
        },
        Hands = {
            { name = "Gauntlets of the Sun King",         source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29987 },
            { name = "Gloves of Tirisfal",                source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30205 },
        },
        Waist = {
            { name = "Cord of Screaming Terrors",         source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30064 },
            { name = "Belt of Blasting",                  source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30038 },
        },
        Legs = {
            { name = "Leggings of Tirisfal",              source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30207 },
        },
        Feet = {
            { name = "Velvet Boots of the Guardian",      source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30067 },
            { name = "Boots of Blasting",                 source = "Tailoring",                          sourceType = "craft", gems = {},                   enchant = nil, itemId = 30037 },
        },
        Ring1 = {
            { name = "Band of Eternity",                  source = "Scale of the Sands — Exalted",       sourceType = "quest", gems = {},                   enchant = nil, itemId = 29302 },
        },
        Ring2 = {
            { name = "Band of Al'ar",                     source = "Al'ar — Tempest Keep",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29922 },
        },
        Trinket1 = {
            { name = "Serpent-Coil Braid",                source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30720 },
        },
        Trinket2 = {
            { name = "Icon of the Silver Crescent",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 29370 },
        },
        MainHand = {
            { name = "The Nexus Key",                     source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29988 },
        },
        OffHand = {
            { name = "Fathomstone",                       source = "Hydross the Unstable — SSC",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30049 },
        },
        Relic = {
            { name = "Wand of the Forgotten Star",        source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29982 },
        },
    },
    [3] = {
        Head = {
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
        },
        Neck = {
            { name = "The Sun King's Talisman",           source = "Kael'thas — Tempest Keep",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30015 },
        },
        Shoulder = {
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Cloak of the Illidari Council",     source = "Illidari Council — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32331 },
        },
        Chest = {
            { name = "Robes of Tirisfal",                 source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30196 },
        },
        Wrist = {
            { name = "Cuffs of Devastation",              source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of Tirisfal",                source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30205 },
        },
        Waist = {
            { name = "Anetheron's Noose",                 source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of the Tempest",           source = "Kaz'rogal — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 31058 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Band of the Eternal Sage",          source = "The Scale of the Sands — Exalted",   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Ring2 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Trinket1 = {
            { name = "Serpent-Coil Braid",                source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30720 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Eredar Wand of Obliteration",       source = "Magtheridon — Magtheridon's Lair",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28783 },
        },
    },
    [4] = {
        Head = {
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",          source = "Halazzi — Zul'Aman",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
        },
        Shoulder = {
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Shroud of the Highborne",           source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32524 },
        },
        Chest = {
            { name = "Robes of Tirisfal",                 source = "Kael'thas — Tempest Keep",           sourceType = "token", gems = {},                   enchant = nil, itemId = 30196 },
        },
        Wrist = {
            { name = "Cuffs of Devastation",              source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of Tirisfal",                source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30205 },
        },
        Waist = {
            { name = "Anetheron's Noose",                 source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Channeled Elements",    source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 30916 },
        },
        Feet = {
            { name = "Slippers of the Seacaller",         source = "Fathom-Lord Karathress — SSC",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32239 },
        },
        Ring1 = {
            { name = "Ring of Ancient Knowledge",         source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32527 },
        },
        Ring2 = {
            { name = "Mana Attuned Band",                 source = "Zul'Aman",                           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33497 },
        },
        Trinket1 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Hex Shrunken Head",                 source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        Trinket2 = {
            { name = "Ashtongue Talisman of Insight",     source = "Ashtongue Deathsworn — Exalted",     sourceType = "rep",   gems = {},                   enchant = nil, itemId = 32488 },
        },
        MainHand = {
            { name = "Zhar'doom, Greatstaff of the Devourer", source = "Illidan Stormrage — Black Temple", sourceType = "drop", gems = {},                  enchant = nil, itemId = 32374 },
        },
        OffHand = {
            { name = "Chronicle of Dark Secrets",         source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30872 },
        },
        Relic = {
            { name = "Carved Witch Doctor's Stick",       source = "G'eras — Badges of Justice",         sourceType = "badge", gems = {},                   enchant = nil, itemId = 33192 },
        },
    },
    [5] = {
        Head = {
            { name = "Cowl of Tirisfal",                  source = "Lady Vashj — SSC",                   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30206 },
            { name = "Dark Conjuror's Collar",            source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = { "meta", "red" },    enchant = nil, itemId = 34340 },
        },
        Neck = {
            { name = "Amulet of Unfettered Magics",       source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34204 },
        },
        Shoulder = {
            { name = "Mantle of Tirisfal",                source = "Void Reaver — Tempest Keep",         sourceType = "token", gems = {},                   enchant = nil, itemId = 30210 },
        },
        Back = {
            { name = "Tattered Cape of Antonidas",        source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34242 },
        },
        Chest = {
            { name = "Robes of Ghostly Hatred",           source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34399 },
            { name = "Sunfire Robe",                      source = "Sunwell Crafting",                   sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = nil, itemId = 34364 },
        },
        Wrist = {
            { name = "Bracers of the Tempest",            source = "Kalecgos — Sunwell Plateau",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34447 },
            { name = "Cuffs of Devastation",              source = "Hyjal Summit Trash",                 sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30870 },
        },
        Hands = {
            { name = "Gloves of Tyri's Power",            source = "Eredar Twins — Sunwell Plateau",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34406 },
            { name = "Gloves of Tirisfal",                source = "Leotheras the Blind — SSC",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30205 },
        },
        Waist = {
            { name = "Belt of the Tempest",               source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34557 },
            { name = "Anetheron's Noose",                 source = "Anetheron — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30888 },
        },
        Legs = {
            { name = "Leggings of Calamity",              source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = nil, itemId = 34181 },
        },
        Feet = {
            { name = "Boots of the Tempest",              source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34574 },
        },
        Ring1 = {
            { name = "Band of the Eternal Sage",          source = "The Scale of the Sands — Exalted",   sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29305 },
        },
        Ring2 = {
            { name = "Ring of Omnipotence",               source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34230 },
            { name = "Loop of Forged Power",              source = "Sunwell Crafting",                   sourceType = "craft", gems = {},                   enchant = nil, itemId = 34362 },
        },
        Trinket1 = {
            { name = "Shifting Naaru Sliver",             source = "M'uru — Sunwell Plateau",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34429 },
        },
        Trinket2 = {
            { name = "The Skull of Gul'dan",              source = "Illidan Stormrage — Black Temple",   sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32483 },
            { name = "Hex Shrunken Head",                 source = "Hex Lord Malacrass — Zul'Aman",      sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33829 },
        },
        MainHand = {
            { name = "Sunflare",                          source = "Kil'jaeden — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34336 },
            { name = "Grand Magister's Staff of Torrents", source = "Brutallus — Sunwell Plateau",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34182 },
        },
        OffHand = {
            { name = "Heart of the Pit",                  source = "Brutallus — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34179 },
        },
        Relic = {
            { name = "Wand of the Demonsoul",             source = "Felmyst — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34347 },
        },
    },
}
