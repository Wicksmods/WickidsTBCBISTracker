-- Wick's TBC BIS Tracker
-- Data_Templates.lua - Pre-built list templates (Pre-BIS, Leveling 60-70)
-- Format: WTBT_Templates[class][spec][key] = { label, description, slots = { SlotKey = itemId } }

WTBT_Templates = {}

-- =============================================================================
-- PALADIN
-- =============================================================================
WTBT_Templates["Paladin"] = {}

-- ---------------------------------------------------------------------------
-- HOLY PALADIN  (Healer — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Paladin"]["Holy"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24264,  -- Whitemend Hood                (Tailoring craft)
            Neck      = 29374,  -- Necklace of Eternal Hope      (Badge of Justice — 25 badges)
            Shoulder  = 27775,  -- Hallowed Pauldrons             (Grandmaster Vorpil — Shadow Labyrinth)
            Back      = 29354,  -- Light-Touched Stole of Altruism (Heroic Auchenai Crypts)
            Chest     = 28230,  -- Hallowed Garments              (Murmur — Shadow Labyrinth)
            Wrist     = 29249,  -- Bands of the Benevolent        (Heroic Sethekk Halls)
            Hands     = 29506,  -- Gloves of the Living Touch    (Leatherworking craft)
            Waist     = 29250,  -- Cord of Sanctification         (Heroic Sethekk Halls)
            Legs      = 24263,  -- Whitemend Pants               (Tailoring craft)
            Feet      = 29242,  -- Boots of the Pious            (Heroic Old Hillsbrad)
            Ring1     = 29373,  -- Band of Halos                 (Badge of Justice — 25 badges)
            Ring2     = 29169,  -- Band of the Crystalline Void  (Lower City — Revered)
            Trinket1  = 29376,  -- Essence of the Martyr         (Badge of Justice — 41 badges)
            Trinket2  = 30841,  -- Lower City Prayerbook         (Lower City — Revered)
            MainHand  = 29175,  -- Gavel of Pure Light           (Sha'tar — Exalted)
            OffHand   = 29274,  -- Tears of Heaven               (Badge of Justice — 25 badges)
            Relic     = 28296,  -- Libram of the Lightbringer    (Quest: Deathblow to the Legion — Netherstorm)
        },
    },
}

-- ---------------------------------------------------------------------------
-- PROTECTION PALADIN  (Tank — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Paladin"]["Protection"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 32083,  -- Faceguard of Determination    (Badge of Justice — 50 badges)
            Neck      = 29386,  -- Necklace of the Juggernaut    (Aldor/Scryer Vendor)
            Back      = 29385,  -- Farstrider Defender's Cloak   (Aldor/Scryer Vendor)
            Wrist     = 29252,  -- Bracers of Dignity            (Aldor/Scryer Vendor)
            Waist     = 29253,  -- Girdle of Valorous Deeds      (Aldor/Scryer Vendor)
            Feet      = 29254,  -- Boots of the Righteous Path   (Aldor/Scryer Vendor)
            Ring1     = 28792,  -- A'dal's Signet of Defense     (Aldor/Scryer Vendor)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 27529,  -- Figurine of the Colossus      (Jewelcrafting craft)
            Trinket2  = 29387,  -- Gnomeregan Auto-Blocker 600   (Badge of Justice — 41 badges)
            MainHand  = 29165,  -- Continuum Blade               (Keepers of Time — Exalted)
            OffHand   = 29176,  -- Crest of the Sha'tar          (Sha'tar — Exalted)
            Relic     = 29388,  -- Libram of Repentance          (Badge of Justice — 15 badges)
        },
    },
}

-- ---------------------------------------------------------------------------
-- RETRIBUTION PALADIN  (Melee DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Paladin"]["Retribution"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 33173,  -- Ragesteel Shoulders            (Blacksmithing craft)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 23522,  -- Ragesteel Breastplate          (Blacksmithing craft)
            Wrist     = 23537,  -- Black Felsteel Bracers        (Blacksmithing craft)
            Legs      = 30257,  -- Shattrath Leggings            (Quest: Into the Heart of the Labyrinth — Auchindoun)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 29356,  -- Quantum Blade                  (Aeonus — Heroic Black Morass)
            Relic     = 27484,  -- Libram of Avengement          (Heroic Blood Furnace)
        },
    },
}

-- =============================================================================
-- DRUID
-- =============================================================================
WTBT_Templates["Druid"] = {}

-- ---------------------------------------------------------------------------
-- FERAL DRUID  (Cat DPS / Bear Tank — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Druid"]["Feral"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 8345,   -- Wolfshead Helm                (Leatherworking craft)
            Neck      = 24114,  -- Braided Eternium Chain        (Jewelcrafting craft)
            Shoulder  = 27797,  -- Wastewalker Shoulderpads      (Heroic Auchenai Crypts)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28204,  -- Tunic of Assassination         (Pathaleon — Mechanar)
            Wrist     = 29246,  -- Nightfall Wristguards         (Heroic Old Hillsbrad)
            Hands     = 25685,  -- Fel Leather Gloves            (Leatherworking craft)
            Waist     = 29247,  -- Girdle of the Deathdealer     (Heroic Black Morass)
            Legs      = 31544,  -- Clefthoof Hide Leggings       (Quest: Showdown)
            Feet      = 25686,  -- Fel Leather Boots             (Leatherworking craft)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Pathaleon — Heroic Mechanar)
            MainHand  = 29359,  -- Feral Staff of Lashing        (Heroic Botanica)
            Relic     = 29390,  -- Everbloom Idol                (Badge of Justice — 15 badges)
        },
    },
}

-- ---------------------------------------------------------------------------
-- BALANCE DRUID  (Moonkin — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Druid"]["Balance"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28415,  -- Hood of Oblivion              (Heroic Mechanar)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest: Dimensius the All-Devouring)
            Shoulder  = 27796,  -- Mana-Etched Spaulders         (Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27465,  -- Mana-Etched Gloves             (Warchief Kargath — Shattered Halls)
            Waist     = 29241,  -- Belt of Depravity              (Nexus-Prince Shaffar — Heroic Mana-Tombs)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28179,  -- Shattrath Jumpers             (Quest: A'dal — City of Light)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Arcatraz — Quest)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice — 41 badges)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29271,  -- Talisman of Kalecgos          (Badge of Justice — 25 badges)
            Relic     = 27518,  -- Ivory Idol of the Moongoddess (Quest: Sethekk Halls)
        },
    },
}

-- ---------------------------------------------------------------------------
-- RESTORATION DRUID  (Tree — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Druid"]["Restoration"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24264,  -- Whitemend Hood                (Tailoring craft)
            Neck      = 29374,  -- Necklace of Eternal Hope      (Badge of Justice — 25 badges)
            Shoulder  = 27775,  -- Hallowed Pauldrons             (Grandmaster Vorpil — Shadow Labyrinth)
            Back      = 31329,  -- Lifegiving Cloak              (World Drop BoE)
            Chest     = 28230,  -- Hallowed Garments              (Murmur — Shadow Labyrinth)
            Wrist     = 29183,  -- Bindings of the Timewalker    (Keepers of Time — Exalted)
            Hands     = 29506,  -- Gloves of the Living Touch    (Leatherworking craft)
            Waist     = 29250,  -- Cord of Sanctification         (Heroic Sethekk Halls)
            Legs      = 24263,  -- Whitemend Pants               (Tailoring craft)
            Feet      = 29242,  -- Boots of the Pious            (Heroic Old Hillsbrad)
            Ring1     = 29373,  -- Band of Halos                 (Badge of Justice — 25 badges)
            Ring2     = 29169,  -- Band of the Crystalline Void  (Lower City — Revered)
            Trinket1  = 29376,  -- Essence of the Martyr         (Badge of Justice — 41 badges)
            Trinket2  = 25634,  -- Oshu'gun Relic                (Quest: Murkblood Invaders — Nagrand)
            MainHand  = 29175,  -- Gavel of Pure Light           (Sha'tar — Exalted)
            OffHand   = 29274,  -- Tears of Heaven               (Badge of Justice — 25 badges)
            Relic     = 27886,  -- Idol of the Emerald Queen     (Quest: Rescue Duskwallow — Zangarmarsh)
        },
    },
}

-- =============================================================================
-- PRIEST
-- =============================================================================
WTBT_Templates["Priest"] = {}

