-- Wick's TBC BIS Tracker
-- Data_PvP.lua - Season 2 "Merciless Gladiator" PvP gear templates
-- Source: Wowhead TBC Classic item pages (verified 2026-05-18)
-- Template key: "pvp_s2"
--
-- Armor set IDs:
--   Warrior plate:        30486–30490
--   Rogue leather:        31998–32002
--   Hunter chain:         31960–31964
--   Enhancement mail:     32004–32008
--   Elemental mail:       32009–32013
--   Resto Shaman mail:    32029–32033
--   Feral dragonhide:     31967–31972  (note: 31970 missing — see below)
--   Resto/Boomkin wyrm:   32056–32060
--   Resto druid kodohide: 31987–31991
--   Warlock dreadweave:   31973–31977
--   Warlock felweave:     31979–31983
--   Mage/SPriest silk:    32047–32051
--   Holy Priest mooncloth: 32015–32019
--   Shadow Priest satin:  32034–32038
--   Holy Pally ornamented: 32020–32024
--   Ret Pally scaled:     32039–32043
--   Prot Pally lamellar:  31992–31997
--
-- Relics:
--   Paladin librams: 33077 (Justice), 33949 (Vengeance), 33937 (Fortitude)
--   Druid idols:     33076 (Tenacity), 33946 (Resolve), 33943 (Steadfastness)
--   Shaman totems:   33078 (Third Wind), 33952 (Survival), 33940 (Indomitability)

if not WTBT_Templates then WTBT_Templates = {} end

local function ensureSpec(class, spec)
    WTBT_Templates[class] = WTBT_Templates[class] or {}
    WTBT_Templates[class][spec] = WTBT_Templates[class][spec] or {}
end

-- =============================================================================
-- WARRIOR
-- =============================================================================
ensureSpec("Warrior", "Arms")
WTBT_Templates["Warrior"]["Arms"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Plate set + arena weapons (Season 2)",
    slots = {
        Head     = 30488,  -- Merciless Gladiator's Plate Helm
        Shoulder = 30490,  -- Merciless Gladiator's Plate Shoulders
        Chest    = 30486,  -- Merciless Gladiator's Plate Chestpiece
        Hands    = 30487,  -- Merciless Gladiator's Plate Gauntlets
        Legs     = 30489,  -- Merciless Gladiator's Plate Legguards
        MainHand = 31984,  -- Merciless Gladiator's Greatsword (2H)
    },
}

ensureSpec("Warrior", "Fury")
WTBT_Templates["Warrior"]["Fury"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Plate set + arena weapons (Season 2)",
    slots = {
        Head     = 30488,  -- Merciless Gladiator's Plate Helm
        Shoulder = 30490,  -- Merciless Gladiator's Plate Shoulders
        Chest    = 30486,  -- Merciless Gladiator's Plate Chestpiece
        Hands    = 30487,  -- Merciless Gladiator's Plate Gauntlets
        Legs     = 30489,  -- Merciless Gladiator's Plate Legguards
        MainHand = 32052,  -- Merciless Gladiator's Slicer (1H sword MH)
        OffHand  = 32027,  -- Merciless Gladiator's Quickblade (1H sword OH)
    },
}

ensureSpec("Warrior", "Protection")
WTBT_Templates["Warrior"]["Protection"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Plate set + shield (Season 2)",
    slots = {
        Head     = 30488,  -- Merciless Gladiator's Plate Helm
        Shoulder = 30490,  -- Merciless Gladiator's Plate Shoulders
        Chest    = 30486,  -- Merciless Gladiator's Plate Chestpiece
        Hands    = 30487,  -- Merciless Gladiator's Plate Gauntlets
        Legs     = 30489,  -- Merciless Gladiator's Plate Legguards
        MainHand = 32026,  -- Merciless Gladiator's Pummeler (1H mace)
        OffHand  = 32045,  -- Merciless Gladiator's Shield Wall
    },
}

