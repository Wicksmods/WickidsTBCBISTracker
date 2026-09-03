-- Wick's TBC BIS Tracker
-- Data_PvP.lua - Arena PvP gear templates
-- Season 2 "Merciless Gladiator" (key "pvp_s2") and
-- Season 3 "Vengeful Gladiator" (key "pvp_s3", Phase 3: Black Temple / Mount Hyjal)
-- Source: Wowhead TBC Classic item pages (S2 verified 2026-05-18, S3 verified 2026-09-03)
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

-- =============================================================================
-- SEASON 3 — "Vengeful Gladiator"  (Phase 3: Black Temple / Mount Hyjal)
-- Template key: "pvp_s3"
-- Source: Wowhead TBC Classic item pages (verified 2026-09-03)
-- =============================================================================

ensureSpec("Warrior", "Arms")
WTBT_Templates["Warrior"]["Arms"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Plate set + arena weapons (Season 3)",
    slots = {
        Head     = 33730,  -- Vengeful Gladiator's Plate head
        Shoulder = 33732,  -- Vengeful Gladiator's Plate shoulder
        Chest    = 33728,  -- Vengeful Gladiator's Plate chest
        Hands    = 33729,  -- Vengeful Gladiator's Plate hands
        Legs     = 33731,  -- Vengeful Gladiator's Plate legs
        MainHand = 33688,  -- Vengeful Gladiator's Greatsword (2H)
    },
}

ensureSpec("Warrior", "Fury")
WTBT_Templates["Warrior"]["Fury"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Plate set + arena weapons (Season 3)",
    slots = {
        Head     = 33730,  -- Vengeful Gladiator's Plate head
        Shoulder = 33732,  -- Vengeful Gladiator's Plate shoulder
        Chest    = 33728,  -- Vengeful Gladiator's Plate chest
        Hands    = 33729,  -- Vengeful Gladiator's Plate hands
        Legs     = 33731,  -- Vengeful Gladiator's Plate legs
        MainHand = 33762,  -- Vengeful Gladiator's Slicer (1H sword MH)
        OffHand  = 33734,  -- Vengeful Gladiator's Quickblade (1H sword OH)
    },
}

ensureSpec("Warrior", "Protection")
WTBT_Templates["Warrior"]["Protection"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Plate set + shield (Season 3)",
    slots = {
        Head     = 33730,  -- Vengeful Gladiator's Plate head
        Shoulder = 33732,  -- Vengeful Gladiator's Plate shoulder
        Chest    = 33728,  -- Vengeful Gladiator's Plate chest
        Hands    = 33729,  -- Vengeful Gladiator's Plate hands
        Legs     = 33731,  -- Vengeful Gladiator's Plate legs
        MainHand = 33733,  -- Vengeful Gladiator's Pummeler (1H mace)
        OffHand  = 33755,  -- Vengeful Gladiator's Shield Wall
    },
}

ensureSpec("Rogue", "Combat")
WTBT_Templates["Rogue"]["Combat"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Leather set + arena swords (Season 3)",
    slots = {
        Head     = 33701,  -- Vengeful Gladiator's Leather head
        Shoulder = 33703,  -- Vengeful Gladiator's Leather shoulder
        Chest    = 33704,  -- Vengeful Gladiator's Leather chest
        Hands    = 33700,  -- Vengeful Gladiator's Leather hands
        Legs     = 33702,  -- Vengeful Gladiator's Leather legs
        MainHand = 33762,  -- Vengeful Gladiator's Slicer (1H sword MH)
        OffHand  = 33734,  -- Vengeful Gladiator's Quickblade (1H sword OH)
    },
}

ensureSpec("Rogue", "Assassination")
WTBT_Templates["Rogue"]["Assassination"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Leather set + arena daggers (Season 3)",
    slots = {
        Head     = 33701,  -- Vengeful Gladiator's Leather head
        Shoulder = 33703,  -- Vengeful Gladiator's Leather shoulder
        Chest    = 33704,  -- Vengeful Gladiator's Leather chest
        Hands    = 33700,  -- Vengeful Gladiator's Leather hands
        Legs     = 33702,  -- Vengeful Gladiator's Leather legs
        MainHand = 33754,  -- Vengeful Gladiator's Shanker (dagger)
        OffHand  = 33756,  -- Vengeful Gladiator's Shiv (dagger)
    },
}