-- ---------------------------------------------------------------------------
-- HOLY PRIEST  (Healer — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Priest"]["Holy"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24264,  -- Whitemend Hood                (Tailoring craft)
            Neck      = 29374,  -- Necklace of Eternal Hope      (Badge of Justice — 25 badges)
            Shoulder  = 27775,  -- Hallowed Pauldrons             (Grandmaster Vorpil — Shadow Labyrinth)
            Back      = 29375,  -- Bishop's Cloak                (Badge of Justice — 25 badges)
            Chest     = 28230,  -- Hallowed Garments              (Murmur — Shadow Labyrinth)
            Wrist     = 29183,  -- Bindings of the Timewalker    (Keepers of Time — Exalted)
            Hands     = 27536,  -- Hallowed Handwraps            (Warchief Kargath — Shattered Halls)
            Waist     = 29250,  -- Cord of Sanctification         (Heroic Sethekk Halls)
            Legs      = 24261,  -- Whitemend Pants               (Tailoring craft)
            Feet      = 29251,  -- Boots of the Pious            (Pathaleon — Heroic Mechanar)
            Ring1     = 29290,  -- Violet Signet of the Grand Restorer (The Violet Eye — Exalted)
            Ring2     = 29169,  -- Band of the Crystalline Void  (Lower City — Revered)
            Trinket1  = 29376,  -- Essence of the Martyr         (Badge of Justice — 41 badges)
            Trinket2  = 28190,  -- Scarab of the Infinite Cycle  (Aeonus — The Black Morass)
            MainHand  = 29175,  -- Gavel of Pure Light           (The Sha'tar — Exalted)
            OffHand   = 29170,  -- Windcaller's Orb              (Cenarion Expedition — Exalted)
            Relic     = 27885,  -- Soul-Wand of the Aldor        (Ambassador Hellmaw — Shadow Labyrinth)
        },
    },
}

-- ---------------------------------------------------------------------------
-- SHADOW PRIEST  (DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Priest"]["Shadow"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24266,  -- Spellstrike Hood              (Tailoring craft)
            Neck      = 24121,  -- Chain of the Twilight Owl     (Jewelcrafting craft)
            Shoulder  = 27796,  -- Mana-Etched Spaulders          (Quagmirran — Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27493,  -- Gloves of the Deadwatcher     (Darkweaver Syth — Sethekk Halls)
            Waist     = 24256,  -- Girdle of Ruination           (Tailoring craft)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28406,  -- Sigil-Laced Boots              (Harbinger Skyriss — Arcatraz)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Mana-Tombs)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice — 41 badges)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 29153,  -- Starlight Dagger              (The Consortium — Revered)
            OffHand   = 29272,  -- Orb of the Soul-Eater         (Badge of Justice — 25 badges)
            Relic     = 29350,  -- The Black Stalk               (Heroic Underbog)
        },
    },
}

-- =============================================================================
-- WARLOCK
-- =============================================================================
WTBT_Templates["Warlock"] = {}

-- ---------------------------------------------------------------------------
-- DESTRUCTION WARLOCK  (Fire DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warlock"]["Destruction"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24266,  -- Spellstrike Hood              (Tailoring craft)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest: Dimensius the All-Devouring)
            Shoulder  = 27796,  -- Mana-Etched Spaulders         (Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27465,  -- Mana-Etched Gloves             (Warchief Kargath — Shattered Halls)
            Waist     = 29241,  -- Belt of Depravity              (Nexus-Prince Shaffar — Heroic Mana-Tombs)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28179,  -- Shattrath Jumpers             (Quest: A'dal — City of Light)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Arcatraz — Quest)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice — 41 badges)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29270,  -- Flametongue Seal              (Badge of Justice — 25 badges)
            Relic     = 28386,  -- Nether Core's Control Rod     (Heroic Mechanar)
        },
    },
}

-- ---------------------------------------------------------------------------
-- AFFLICTION WARLOCK  (Shadow DoT DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warlock"]["Affliction"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24266,  -- Spellstrike Hood              (Tailoring craft)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest: Dimensius the All-Devouring)
            Shoulder  = 27796,  -- Mana-Etched Spaulders          (Quagmirran — Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27493,  -- Gloves of the Deadwatcher     (Darkweaver Syth — Sethekk Halls)
            Waist     = 24256,  -- Girdle of Ruination           (Tailoring craft)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28406,  -- Sigil-Laced Boots              (Harbinger Skyriss — Arcatraz)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Arcatraz — Quest)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice — 41 badges)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 29153,  -- Starlight Dagger              (The Consortium — Revered)
            OffHand   = 29272,  -- Orb of the Soul-Eater         (Badge of Justice — 25 badges)
            Relic     = 29350,  -- The Black Stalk               (Heroic Underbog)
        },
    },
}

-- ---------------------------------------------------------------------------
-- DEMONOLOGY WARLOCK  (Felguard DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warlock"]["Demonology"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24266,  -- Spellstrike Hood              (Tailoring craft)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest: Dimensius the All-Devouring)
            Shoulder  = 27796,  -- Mana-Etched Spaulders          (Quagmirran — Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27493,  -- Gloves of the Deadwatcher     (Darkweaver Syth — Sethekk Halls)
            Waist     = 24256,  -- Girdle of Ruination           (Tailoring craft)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28406,  -- Sigil-Laced Boots              (Harbinger Skyriss — Arcatraz)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Arcatraz — Quest)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice — 41 badges)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 29153,  -- Starlight Dagger              (The Consortium — Revered)
            OffHand   = 29272,  -- Orb of the Soul-Eater         (Badge of Justice — 25 badges)
            Relic     = 29350,  -- The Black Stalk               (Heroic Underbog)
        },
    },
}

-- =============================================================================
-- HUNTER
-- =============================================================================
WTBT_Templates["Hunter"] = {}

-- ---------------------------------------------------------------------------
-- BEAST MASTERY HUNTER  (Ranged DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Hunter"]["Beast Mastery"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28275,  -- Beast Lord Helm               (The Black Stalker — Heroic Underbog)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 27801,  -- Beast Lord Mantle             (Warbringer O'mrogg — Heroic Shattered Halls)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28228,  -- Beast Lord Cuirass            (Warp Splinter — The Botanica)
            Wrist     = 29246,  -- Nightfall Wristguards         (Epoch Hunter — Heroic Old Hillsbrad)
            Hands     = 27474,  -- Beast Lord Handguards         (Warchief Kargath — Heroic Shattered Halls)
            Waist     = 27760,  -- Dunewind Sash                (Quest: Wants and Needs — Nagrand)
            Legs      = 25790,  -- Fel Leather Leggings          (Leatherworking craft)
            Feet      = 27915,  -- Moonstrider Boots             (Quest: Escape from Firewing Point — Terokkar)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Pathaleon — Heroic Mechanar)
            MainHand  = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            OffHand   = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            Relic     = 27986,  -- Emberhawk Crossbow            (Quest: Blast the Infernals! — Shadowmoon Valley)
        },
    },
}

-- ---------------------------------------------------------------------------
-- MARKSMANSHIP HUNTER  (Ranged DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Hunter"]["Marksmanship"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28275,  -- Beast Lord Helm               (The Black Stalker — Heroic Underbog)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 27801,  -- Beast Lord Mantle             (Warbringer O'mrogg — Heroic Shattered Halls)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28228,  -- Beast Lord Cuirass            (Warp Splinter — The Botanica)
            Wrist     = 29246,  -- Nightfall Wristguards         (Epoch Hunter — Heroic Old Hillsbrad)
            Hands     = 27474,  -- Beast Lord Handguards         (Warchief Kargath — Heroic Shattered Halls)
            Waist     = 27760,  -- Dunewind Sash                (Quest: Wants and Needs — Nagrand)
            Legs      = 25790,  -- Fel Leather Leggings          (Leatherworking craft)
            Feet      = 27915,  -- Moonstrider Boots             (Quest: Escape from Firewing Point — Terokkar)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Pathaleon — Heroic Mechanar)
            MainHand  = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            OffHand   = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            Relic     = 27986,  -- Emberhawk Crossbow            (Quest: Blast the Infernals! — Shadowmoon Valley)
        },
    },
}

-- ---------------------------------------------------------------------------
-- SURVIVAL HUNTER  (Ranged DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Hunter"]["Survival"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28275,  -- Beast Lord Helm               (The Black Stalker — Heroic Underbog)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 27801,  -- Beast Lord Mantle             (Warbringer O'mrogg — Heroic Shattered Halls)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28228,  -- Beast Lord Cuirass            (Warp Splinter — The Botanica)
            Wrist     = 29246,  -- Nightfall Wristguards         (Epoch Hunter — Heroic Old Hillsbrad)
            Hands     = 27474,  -- Beast Lord Handguards         (Warchief Kargath — Heroic Shattered Halls)
            Waist     = 27760,  -- Dunewind Sash                (Quest: Wants and Needs — Nagrand)
            Legs      = 25790,  -- Fel Leather Leggings          (Leatherworking craft)
            Feet      = 27915,  -- Moonstrider Boots             (Quest: Escape from Firewing Point — Terokkar)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Pathaleon — Heroic Mechanar)
            MainHand  = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            OffHand   = 29348,  -- The Bladefist                 (Warchief Kargath — Heroic Shattered Halls)
            Relic     = 27986,  -- Emberhawk Crossbow            (Quest: Blast the Infernals! — Shadowmoon Valley)
        },
    },
}

