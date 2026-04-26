-- Wick's TBC BIS Tracker
-- Data_HolyPriest.lua
--
-- Structure per item:
--   name       string  item name
--   source     string  boss/vendor/craft name
--   sourceType string  "drop"|"craft"|"badge"|"rep"|"quest"|"pvp"|"token"
--   gems       table   list of gem color strings: "red"|"yellow"|"blue"|"meta"|"orange"|"purple"|"green"
--   enchant    string  recommended enchant (nil if none)
--   itemId     number  wowhead item ID (for icon + tooltip linking)

WTBT_Data = WTBT_Data or {}
WTBT_Data["Priest"] = WTBT_Data["Priest"] or {}
WTBT_Data["Priest"]["Holy"] = {

    -- =========================================================
    -- PHASE 1 — Karazhan / Gruul's Lair / Magtheridon's Lair
    -- (Source: Wowhead TBC Classic Holy Priest Guide)
    -- =========================================================
    [1] = {
        Head = {
            { name = "Light-Collar of the Incarnate",  source = "Prince Malchezaar — Karazhan",     sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29049 },
            { name = "Cowl of Naaru Blessings",        source = "G'eras — Shattrath City (50 Badges)", sourceType = "badge", gems = {},                enchant = "Glyph of Renewal (+35 Healing)", itemId = 32090 },
            { name = "Whitemend Hood",                 source = "Tailoring",                         sourceType = "craft", gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 24264 },
            { name = "Headdress of the High Potentate", source = "Dust Covered Chest — Karazhan",   sourceType = "drop",  gems = { "meta", "yellow" }, enchant = "Glyph of Renewal (+35 Healing)", itemId = 28756 },
        },
        Neck = {
            { name = "Archaic Charm of Presence",      source = "Doom Lord Kazzak — World Boss",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
            { name = "Teeth of Gruul",                 source = "Gruul — Gruul's Lair",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28822 },
            { name = "Emberspur Talisman",             source = "Nightbane — Karazhan",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
            { name = "Necklace of Eternal Hope",       source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                enchant = nil, itemId = 29374 },
        },
        Shoulder = {
            { name = "Primal Mooncloth Shoulders",     source = "Tailoring (Primal Mooncloth)",     sourceType = "craft", gems = { "blue", "yellow" }, enchant = "Greater Inscription of Discipline", itemId = 21874 },
            { name = "Light-Mantle of the Incarnate",  source = "High King Maulgar — Gruul's Lair", sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 29054 },
            { name = "Pauldrons of the Solace-Giver",  source = "The Curator — Karazhan",           sourceType = "drop",  gems = {},                   enchant = "Greater Inscription of Discipline", itemId = 28612 },
        },
        Back = {
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan", sourceType = "drop", gems = {},                  enchant = "Subtlety (-2% Threat)", itemId = 28765 },
            { name = "Lifegiving Cloak",               source = "World Drop — Outlands",            sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 31329 },
            { name = "Bishop's Cloak",                 source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                enchant = "Subtlety (-2% Threat)", itemId = 29375 },
        },
        Chest = {
            { name = "Primal Mooncloth Robe",          source = "Tailoring (Primal Mooncloth)",     sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
            { name = "Robes of the Incarnate",         source = "Magtheridon — Magtheridon's Lair", sourceType = "drop",  gems = { "red", "red", "yellow" },  enchant = "Exceptional Stats (+6 all stats)", itemId = 29050 },
            { name = "Masquerade Gown",                source = "Julianne — Karazhan (Opera)",      sourceType = "drop",  gems = {},                          enchant = "Exceptional Stats (+6 all stats)", itemId = 28578 },
        },
        Wrist = {
            { name = "Bindings of the Timewalker",     source = "Keepers of Time — Exalted",        sourceType = "rep",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29183 },
            { name = "Bands of Indwelling",            source = "Maiden of Virtue — Karazhan",      sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 28511 },
            { name = "Bands of the Benevolent",        source = "Talon King Ikiss — Heroic Sethekk Halls", sourceType = "drop", gems = {},             enchant = "Healing Power (+30 Healing)", itemId = 29249 },
        },
        Hands = {
            { name = "Gloves of Saintly Blessings",    source = "Attumen the Huntsman — Karazhan",  sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28508 },
            { name = "Handwraps of the Incarnate",     source = "The Curator — Karazhan",           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 29055 },
            { name = "Hallowed Handwraps",             source = "Warchief Kargath — Shattered Halls", sourceType = "drop", gems = {},                  enchant = "Major Healing (+35 Healing)", itemId = 27536 },
        },
        Waist = {
            { name = "Primal Mooncloth Belt",          source = "Tailoring (Primal Mooncloth)",     sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
            { name = "Cincture of Will",               source = "Terestian Illhoof — Karazhan",     sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 28652 },
            { name = "Cord of Sanctification",         source = "Epoch Hunter — Old Hillsbrad",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29250 },
        },
        Legs = {
            { name = "Gilded Trousers of Benediction", source = "Doomwalker — World Boss",          sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
            { name = "Pantaloons of Repentance",       source = "Netherspite — Karazhan",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 28742 },
            { name = "Whitemend Pants",                source = "Tailoring (Whitemend)",             sourceType = "craft", gems = { "blue", "yellow" },     enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 24261 },
            { name = "Trousers of the Incarnate",      source = "Gruul — Gruul's Lair",             sourceType = "drop",  gems = {},                       enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29053 },
        },
        Feet = {
            { name = "Boots of the Incorrupt",         source = "Shade of Aran — Karazhan",         sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28663 },
            { name = "Boots of the Pious",             source = "Pathaleon — Heroic Mechanar",      sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 29251 },
            { name = "Slippers of Serenity",           source = "Auchenai Crypts",                  sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 27411 },
        },
        Ring1 = {
            { name = "Ring of Flowing Light",          source = "Doom Lord Kazzak — World Boss",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",    sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Jade Ring of the Everliving",    source = "Prince Malchezaar — Karazhan",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
        },
        Ring2 = {
            { name = "Mender's Heart-Ring",            source = "Terestian Illhoof — Karazhan",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28661 },
            { name = "Naaru Lightwarden's Band",       source = "Quest: The Fall of Magtheridon",   sourceType = "quest", gems = {},                   enchant = nil, itemId = 28790 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Shattrath City (41 Badges)", sourceType = "badge", gems = {},                enchant = nil, itemId = 29376 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
            { name = "Lower City Prayerbook",          source = "Lower City — Revered",             sourceType = "rep",   gems = {},                   enchant = nil, itemId = 30841 },
        },
        Trinket2 = {
            { name = "Eye of Gruul",                   source = "Gruul — Gruul's Lair",             sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28823 },
            { name = "Scarab of the Infinite Cycle",   source = "Aeonus — The Black Morass",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28190 },
            { name = "Bangle of Endless Blessings",    source = "Warp Splinter — The Botanica",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28370 },
        },
        MainHand = {
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",     sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
            { name = "Shard of the Virtuous",          source = "Maiden of Virtue — Karazhan",      sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28522 },
            { name = "Gavel of Pure Light",            source = "The Sha'tar — Exalted",            sourceType = "rep",   gems = {},                   enchant = "Spellsurge", itemId = 29175 },
        },
        OffHand = {
            { name = "Windcaller's Orb",               source = "Cenarion Expedition — Exalted",    sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29170 },
            { name = "Tears of Heaven",                source = "G'eras — Shattrath City (25 Badges)", sourceType = "badge", gems = {},                enchant = nil, itemId = 29274 },
            { name = "Aran's Soothing Sapphire",       source = "Shade of Aran — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28728 },
        },
        Relic = {
            { name = "Blue Diamond Witchwand",         source = "Opera Event — Karazhan",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28588 },
            { name = "Rejuvenating Scepter",           source = "Quest: Ar'kelos the Guardian",     sourceType = "quest", gems = {},                   enchant = nil, itemId = 29779 },
            { name = "Soul-Wand of the Aldor",         source = "Ambassador Hellmaw — Shadow Labyrinth", sourceType = "drop", gems = {},               enchant = nil, itemId = 27885 },
        },
    },

    -- =========================================================
    -- PHASE 2 — Serpentshrine Cavern / The Eye (Tempest Keep)
    -- =========================================================
    [2] = {
        Head = {
            { name = "Cowl of the Avatar",             source = "Lady Vashj — Serpentshrine Cavern",   sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30152 },
            { name = "Powerheal 4000 Lens",            source = "Engineering (BoP)",                   sourceType = "craft", gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32495 },
            { name = "Light-Collar of the Incarnate",  source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 29049 },
            { name = "Crown of the Sun",               source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = "Glyph of Renewal (+35 Healing)", itemId = 29990 },
        },
        Neck = {
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Archaic Charm of Presence",      source = "Doom Lord Kazzak — World Boss",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30726 },
            { name = "Emberspur Talisman",             source = "Nightbane — Karazhan",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28609 },
        },
        Shoulder = {
            { name = "Mantle of the Avatar",           source = "Void Reaver — Tempest Keep",          sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30154 },
            { name = "Primal Mooncloth Shoulders",     source = "Tailoring (Primal Mooncloth)",        sourceType = "craft", gems = { "blue", "yellow" }, enchant = "Greater Inscription of Discipline", itemId = 21874 },
            { name = "Light-Mantle of the Incarnate",  source = "High King Maulgar — Gruul's Lair",    sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 29054 },
        },
        Back = {
            { name = "Sunshower Light Cloak",          source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
            { name = "Stainless Cloak of the Pure Hearted", source = "Prince Malchezaar — Karazhan",   sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 28765 },
            { name = "Lifegiving Cloak",               source = "World Drop — Outlands",               sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 31329 },
        },
        Chest = {
            { name = "Vestments of the Avatar",        source = "Kael'thas — Tempest Keep",            sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30150 },
            { name = "Primal Mooncloth Robe",          source = "Tailoring (Primal Mooncloth)",        sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
            { name = "Robes of the Incarnate",         source = "Magtheridon — Magtheridon's Lair",    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 29050 },
        },
        Wrist = {
            { name = "Veteran's Mooncloth Cuffs",      source = "Honor Points Vendor (Season 2)",      sourceType = "pvp",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32980 },
            { name = "Wraps of Purification",          source = "Hydross the Unstable — SSC",          sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32516 },
            { name = "Bindings of the Timewalker",     source = "Keepers of Time — Exalted",           sourceType = "rep",   gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 29183 },
            { name = "Bands of Indwelling",            source = "Maiden of Virtue — Karazhan",         sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 28511 },
        },
        Hands = {
            { name = "Gloves of the Avatar",           source = "Leotheras the Blind — SSC",           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 30151 },
            { name = "Gloves of Saintly Blessings",    source = "Attumen the Huntsman — Karazhan",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 28508 },
            { name = "Handwraps of the Incarnate",     source = "The Curator — Karazhan",              sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 29055 },
        },
        Waist = {
            { name = "Belt of the Long Road",          source = "Tailoring (AH)",                      sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 30036 },
            { name = "Primal Mooncloth Belt",          source = "Tailoring (Primal Mooncloth)",        sourceType = "craft", gems = { "blue", "yellow" }, enchant = nil, itemId = 21873 },
        },
        Legs = {
            { name = "Breeches of the Avatar",         source = "Fathom-Lord Karathress — SSC",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30153 },
            { name = "Gilded Trousers of Benediction", source = "Doomwalker — World Boss",             sourceType = "drop",  gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30727 },
            { name = "Pantaloons of Repentance",       source = "Netherspite — Karazhan",              sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 28742 },
            { name = "Star-Soul Breeches",             source = "High Astromancer Solarian — TK",      sourceType = "drop",  gems = {},                       enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 29977 },
        },
        Feet = {
            { name = "Soul-Strider Boots",             source = "Fathom-Lord Karathress — SSC",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30100 },
            { name = "Boots of the Long Road",         source = "Tailoring (BoP)",                     sourceType = "craft", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30035 },
            { name = "Boots of the Incorrupt",         source = "Shade of Aran — Karazhan",            sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 28663 },
        },
        Ring1 = {
            { name = "Coral Band of the Revived",      source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
            { name = "Ring of Flowing Light",          source = "Doom Lord Kazzak — World Boss",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30736 },
        },
        Ring2 = {
            { name = "Jade Ring of the Everliving",    source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28763 },
            { name = "Phoenix-Ring of Rebirth",        source = "Al'ar — Tempest Keep",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29920 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
            { name = "Ribbon of Sacrifice",            source = "Opera Event — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28590 },
        },
        Trinket2 = {
            { name = "Eye of Gruul",                   source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28823 },
            { name = "Earring of Soulful Meditation",  source = "The Lurker Below — SSC",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30665 },
            { name = "Scarab of the Infinite Cycle",   source = "Aeonus — The Black Morass",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28190 },
        },
        MainHand = {
            { name = "Lightfathom Scepter",            source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
            { name = "Merciless Gladiator's Salvation", source = "Arena Points Vendor (Season 2)",     sourceType = "pvp",   gems = {},                   enchant = "Spellsurge", itemId = 32964 },
            { name = "Light's Justice",                source = "Prince Malchezaar — Karazhan",        sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 28771 },
        },
        OffHand = {
            { name = "Talisman of the Sun King",       source = "Al'ar — Tempest Keep",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29923 },
            { name = "Windcaller's Orb",               source = "Cenarion Expedition — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29170 },
            { name = "Tears of Heaven",                source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29274 },
        },
        Relic = {
            { name = "Luminescent Rod of the Naaru",   source = "Morogrim Tidewalker — SSC",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30080 },
            { name = "Blue Diamond Witchwand",         source = "Opera Event — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28588 },
        },
    },

    -- =========================================================
    -- PHASE 3 — Mount Hyjal / Black Temple
    -- =========================================================
    [3] = {
        Head = {
            { name = "Cowl of Absolution",             source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31063 },
            { name = "Cowl of the Avatar",             source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30152 },
            { name = "Cowl of Benevolence",            source = "Teron Gorefiend — Black Temple",      sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 32329 },
        },
        Neck = {
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
            { name = "Lord Sanguinar's Claim",         source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30018 },
            { name = "Vindicator's Pendant of Salvation", source = "Honor Points Vendor (Season 3)",   sourceType = "pvp",   gems = {},                   enchant = nil, itemId = 33922 },
        },
        Shoulder = {
            { name = "Mantle of Absolution",           source = "Mother Shahraz — Black Temple",       sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31069 },
            { name = "Swiftheal Mantle",               source = "Tailoring",                           sourceType = "craft", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 32585 },
            { name = "Mantle of the Avatar",           source = "Void Reaver — Tempest Keep",          sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30154 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Sunshower Light Cloak",          source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
            { name = "Shroud of Forgiveness",          source = "Gurtogg Bloodboil — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32337 },
        },
        Chest = {
            { name = "Vestments of Absolution",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31066 },
            { name = "Vestments of the Avatar",        source = "Kael'thas — Tempest Keep",            sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30150 },
            { name = "Primal Mooncloth Robe",          source = "Tailoring (Primal Mooncloth)",        sourceType = "craft", gems = { "yellow", "blue" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 21875 },
        },
        Wrist = {
            { name = "Swiftheal Wraps",                source = "Tailoring (AH)",                      sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
            { name = "Bracers of Martyrdom",           source = "Rage Winterchill — Hyjal Summit",     sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30871 },
            { name = "Wristbands of Divine Influence",  source = "Shade of Akama — Black Temple",      sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32513 },
        },
        Hands = {
            { name = "Gloves of Absolution",           source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 31060 },
            { name = "Gloves of the Avatar",           source = "Leotheras the Blind — SSC",           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 30151 },
            { name = "Gloves of Unfailing Faith",      source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 32353 },
        },
        Waist = {
            { name = "Angelista's Sash",               source = "Kaz'rogal — Hyjal Summit",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
            { name = "Belt of Divine Guidance",        source = "The Illidari Council — Black Temple",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32519 },
            { name = "Belt of the Long Road",          source = "Tailoring (AH)",                      sourceType = "craft", gems = { "red", "yellow" },  enchant = nil, itemId = 30036 },
        },
        Legs = {
            { name = "Leggings of Eternity",           source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
            { name = "Breeches of Absolution",         source = "The Illidari Council — BT",           sourceType = "drop",  gems = { "red", "red" },         enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 31068 },
            { name = "Breeches of the Avatar",         source = "Fathom-Lord Karathress — SSC",        sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30153 },
        },
        Feet = {
            { name = "Boots of the Divine Light",      source = "Trash — Hyjal/BT",                   sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
            { name = "Soul-Strider Boots",             source = "Fathom-Lord Karathress — SSC",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30100 },
            { name = "Boots of the Long Road",         source = "Tailoring (BoP)",                     sourceType = "craft", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30035 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Ring2 = {
            { name = "Coral Band of the Revived",      source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
            { name = "Violet Signet of the Grand Restorer", source = "The Violet Eye — Exalted",       sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29290 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
        },
        Trinket2 = {
            { name = "Eye of Gruul",                   source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28823 },
            { name = "Darkmoon Card: Blue Dragon",     source = "Darkmoon Beast Deck",                 sourceType = "quest", gems = {},                   enchant = nil, itemId = 19288 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Vengeful Gladiator's Salvation",  source = "Arena Points Vendor (Season 3)",     sourceType = "pvp",   gems = {},                   enchant = "Spellsurge", itemId = 33743 },
            { name = "Hammer of Atonement",            source = "Kaz'rogal — Hyjal Summit",            sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30918 },
            { name = "Lightfathom Scepter",            source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30108 },
        },
        OffHand = {
            { name = "Scepter of Purification",        source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
            { name = "Touch of Inspiration",           source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32350 },
            { name = "Talisman of the Sun King",       source = "Al'ar — Tempest Keep",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 29923 },
        },
        Relic = {
            { name = "Naaru-Blessed Life Rod",         source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32363 },
            { name = "Luminescent Rod of the Naaru",   source = "Morogrim Tidewalker — SSC",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30080 },
            { name = "Blue Diamond Witchwand",         source = "Opera Event — Karazhan",              sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28588 },
        },
    },

    -- =========================================================
    -- PHASE 4 — Zul'Aman (+ BT/Hyjal updates)
    -- =========================================================
    [4] = {
        Head = {
            { name = "Cowl of Absolution",             source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31063 },
            { name = "Cowl of the Avatar",             source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 30152 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",       source = "Akil'zon — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Nadina's Pendant of Purity",     source = "Mother Shahraz — Black Temple",       sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32370 },
        },
        Shoulder = {
            { name = "Mantle of Absolution",           source = "Mother Shahraz — Black Temple",       sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31069 },
            { name = "Swiftheal Mantle",               source = "Tailoring",                           sourceType = "craft", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 32585 },
            { name = "Mantle of the Avatar",           source = "Void Reaver — Tempest Keep",          sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30154 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Cloak of Ancient Rituals",       source = "Hex Lord Malacrass — Zul'Aman",       sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 33592 },
        },
        Chest = {
            { name = "Vestments of Absolution",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31066 },
            { name = "Vestments of the Avatar",        source = "Kael'thas — Tempest Keep",            sourceType = "token", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 30150 },
        },
        Wrist = {
            { name = "Swiftheal Wraps",                source = "Tailoring (AH)",                      sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
            { name = "Bracers of Martyrdom",           source = "Rage Winterchill — Hyjal Summit",     sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30871 },
        },
        Hands = {
            { name = "Gloves of Absolution",           source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 31060 },
            { name = "Light-Blessed Bonds",            source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = "Major Healing (+35 Healing)", itemId = 33587 },
            { name = "Gloves of the Avatar",           source = "Leotheras the Blind — SSC",           sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 30151 },
        },
        Waist = {
            { name = "Angelista's Sash",               source = "Kaz'rogal — Hyjal Summit",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
            { name = "Belt of Divine Guidance",        source = "The Illidari Council — Black Temple",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32519 },
        },
        Legs = {
            { name = "Achromic Trousers of the Naaru", source = "G'eras — Badges of Justice",          sourceType = "badge", gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 33585 },
            { name = "Leggings of Eternity",           source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
        },
        Feet = {
            { name = "Boots of the Divine Light",      source = "Trash — Hyjal/BT",                   sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
            { name = "Soul-Strider Boots",             source = "Fathom-Lord Karathress — SSC",        sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 30100 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Signet of the Quiet Forest",     source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33498 },
        },
        Ring2 = {
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
            { name = "Coral Band of the Revived",      source = "Lady Vashj — SSC",                    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30110 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
        },
        Trinket2 = {
            { name = "Memento of Tyrande",             source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32496 },
            { name = "Eye of Gruul",                   source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28823 },
            { name = "Darkmoon Card: Blue Dragon",     source = "Darkmoon Beast Deck",                 sourceType = "quest", gems = {},                   enchant = nil, itemId = 19288 },
        },
        MainHand = {
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
            { name = "Vengeful Gladiator's Salvation",  source = "Arena Points Vendor (Season 3)",     sourceType = "pvp",   gems = {},                   enchant = "Spellsurge", itemId = 33743 },
            { name = "Hammer of Atonement",            source = "Kaz'rogal — Hyjal Summit",            sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 30918 },
        },
        OffHand = {
            { name = "Scepter of Purification",        source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
            { name = "Touch of Inspiration",           source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32350 },
        },
        Relic = {
            { name = "Naaru-Blessed Life Rod",         source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32363 },
            { name = "Luminescent Rod of the Naaru",   source = "Morogrim Tidewalker — SSC",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30080 },
        },
    },

    -- =========================================================
    -- PHASE 5 — Sunwell Plateau
    -- =========================================================
    [5] = {
        Head = {
            { name = "Cowl of Light's Purity",         source = "Kil'jaeden — Sunwell Plateau",        sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 34339 },
            { name = "Cowl of Absolution",             source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "meta", "red" },    enchant = "Glyph of Renewal (+35 Healing)", itemId = 31063 },
        },
        Neck = {
            { name = "Brooch of Nature's Mercy",       source = "Akil'zon — Zul'Aman",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33281 },
            { name = "Amulet of Flowing Life",         source = "Jewelcrafting",                       sourceType = "craft", gems = {},                   enchant = nil, itemId = 34360 },
            { name = "Brooch of the Highborne",        source = "Felmyst — Sunwell Plateau",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34184 },
        },
        Shoulder = {
            { name = "Shawl of Wonderment",            source = "Eredar Twins — Sunwell Plateau",      sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 34202 },
            { name = "Mantle of Absolution",           source = "Mother Shahraz — Black Temple",       sourceType = "drop",  gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 31069 },
            { name = "Mantle of the Avatar",           source = "Void Reaver — Tempest Keep",          sourceType = "token", gems = { "red", "yellow" },  enchant = "Greater Inscription of Discipline", itemId = 30154 },
        },
        Back = {
            { name = "Shroud of the Highborne",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 32524 },
            { name = "Cloak of Ancient Rituals",       source = "Hex Lord Malacrass — Zul'Aman",       sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 33592 },
            { name = "Sunshower Light Cloak",          source = "Kael'thas — Tempest Keep",            sourceType = "drop",  gems = {},                   enchant = "Subtlety (-2% Threat)", itemId = 29989 },
        },
        Chest = {
            { name = "Robes of Faltered Light",        source = "M'uru — Sunwell Plateau",             sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34233 },
            { name = "Robe of Eternal Light",          source = "Tailoring (Sunmote)",                 sourceType = "craft", gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 34365 },
            { name = "Vestments of Absolution",        source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = { "red", "red", "yellow" }, enchant = "Exceptional Stats (+6 all stats)", itemId = 31066 },
        },
        Wrist = {
            { name = "Cuffs of Absolution",            source = "Kalecgos/Eredar Twins — Sunwell",     sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 34435 },
            { name = "Swiftheal Wraps",                source = "Tailoring (AH)",                      sourceType = "craft", gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 32584 },
            { name = "Bracers of Martyrdom",           source = "Rage Winterchill — Hyjal Summit",     sourceType = "drop",  gems = {},                   enchant = "Healing Power (+30 Healing)", itemId = 30871 },
        },
        Hands = {
            { name = "Handguards of the Dawn",         source = "Kil'jaeden — Sunwell Plateau",        sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 34342 },
            { name = "Hands of Eternal Light",         source = "Tailoring (Sunmote)",                 sourceType = "craft", gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 34367 },
            { name = "Gloves of Absolution",           source = "Azgalor — Hyjal Summit",             sourceType = "drop",  gems = { "red" },             enchant = "Major Healing (+35 Healing)", itemId = 31060 },
        },
        Waist = {
            { name = "Belt of Absolution",             source = "Brutallus/Eredar Twins — Sunwell",    sourceType = "drop",  gems = { "red", "yellow" },  enchant = nil, itemId = 34527 },
            { name = "Angelista's Sash",               source = "Kaz'rogal — Hyjal Summit",            sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30895 },
            { name = "Belt of Divine Guidance",        source = "The Illidari Council — Black Temple",         sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32519 },
        },
        Legs = {
            { name = "Pantaloons of Calming Strife",   source = "Kalecgos — Sunwell Plateau",          sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 34170 },
            { name = "Leggings of Eternity",           source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = { "red", "red", "blue" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 30912 },
            { name = "Achromic Trousers of the Naaru", source = "G'eras — Badges of Justice",          sourceType = "badge", gems = { "red", "red", "red" }, enchant = "Runic Spellthread (+35 Healing, +20 Sta)", itemId = 33585 },
        },
        Feet = {
            { name = "Boots of Absolution",            source = "Brutallus/Eredar Twins — Sunwell",    sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 34562 },
            { name = "Boots of the Divine Light",      source = "Trash — Hyjal/BT",                   sourceType = "drop",  gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 32609 },
            { name = "Slippers of Dutiful Mending",    source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = "Boar's Speed (+9 Sta, Minor Speed)", itemId = 34926 },
        },
        Ring1 = {
            { name = "Blessed Band of Karabor",        source = "Trash — Black Temple",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32528 },
            { name = "Ring of Flowing Life",           source = "Jewelcrafting (BoE)",                 sourceType = "craft", gems = {},                   enchant = nil, itemId = 34363 },
            { name = "Band of Lucent Beams",           source = "Kalecgos — Sunwell Plateau",          sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34166 },
        },
        Ring2 = {
            { name = "Signet of the Quiet Forest",     source = "Zul'Aman Timed Chest",               sourceType = "drop",  gems = {},                   enchant = nil, itemId = 33498 },
            { name = "Band of the Eternal Restorer",   source = "Scale of the Sands — Exalted",        sourceType = "rep",   gems = {},                   enchant = nil, itemId = 29309 },
        },
        Trinket1 = {
            { name = "Essence of the Martyr",          source = "G'eras — Badges of Justice",          sourceType = "badge", gems = {},                   enchant = nil, itemId = 29376 },
            { name = "Direbrew Hops",                  source = "Coren Direbrew — Brewfest",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 38288 },
            { name = "Redeemer's Alchemist Stone",     source = "Alchemy",                             sourceType = "craft", gems = {},                   enchant = nil, itemId = 35750 },
        },
        Trinket2 = {
            { name = "Darkmoon Card: Blue Dragon",     source = "Darkmoon Beast Deck",                 sourceType = "quest", gems = {},                   enchant = nil, itemId = 19288 },
            { name = "Eye of Gruul",                   source = "Gruul — Gruul's Lair",                sourceType = "drop",  gems = {},                   enchant = nil, itemId = 28823 },
        },
        MainHand = {
            { name = "Hammer of Sanctification",       source = "Kil'jaeden — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34335 },
            { name = "Archon's Gavel",                 source = "Eredar Twins — Sunwell Plateau",      sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 34199 },
            { name = "Crystal Spire of Karabor",       source = "Illidan Stormrage — Black Temple",    sourceType = "drop",  gems = {},                   enchant = "Spellsurge", itemId = 32500 },
        },
        OffHand = {
            { name = "Book of Highborne Hymns",        source = "Kil'jaeden — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34206 },
            { name = "Scepter of Purification",        source = "Archimonde — Hyjal Summit",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30911 },
            { name = "Touch of Inspiration",           source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32350 },
        },
        Relic = {
            { name = "Wand of Cleansing Light",        source = "Kil'jaeden — Sunwell Plateau",        sourceType = "drop",  gems = {},                   enchant = nil, itemId = 34348 },
            { name = "Naaru-Blessed Life Rod",         source = "Essence of Anger — Black Temple",     sourceType = "drop",  gems = {},                   enchant = nil, itemId = 32363 },
            { name = "Luminescent Rod of the Naaru",   source = "Morogrim Tidewalker — SSC",           sourceType = "drop",  gems = {},                   enchant = nil, itemId = 30080 },
        },
    },
}
