-- ============================================================
-- Wick's TBC BIS Tracker — New Spells Learned 60-70
-- Verified from Wowhead TBC Classic spell database (2.5.5)
-- Only NEW abilities (not rank upgrades of existing spells)
-- ============================================================

WTBT_Spells = WTBT_Spells or {}

-- Each entry: { level, name, description }

-- ============================================================
-- WARRIOR
-- ============================================================
WTBT_Spells["Warrior"] = {
    { level = 62, name = "Victory Rush",     description = "Instantly attack the target, dealing weapon damage. Only usable after killing an enemy that yields honor or XP." },
}

-- ============================================================
-- PALADIN
-- ============================================================
WTBT_Spells["Paladin"] = {
    { level = 60, name = "Greater Blessing of Sanctuary", description = "Grants a blessing that reduces damage taken and deals Holy damage to attackers. Lasts 15 min. Affects all party/raid members." },
    { level = 60, name = "Greater Blessing of Light",     description = "Increases healing from Holy Light and Flash of Light on the target. Lasts 15 min. Affects all party/raid members." },
    { level = 62, name = "Crusader Aura",                 description = "Increases mounted speed by 20% for all party/raid members within 40 yards." },
    { level = 64, name = "Seal of Blood",                 description = "All melee attacks deal additional Holy damage but cause self-damage. Horde only.", race = "Blood Elf" },
    { level = 64, name = "Seal of Vengeance",             description = "Melee attacks apply a stacking Holy damage DoT on the target. Alliance only.", race = "Alliance" },
    { level = 70, name = "Avenging Wrath",                description = "Increases all damage and healing by 20% for 20 sec." },
    { level = 70, name = "Seal of the Martyr",            description = "All melee attacks deal additional Holy damage but cause self-damage. Alliance version.", race = "Alliance" },
    { level = 70, name = "Seal of Corruption",            description = "Melee attacks apply a stacking Holy damage DoT on the target. Horde version.", race = "Blood Elf" },
}

-- ============================================================
-- HUNTER
-- ============================================================
WTBT_Spells["Hunter"] = {
    { level = 62, name = "Steady Shot",       description = "A steady shot that deals weapon damage plus bonus. Not affected by attack speed." },
    { level = 64, name = "Aspect of the Viper", description = "The hunter gains mana regeneration equal to a percentage of intellect and level, but deals less damage." },
    { level = 66, name = "Kill Command",      description = "Give the command to kill, increasing your pet's damage done by a percentage for a short time." },
    { level = 68, name = "Snake Trap",        description = "Place a trap that releases several snakes when triggered, applying Crippling Poison and Mind-Numbing Poison." },
    { level = 70, name = "Misdirection",      description = "The next 3 attacks will be redirected to the targeted party or raid member as threat." },
}

-- ============================================================
-- ROGUE
-- ============================================================
WTBT_Spells["Rogue"] = {
    { level = 62, name = "Envenom",           description = "Finishing move that consumes Deadly Poison on the target to deal instant Nature damage." },
    { level = 64, name = "Deadly Throw",      description = "Finishing move that throws a weapon at the target, dealing damage and slowing movement speed." },
    { level = 66, name = "Cloak of Shadows",  description = "Removes all existing harmful spell effects and provides a brief immunity to spells." },
    { level = 68, name = "Anesthetic Poison", description = "Coats a weapon with a poison that has a chance to dispel an enrage effect on the target." },
    { level = 70, name = "Shiv",              description = "A quick strike that applies the poison from your off-hand weapon. Awards 1 combo point." },
}

-- ============================================================
-- PRIEST
-- ============================================================
WTBT_Spells["Priest"] = {
    { level = 60, name = "Prayer of Spirit",          description = "Power Word: Fortitude for Spirit — buffs the entire party/raid with Spirit." },
    { level = 62, name = "Shadow Word: Death",        description = "Deals Shadow damage to the target. If the target is not killed, the caster takes damage equal to the damage dealt." },
    { level = 64, name = "Binding Heal",              description = "Heals the target and the caster simultaneously." },
    { level = 66, name = "Shadowfiend",               description = "Summons a Shadowfiend to attack the target, restoring mana to the caster with each attack." },
    { level = 68, name = "Prayer of Mending",         description = "Places a spell on the target that heals them when they take damage, then bounces to another party member." },
    { level = 70, name = "Mass Dispel",               description = "Dispels magic in a targeted area, removing 1 beneficial spell from enemies and 1 harmful spell from allies. Can remove Divine Shield and Ice Block." },
}