-- =============================================================================
-- ROGUE
-- =============================================================================
WTBT_Templates["Rogue"] = {}

-- ---------------------------------------------------------------------------
-- COMBAT ROGUE  (Swords/Maces DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Rogue"]["Combat"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28224,  -- Wastewalker Helm              (Heroic Slave Pens / Underbog / Blood Furnace)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 27797,  -- Wastewalker Shoulderpads      (Heroic Auchenai Crypts)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28204,  -- Tunic of Assassination         (Pathaleon — Mechanar)
            Wrist     = 29246,  -- Nightfall Wristguards         (Heroic Old Hillsbrad)
            Hands     = 27531,  -- Wastewalker Gloves            (Heroic Shattered Halls)
            Waist     = 29247,  -- Girdle of the Deathdealer     (Heroic Black Morass)
            Legs      = 30257,  -- Shattrath Leggings            (Quest: Into the Heart of the Labyrinth)
            Feet      = 25686,  -- Fel Leather Boots             (Leatherworking craft)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 31332,  -- Blinkstrike                   (World Drop BoE)
            OffHand   = 28189,  -- Latro's Shifting Sword        (Aeonus — Black Morass)
            Relic     = 28504,  -- Steelhawk Crossbow             (Heroic Sethekk Halls)
        },
    },
}

-- ---------------------------------------------------------------------------
-- ASSASSINATION ROGUE  (Daggers DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Rogue"]["Assassination"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28224,  -- Wastewalker Helm              (Heroic Slave Pens / Underbog / Blood Furnace)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 27797,  -- Wastewalker Shoulderpads      (Heroic Auchenai Crypts)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28204,  -- Tunic of Assassination         (Pathaleon — Mechanar)
            Wrist     = 29246,  -- Nightfall Wristguards         (Heroic Old Hillsbrad)
            Hands     = 27531,  -- Wastewalker Gloves            (Heroic Shattered Halls)
            Waist     = 29247,  -- Girdle of the Deathdealer     (Heroic Black Morass)
            Legs      = 30257,  -- Shattrath Leggings            (Quest: Into the Heart of the Labyrinth)
            Feet      = 25686,  -- Fel Leather Boots             (Leatherworking craft)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 29275,  -- Searing Sunblade              (Badge of Justice — 50 badges)
            OffHand   = 28189,  -- Latro's Shifting Sword        (Aeonus — Black Morass)
            Relic     = 28504,  -- Steelhawk Crossbow             (Heroic Sethekk Halls)
        },
    },
}

-- =============================================================================
-- WARRIOR
-- =============================================================================
WTBT_Templates["Warrior"] = {}

-- ---------------------------------------------------------------------------
-- ARMS WARRIOR  (2H DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warrior"]["Arms"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 32087,  -- Mask of the Deceiver          (Badge of Justice — 50 badges)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 33173,  -- Ragesteel Shoulders            (Blacksmithing craft)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 23522,  -- Ragesteel Breastplate          (Blacksmithing craft)
            Wrist     = 23537,  -- Black Felsteel Bracers        (Blacksmithing craft)
            Hands     = 25791,  -- Fel Leather Gloves            (Leatherworking craft)
            Waist     = 27985,  -- Deathforge Girdle             (Quest: Teron Gorefiend, I am... — Shadowmoon Valley)
            Legs      = 30257,  -- Shattrath Leggings            (Quest: Into the Heart of the Labyrinth)
            Feet      = 27867,  -- Boots of the Colossus         (Heroic Shattered Halls)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 29356,  -- Quantum Blade                  (Aeonus — Heroic Black Morass)
            Relic     = 28504,  -- Steelhawk Crossbow             (Heroic Sethekk Halls)
        },
    },
}

-- ---------------------------------------------------------------------------
-- FURY WARRIOR  (Dual Wield DPS — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warrior"]["Fury"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 32087,  -- Mask of the Deceiver          (Badge of Justice — 50 badges)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice — 25 badges)
            Shoulder  = 33173,  -- Ragesteel Shoulders            (Blacksmithing craft)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 23522,  -- Ragesteel Breastplate          (Blacksmithing craft)
            Wrist     = 23537,  -- Black Felsteel Bracers        (Blacksmithing craft)
            Hands     = 25791,  -- Fel Leather Gloves            (Leatherworking craft)
            Waist     = 27985,  -- Deathforge Girdle             (Quest: Teron Gorefiend, I am... — Shadowmoon Valley)
            Legs      = 30257,  -- Shattrath Leggings            (Quest: Into the Heart of the Labyrinth)
            Feet      = 27867,  -- Boots of the Colossus         (Heroic Shattered Halls)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice — 41 badges)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 28189,  -- Latro's Shifting Sword        (Aeonus — Black Morass)
            OffHand   = 28189,  -- Latro's Shifting Sword        (Aeonus — Black Morass)
            Relic     = 28504,  -- Steelhawk Crossbow             (Heroic Sethekk Halls)
        },
    },
}

-- ---------------------------------------------------------------------------
-- PROTECTION WARRIOR  (Tank — pre-raid)
-- ---------------------------------------------------------------------------
WTBT_Templates["Warrior"]["Protection"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 32083,  -- Faceguard of Determination    (Badge of Justice — 50 badges)
            Neck      = 29386,  -- Necklace of the Juggernaut    (Badge of Justice — 25 badges)
            Shoulder  = 27847,  -- Shoulderguards of the Bold    (Heroic Shattered Halls)
            Back      = 29385,  -- Farstrider Defender's Cloak   (Aldor/Scryer Vendor)
            Chest     = 28597,  -- Panzar'Thar Breastplate       (Quest: Nightbane — Karazhan attunement)
            Wrist     = 29252,  -- Bracers of Dignity            (Aldor/Scryer Vendor)
            Hands     = 28518,  -- Iron Gauntlets of the Maiden  (Heroic Arcatraz)
            Waist     = 27672,  -- Girdle of the Immovable       (Heroic Shadow Labyrinth)
            Legs      = 27839,  -- Legguards of the Bold         (Heroic Shattered Halls)
            Feet      = 27813,  -- Boots of the Righteous Path   (Heroic Botanica)
            Ring1     = 29279,  -- Violet Signet of the Great Protector (The Violet Eye — Exalted)
            Ring2     = 28407,  -- Elementium Band of the Sentry (Quest: Arcatraz Key)
            Trinket1  = 27891,  -- Adamantine Figurine           (Heroic Sethekk Halls)
            Trinket2  = 28121,  -- Icon of Unyielding Courage    (Heroic Mechanar)
            MainHand  = 29165,  -- Continuum Blade               (Keepers of Time — Exalted)
            OffHand   = 29176,  -- Crest of the Sha'tar          (Sha'tar — Exalted)
            Relic     = 28504,  -- Steelhawk Crossbow             (Heroic Sethekk Halls)
        },
    },
}

-- =============================================================================
-- SHAMAN
-- =============================================================================
WTBT_Templates["Shaman"] = {}

WTBT_Templates["Shaman"]["Restoration"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 24264,  -- Whitemend Hood                (Tailoring craft)
            Neck      = 29374,  -- Necklace of Eternal Hope      (Badge of Justice)
            Shoulder  = 27775,  -- Hallowed Pauldrons             (Grandmaster Vorpil — Shadow Labyrinth)
            Back      = 31329,  -- Lifegiving Cloak              (BoE)
            Chest     = 28230,  -- Hallowed Garments              (Murmur — Shadow Labyrinth)
            Wrist     = 29249,  -- Bands of the Benevolent        (Heroic Sethekk Halls)
            Hands     = 29506,  -- Gloves of the Living Touch    (Leatherworking craft)
            Waist     = 29250,  -- Cord of Sanctification         (Heroic Sethekk Halls)
            Legs      = 24263,  -- Whitemend Pants               (Tailoring craft)
            Feet      = 29242,  -- Boots of the Pious            (Heroic Old Hillsbrad)
            Ring1     = 29373,  -- Band of Halos                 (Badge of Justice)
            Ring2     = 29169,  -- Band of the Crystalline Void  (Lower City — Revered)
            Trinket1  = 29376,  -- Essence of the Martyr         (Badge of Justice)
            Trinket2  = 30841,  -- Lower City Prayerbook         (Lower City — Honored)
            MainHand  = 29175,  -- Gavel of Pure Light           (Sha'tar — Exalted)
            OffHand   = 29274,  -- Tears of Heaven               (Badge of Justice)
            Relic     = 28523,  -- Totem of Healing Rains        (Drop)
        },
    },
}