-- =============================================================================
-- ROGUE
-- =============================================================================
ensureSpec("Rogue", "Combat")
WTBT_Templates["Rogue"]["Combat"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Leather set + arena weapons (Season 2)",
    slots = {
        Head     = 31999,  -- Merciless Gladiator's Leather Helm
        Shoulder = 32001,  -- Merciless Gladiator's Leather Spaulders
        Chest    = 32002,  -- Merciless Gladiator's Leather Tunic
        Hands    = 31998,  -- Merciless Gladiator's Leather Gloves
        Legs     = 32000,  -- Merciless Gladiator's Leather Legguards
        MainHand = 32044,  -- Merciless Gladiator's Shanker (dagger)
        OffHand  = 32046,  -- Merciless Gladiator's Shiv (dagger)
    },
}

ensureSpec("Rogue", "Assassination")
WTBT_Templates["Rogue"]["Assassination"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Leather set + daggers (Season 2)",
    slots = {
        Head     = 31999,  -- Merciless Gladiator's Leather Helm
        Shoulder = 32001,  -- Merciless Gladiator's Leather Spaulders
        Chest    = 32002,  -- Merciless Gladiator's Leather Tunic
        Hands    = 31998,  -- Merciless Gladiator's Leather Gloves
        Legs     = 32000,  -- Merciless Gladiator's Leather Legguards
        MainHand = 32044,  -- Merciless Gladiator's Shanker
        OffHand  = 32046,  -- Merciless Gladiator's Shiv
    },
}

-- =============================================================================
-- HUNTER
-- =============================================================================
ensureSpec("Hunter", "Beast Mastery")
WTBT_Templates["Hunter"]["Beast Mastery"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Chain set + ranged weapon (Season 2)",
    slots = {
        Head     = 31962,  -- Merciless Gladiator's Chain Helm
        Shoulder = 31964,  -- Merciless Gladiator's Chain Spaulders
        Chest    = 31960,  -- Merciless Gladiator's Chain Armor
        Hands    = 31961,  -- Merciless Gladiator's Chain Gauntlets
        Legs     = 31963,  -- Merciless Gladiator's Chain Leggings
        Relic    = 31986,  -- Merciless Gladiator's Crossbow of the Phoenix
    },
}

ensureSpec("Hunter", "Marksmanship")
WTBT_Templates["Hunter"]["Marksmanship"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Chain set + ranged weapon (Season 2)",
    slots = {
        Head     = 31962,  -- Merciless Gladiator's Chain Helm
        Shoulder = 31964,  -- Merciless Gladiator's Chain Spaulders
        Chest    = 31960,  -- Merciless Gladiator's Chain Armor
        Hands    = 31961,  -- Merciless Gladiator's Chain Gauntlets
        Legs     = 31963,  -- Merciless Gladiator's Chain Leggings
        Relic    = 31986,  -- Merciless Gladiator's Crossbow of the Phoenix
    },
}

ensureSpec("Hunter", "Survival")
WTBT_Templates["Hunter"]["Survival"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Chain set + ranged weapon (Season 2)",
    slots = {
        Head     = 31962,  -- Merciless Gladiator's Chain Helm
        Shoulder = 31964,  -- Merciless Gladiator's Chain Spaulders
        Chest    = 31960,  -- Merciless Gladiator's Chain Armor
        Hands    = 31961,  -- Merciless Gladiator's Chain Gauntlets
        Legs     = 31963,  -- Merciless Gladiator's Chain Leggings
        Relic    = 31986,  -- Merciless Gladiator's Crossbow of the Phoenix
    },
}

-- =============================================================================
-- SHAMAN
-- =============================================================================
ensureSpec("Shaman", "Restoration")
WTBT_Templates["Shaman"]["Restoration"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Ringmail set + weapons (Season 2)",
    slots = {
        Head     = 32031,  -- Merciless Gladiator's Ringmail Helm
        Shoulder = 32033,  -- Merciless Gladiator's Ringmail Spaulders
        Chest    = 32029,  -- Merciless Gladiator's Ringmail Armor
        Hands    = 32030,  -- Merciless Gladiator's Ringmail Gauntlets
        Legs     = 32032,  -- Merciless Gladiator's Ringmail Leggings
        MainHand = 32963,  -- Merciless Gladiator's Gavel (1H mace)
        OffHand  = 32961,  -- Merciless Gladiator's Reprieve (off-hand)
        Relic    = 33078,  -- Merciless Gladiator's Totem of the Third Wind
    },
}