ensureSpec("Hunter", "Beast Mastery")
WTBT_Templates["Hunter"]["Beast Mastery"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Chain set + arena crossbow (Season 3)",
    slots = {
        Head     = 33666,  -- Vengeful Gladiator's Chain head
        Shoulder = 33668,  -- Vengeful Gladiator's Chain shoulder
        Chest    = 33664,  -- Vengeful Gladiator's Chain chest
        Hands    = 33665,  -- Vengeful Gladiator's Chain hands
        Legs     = 33667,  -- Vengeful Gladiator's Chain legs
        Relic    = 33006,  -- Vengeful Gladiator's Heavy Crossbow
    },
}

ensureSpec("Hunter", "Marksmanship")
WTBT_Templates["Hunter"]["Marksmanship"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Chain set + arena crossbow (Season 3)",
    slots = {
        Head     = 33666,  -- Vengeful Gladiator's Chain head
        Shoulder = 33668,  -- Vengeful Gladiator's Chain shoulder
        Chest    = 33664,  -- Vengeful Gladiator's Chain chest
        Hands    = 33665,  -- Vengeful Gladiator's Chain hands
        Legs     = 33667,  -- Vengeful Gladiator's Chain legs
        Relic    = 33006,  -- Vengeful Gladiator's Heavy Crossbow
    },
}

ensureSpec("Hunter", "Survival")
WTBT_Templates["Hunter"]["Survival"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Chain set + arena crossbow (Season 3)",
    slots = {
        Head     = 33666,  -- Vengeful Gladiator's Chain head
        Shoulder = 33668,  -- Vengeful Gladiator's Chain shoulder
        Chest    = 33664,  -- Vengeful Gladiator's Chain chest
        Hands    = 33665,  -- Vengeful Gladiator's Chain hands
        Legs     = 33667,  -- Vengeful Gladiator's Chain legs
        Relic    = 33006,  -- Vengeful Gladiator's Heavy Crossbow
    },
}

ensureSpec("Shaman", "Restoration")
WTBT_Templates["Shaman"]["Restoration"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Linked set + arena weapons (Season 3)",
    slots = {
        Head     = 33708,  -- Vengeful Gladiator's Linked head
        Shoulder = 33710,  -- Vengeful Gladiator's Linked shoulder
        Chest    = 33706,  -- Vengeful Gladiator's Linked chest
        Hands    = 33707,  -- Vengeful Gladiator's Linked hands
        Legs     = 33709,  -- Vengeful Gladiator's Linked legs
        MainHand = 33687,  -- Vengeful Gladiator's Gavel (1H mace)
        OffHand  = 33736,  -- Vengeful Gladiator's Reprieve (off-hand)
        Relic    = 33843,  -- Vengeful Gladiator's Totem of the Third Wind
    },
}

ensureSpec("Shaman", "Enhancement")
WTBT_Templates["Shaman"]["Enhancement"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Mail set + arena weapons (Season 3)",
    slots = {
        Head     = 33713,  -- Vengeful Gladiator's Mail head
        Shoulder = 33715,  -- Vengeful Gladiator's Mail shoulder
        Chest    = 33711,  -- Vengeful Gladiator's Mail chest
        Hands    = 33712,  -- Vengeful Gladiator's Mail hands
        Legs     = 33714,  -- Vengeful Gladiator's Mail legs
        MainHand = 33669,  -- Vengeful Gladiator's Cleaver (1H axe)
        OffHand  = 33689,  -- Vengeful Gladiator's Hacker (1H axe OH)
        Relic    = 33941,  -- Vengeful Gladiator's Totem of Indomitability
    },
}

ensureSpec("Shaman", "Elemental")
WTBT_Templates["Shaman"]["Elemental"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Ringmail set + arena staff (Season 3)",
    slots = {
        Head     = 33740,  -- Vengeful Gladiator's Ringmail head
        Shoulder = 33742,  -- Vengeful Gladiator's Ringmail shoulder
        Chest    = 33738,  -- Vengeful Gladiator's Ringmail chest
        Hands    = 33739,  -- Vengeful Gladiator's Ringmail hands
        Legs     = 33741,  -- Vengeful Gladiator's Ringmail legs
        MainHand = 33766,  -- Vengeful Gladiator's War Staff
        Relic    = 33953,  -- Vengeful Gladiator's Totem of Survival
    },
}