WTBT_Templates["Shaman"]["Enhancement"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 32087,  -- Mask of the Deceiver          (Badge of Justice)
            Neck      = 29381,  -- Choker of Vile Intent         (Badge of Justice)
            Shoulder  = 33173,  -- Ragesteel Shoulders           (Blacksmithing craft)
            Back      = 24259,  -- Vengeance Wrap                (Tailoring craft)
            Chest     = 28204,  -- Tunic of Assassination         (Pathaleon — Mechanar)
            Wrist     = 29246,  -- Nightfall Wristguards          (Epoch Hunter — Heroic Old Hillsbrad)
            Hands     = 27531,  -- Wastewalker Gloves            (Heroic Shattered Halls)
            Waist     = 27911,  -- Epoch's Whispering Cinch       (Epoch Hunter — Old Hillsbrad)
            Legs      = 30257,  -- Shattrath Leggings            (Quest)
            Feet      = 25686,  -- Fel Leather Boots             (Leatherworking craft)
            Ring1     = 30834,  -- Shapeshifter's Signet         (Lower City — Exalted)
            Ring2     = 29177,  -- A'dal's Command               (Sha'tar — Exalted)
            Trinket1  = 29383,  -- Bloodlust Brooch              (Badge of Justice)
            Trinket2  = 28288,  -- Abacus of Violent Odds        (Heroic Mechanar)
            MainHand  = 28308,  -- Gladiator's Cleaver           (Arena PvP)
            OffHand   = 28313,  -- Gladiator's Right Ripper      (Arena PvP)
            Relic     = 27815,  -- Totem of the Astral Winds     (Heroic Mana-Tombs)
        },
    },
}

WTBT_Templates["Shaman"]["Elemental"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28415,  -- Hood of Oblivion              (Heroic Mechanar)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest)
            Shoulder  = 27796,  -- Mana-Etched Spaulders         (Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft BoE)
            Hands     = 27537,  -- Gloves of the Deadwatcher     (Sethekk Halls)
            Waist     = 24256,  -- Girdle of Ruination            (Tailoring craft BoE)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28179,  -- Shattrath Jumpers             (Quest)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Mana-Tombs)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29273,  -- Khadgar's Knapsack            (Badge of Justice)
            Relic     = 28248,  -- Totem of the Void             (Mechanar)
        },
    },
}

-- =============================================================================
-- MAGE
-- =============================================================================
WTBT_Templates["Mage"] = {}

WTBT_Templates["Mage"]["Fire"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28415,  -- Hood of Oblivion              (Heroic Mechanar)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest)
            Shoulder  = 27796,  -- Mana-Etched Spaulders         (Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27465,  -- Mana-Etched Gloves             (Warchief Kargath — Shattered Halls)
            Waist     = 24256,  -- Girdle of Ruination           (Tailoring craft)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28179,  -- Shattrath Jumpers             (Quest)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Mana-Tombs)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29271,  -- Talisman of Kalecgos          (Badge of Justice)
            Relic     = 28673,  -- Tirisfal Wand of Ascendancy   (Heroic Shadow Labyrinth)
        },
    },
}

WTBT_Templates["Mage"]["Frost"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28415,  -- Hood of Oblivion              (Heroic Mechanar)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest)
            Shoulder  = 27796,  -- Mana-Etched Spaulders          (Quagmirran — Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27493,  -- Gloves of the Deadwatcher     (Sethekk Halls)
            Waist     = 24256,  -- Girdle of Ruination           (Tailoring craft)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28406,  -- Sigil-Laced Boots              (Harbinger Skyriss — Arcatraz)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Mana-Tombs)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29271,  -- Talisman of Kalecgos          (Badge of Justice)
            Relic     = 28673,  -- Tirisfal Wand of Ascendancy   (Heroic Shadow Labyrinth)
        },
    },
}

WTBT_Templates["Mage"]["Arcane"] = {
    prebis = {
        label = "Pre-Raid BIS",
        description = "Best dungeon, heroic, rep and quest gear before raiding",
        slots = {
            Head      = 28415,  -- Hood of Oblivion              (Heroic Mechanar)
            Neck      = 31692,  -- Brooch of Heightened Potential (Quest)
            Shoulder  = 27796,  -- Mana-Etched Spaulders         (Heroic Slave Pens)
            Back      = 28269,  -- Baba's Cloak of Arcanistry    (Heroic Old Hillsbrad)
            Chest     = 28191,  -- Mana-Etched Vestments          (Epoch Hunter — Old Hillsbrad)
            Wrist     = 24250,  -- Bracers of Havok              (Tailoring craft)
            Hands     = 27465,  -- Mana-Etched Gloves             (Warchief Kargath — Shattered Halls)
            Waist     = 29241,  -- Belt of Depravity              (Nexus-Prince Shaffar — Heroic Mana-Tombs)
            Legs      = 24262,  -- Spellstrike Pants             (Tailoring craft)
            Feet      = 28179,  -- Shattrath Jumpers             (Quest)
            Ring1     = 29352,  -- Cobalt Band of Tyrigosa       (Heroic Mana-Tombs)
            Ring2     = 29172,  -- Ashyen's Gift                 (Cenarion Expedition — Exalted)
            Trinket1  = 29370,  -- Icon of the Silver Crescent   (Badge of Justice)
            Trinket2  = 27683,  -- Quagmirran's Eye              (Heroic Slave Pens)
            MainHand  = 23554,  -- Eternium Runed Blade          (Blacksmithing craft)
            OffHand   = 29271,  -- Talisman of Kalecgos          (Badge of Justice)
            Relic     = 28673,  -- Tirisfal Wand of Ascendancy   (Heroic Shadow Labyrinth)
        },
    },
}

-- =============================================================================
-- FIRE RESISTANCE TEMPLATES  (Leotheras, Illidan — badge + crafted sets)
-- =============================================================================

-- Shared accessories used by all armor types:
--   Neck:  Pendant of Frozen Flame  (24092)  Jewelcrafting      30 FR
--   Back:  Wyrmcultist's Cloak      (31341)  Vendor — Blade's Edge  24 FR
--   Ring1: Phoenix-fire Band        (31746)  Quest: Trial of the Naaru  30 FR

-- ---------------------------------------------------------------------------
-- PLATE  (Warrior, Paladin) — Inferno Tempered (badge) + Flamebane (crafted)
-- ---------------------------------------------------------------------------
local PLATE_FIRERES = {
    fireres = {
        label = "Fire Resistance",
        description = "Badge + crafted fire resistance set for Leotheras / Illidan",
        slots = {
            Head      = 23516,  -- Flamebane Helm                 (Blacksmithing craft — 40 FR)
            Neck      = 24092,  -- Pendant of Frozen Flame         (Jewelcrafting — 30 FR)
            Back      = 31341,  -- Wyrmcultist's Cloak             (Vendor — Blade's Edge — 24 FR)
            Chest     = 30769,  -- Inferno Tempered Chestguard     (Badge of Justice — 60 FR)
            Wrist     = 23515,  -- Flamebane Bracers               (Blacksmithing craft — 28 FR)
            Hands     = 30767,  -- Inferno Tempered Gauntlets      (Badge of Justice — 40 FR)
            Legs      = 30766,  -- Inferno Tempered Leggings       (Badge of Justice — 55 FR)
            Feet      = 30768,  -- Inferno Tempered Boots          (Badge of Justice — 45 FR)
            Ring1     = 31746,  -- Phoenix-fire Band               (Quest: Trial of the Naaru — 30 FR)
        },
    },
}

for _, spec in ipairs({"Holy", "Protection", "Retribution"}) do
    WTBT_Templates["Paladin"][spec].fireres = PLATE_FIRERES.fireres
end
for _, spec in ipairs({"Arms", "Fury", "Protection"}) do
    WTBT_Templates["Warrior"][spec].fireres = PLATE_FIRERES.fireres
end

-- ---------------------------------------------------------------------------
-- MAIL  (Hunter, Shaman) — Inferno Forged (badge) + Enchanted Felscale (crafted)
-- ---------------------------------------------------------------------------
local MAIL_FIRERES = {
    fireres = {
        label = "Fire Resistance",
        description = "Badge + crafted fire resistance set for Leotheras / Illidan",
        slots = {
            Neck      = 24092,  -- Pendant of Frozen Flame         (Jewelcrafting — 30 FR)
            Back      = 31341,  -- Wyrmcultist's Cloak             (Vendor — Blade's Edge — 24 FR)
            Chest     = 30773,  -- Inferno Forged Hauberk          (Badge of Justice — 60 FR)
            Hands     = 30774,  -- Inferno Forged Gloves           (Badge of Justice — 40 FR)
            Legs      = 30772,  -- Inferno Forged Leggings         (Badge of Justice — 55 FR)
            Feet      = 30770,  -- Inferno Forged Boots            (Badge of Justice — 45 FR)
            Ring1     = 31746,  -- Phoenix-fire Band               (Quest: Trial of the Naaru — 30 FR)
        },
    },
}