ensureSpec("Shaman", "Enhancement")
WTBT_Templates["Shaman"]["Enhancement"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Linked mail set + weapons (Season 2)",
    slots = {
        Head     = 32006,  -- Merciless Gladiator's Linked Helm
        Shoulder = 32008,  -- Merciless Gladiator's Linked Spaulders
        Chest    = 32004,  -- Merciless Gladiator's Linked Armor
        Hands    = 32005,  -- Merciless Gladiator's Linked Gauntlets
        Legs     = 32007,  -- Merciless Gladiator's Linked Leggings
        MainHand = 31985,  -- Merciless Gladiator's Hacker (1H axe)
        OffHand  = 32028,  -- Merciless Gladiator's Right Ripper (fist OH)
        Relic    = 33940,  -- Merciless Gladiator's Totem of Indomitability
    },
}

ensureSpec("Shaman", "Elemental")
WTBT_Templates["Shaman"]["Elemental"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Mail set + staff (Season 2)",
    slots = {
        Head     = 32011,  -- Merciless Gladiator's Mail Helm
        Shoulder = 32013,  -- Merciless Gladiator's Mail Spaulders
        Chest    = 32009,  -- Merciless Gladiator's Mail Armor
        Hands    = 32010,  -- Merciless Gladiator's Mail Gauntlets
        Legs     = 32012,  -- Merciless Gladiator's Mail Leggings
        MainHand = 32055,  -- Merciless Gladiator's War Staff
        Relic    = 33952,  -- Merciless Gladiator's Totem of Survival
    },
}