-- ============================================================
-- SHAMAN
-- ============================================================
WTBT_Spells["Shaman"] = {
    { level = 62, name = "Water Shield",              description = "The caster is surrounded by globes of water. When a globe is consumed (by taking damage), mana is restored." },
    { level = 64, name = "Wrath of Air Totem",        description = "Summons a Wrath of Air Totem that increases spell damage and healing for all party members within range." },
    { level = 66, name = "Earth Elemental Totem",     description = "Summons an Earth Elemental to protect the caster and nearby party members for 2 min." },
    { level = 68, name = "Fire Elemental Totem",      description = "Summons a Fire Elemental to fight for the caster for 2 min." },
    { level = 70, name = "Bloodlust",                 description = "Increases melee, ranged, and spell haste by 30% for all party members for 40 sec. Horde only.", race = "Horde" },
    { level = 70, name = "Heroism",                   description = "Increases melee, ranged, and spell haste by 30% for all party members for 40 sec. Alliance only.", race = "Alliance" },
}

-- ============================================================
-- MAGE
-- ============================================================
WTBT_Spells["Mage"] = {
    { level = 60, name = "Teleport: Shattrath",   description = "Teleport to Shattrath City." },
    { level = 62, name = "Molten Armor",           description = "Increases your chance to critically hit with spells. Causes Fire damage to attackers when hit." },
    { level = 64, name = "Arcane Blast",           description = "Blasts the target for Arcane damage. Each successive cast increases damage and mana cost." },
    { level = 65, name = "Portal: Shattrath",      description = "Create a portal to Shattrath City for party members." },
    { level = 66, name = "Ice Lance",              description = "Deals Frost damage. Damage is tripled against Frozen targets." },
    { level = 68, name = "Invisibility",           description = "Fades the caster to invisibility over 3 sec, removing all threat. Lasts 20 sec." },
    { level = 68, name = "Conjure Mana Emerald",   description = "Conjures a Mana Emerald that restores mana when used." },
    { level = 70, name = "Ritual of Refreshment",  description = "Creates a refreshment table for raid members to conjure food and water." },
    { level = 70, name = "Spellsteal",             description = "Steals a beneficial magic effect from the target, transferring it to the caster." },
}

-- ============================================================
-- WARLOCK
-- ============================================================
WTBT_Spells["Warlock"] = {
    { level = 62, name = "Fel Armor",              description = "Surrounds the caster with Fel energy, increasing spell damage and converting a percentage of damage taken to healing." },
    { level = 64, name = "Incinerate",             description = "Deals Fire damage to the target. If the target is afflicted by Immolate, bonus damage is dealt." },
    { level = 66, name = "Soulshatter",            description = "Reduces threat on all enemies within 50 yards by 50%." },
    { level = 68, name = "Ritual of Souls",        description = "Creates a Soulwell that raid members can use to acquire Healthstones." },
    { level = 70, name = "Seed of Corruption",     description = "Embeds a demon seed in the target that detonates when the target takes enough damage, dealing AoE Shadow damage." },
}

-- ============================================================
-- DRUID
-- ============================================================
WTBT_Spells["Druid"] = {
    { level = 62, name = "Maim",                   description = "Finishing move that causes damage and incapacitates the target. Lasts longer per combo point." },
    { level = 64, name = "Lifebloom",              description = "Heals the target over 7 sec. When it expires or is dispelled, the target is healed for a larger amount and the caster regains mana. Stacks up to 3 times." },
    { level = 66, name = "Lacerate",               description = "Lacerates the target, dealing bleed damage and additional damage over time. Stacks up to 5 times." },
    { level = 68, name = "Flight Form",            description = "Shapeshift into flight form, increasing movement speed. Cannot be used in combat." },
    { level = 70, name = "Swift Flight Form",      description = "Shapeshift into swift flight form, increasing movement speed to 280%. Requires Epic Flying skill." },
    { level = 70, name = "Cyclone",                description = "Tosses the enemy target into the air, preventing all action but making them invulnerable for 6 sec." },
}