for _, spec in ipairs({"Beast Mastery", "Marksmanship", "Survival"}) do
    WTBT_Templates["Hunter"][spec].fireres = MAIL_FIRERES.fireres
end
for _, spec in ipairs({"Restoration", "Enhancement", "Elemental"}) do
    WTBT_Templates["Shaman"][spec].fireres = MAIL_FIRERES.fireres
end

-- ---------------------------------------------------------------------------
-- LEATHER  (Druid, Rogue) — Inferno Hardened (badge) + Enchanted Clefthoof (crafted)
-- ---------------------------------------------------------------------------
local LEATHER_FIRERES = {
    fireres = {
        label = "Fire Resistance",
        description = "Badge + crafted fire resistance set for Leotheras / Illidan",
        slots = {
            Neck      = 24092,  -- Pendant of Frozen Flame         (Jewelcrafting — 30 FR)
            Back      = 31341,  -- Wyrmcultist's Cloak             (Vendor — Blade's Edge — 24 FR)
            Chest     = 30776,  -- Inferno Hardened Chestguard     (Badge of Justice — 60 FR)
            Hands     = 30780,  -- Inferno Hardened Gloves         (Badge of Justice — 40 FR)
            Legs      = 30778,  -- Inferno Hardened Leggings       (Badge of Justice — 55 FR)
            Feet      = 30779,  -- Inferno Hardened Boots          (Badge of Justice — 45 FR)
            Ring1     = 31746,  -- Phoenix-fire Band               (Quest: Trial of the Naaru — 30 FR)
        },
    },
}

for _, spec in ipairs({"Feral", "Balance", "Restoration"}) do
    WTBT_Templates["Druid"][spec].fireres = LEATHER_FIRERES.fireres
end
for _, spec in ipairs({"Combat", "Assassination"}) do
    WTBT_Templates["Rogue"][spec].fireres = LEATHER_FIRERES.fireres
end

-- ---------------------------------------------------------------------------
-- CLOTH  (Mage, Warlock, Priest) — Infernoweave (badge) + Flameheart (crafted)
-- ---------------------------------------------------------------------------
local CLOTH_FIRERES = {
    fireres = {
        label = "Fire Resistance",
        description = "Badge + crafted fire resistance set for Leotheras / Illidan",
        slots = {
            Neck      = 24092,  -- Pendant of Frozen Flame         (Jewelcrafting — 30 FR)
            Back      = 31341,  -- Wyrmcultist's Cloak             (Vendor — Blade's Edge — 24 FR)
            Chest     = 30762,  -- Infernoweave Robe               (Badge of Justice — 60 FR)
            Wrist     = 30837,  -- Flameheart Bracers              (Tailoring craft — 30 FR)
            Hands     = 30764,  -- Infernoweave Gloves             (Badge of Justice — 40 FR)
            Legs      = 30761,  -- Infernoweave Leggings           (Badge of Justice — 55 FR)
            Feet      = 30763,  -- Infernoweave Boots              (Badge of Justice — 45 FR)
            Ring1     = 31746,  -- Phoenix-fire Band               (Quest: Trial of the Naaru — 30 FR)
        },
    },
}

for _, spec in ipairs({"Fire", "Frost", "Arcane"}) do
    WTBT_Templates["Mage"][spec].fireres = CLOTH_FIRERES.fireres
end
for _, spec in ipairs({"Destruction", "Affliction", "Demonology"}) do
    WTBT_Templates["Warlock"][spec].fireres = CLOTH_FIRERES.fireres
end
for _, spec in ipairs({"Holy", "Shadow"}) do
    WTBT_Templates["Priest"][spec].fireres = CLOTH_FIRERES.fireres
end

-- =============================================================================
-- MAGE TANK TEMPLATE  (Krosh Firehand — High King Maulgar)
-- =============================================================================
-- Goal: ~10k HP unbuffed, spell hit cap (202). Stamina cloth + Mana-Etched 2pc.

local MAGE_TANK = {
    magetank = {
        label = "Mage Tank (Krosh)",
        description = "High stamina cloth set for tanking Krosh Firehand in Gruul's Lair",
        slots = {
            Head      = 28193,  -- Mana-Etched Crown             (Aeonus — Black Morass)
            Neck      = 29374,  -- Necklace of Eternal Hope       (Badge of Justice — 25 badges)
            Shoulder  = 27796,  -- Mana-Etched Spaulders          (Heroic Slave Pens)
            Back      = 29385,  -- Farstrider Defender's Cloak    (Badge of Justice — 25 badges)
            Chest     = 21861,  -- Imbued Netherweave Robe        (Tailoring craft)
            Wrist     = 30837,  -- Flameheart Bracers             (Tailoring craft)
            Hands     = 27465,  -- Mana-Etched Gloves             (Shattered Halls)
            Waist     = 24256,  -- Girdle of Ruination            (Tailoring craft)
            Legs      = 21859,  -- Imbued Netherweave Pants       (Tailoring craft)
            Feet      = 21860,  -- Imbued Netherweave Boots       (Tailoring craft)
            Ring1     = 29169,  -- Band of the Crystalline Void   (Lower City — Revered)
            Ring2     = 29172,  -- Ashyen's Gift                  (Cenarion Expedition — Exalted)
            Trinket1  = 29376,  -- Essence of the Martyr          (Badge of Justice — 41 badges)
            Trinket2  = 28190,  -- Scarab of the Infinite Cycle   (Black Morass)
            MainHand  = 29153,  -- Starlight Dagger               (The Consortium — Revered)
            OffHand   = 29271,  -- Talisman of Kalecgos           (Badge of Justice — 25 badges)
            Relic     = 28673,  -- Tirisfal Wand of Ascendancy    (Heroic Shadow Labyrinth)
        },
    },
}

for _, spec in ipairs({"Fire", "Frost", "Arcane"}) do
    WTBT_Templates["Mage"][spec].magetank = MAGE_TANK.magetank
end

-- =============================================================================
-- PRE-RAID BIS (CRAFTED) — profession-locked sets for players with the right profession
-- =============================================================================
-- These are the true BIS items but require specific crafting professions to equip.
-- Players without the profession should use the standard Pre-Raid BIS template instead.

-- Helper: shallow-copy a prebis slots table and override specific entries
local function CraftedVariant(spec, overrides)
    local base = {}
    for k, v in pairs(spec.prebis.slots) do base[k] = v end
    for k, v in pairs(overrides) do base[k] = v end
    spec.prebis_crafted = {
        label = "Pre-Raid BIS (Crafted)",
        description = "True BIS with profession-locked items — requires specific crafting professions",
        slots = base,
    }
end

-- Healers: Primal Mooncloth + Windhawk
local HEALER_MOONCLOTH = { Shoulder = 21874, Chest = 21875, Waist = 21873 }
local HEALER_WINDHAWK  = { Shoulder = 21874, Chest = 29522, Wrist = 29523, Waist = 29524 }

CraftedVariant(WTBT_Templates["Paladin"]["Holy"], HEALER_WINDHAWK)
CraftedVariant(WTBT_Templates["Druid"]["Restoration"], HEALER_MOONCLOTH)
CraftedVariant(WTBT_Templates["Priest"]["Holy"], HEALER_MOONCLOTH)
CraftedVariant(WTBT_Templates["Shaman"]["Restoration"], HEALER_WINDHAWK)

-- Caster DPS: Spellfire
local CASTER_SPELLFIRE = { Chest = 21848, Hands = 21847, Waist = 21846 }
CraftedVariant(WTBT_Templates["Druid"]["Balance"], CASTER_SPELLFIRE)
CraftedVariant(WTBT_Templates["Warlock"]["Destruction"], CASTER_SPELLFIRE)
CraftedVariant(WTBT_Templates["Mage"]["Fire"], CASTER_SPELLFIRE)
CraftedVariant(WTBT_Templates["Mage"]["Arcane"], CASTER_SPELLFIRE)

-- Caster DPS: Frozen Shadoweave
local CASTER_SHADOWEAVE = { Shoulder = 21869, Chest = 21871, Feet = 21870 }
CraftedVariant(WTBT_Templates["Priest"]["Shadow"], CASTER_SHADOWEAVE)
CraftedVariant(WTBT_Templates["Warlock"]["Affliction"], CASTER_SHADOWEAVE)
CraftedVariant(WTBT_Templates["Warlock"]["Demonology"], CASTER_SHADOWEAVE)
CraftedVariant(WTBT_Templates["Mage"]["Frost"], CASTER_SHADOWEAVE)