ensureSpec("Mage", "Fire")
WTBT_Templates["Mage"]["Fire"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Silk set + arena weapons (Season 3)",
    slots = {
        Head     = 33758,  -- Vengeful Gladiator's Silk head
        Shoulder = 33757,  -- Vengeful Gladiator's Silk shoulder
        Chest    = 33760,  -- Vengeful Gladiator's Silk chest
        Hands    = 33759,  -- Vengeful Gladiator's Silk hands
        Legs     = 33761,  -- Vengeful Gladiator's Silk legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Mage", "Frost")
WTBT_Templates["Mage"]["Frost"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Silk set + arena weapons (Season 3)",
    slots = {
        Head     = 33758,  -- Vengeful Gladiator's Silk head
        Shoulder = 33757,  -- Vengeful Gladiator's Silk shoulder
        Chest    = 33760,  -- Vengeful Gladiator's Silk chest
        Hands    = 33759,  -- Vengeful Gladiator's Silk hands
        Legs     = 33761,  -- Vengeful Gladiator's Silk legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Mage", "Arcane")
WTBT_Templates["Mage"]["Arcane"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Silk set + arena weapons (Season 3)",
    slots = {
        Head     = 33758,  -- Vengeful Gladiator's Silk head
        Shoulder = 33757,  -- Vengeful Gladiator's Silk shoulder
        Chest    = 33760,  -- Vengeful Gladiator's Silk chest
        Hands    = 33759,  -- Vengeful Gladiator's Silk hands
        Legs     = 33761,  -- Vengeful Gladiator's Silk legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Priest", "Holy")
WTBT_Templates["Priest"]["Holy"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Mooncloth set + arena weapons (Season 3)",
    slots = {
        Head     = 33718,  -- Vengeful Gladiator's Mooncloth head
        Shoulder = 33720,  -- Vengeful Gladiator's Mooncloth shoulder
        Chest    = 33721,  -- Vengeful Gladiator's Mooncloth chest
        Hands    = 33717,  -- Vengeful Gladiator's Mooncloth hands
        Legs     = 33719,  -- Vengeful Gladiator's Mooncloth legs
        MainHand = 33687,  -- Vengeful Gladiator's Gavel (1H mace)
        OffHand  = 33743,  -- Vengeful Gladiator's Salvation (off-hand)
    },
}

ensureSpec("Priest", "Shadow")
WTBT_Templates["Priest"]["Shadow"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Satin set + arena weapons (Season 3)",
    slots = {
        Head     = 33745,  -- Vengeful Gladiator's Satin head
        Shoulder = 33747,  -- Vengeful Gladiator's Satin shoulder
        Chest    = 33748,  -- Vengeful Gladiator's Satin chest
        Hands    = 33744,  -- Vengeful Gladiator's Satin hands
        Legs     = 33746,  -- Vengeful Gladiator's Satin legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Warlock", "Affliction")
WTBT_Templates["Warlock"]["Affliction"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Dreadweave set + arena weapons (Season 3)",
    slots = {
        Head     = 33677,  -- Vengeful Gladiator's Dreadweave head
        Shoulder = 33679,  -- Vengeful Gladiator's Dreadweave shoulder
        Chest    = 33680,  -- Vengeful Gladiator's Dreadweave chest
        Hands    = 33676,  -- Vengeful Gladiator's Dreadweave hands
        Legs     = 33678,  -- Vengeful Gladiator's Dreadweave legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Warlock", "Demonology")
WTBT_Templates["Warlock"]["Demonology"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Dreadweave set + arena weapons (Season 3)",
    slots = {
        Head     = 33677,  -- Vengeful Gladiator's Dreadweave head
        Shoulder = 33679,  -- Vengeful Gladiator's Dreadweave shoulder
        Chest    = 33680,  -- Vengeful Gladiator's Dreadweave chest
        Hands    = 33676,  -- Vengeful Gladiator's Dreadweave hands
        Legs     = 33678,  -- Vengeful Gladiator's Dreadweave legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Warlock", "Destruction")
WTBT_Templates["Warlock"]["Destruction"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Dreadweave set + arena weapons (Season 3)",
    slots = {
        Head     = 33677,  -- Vengeful Gladiator's Dreadweave head
        Shoulder = 33679,  -- Vengeful Gladiator's Dreadweave shoulder
        Chest    = 33680,  -- Vengeful Gladiator's Dreadweave chest
        Hands    = 33676,  -- Vengeful Gladiator's Dreadweave hands
        Legs     = 33678,  -- Vengeful Gladiator's Dreadweave legs
        MainHand = 33763,  -- Vengeful Gladiator's Spellblade (1H dagger)
        OffHand  = 33681,  -- Vengeful Gladiator's Endgame (off-hand)
    },
}

ensureSpec("Druid", "Restoration")
WTBT_Templates["Druid"]["Restoration"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Kodohide set + arena staff (Season 3)",
    slots = {
        Head     = 33691,  -- Vengeful Gladiator's Kodohide head
        Shoulder = 33693,  -- Vengeful Gladiator's Kodohide shoulder
        Chest    = 33694,  -- Vengeful Gladiator's Kodohide chest
        Hands    = 33690,  -- Vengeful Gladiator's Kodohide hands
        Legs     = 33692,  -- Vengeful Gladiator's Kodohide legs
        MainHand = 33766,  -- Vengeful Gladiator's War Staff
        Relic    = 33947,  -- Vengeful Gladiator's Idol of Resolve
    },
}

ensureSpec("Druid", "Feral")
WTBT_Templates["Druid"]["Feral"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Dragonhide set + arena staff (Season 3)",
    slots = {
        Head     = 33672,  -- Vengeful Gladiator's Dragonhide head
        Shoulder = 33674,  -- Vengeful Gladiator's Dragonhide shoulder
        Chest    = 33675,  -- Vengeful Gladiator's Dragonhide chest
        Hands    = 33671,  -- Vengeful Gladiator's Dragonhide hands
        Legs     = 33673,  -- Vengeful Gladiator's Dragonhide legs
        MainHand = 33716,  -- Vengeful Gladiator's Staff
        Relic    = 33841,  -- Vengeful Gladiator's Idol of Tenacity
    },
}

ensureSpec("Druid", "Balance")
WTBT_Templates["Druid"]["Balance"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Wyrmhide set + arena staff (Season 3)",
    slots = {
        Head     = 33768,  -- Vengeful Gladiator's Wyrmhide head
        Shoulder = 33770,  -- Vengeful Gladiator's Wyrmhide shoulder
        Chest    = 33771,  -- Vengeful Gladiator's Wyrmhide chest
        Hands    = 33767,  -- Vengeful Gladiator's Wyrmhide hands
        Legs     = 33769,  -- Vengeful Gladiator's Wyrmhide legs
        MainHand = 33766,  -- Vengeful Gladiator's War Staff
        Relic    = 33944,  -- Vengeful Gladiator's Idol of Steadfastness
    },
}

ensureSpec("Paladin", "Holy")
WTBT_Templates["Paladin"]["Holy"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Ornamented set + arena weapons (Season 3)",
    slots = {
        Head     = 33724,  -- Vengeful Gladiator's Ornamented head
        Shoulder = 33726,  -- Vengeful Gladiator's Ornamented shoulder
        Chest    = 33722,  -- Vengeful Gladiator's Ornamented chest
        Hands    = 33723,  -- Vengeful Gladiator's Ornamented hands
        Legs     = 33725,  -- Vengeful Gladiator's Ornamented legs
        MainHand = 33687,  -- Vengeful Gladiator's Gavel (1H mace)
        OffHand  = 33736,  -- Vengeful Gladiator's Reprieve (off-hand)
        Relic    = 33950,  -- Vengeful Gladiator's Libram of Vengeance
    },
}

ensureSpec("Paladin", "Protection")
WTBT_Templates["Paladin"]["Protection"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Lamellar set + shield (Season 3)",
    slots = {
        Head     = 33697,  -- Vengeful Gladiator's Lamellar head
        Shoulder = 33699,  -- Vengeful Gladiator's Lamellar shoulder
        Chest    = 33695,  -- Vengeful Gladiator's Lamellar chest
        Hands    = 33696,  -- Vengeful Gladiator's Lamellar hands
        Legs     = 33698,  -- Vengeful Gladiator's Lamellar legs
        MainHand = 33687,  -- Vengeful Gladiator's Gavel (1H mace)
        OffHand  = 33755,  -- Vengeful Gladiator's Shield Wall
        Relic    = 33938,  -- Vengeful Gladiator's Libram of Fortitude
    },
}

ensureSpec("Paladin", "Retribution")
WTBT_Templates["Paladin"]["Retribution"].pvp_s3 = {
    label       = "S3 PvP — Vengeful Gladiator",
    description = "Full Vengeful Gladiator's Scaled set + arena weapons (Season 3)",
    slots = {
        Head     = 33751,  -- Vengeful Gladiator's Scaled head
        Shoulder = 33753,  -- Vengeful Gladiator's Scaled shoulder
        Chest    = 33749,  -- Vengeful Gladiator's Scaled chest
        Hands    = 33750,  -- Vengeful Gladiator's Scaled hands
        Legs     = 33752,  -- Vengeful Gladiator's Scaled legs
        MainHand = 33688,  -- Vengeful Gladiator's Greatsword (2H)
        Relic    = 33842,  -- Vengeful Gladiator's Libram of Justice
    },
}
