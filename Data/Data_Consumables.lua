-- ============================================================
-- Wick's TBC BIS Tracker — Endgame Consumables Data
-- Best consumables per class/spec for TBC Classic (2.5.5)
-- ============================================================

WTBT_Consumables = WTBT_Consumables or {}

-- ------------------------------------------------------------
-- Consumable category definitions (display order)
-- ------------------------------------------------------------
-- Each entry: { name, itemId, stat, type }
--   type: "flask" | "battle" | "guardian" | "food" | "weapon" | "potion"

-- ============================================================
-- WARRIOR
-- ============================================================
WTBT_Consumables["Warrior"] = {
    ["Arms"] = {
        { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Roasted Clefthoof",            itemId = 27658, stat = "+20 Strength, +20 Spirit" },
        { category = "Food",            name = "Grilled Mudfish",              itemId = 27664, stat = "+20 Agility, +20 Spirit" },
        { category = "Weapon",          name = "Adamantite Sharpening Stone",  itemId = 23529, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Weapon",          name = "Adamantite Weightstone",       itemId = 28421, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
        { category = "Potion",          name = "Insane Strength Potion",       itemId = 22828, stat = "+120 Strength for 15s" },
    },
    ["Fury"] = {
        { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Roasted Clefthoof",            itemId = 27658, stat = "+20 Strength, +20 Spirit" },
        { category = "Food",            name = "Grilled Mudfish",              itemId = 27664, stat = "+20 Agility, +20 Spirit" },
        { category = "Weapon",          name = "Adamantite Sharpening Stone",  itemId = 23529, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Weapon",          name = "Adamantite Weightstone",       itemId = 28421, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
        { category = "Potion",          name = "Insane Strength Potion",       itemId = 22828, stat = "+120 Strength for 15s" },
    },
    ["Protection"] = {
        { category = "Flask",           name = "Flask of Fortification",       itemId = 22851, stat = "+500 HP, +10 Defense Rating" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Major Defense",      itemId = 22834, stat = "+550 Armor" },
        { category = "Guardian Elixir", name = "Elixir of Major Fortitude",    itemId = 32062, stat = "+250 HP, +10 HP5" },
        { category = "Food",            name = "Fisherman's Feast",            itemId = 33052, stat = "+30 Stamina, +20 Spirit" },
        { category = "Food",            name = "Spicy Crawdad",                itemId = 27667, stat = "+30 Stamina, +20 Spirit" },
        { category = "Weapon",          name = "Adamantite Sharpening Stone",  itemId = 23529, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Weapon",          name = "Adamantite Weightstone",       itemId = 28421, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Potion",          name = "Ironshield Potion",            itemId = 22849, stat = "+2500 Armor for 2 min" },
    },
}

-- ============================================================
-- PALADIN
-- ============================================================
WTBT_Consumables["Paladin"] = {
    ["Holy"] = {
        { category = "Flask",           name = "Flask of Mighty Restoration",   itemId = 22853, stat = "+25 MP5" },
        { category = "Battle Elixir",   name = "Elixir of Healing Power",      itemId = 22825, stat = "+50 Healing" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Golden Fish Sticks",           itemId = 27666, stat = "+44 Healing, +20 Spirit" },
        { category = "Weapon",          name = "Superior Mana Oil",            itemId = 22521, stat = "+14 MP5" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Protection"] = {
        { category = "Flask",           name = "Flask of Fortification",       itemId = 22851, stat = "+500 HP, +10 Defense Rating" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Major Defense",      itemId = 22834, stat = "+550 Armor" },
        { category = "Guardian Elixir", name = "Elixir of Major Fortitude",    itemId = 32062, stat = "+250 HP, +10 HP5" },
        { category = "Food",            name = "Fisherman's Feast",            itemId = 33052, stat = "+30 Stamina, +20 Spirit" },
        { category = "Food",            name = "Spicy Crawdad",                itemId = 27667, stat = "+30 Stamina, +20 Spirit" },
        { category = "Potion",          name = "Ironshield Potion",            itemId = 22849, stat = "+2500 Armor for 2 min" },
    },
    ["Retribution"] = {
        { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
        { category = "Battle Elixir",   name = "Elixir of Major Strength",     itemId = 22824, stat = "+35 Strength" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Roasted Clefthoof",            itemId = 27658, stat = "+20 Strength, +20 Spirit" },
        { category = "Weapon",          name = "Adamantite Weightstone",       itemId = 28421, stat = "+12 Damage, +14 Crit Rating" },
        { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
    },
}

-- ============================================================
-- HUNTER
-- ============================================================
local HUNTER_CONSUMABLES = {
    { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
    { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
    { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
    { category = "Food",            name = "Warp Burger",                  itemId = 27659, stat = "+20 Agility, +20 Spirit" },
    { category = "Food",            name = "Grilled Mudfish",              itemId = 27664, stat = "+20 Agility, +20 Spirit" },
    { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
    { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
}
WTBT_Consumables["Hunter"] = {
    ["Beast Mastery"] = HUNTER_CONSUMABLES,
    ["Marksmanship"]  = HUNTER_CONSUMABLES,
    ["Survival"]      = HUNTER_CONSUMABLES,
}

-- ============================================================
-- ROGUE
-- ============================================================
-- Rogues cannot use weapon stones/oils — poisons occupy the slot
local ROGUE_CONSUMABLES = {
    { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
    { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
    { category = "Guardian Elixir", name = "Elixir of Major Fortitude",    itemId = 32062, stat = "+250 HP, +10 HP5" },
    { category = "Food",            name = "Warp Burger",                  itemId = 27659, stat = "+20 Agility, +20 Spirit" },
    { category = "Food",            name = "Grilled Mudfish",              itemId = 27664, stat = "+20 Agility, +20 Spirit" },
    { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
}
WTBT_Consumables["Rogue"] = {
    ["Combat"]        = ROGUE_CONSUMABLES,
    ["Assassination"] = ROGUE_CONSUMABLES,
    ["Subtlety"]      = ROGUE_CONSUMABLES,
}

-- ============================================================
-- PRIEST
-- ============================================================
local PRIEST_HOLY_CONSUMABLES = {
    { category = "Flask",           name = "Flask of Mighty Restoration",   itemId = 22853, stat = "+25 MP5" },
    { category = "Battle Elixir",   name = "Elixir of Healing Power",      itemId = 22825, stat = "+50 Healing" },
    { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
    { category = "Food",            name = "Golden Fish Sticks",           itemId = 27666, stat = "+44 Healing, +20 Spirit" },
    { category = "Weapon",          name = "Superior Mana Oil",            itemId = 22521, stat = "+14 MP5" },
    { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
}
WTBT_Consumables["Priest"] = {
    ["Holy"]       = PRIEST_HOLY_CONSUMABLES,
    ["Discipline"] = PRIEST_HOLY_CONSUMABLES,
    ["Shadow"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Shadow Power", itemId = 22835, stat = "+55 Shadow Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
    },
}

-- ============================================================
-- SHAMAN
-- ============================================================
-- Enhancement cannot use weapon buffs — imbues occupy the slot
WTBT_Consumables["Shaman"] = {
    ["Restoration"] = {
        { category = "Flask",           name = "Flask of Mighty Restoration",   itemId = 22853, stat = "+25 MP5" },
        { category = "Battle Elixir",   name = "Elixir of Healing Power",      itemId = 22825, stat = "+50 Healing" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Golden Fish Sticks",           itemId = 27666, stat = "+44 Healing, +20 Spirit" },
        { category = "Weapon",          name = "Superior Mana Oil",            itemId = 22521, stat = "+14 MP5" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Enhancement"] = {
        { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Roasted Clefthoof",            itemId = 27658, stat = "+20 Strength, +20 Spirit" },
        { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s" },
    },
    ["Elemental"] = {
        { category = "Flask",           name = "Flask of Blinding Light",      itemId = 22861, stat = "+80 Arcane/Holy/Nature Damage" },
        { category = "Battle Elixir",   name = "Adept's Elixir",              itemId = 28103, stat = "+24 Spell Damage, +24 Spell Crit" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
    },
}

-- ============================================================
-- MAGE
-- ============================================================
WTBT_Consumables["Mage"] = {
    ["Arcane"] = {
        { category = "Flask",           name = "Flask of Blinding Light",      itemId = 22861, stat = "+80 Arcane/Holy/Nature Damage" },
        { category = "Battle Elixir",   name = "Adept's Elixir",              itemId = 28103, stat = "+24 Spell Damage, +24 Spell Crit" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Weapon",          name = "Brilliant Wizard Oil",         itemId = 20749, stat = "+36 Spell Damage, +14 Spell Crit" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
    },
    ["Fire"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Firepower",   itemId = 22833, stat = "+55 Fire Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Weapon",          name = "Brilliant Wizard Oil",         itemId = 20749, stat = "+36 Spell Damage, +14 Spell Crit" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Frost"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Frost Power",  itemId = 22827, stat = "+55 Frost Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
}

-- ============================================================
-- WARLOCK
-- ============================================================
WTBT_Consumables["Warlock"] = {
    ["Affliction"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Shadow Power", itemId = 22835, stat = "+55 Shadow Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Major Mageblood",    itemId = 22840, stat = "+16 MP5" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Demonology"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Shadow Power", itemId = 22835, stat = "+55 Shadow Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Major Mageblood",    itemId = 22840, stat = "+16 MP5" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Destruction"] = {
        { category = "Flask",           name = "Flask of Pure Death",           itemId = 22866, stat = "+80 Shadow/Fire/Frost Damage" },
        { category = "Battle Elixir",   name = "Elixir of Major Firepower",   itemId = 22833, stat = "+55 Fire Spell Damage" },
        { category = "Guardian Elixir", name = "Elixir of Major Mageblood",    itemId = 22840, stat = "+16 MP5" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
}

-- ============================================================
-- DRUID
-- ============================================================
-- Feral Druids cannot use weapon buffs while shapeshifted
WTBT_Consumables["Druid"] = {
    ["Restoration"] = {
        { category = "Flask",           name = "Flask of Mighty Restoration",   itemId = 22853, stat = "+25 MP5" },
        { category = "Battle Elixir",   name = "Elixir of Healing Power",      itemId = 22825, stat = "+50 Healing" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Golden Fish Sticks",           itemId = 27666, stat = "+44 Healing, +20 Spirit" },
        { category = "Weapon",          name = "Superior Mana Oil",            itemId = 22521, stat = "+14 MP5" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
    },
    ["Balance"] = {
        { category = "Flask",           name = "Flask of Blinding Light",      itemId = 22861, stat = "+80 Arcane/Holy/Nature Damage" },
        { category = "Battle Elixir",   name = "Adept's Elixir",              itemId = 28103, stat = "+24 Spell Damage, +24 Spell Crit" },
        { category = "Guardian Elixir", name = "Elixir of Draenic Wisdom",     itemId = 32067, stat = "+30 Intellect, +30 Spirit" },
        { category = "Food",            name = "Blackened Basilisk",           itemId = 27657, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Food",            name = "Crunchy Serpent",              itemId = 27660, stat = "+23 Spell Damage, +20 Spirit" },
        { category = "Weapon",          name = "Superior Wizard Oil",          itemId = 22522, stat = "+42 Spell Damage" },
        { category = "Potion",          name = "Super Mana Potion",            itemId = 22832, stat = "Restores 1800-3000 Mana" },
        { category = "Potion",          name = "Destruction Potion",           itemId = 22839, stat = "+120 Spell Damage, +2% Crit for 15s" },
    },
    ["Feral"] = {
        { category = "Flask",           name = "Flask of Relentless Assault",   itemId = 22854, stat = "+120 Attack Power" },
        { category = "Flask",           name = "Flask of Fortification",       itemId = 22851, stat = "+500 HP, +10 Defense (Bear)" },
        { category = "Battle Elixir",   name = "Elixir of Major Agility",      itemId = 22831, stat = "+35 Agility, +20 Crit Rating" },
        { category = "Guardian Elixir", name = "Elixir of Major Fortitude",    itemId = 32062, stat = "+250 HP, +10 HP5" },
        { category = "Guardian Elixir", name = "Elixir of Major Defense",      itemId = 22834, stat = "+550 Armor (Bear)" },
        { category = "Food",            name = "Warp Burger",                  itemId = 27659, stat = "+20 Agility, +20 Spirit (Cat)" },
        { category = "Food",            name = "Fisherman's Feast",            itemId = 33052, stat = "+30 Stamina, +20 Spirit (Bear)" },
        { category = "Potion",          name = "Haste Potion",                 itemId = 22838, stat = "+400 Haste Rating for 15s (Cat)" },
        { category = "Potion",          name = "Ironshield Potion",            itemId = 22849, stat = "+2500 Armor for 2 min (Bear)" },
    },
}

-- ============================================================
-- CATEGORY DISPLAY ORDER & COLORS
-- ============================================================
WTBT_ConsumableCategories = {
    { key = "Flask",           color = { 0.78, 0.30, 0.78 } },  -- purple
    { key = "Battle Elixir",   color = { 0.90, 0.30, 0.30 } },  -- red
    { key = "Guardian Elixir", color = { 0.30, 0.60, 0.90 } },  -- blue
    { key = "Food",            color = { 0.85, 0.65, 0.30 } },  -- orange
    { key = "Weapon",          color = { 0.60, 0.60, 0.60 } },  -- gray
    { key = "Potion",          color = { 0.30, 0.85, 0.40 } },  -- green
}

-- ============================================================
-- NOTE on Flask vs Elixirs:
-- Flasks persist through death — preferred for progression.
-- Elixir pairs (1 Battle + 1 Guardian) offer more targeted stats
-- for farm content but are lost on death.
-- Flask is always listed first as the primary recommendation.
-- ============================================================