-- Melee: Primalstrike / Ebon Netherscale / Netherstrike / Lionheart
CraftedVariant(WTBT_Templates["Druid"]["Feral"], { Chest = 29525 })
CraftedVariant(WTBT_Templates["Rogue"]["Combat"], { Chest = 29525 })
CraftedVariant(WTBT_Templates["Rogue"]["Assassination"], { Chest = 29525 })
CraftedVariant(WTBT_Templates["Shaman"]["Enhancement"], { Chest = 29525, Wrist = 29517, Waist = 29516 })
CraftedVariant(WTBT_Templates["Shaman"]["Elemental"], { Chest = 29519, Wrist = 29521, Waist = 29520 })
CraftedVariant(WTBT_Templates["Paladin"]["Retribution"], { MainHand = 28429 })
CraftedVariant(WTBT_Templates["Warrior"]["Arms"], { MainHand = 28429 })

-- =============================================================================
-- FROST RESISTANCE TEMPLATES  (Hydross the Unstable — frost phase)
-- =============================================================================

-- ---------------------------------------------------------------------------
-- PLATE  (Warrior, Paladin) — Iceguard (crafted BS) + accessories
-- ---------------------------------------------------------------------------
local PLATE_FROSTRES = {
    frostres = {
        label = "Frost Resistance",
        description = "Crafted frost resistance set for tanking Hydross (frost phase)",
        slots = {
            Head      = 31371,  -- Iceguard Helm                  (Blacksmithing — Violet Eye Honored — 50 FR)
            Neck      = 24093,  -- Pendant of Thawing              (Jewelcrafting — 30 FR)
            Back      = 22658,  -- Glacial Cloak                   (Tailoring — 24 FR)
            Chest     = 31369,  -- Iceguard Breastplate            (Blacksmithing — Violet Eye Honored — 60 FR)
            Legs      = 31370,  -- Iceguard Leggings               (Blacksmithing — Violet Eye Honored — 60 FR)
            Ring1     = 31398,  -- The Frozen Eye                  (Jewelcrafting — 35 FR)
        },
    },
}

WTBT_Templates["Warrior"]["Protection"].frostres = PLATE_FROSTRES.frostres
WTBT_Templates["Paladin"]["Protection"].frostres = PLATE_FROSTRES.frostres

-- ---------------------------------------------------------------------------
-- LEATHER  (Druid Feral) — Polar set (crafted LW) + accessories
-- ---------------------------------------------------------------------------
WTBT_Templates["Druid"]["Feral"].frostres = {
    label = "Frost Resistance",
    description = "Crafted frost resistance set for offtanking Hydross (frost phase)",
    slots = {
        Neck      = 24093,  -- Pendant of Thawing              (Jewelcrafting — 30 FR)
        Back      = 22658,  -- Glacial Cloak                   (Tailoring — 24 FR)
        Chest     = 22661,  -- Polar Tunic                     (Leatherworking — 45 FR)
        Wrist     = 22663,  -- Polar Bracers                   (Leatherworking — 28 FR)
        Hands     = 22662,  -- Polar Gloves                    (Leatherworking — 40 FR)
        Legs      = 22701,  -- Polar Leggings                  (Leatherworking — 40 FR)
        Ring1     = 31398,  -- The Frozen Eye                  (Jewelcrafting — 35 FR)
    },
}

-- =============================================================================
-- NATURE RESISTANCE TEMPLATES  (Hydross the Unstable — nature phase)
-- =============================================================================

-- ---------------------------------------------------------------------------
-- PLATE  (Warrior, Paladin) — Wildguard (crafted BS) + accessories
-- ---------------------------------------------------------------------------
local PLATE_NATURERES = {
    natureres = {
        label = "Nature Resistance",
        description = "Crafted nature resistance set for tanking Hydross (nature phase)",
        slots = {
            Head      = 31368,  -- Wildguard Helm                 (Blacksmithing — Cenarion Expedition Exalted — 50 NR)
            Neck      = 24095,  -- Pendant of Withering            (Jewelcrafting — 30 NR)
            Chest     = 31364,  -- Wildguard Breastplate           (Blacksmithing — Cenarion Expedition Exalted — 60 NR)
            Legs      = 31367,  -- Wildguard Leggings              (Blacksmithing — Cenarion Expedition Exalted — 60 NR)
            Ring1     = 31399,  -- The Natural Ward                (Jewelcrafting — 35 NR)
        },
    },
}

WTBT_Templates["Warrior"]["Protection"].natureres = PLATE_NATURERES.natureres
WTBT_Templates["Paladin"]["Protection"].natureres = PLATE_NATURERES.natureres

-- ---------------------------------------------------------------------------
-- LEATHER  (Druid Feral) — Bramblewood (crafted LW) + accessories
-- ---------------------------------------------------------------------------
WTBT_Templates["Druid"]["Feral"].natureres = {
    label = "Nature Resistance",
    description = "Crafted nature resistance set for offtanking Hydross (nature phase)",
    slots = {
        Head      = 22759,  -- Bramblewood Helm                (Leatherworking — 24 NR)
        Neck      = 24095,  -- Pendant of Withering             (Jewelcrafting — 30 NR)
        Back      = 22660,  -- Gaea's Embrace                  (Tailoring — 20 NR)
        Waist     = 22761,  -- Bramblewood Belt                (Leatherworking — 24 NR)
        Feet      = 22760,  -- Bramblewood Boots               (Leatherworking — 22 NR)
        Ring1     = 31399,  -- The Natural Ward                (Jewelcrafting — 35 NR)
    },
}

-- =============================================================================
-- LEVELING 60-70 TEMPLATES — Best quest rewards & normal dungeon drops
-- =============================================================================

local LVL_DESC = "Best quest rewards and normal dungeon drops while leveling through Outland"

local function LevelingTemplate(baseSlots, overrides)
    local slots = {}
    for k, v in pairs(baseSlots) do slots[k] = v end
    if overrides then
        for k, v in pairs(overrides) do slots[k] = v end
    end
    return { label = "Leveling 60-70", description = LVL_DESC, slots = slots }
end

-- ---------------------------------------------------------------------------
-- CLOTH CASTER DPS (Mage, Warlock, Shadow Priest, Balance Druid)
-- ---------------------------------------------------------------------------
local CLOTH_CASTER_LVL = {
    Head      = 31104,  -- Evoker's Helmet of Second Sight    (Quest: Teron Gorefiend, I am... — SMV)
    Neck      = 31692,  -- Natasha's Ember Necklace           (Quest: The Hound-Master — Blade's Edge)
    Shoulder  = 30925,  -- Spaulders of the Torn-heart        (Quest: Cipher of Damnation — SMV)
    Back      = 29813,  -- Cloak of Woven Energy              (Quest: Hitting the Motherlode — Netherstorm)
    Chest     = 29341,  -- Auchenai Anchorite's Robe          (Quest: Everything Will Be Alright — Terokkar)
    Wrist     = 28174,  -- Shattrath Wraps                    (Quest: The Soul Devices — Auchindoun)
    Hands     = 27493,  -- Gloves of the Deadwatcher          (Drop: Shirrak — Auchenai Crypts Normal)
    Waist     = 31461,  -- A'dal's Gift                       (Quest: How to Break Into the Arcatraz)
    Legs      = 27907,  -- Mana-Etched Pantaloons             (Drop: Black Stalker — Underbog Normal)
    Feet      = 28406,  -- Sigil-Laced Boots                  (Drop: Skyriss — Arcatraz Normal)
    Ring1     = 29320,  -- Band of the Guardian               (Quest: Hero of the Brood — Caverns of Time)
    Ring2     = 28227,  -- Sparking Arcanite Ring             (Drop: Epoch Hunter — Old Hillsbrad Normal)
    Trinket1  = 30340,  -- Starkiller's Bauble               (Quest: Horrors of Pollution — SMV)
    Trinket2  = 28040,  -- Vengeance of the Illidari          (Quest: Overlord — Hellfire Peninsula)
    MainHand  = 27905,  -- Greatsword of Horrid Dreams       (Drop: Murmur — Shadow Lab Normal)
    OffHand   = 28187,  -- Star-Heart Lamp                   (Drop: Temporus — Black Morass Normal)
    Relic     = 27890,  -- Wand of the Netherwing            (Drop: Blackheart — Shadow Lab Normal)
}

for _, spec in ipairs({"Fire", "Frost", "Arcane"}) do
    WTBT_Templates["Mage"][spec].leveling = LevelingTemplate(CLOTH_CASTER_LVL)
end
for _, spec in ipairs({"Destruction", "Affliction", "Demonology"}) do
    WTBT_Templates["Warlock"][spec].leveling = LevelingTemplate(CLOTH_CASTER_LVL)
end
WTBT_Templates["Priest"]["Shadow"].leveling = LevelingTemplate(CLOTH_CASTER_LVL)
WTBT_Templates["Druid"]["Balance"].leveling = LevelingTemplate(CLOTH_CASTER_LVL, {
    Relic = 27518,  -- Ivory Idol of the Moongoddess       (Quest: Sethekk Halls)
})