-- =============================================================================
-- MAGE
-- =============================================================================
ensureSpec("Mage", "Fire")
WTBT_Templates["Mage"]["Fire"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Silk set + weapons (Season 2)",
    slots = {
        Head     = 32048,  -- Merciless Gladiator's Silk Cowl
        Shoulder = 32047,  -- Merciless Gladiator's Silk Amice
        Chest    = 32050,  -- Merciless Gladiator's Silk Raiment
        Hands    = 32049,  -- Merciless Gladiator's Silk Handguards
        Legs     = 32051,  -- Merciless Gladiator's Silk Trousers
        MainHand = 32053,  -- Merciless Gladiator's Spellblade (1H dagger)
        OffHand  = 31978,  -- Merciless Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Mage", "Frost")
WTBT_Templates["Mage"]["Frost"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Silk set + weapons (Season 2)",
    slots = {
        Head     = 32048,  -- Merciless Gladiator's Silk Cowl
        Shoulder = 32047,  -- Merciless Gladiator's Silk Amice
        Chest    = 32050,  -- Merciless Gladiator's Silk Raiment
        Hands    = 32049,  -- Merciless Gladiator's Silk Handguards
        Legs     = 32051,  -- Merciless Gladiator's Silk Trousers
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

ensureSpec("Mage", "Arcane")
WTBT_Templates["Mage"]["Arcane"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Silk set + weapons (Season 2)",
    slots = {
        Head     = 32048,  -- Merciless Gladiator's Silk Cowl
        Shoulder = 32047,  -- Merciless Gladiator's Silk Amice
        Chest    = 32050,  -- Merciless Gladiator's Silk Raiment
        Hands    = 32049,  -- Merciless Gladiator's Silk Handguards
        Legs     = 32051,  -- Merciless Gladiator's Silk Trousers
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

-- =============================================================================
-- PRIEST
-- =============================================================================
ensureSpec("Priest", "Holy")
WTBT_Templates["Priest"]["Holy"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Mooncloth set + weapons (Season 2)",
    slots = {
        Head     = 32016,  -- Merciless Gladiator's Mooncloth Hood
        Shoulder = 32018,  -- Merciless Gladiator's Mooncloth Mantle
        Chest    = 32019,  -- Merciless Gladiator's Mooncloth Robe
        Hands    = 32015,  -- Merciless Gladiator's Mooncloth Gloves
        Legs     = 32017,  -- Merciless Gladiator's Mooncloth Leggings
        MainHand = 32963,  -- Merciless Gladiator's Gavel
        OffHand  = 32964,  -- Merciless Gladiator's Salvation (off-hand)
    },
}

ensureSpec("Priest", "Shadow")
WTBT_Templates["Priest"]["Shadow"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Satin set + weapons (Season 2)",
    slots = {
        Head     = 32035,  -- Merciless Gladiator's Satin Hood
        Shoulder = 32037,  -- Merciless Gladiator's Satin Mantle
        Chest    = 32038,  -- Merciless Gladiator's Satin Robe
        Hands    = 32034,  -- Merciless Gladiator's Satin Gloves
        Legs     = 32036,  -- Merciless Gladiator's Satin Leggings
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

-- =============================================================================
-- WARLOCK
-- =============================================================================
ensureSpec("Warlock", "Affliction")
WTBT_Templates["Warlock"]["Affliction"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Dreadweave set + weapons (Season 2)",
    slots = {
        Head     = 31974,  -- Merciless Gladiator's Dreadweave Hood
        Shoulder = 31976,  -- Merciless Gladiator's Dreadweave Mantle
        Chest    = 31977,  -- Merciless Gladiator's Dreadweave Robe
        Hands    = 31973,  -- Merciless Gladiator's Dreadweave Gloves
        Legs     = 31975,  -- Merciless Gladiator's Dreadweave Leggings
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

ensureSpec("Warlock", "Demonology")
WTBT_Templates["Warlock"]["Demonology"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Dreadweave set + weapons (Season 2)",
    slots = {
        Head     = 31974,  -- Merciless Gladiator's Dreadweave Hood
        Shoulder = 31976,  -- Merciless Gladiator's Dreadweave Mantle
        Chest    = 31977,  -- Merciless Gladiator's Dreadweave Robe
        Hands    = 31973,  -- Merciless Gladiator's Dreadweave Gloves
        Legs     = 31975,  -- Merciless Gladiator's Dreadweave Leggings
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

ensureSpec("Warlock", "Destruction")
WTBT_Templates["Warlock"]["Destruction"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Felweave set + weapons (Season 2)",
    slots = {
        Head     = 31980,  -- Merciless Gladiator's Felweave Cowl
        Shoulder = 31979,  -- Merciless Gladiator's Felweave Amice
        Chest    = 31982,  -- Merciless Gladiator's Felweave Raiment
        Hands    = 31981,  -- Merciless Gladiator's Felweave Handguards
        Legs     = 31983,  -- Merciless Gladiator's Felweave Trousers
        MainHand = 32053,  -- Merciless Gladiator's Spellblade
        OffHand  = 31978,  -- Merciless Gladiator's Endgame
    },
}

-- =============================================================================
-- DRUID
-- =============================================================================
ensureSpec("Druid", "Restoration")
WTBT_Templates["Druid"]["Restoration"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Kodohide set + weapons (Season 2)",
    slots = {
        Head     = 31988,  -- Merciless Gladiator's Kodohide Helm
        Shoulder = 31990,  -- Merciless Gladiator's Kodohide Spaulders
        Chest    = 31991,  -- Merciless Gladiator's Kodohide Tunic
        Hands    = 31987,  -- Merciless Gladiator's Kodohide Gloves
        Legs     = 31989,  -- Merciless Gladiator's Kodohide Legguards
        MainHand = 32055,  -- Merciless Gladiator's War Staff
        Relic    = 33946,  -- Merciless Gladiator's Idol of Resolve
    },
}

ensureSpec("Druid", "Feral")
WTBT_Templates["Druid"]["Feral"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Dragonhide set + staff (Season 2)",
    slots = {
        Head     = 31968,  -- Merciless Gladiator's Dragonhide Helm
        Shoulder = 31971,  -- Merciless Gladiator's Dragonhide Spaulders
        Chest    = 31972,  -- Merciless Gladiator's Dragonhide Tunic
        Hands    = 31967,  -- Merciless Gladiator's Dragonhide Gloves
        Legs     = 31969,  -- Merciless Gladiator's Dragonhide Legguards
        MainHand = 32014,  -- Merciless Gladiator's Maul (staff)
        Relic    = 33076,  -- Merciless Gladiator's Idol of Tenacity
    },
}

ensureSpec("Druid", "Balance")
WTBT_Templates["Druid"]["Balance"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Wyrmhide set + weapons (Season 2)",
    slots = {
        Head     = 32057,  -- Merciless Gladiator's Wyrmhide Helm
        Shoulder = 32059,  -- Merciless Gladiator's Wyrmhide Spaulders
        Chest    = 32060,  -- Merciless Gladiator's Wyrmhide Tunic
        Hands    = 32056,  -- Merciless Gladiator's Wyrmhide Gloves
        Legs     = 32058,  -- Merciless Gladiator's Wyrmhide Legguards
        MainHand = 32055,  -- Merciless Gladiator's War Staff
        Relic    = 33943,  -- Merciless Gladiator's Idol of Steadfastness
    },
}

-- =============================================================================
-- PALADIN
-- =============================================================================
ensureSpec("Paladin", "Holy")
WTBT_Templates["Paladin"]["Holy"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Ornamented set + weapons (Season 2)",
    slots = {
        Head     = 32022,  -- Merciless Gladiator's Ornamented Headcover
        Shoulder = 32024,  -- Merciless Gladiator's Ornamented Spaulders
        Chest    = 32020,  -- Merciless Gladiator's Ornamented Chestguard
        Hands    = 32021,  -- Merciless Gladiator's Ornamented Gloves
        Legs     = 32023,  -- Merciless Gladiator's Ornamented Legplates
        MainHand = 32963,  -- Merciless Gladiator's Gavel
        OffHand  = 32961,  -- Merciless Gladiator's Reprieve
        Relic    = 33949,  -- Merciless Gladiator's Libram of Vengeance
    },
}

ensureSpec("Paladin", "Protection")
WTBT_Templates["Paladin"]["Protection"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Lamellar set + shield (Season 2)",
    slots = {
        Head     = 31997,  -- Merciless Gladiator's Lamellar Helm
        Shoulder = 31996,  -- Merciless Gladiator's Lamellar Shoulders
        Chest    = 31992,  -- Merciless Gladiator's Lamellar Chestpiece
        Hands    = 31993,  -- Merciless Gladiator's Lamellar Gauntlets
        Legs     = 31995,  -- Merciless Gladiator's Lamellar Legguards
        MainHand = 32963,  -- Merciless Gladiator's Gavel
        OffHand  = 32045,  -- Merciless Gladiator's Shield Wall
        Relic    = 33937,  -- Merciless Gladiator's Libram of Fortitude
    },
}

ensureSpec("Paladin", "Retribution")
WTBT_Templates["Paladin"]["Retribution"].pvp_s2 = {
    label       = "S2 PvP — Merciless Gladiator",
    description = "Full Merciless Gladiator's Scaled set + 2H weapon (Season 2)",
    slots = {
        Head     = 32041,  -- Merciless Gladiator's Scaled Helm
        Shoulder = 32043,  -- Merciless Gladiator's Scaled Shoulders
        Chest    = 32039,  -- Merciless Gladiator's Scaled Chestpiece
        Hands    = 32040,  -- Merciless Gladiator's Scaled Gauntlets
        Legs     = 32042,  -- Merciless Gladiator's Scaled Legguards
        MainHand = 31984,  -- Merciless Gladiator's Greatsword (2H)
        Relic    = 33077,  -- Merciless Gladiator's Libram of Justice
    },
}