-- ---------------------------------------------------------------------------
-- HEALER (Holy Priest, Resto Druid, Holy Paladin)
-- ---------------------------------------------------------------------------
local HEALER_LVL = {
    Head      = 28413,  -- Hallowed Crown                    (Drop: Skyriss — Arcatraz Normal)
    Neck      = 30377,  -- Karja's Medallion                 (Quest: Manaforge Ara — Netherstorm)
    Shoulder  = 30925,  -- Spaulders of the Torn-heart       (Quest: Cipher of Damnation — SMV)
    Back      = 24459,  -- Cloak of Healing Rays             (Drop: Ghaz'an — Underbog Normal)
    Chest     = 29341,  -- Auchenai Anchorite's Robe         (Quest: Everything Will Be Alright — Terokkar)
    Wrist     = 28174,  -- Shattrath Wraps                   (Quest: The Soul Devices — Auchindoun)
    Hands     = 28304,  -- Prismatic Mittens of Mending      (Drop: Sarannis — Botanica Normal)
    Waist     = 24395,  -- Mindfire Waistband                (Drop: Keli'dan — Blood Furnace Normal)
    Legs      = 30256,  -- Pants of the Naaru                (Quest: Special Delivery to Shattrath)
    Feet      = 27411,  -- Slippers of Serenity              (Drop: Maladaar — Auchenai Crypts Normal)
    Ring1     = 31383,  -- Spiritualist's Mark of the Sha'tar (Quest: Crimson Watch — SMV)
    Ring2     = 29814,  -- Celestial Jewel Ring              (Quest: Hitting the Motherlode — Netherstorm)
    Trinket1  = 28190,  -- Scarab of the Infinite Cycle      (Drop: Aeonus — Black Morass Normal)
    Trinket2  = 28370,  -- Bangle of Endless Blessings       (Drop: Warp Splinter — Botanica Normal)
    MainHand  = 28257,  -- Hammer of the Penitent            (Drop: Capacitus — Mechanar Normal)
    OffHand   = 28213,  -- Lordaeron Medical Guide           (Drop: Lt. Drake — Old Hillsbrad Normal)
    Relic     = 29779,  -- Rejuvenating Scepter              (Quest: Ar'kelos the Guardian — Netherstorm)
}

WTBT_Templates["Priest"]["Holy"].leveling = LevelingTemplate(HEALER_LVL)
WTBT_Templates["Priest"]["Discipline"] = WTBT_Templates["Priest"]["Discipline"] or {}
WTBT_Templates["Priest"]["Discipline"].leveling = LevelingTemplate(HEALER_LVL)

WTBT_Templates["Druid"]["Restoration"].leveling = LevelingTemplate(HEALER_LVL, {
    Relic = 27886,  -- Idol of the Emerald Queen           (Quest: Zangarmarsh)
})
WTBT_Templates["Paladin"]["Holy"].leveling = LevelingTemplate(HEALER_LVL, {
    Relic = 25644,  -- Blessed Book of Nagrand             (Quest: The Ultimate Bloodsport — Nagrand)
})

-- ---------------------------------------------------------------------------
-- LEATHER MELEE DPS (Feral Druid, Rogue)
-- ---------------------------------------------------------------------------
local LEATHER_MELEE_LVL = {
    Head      = 31109,  -- Stealther's Helmet of Second Sight (Quest: Teron Gorefiend — SMV)
    Neck      = 31695,  -- Natasha's Choker                   (Quest: The Hound-Master — Blade's Edge)
    Back      = 28031,  -- Nomad's Woven Cloak               (Quest: Bring Me The Egg! — Nagrand)
    Chest     = 24396,  -- Vest of Vengeance                  (Drop: Keli'dan — Blood Furnace Normal)
    Hands     = 30003,  -- Gloves of the Nether-Stalker      (Quest: Dealing with the Overmaster — Netherstorm)
    Waist     = 30942,  -- Manimal's Cinch                   (Quest: Enraged Spirits of Air — SMV)
    Legs      = 31544,  -- Clefthoof Hide Leggings           (Quest: Showdown — Blade's Edge)
    Feet      = 31532,  -- Supple Leather Boots              (Quest: Whispers of the Raven God — Blade's Edge)
    Ring1     = 25804,  -- Naliko's Revenge                  (Quest: Turning the Tide — Zangarmarsh)
    Ring2     = 30973,  -- Band of Anguish                   (Quest: News of Victory — SMV)
    Trinket1  = 28041,  -- Bladefist's Breadth               (Quest: Overlord — Hellfire Peninsula)
    Trinket2  = 31617,  -- Ancient Draenei War Talisman      (Quest: Vengeful Harbinger — Terokkar)
}

WTBT_Templates["Druid"]["Feral"].leveling = LevelingTemplate(LEATHER_MELEE_LVL, {
    MainHand = 25761,   -- Staff of Beasts                   (Quest: Ring of Blood — Nagrand)
    Relic    = 28064,   -- Idol of the Wild                  (Quest: Colossal Menace — HFP)
})

local ROGUE_LVL = LevelingTemplate(LEATHER_MELEE_LVL, {
    MainHand = 28189,   -- Latro's Shifting Sword            (Drop: Aeonus — Black Morass Normal)
    OffHand  = 28189,   -- Latro's Shifting Sword            (Drop: Aeonus — Black Morass Normal)
    Relic    = 30279,   -- Mama's Insurance                  (Quest: Declawing Doomclaw — Netherstorm)
})
for _, spec in ipairs({"Combat", "Assassination"}) do
    WTBT_Templates["Rogue"][spec].leveling = ROGUE_LVL
end
WTBT_Templates["Rogue"]["Subtlety"] = WTBT_Templates["Rogue"]["Subtlety"] or {}
WTBT_Templates["Rogue"]["Subtlety"].leveling = ROGUE_LVL

-- ---------------------------------------------------------------------------
-- MAIL HUNTER (Beast Mastery, Marksmanship, Survival)
-- ---------------------------------------------------------------------------
local MAIL_HUNTER_LVL = {
    Head      = 31106,  -- Stalker's Helmet of Second Sight  (Quest: Teron Gorefiend — SMV)
    Neck      = 25562,  -- Earthen Mark of Razing            (Quest: Gurok the Usurper — Nagrand)
    Shoulder  = 27434,  -- Mantle of Perenolde               (Drop: Epoch Hunter — Old Hillsbrad Normal)
    Back      = 28032,  -- Delicate Green Poncho             (Quest: Bring Me The Egg! — Nagrand)
    Chest     = 30933,  -- Hauberk of Karabor                (Quest: Varedis Must Be Stopped — SMV)
    Wrist     = 28171,  -- Spymistress's Wristguards         (Quest: The Soul Devices — Auchindoun)
    Hands     = 27474,  -- Beast Lord Handguards             (Drop: Kargath — Shattered Halls Normal)
    Waist     = 27985,  -- Deathforge Girdle                 (Drop: Ikiss — Sethekk Halls Normal)
    Legs      = 28173,  -- Mag'hari Huntsman's Leggings      (Quest: Hero of the Mag'har — Nagrand)
    Feet      = 27915,  -- Sky-Hunter Swift Boots            (Drop: Syth — Sethekk Halls Normal)
    Ring1     = 31077,  -- Slayer's Mark of the Redemption   (Quest: Dissension Amongst the Ranks — SMV)
    Ring2     = 27925,  -- Ravenclaw Band                    (Drop: Ikiss — Sethekk Halls Normal)
    Trinket1  = 28288,  -- Abacus of Violent Odds            (Drop: Pathaleon — Mechanar Normal)
    Trinket2  = 28034,  -- Hourglass of the Unraveller       (Drop: Temporus — Black Morass Normal)
    MainHand  = 27903,  -- Sonic Spear                       (Drop: Murmur — Shadow Lab Normal)
    Relic     = 30279,  -- Mama's Insurance                  (Quest: Declawing Doomclaw — Netherstorm)
}

for _, spec in ipairs({"Beast Mastery", "Marksmanship", "Survival"}) do
    WTBT_Templates["Hunter"][spec].leveling = LevelingTemplate(MAIL_HUNTER_LVL)
end

-- ---------------------------------------------------------------------------
-- MAIL CASTER (Elemental Shaman, Resto Shaman)
-- ---------------------------------------------------------------------------
local MAIL_CASTER_LVL = {
    Head      = 31107,  -- Shamanistic Helmet of Second Sight (Quest: Teron Gorefiend — SMV)
    Neck      = 29333,  -- Torc of the Sethekk Prophet       (Quest: Brother Against Brother — Sethekk Halls)
    Shoulder  = 30925,  -- Spaulders of the Torn-heart       (Quest: Cipher of Damnation — SMV)
    Back      = 27981,  -- Sethekk Oracle Cloak              (Drop: Ikiss — Sethekk Halls Normal)
    Chest     = 28191,  -- Mana-Etched Vestments             (Drop: Epoch Hunter — Old Hillsbrad Normal)
    Wrist     = 28194,  -- Primal Surge Bracers              (Drop: Aeonus — Black Morass Normal)
    Hands     = 27806,  -- Fathomheart Gauntlets             (Drop: Steamrigger — Steamvault Normal)
    Waist     = 31464,  -- Naaru Belt of Precision           (Quest: How to Break Into the Arcatraz)
    Legs      = 30257,  -- Shattrath Leggings                (Quest: Special Delivery to Shattrath)
    Feet      = 27411,  -- Slippers of Serenity              (Drop: Maladaar — Auchenai Crypts Normal)
    Ring1     = 28259,  -- Cosmic Lifeband                   (Drop: Pathaleon — Mechanar Normal)
    Ring2     = 30860,  -- Kaylaan's Signet                  (Quest: Deathblow to the Legion — Netherstorm)
    Trinket1  = 25634,  -- Oshu'gun Relic                    (Quest: Gava'xi — Nagrand)
    Trinket2  = 24390,  -- Auslese's Light Channeler         (Drop: Broggok — Blood Furnace Normal)
    MainHand  = 27868,  -- Runesong Dagger                   (Drop: O'mrogg — Shattered Halls Normal)
    OffHand   = 28412,  -- Lamp of Peaceful Radiance         (Drop: Skyriss — Arcatraz Normal)
    Relic     = 28248,  -- Totem of the Void                 (Drop: Mechanar Normal)
}

for _, spec in ipairs({"Elemental", "Restoration"}) do
    WTBT_Templates["Shaman"][spec].leveling = LevelingTemplate(MAIL_CASTER_LVL)
end

-- ---------------------------------------------------------------------------
-- ENHANCEMENT SHAMAN
-- ---------------------------------------------------------------------------
WTBT_Templates["Shaman"]["Enhancement"].leveling = LevelingTemplate({
    Head      = 31106,  -- Stalker's Helmet of Second Sight  (Quest: Teron Gorefiend — SMV)
    Neck      = 31695,  -- Natasha's Choker                  (Quest: The Hound-Master — Blade's Edge)
    Shoulder  = 27434,  -- Mantle of Perenolde               (Drop: Epoch Hunter — Old Hillsbrad Normal)
    Back      = 27892,  -- Cloak of the Inciter              (Drop: Blackheart — Shadow Lab Normal)
    Chest     = 30933,  -- Hauberk of Karabor                (Quest: Varedis Must Be Stopped — SMV)
    Wrist     = 28171,  -- Spymistress's Wristguards         (Quest: The Soul Devices — Auchindoun)
    Hands     = 30951,  -- Ar'tor's Mainstay                 (Quest: Cipher of Damnation — SMV)
    Waist     = 27985,  -- Deathforge Girdle                 (Drop: Ikiss — Sethekk Halls Normal)
    Legs      = 31544,  -- Clefthoof Hide Leggings           (Quest: Showdown — Blade's Edge)
    Feet      = 27915,  -- Sky-Hunter Swift Boots            (Drop: Syth — Sethekk Halls Normal)
    Ring1     = 31077,  -- Slayer's Mark of the Redemption   (Quest: Dissension Amongst the Ranks — SMV)
    Ring2     = 30973,  -- Band of Anguish                   (Quest: News of Victory — SMV)
    Trinket1  = 28288,  -- Abacus of Violent Odds            (Drop: Pathaleon — Mechanar Normal)
    Trinket2  = 28041,  -- Bladefist's Breadth               (Quest: Overlord — Hellfire Peninsula)
    MainHand  = 28315,  -- Stormreaver Warblades             (Drop: Freywinn — Botanica Normal)
    OffHand   = 28263,  -- Stellaris                         (Drop: Sepethrea — Mechanar Normal)
    Relic     = 25645,  -- Totem of the Plains               (Quest: Ultimate Bloodsport — Nagrand)
})

-- ---------------------------------------------------------------------------
-- PLATE DPS (Ret Paladin, Arms/Fury Warrior)
-- ---------------------------------------------------------------------------
local PLATE_DPS_LVL = {
    Head      = 31105,  -- Overlord's Helmet of Second Sight (Quest: Teron Gorefiend — SMV)
    Neck      = 25562,  -- Earthen Mark of Razing            (Quest: Gurok the Usurper — Nagrand)
    Shoulder  = 27771,  -- Doomplate Shoulderguards          (Drop: Hungarfen — Underbog Normal)
    Back      = 27892,  -- Cloak of the Inciter              (Drop: Blackheart — Shadow Lab Normal)
    Chest     = 30258,  -- Chestplate of A'dal               (Quest: Special Delivery to Shattrath)
    Wrist     = 27918,  -- Bands of Syth                     (Drop: Syth — Sethekk Halls Normal)
    Hands     = 30341,  -- Flesh Handler's Gauntlets         (Quest: The Flesh Lies — SMV)
    Waist     = 31464,  -- Naaru Belt of Precision           (Quest: How to Break Into the Arcatraz)
    Legs      = 30257,  -- Shattrath Leggings                (Quest: Special Delivery to Shattrath)
    Feet      = 28176,  -- Sha'tari Wrought Greaves          (Quest: Into the Heart of the Labyrinth)
    Ring1     = 30365,  -- Overseer's Signet                 (Quest: SMV quest chain)
    Ring2     = 30973,  -- Band of Anguish                   (Quest: News of Victory — SMV)
    Trinket1  = 28288,  -- Abacus of Violent Odds            (Drop: Pathaleon — Mechanar Normal)
    Trinket2  = 28041,  -- Bladefist's Breadth               (Quest: Overlord — Hellfire Peninsula)
    MainHand  = 30009,  -- The Burning Crusader              (Quest: Nexus-King Salhadaar — Netherstorm)
}

WTBT_Templates["Paladin"]["Retribution"].leveling = LevelingTemplate(PLATE_DPS_LVL, {
    Relic = 27484,      -- Libram of Avengement              (Drop: The Maker — Blood Furnace Normal)
})
for _, spec in ipairs({"Arms", "Fury"}) do
    WTBT_Templates["Warrior"][spec].leveling = LevelingTemplate(PLATE_DPS_LVL, {
        Relic = 30279,  -- Mama's Insurance                  (Quest: Declawing Doomclaw — Netherstorm)
    })
end

-- ---------------------------------------------------------------------------
-- PLATE TANK (Prot Warrior, Prot Paladin)
-- ---------------------------------------------------------------------------
local PLATE_TANK_LVL = {
    Head      = 28180,  -- Myrmidon's Headdress             (Quest: The Warlord's Hideout — Steamvault)
    Neck      = 29336,  -- Mark of the Ravenguard            (Quest: Brother Against Brother — Sethekk Halls)
    Shoulder  = 29316,  -- Warchief's Mantle                 (Quest: Return to Andormu — Old Hillsbrad)
    Back      = 27804,  -- Devilshark Cape                   (Drop: Kalithresh — Steamvault Normal)
    Chest     = 25819,  -- Breastplate of the Warbringer     (Quest: Forge Camp: Annihilated — HFP)
    Wrist     = 28167,  -- Sha'tari Wrought Armguards        (Quest: The Soul Devices — Shadow Lab)
    Hands     = 23517,  -- Felsteel Gloves                   (Blacksmithing craft)
    Waist     = 31460,  -- Sha'tari Vindicator's Waistguard  (Quest: How to Break Into the Arcatraz)
    Legs      = 30299,  -- Starcaller's Plated Legguards     (Quest: Dimensius — Netherstorm)
    Feet      = 29325,  -- Flesh Beast's Metal Greaves       (Quest: Safety Is Job One — Mana-Tombs)
    Ring1     = 30006,  -- Wind Trader's Band                (Quest: Dealing with the Overmaster — Netherstorm)
    Ring2     = 29323,  -- Andormu's Tear                    (Quest: Hero of the Brood — Black Morass)
    Trinket1  = 28042,  -- Regal Protectorate                (Quest: Overlord — Hellfire Peninsula)
    Trinket2  = 30300,  -- Dabiri's Enigma                   (Quest: Dimensius — Netherstorm)
    MainHand  = 28189,  -- Latro's Shifting Sword            (Drop: Aeonus — Black Morass Normal)
    OffHand   = 27887,  -- Platinum Shield of the Valorous   (Drop: Hellmaw — Shadow Lab Normal)
}

WTBT_Templates["Warrior"]["Protection"].leveling = LevelingTemplate(PLATE_TANK_LVL, {
    Relic = 30279,      -- Mama's Insurance                  (Quest: Declawing Doomclaw — Netherstorm)
})
WTBT_Templates["Paladin"]["Protection"].leveling = LevelingTemplate(PLATE_TANK_LVL, {
    Relic = 27917,      -- Libram of the Eternal Rest        (Drop: Syth — Sethekk Halls Normal)
})
