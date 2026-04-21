-- Wick's TBC BIS Tracker
-- Core.lua - Addon initialization and state

WTBT = WTBT or {}
WTBT_UI = WTBT_UI or {}

-- Current state
WTBT.state = {
    class      = "Priest",
    spec       = "Holy",
    phase      = 1,
    tab        = "bis",  -- "bis", "leveling", "custom"
    customList = nil,     -- active custom list name
    customSlotPending = nil, -- slot waiting for item input
}

-- Slot display order
WTBT.SLOTS = {
    { key = "Head",      label = "Head"      },
    { key = "Neck",      label = "Neck"      },
    { key = "Shoulder",  label = "Shoulder"  },
    { key = "Back",      label = "Back"      },
    { key = "Chest",     label = "Chest"     },
    { key = "Wrist",     label = "Wrist"     },
    { key = "Hands",     label = "Hands"     },
    { key = "Waist",     label = "Waist"     },
    { key = "Legs",      label = "Legs"      },
    { key = "Feet",      label = "Feet"      },
    { key = "Ring1",     label = "Ring 1"    },
    { key = "Ring2",     label = "Ring 2"    },
    { key = "Trinket1",  label = "Trinket 1" },
    { key = "Trinket2",  label = "Trinket 2" },
    { key = "MainHand",  label = "Main Hand" },
    { key = "OffHand",   label = "Off Hand"  },
    { key = "Relic",     label = "Ranged"    },
}

-- Source type colors (r, g, b)
WTBT.SOURCE_COLORS = {
    drop  = { 0.87, 0.47, 0.47 },
    craft = { 0.47, 0.67, 0.87 },
    badge = { 0.87, 0.75, 0.47 },
    rep   = { 0.47, 0.87, 0.47 },
    quest = { 0.87, 0.87, 0.47 },
    pvp   = { 0.70, 0.47, 0.87 },
    token  = { 0.47, 0.78, 0.73 },
    custom = { 0.65, 0.65, 0.65 },
}

-- Classes and their specs
WTBT.CLASSES = {
    { name = "Priest",  specs = { "Holy", "Discipline", "Shadow" },        color = {1.00, 1.00, 1.00} },
    { name = "Paladin", specs = { "Holy", "Protection", "Retribution" },   color = {0.96, 0.55, 0.73} },
    { name = "Druid",   specs = { "Restoration", "Balance", "Feral" },     color = {1.00, 0.49, 0.04} },
    { name = "Shaman",  specs = { "Restoration", "Enhancement", "Elemental" }, color = {0.00, 0.44, 0.87} },
    { name = "Mage",    specs = { "Fire", "Frost", "Arcane" },              color = {0.25, 0.78, 0.92} },
    { name = "Warlock", specs = { "Destruction", "Affliction", "Demonology" }, color = {0.53, 0.53, 0.93} },
    { name = "Hunter",  specs = { "Beast Mastery", "Marksmanship", "Survival" }, color = {0.67, 0.83, 0.45} },
    { name = "Rogue",   specs = { "Combat", "Assassination", "Subtlety" },  color = {1.00, 0.96, 0.41} },
    { name = "Warrior", specs = { "Arms", "Fury", "Protection" },           color = {0.78, 0.61, 0.43} },
}

-- Spec aliases (some specs share BIS guides)
WTBT.SPEC_ALIASES = {
    ["Priest"] = { ["Discipline"] = "Holy" },
    ["Rogue"] = { ["Subtlety"] = "Combat" },
}

-- Inventory slot mapping for equipped item checks
WTBT.INV_SLOTS = {
    Head = 1, Neck = 2, Shoulder = 3, Back = 15, Chest = 5,
    Wrist = 9, Hands = 10, Waist = 6, Legs = 7, Feet = 8,
    Ring1 = 11, Ring2 = 12, Trinket1 = 13, Trinket2 = 14,
    MainHand = 16, OffHand = 17, Relic = 18,
}

-- Check if an item is currently equipped by the player
function WTBT:IsItemEquipped(itemId)
    if not itemId then return false end
    for _, invSlot in pairs(self.INV_SLOTS) do
        if GetInventoryItemID("player", invSlot) == itemId then
            return true
        end
    end
    return false
end

-- Check if the panel is showing the player's own class
function WTBT:IsViewingOwnClass()
    local _, englishClass = UnitClass("player")
    local classLookup = {
        PRIEST = "Priest", PALADIN = "Paladin", DRUID = "Druid",
        SHAMAN = "Shaman", MAGE = "Mage", WARLOCK = "Warlock",
        HUNTER = "Hunter", ROGUE = "Rogue", WARRIOR = "Warrior",
    }
    return classLookup[englishClass] == self.state.class
end

-- Helper: get BIS list for current state
function WTBT:GetCurrentBIS()
    local data = WTBT_Data
    if not data then return nil end
    local classData = data[self.state.class]
    if not classData then return nil end

    -- Check for spec alias
    local spec = self.state.spec
    local aliases = WTBT.SPEC_ALIASES[self.state.class]
    if aliases and aliases[spec] then
        spec = aliases[spec]
    end

    local specData = classData[spec]
    if not specData then return nil end
    return specData[self.state.phase]
end

-- Settings (persisted via SavedVariables)
WTBT.settings = {
    tooltipBIS = true, -- show "BIS" tag in item tooltips
    hideWorldBoss = false, -- hide World Boss drops
    hidePvP       = false, -- hide PvP sourced items
}

-- Build a fast lookup: itemId → { slot, rank, phase } for the player's class across all phases
-- Called once on load and when class/spec might change
function WTBT:BuildPlayerBISLookup()
    self.playerBISLookup = {} -- itemId → { slot, rank, phaseName }

    local _, englishClass = UnitClass("player")
    local classLookup = {
        PRIEST = "Priest", PALADIN = "Paladin", DRUID = "Druid",
        SHAMAN = "Shaman", MAGE = "Mage", WARLOCK = "Warlock",
        HUNTER = "Hunter", ROGUE = "Rogue", WARRIOR = "Warrior",
    }
    local className = classLookup[englishClass]
    if not className then return end

    local data = WTBT_Data
    if not data or not data[className] then return end

    -- Try all specs for this class and build lookups
    local classInfo = nil
    for _, c in ipairs(self.CLASSES) do
        if c.name == className then classInfo = c; break end
    end
    if not classInfo then return end

    for _, specName in ipairs(classInfo.specs) do
        -- Resolve alias
        local resolvedSpec = specName
        local aliases = self.SPEC_ALIASES[className]
        if aliases and aliases[specName] then
            resolvedSpec = aliases[specName]
        end

        local specData = data[className][resolvedSpec]
        if specData then
            for phase = 1, 5 do
                local phaseData = specData[phase]
                if phaseData then
                    for slotKey, items in pairs(phaseData) do
                        if type(items) == "table" then
                            for rank, item in ipairs(items) do
                                if item.itemId and not self.playerBISLookup[item.itemId] then
                                    self.playerBISLookup[item.itemId] = {
                                        slot = slotKey,
                                        rank = rank,
                                        phase = phase,
                                        spec = specName,
                                    }
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Check if an item is BIS for the player (returns info table or nil)
function WTBT:GetBISInfo(itemId)
    if not itemId or not self.playerBISLookup then return nil end
    return self.playerBISLookup[itemId]
end

-- ============================================================
-- TOOLTIP HOOK — show BIS info on any item tooltip in the game
-- ============================================================
local function OnTooltipSetItem(tooltip)
    if not WTBT.settings.tooltipBIS then return end

    local _, itemLink = tooltip:GetItem()
    if not itemLink then return end

    local itemId = tonumber(itemLink:match("item:(%d+)"))
    if not itemId then return end

    local bisInfo = WTBT:GetBISInfo(itemId)
    if not bisInfo then return end

    local rankText
    if bisInfo.rank == 1 then
        rankText = "|cff4FC778BIS|r"
    else
        rankText = "|cff4FC778Alt #" .. bisInfo.rank .. "|r"
    end

    local phaseText = "|cff6B598AP" .. bisInfo.phase .. "|r"
    local specText = "|cffD5C7A1" .. bisInfo.spec .. "|r"

    tooltip:AddLine(" ")
    tooltip:AddLine("|cff4FC778[Wick's BIS]|r " .. rankText .. " for " .. specText .. " " .. phaseText)
    tooltip:Show()
end

-- Event frame
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
eventFrame:RegisterEvent("PLAYER_LOGOUT")
local pendingRefresh = false

eventFrame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "WickidsTBCBISTracker" then
        WTBT:Init()
    elseif event == "PLAYER_LOGOUT" then
        -- Persist last-viewed class/spec/phase/tab/list
        WTBT.settings.lastClass      = WTBT.state.class
        WTBT.settings.lastSpec       = WTBT.state.spec
        WTBT.settings.lastPhase      = WTBT.state.phase
        WTBT.settings.lastTab        = WTBT.state.tab
        WTBT.settings.lastCustomList = WTBT.state.customList
        WTBTCustomLists = WTBT.customLists
        WTBTSavedSettings = WTBT.settings
        WTBTSoftResData = WTBT.softResData
    elseif event == "GET_ITEM_INFO_RECEIVED" then
        -- Item data just loaded from server; refresh UI so icons/tooltips update
        if not pendingRefresh and WTBT_UI.panel and WTBT_UI.panel:IsShown() then
            pendingRefresh = true
            if C_Timer and C_Timer.After then
                C_Timer.After(0.2, function()
                    pendingRefresh = false
                    WTBT_UI:Refresh()
                end)
            else
                pendingRefresh = false
                WTBT_UI:Refresh()
            end
        end
    end
end)

function WTBT:Init()
    -- Load saved settings
    if WTBTSavedSettings then
        for k, v in pairs(WTBTSavedSettings) do
            self.settings[k] = v
        end
    end

    -- Load soft reserve data
    self.softResData = WTBTSoftResData or nil

    -- Detect player's class
    local _, englishClass = UnitClass("player")
    local classLookup = {
        PRIEST = "Priest", PALADIN = "Paladin", DRUID = "Druid",
        SHAMAN = "Shaman", MAGE = "Mage", WARLOCK = "Warlock",
        HUNTER = "Hunter", ROGUE = "Rogue", WARRIOR = "Warrior",
    }
    local playerClass = classLookup[englishClass] or "Priest"

    -- Always start on the player's own class
    self.state.class = playerClass
    self.state.phase = self.settings.lastPhase or 1
    self.state.tab   = self.settings.lastTab or "bis"

    -- Restore saved spec only if it belongs to the player's class
    local defaultSpec = "Holy"
    for _, c in ipairs(self.CLASSES) do
        if c.name == playerClass then
            defaultSpec = c.specs[1]
            if self.settings.lastSpec then
                -- Check if saved spec is valid for this class
                for _, s in ipairs(c.specs) do
                    if s == self.settings.lastSpec then
                        defaultSpec = self.settings.lastSpec
                        break
                    end
                end
            end
            break
        end
    end
    self.state.spec = defaultSpec

    -- Load custom lists (per-character, keyed by class/spec)
    if not WTBTCustomLists then WTBTCustomLists = {} end

    -- Migrate old flat format to class/spec structure
    local needsMigration = false
    for k, v in pairs(WTBTCustomLists) do
        -- Old format: top-level keys are list names (strings)
        -- New format: top-level keys are class names containing spec tables
        if type(v) == "table" and v.Head == nil and v.Chest == nil then
            -- Could be new format (class table) or old list with no slots filled
            -- Check if value contains spec-like subtables
            local hasSpecKey = false
            for sk, sv in pairs(v) do
                if type(sv) == "table" then
                    for ssk, ssv in pairs(sv) do
                        if type(ssv) == "table" and ssv.itemId then
                            -- Old format list with slot data
                            needsMigration = true
                            break
                        end
                    end
                end
                if needsMigration then break end
            end
        elseif type(v) == "table" then
            -- Has slot keys directly = old format
            needsMigration = true
        end
        if needsMigration then break end
    end

    if needsMigration then
        local oldLists = WTBTCustomLists
        WTBTCustomLists = {}
        local playerClass = self.state.class or "Priest"
        local playerSpec = self.state.spec or "Holy"
        WTBTCustomLists[playerClass] = {}
        WTBTCustomLists[playerClass][playerSpec] = oldLists
    end

    self.customLists = WTBTCustomLists

    -- Backfill missing source info on existing custom list items
    for cls, specTable in pairs(WTBTCustomLists) do
        if type(specTable) == "table" then
            for spec, lists in pairs(specTable) do
                if type(lists) == "table" then
                    for listName, slots in pairs(lists) do
                        if type(slots) == "table" then
                            for slotKey, entry in pairs(slots) do
                                if type(entry) == "table" and entry.itemId and not entry.source then
                                    local src, srcType = self:FindItemSource(entry.itemId)
                                    if src then
                                        entry.source = src
                                        entry.sourceType = srcType
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    -- Restore active custom list for current class/spec
    local csLists = self:GetClassSpecLists()
    if self.settings.lastCustomList and csLists[self.settings.lastCustomList] then
        self.state.customList = self.settings.lastCustomList
    else
        self.state.customList = nil
        for name, _ in pairs(csLists) do
            self.state.customList = name
            break
        end
    end

    WTBT_UI:Build()
    WTBT_UI:Refresh()
    WTBT_UI.panel:Hide()  -- Must be AFTER refresh to stay hidden

    -- Build BIS lookup for tooltip integration
    self:BuildPlayerBISLookup()

    -- Hook GameTooltip for BIS tags
    GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    -- Also hook ItemRefTooltip (shift-clicked items in chat)
    if ItemRefTooltip then
        ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    end
    -- Hook shopping tooltips (comparison tooltips)
    if ShoppingTooltip1 then
        ShoppingTooltip1:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    end
    if ShoppingTooltip2 then
        ShoppingTooltip2:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    end

    -- Pre-cache all item info for current phase
    local bisData = self:GetCurrentBIS()
    if bisData then
        for _, slotData in pairs(bisData) do
            if type(slotData) == "table" then
                for _, item in ipairs(slotData) do
                    if item.itemId then
                        GetItemInfo(item.itemId)
                    end
                end
            end
        end
    end
end

-- ============================================================
-- CUSTOM LISTS
-- ============================================================

-- Slot keys used for custom lists (same as BIS)
WTBT.CUSTOM_SLOTS = {
    "Head","Neck","Shoulder","Back","Chest","Wrist","Hands","Waist","Legs","Feet",
    "Ring1","Ring2","Trinket1","Trinket2",
    "MainHand","OffHand","Relic",
}

-- Get the lists subtable for the currently selected class/spec
function WTBT:GetClassSpecLists()
    local cls = self.state.class or "Priest"
    local spec = self.state.spec or "Holy"
    if not self.customLists[cls] then self.customLists[cls] = {} end
    if not self.customLists[cls][spec] then self.customLists[cls][spec] = {} end
    return self.customLists[cls][spec]
end

function WTBT:CreateCustomList(name)
    if not name or name == "" then return false end
    local csLists = self:GetClassSpecLists()
    if csLists[name] then return false end
    csLists[name] = {}
    self.state.customList = name
    return true
end

function WTBT:DeleteCustomList(name)
    local csLists = self:GetClassSpecLists()
    if not name or not csLists[name] then return false end
    csLists[name] = nil
    -- Switch to another list in this class/spec or nil
    self.state.customList = nil
    for n, _ in pairs(csLists) do
        self.state.customList = n
        break
    end
    return true
end

function WTBT:GetCustomListNames()
    local csLists = self:GetClassSpecLists()
    local names = {}
    for n, _ in pairs(csLists) do
        names[#names + 1] = n
    end
    table.sort(names)
    return names
end

function WTBT:SetCustomSlot(listName, slotKey, itemId, source, sourceType)
    local csLists = self:GetClassSpecLists()
    local list = csLists[listName]
    if not list then return false end
    if itemId then
        local entry = { itemId = itemId }
        -- Auto-detect source from BIS data
        if not source then
            local foundSource, foundType = self:FindItemSource(itemId)
            if foundSource then
                entry.source = foundSource
                entry.sourceType = foundType
            end
        else
            entry.source = source
            entry.sourceType = sourceType or "custom"
        end
        list[slotKey] = entry
        GetItemInfo(itemId)
    else
        list[slotKey] = nil
    end
    return true
end

function WTBT:GetCustomSlot(listName, slotKey)
    local csLists = self:GetClassSpecLists()
    local list = csLists[listName]
    if not list then return nil end
    return list[slotKey]
end

-- Fallback source lookup for items not in BIS data (template-only items)
local ITEM_SOURCE_FALLBACK = {
    [23522]  = { "Blacksmithing",                          "craft" },
    [24263]  = { "Tailoring",                              "craft" },
    [25685]  = { "Leatherworking",                         "craft" },
    [25790]  = { "Leatherworking",                         "craft" },
    [25791]  = { "Leatherworking",                         "craft" },
    [27493]  = { "Darkweaver Syth — Sethekk Halls",        "drop"  },
    [27537]  = { "Darkweaver Syth — Sethekk Halls",        "drop"  },
    [27672]  = { "Heroic Shadow Labyrinth",                "drop"  },
    [27760]  = { "Quest: Wants and Needs",                 "quest" },
    [27813]  = { "Heroic Botanica",                        "drop"  },
    [27839]  = { "Heroic Shattered Halls",                 "drop"  },
    [27847]  = { "Heroic Shattered Halls",                 "drop"  },
    [27867]  = { "Heroic Shattered Halls",                 "drop"  },
    [27915]  = { "Quest: Escape from Firewing Point",      "quest" },
    [27985]  = { "Quest: Teron Gorefiend, I am...",        "quest" },
    [27986]  = { "Quest: Blast the Infernals!",            "quest" },
    [28179]  = { "Quest: City of Light",                   "quest" },
    [28269]  = { "Heroic Old Hillsbrad",                   "drop"  },
    [28386]  = { "Heroic Mechanar",                        "drop"  },
    [28407]  = { "Quest: How to Break Into the Arcatraz",  "quest" },
    [28415]  = { "Heroic Mechanar",                        "drop"  },
    [28504]  = { "Heroic Sethekk Halls",                   "drop"  },
    [29153]  = { "The Consortium — Revered",               "rep"   },
    [29165]  = { "Keepers of Time — Exalted",              "rep"   },
    [29242]  = { "Heroic Old Hillsbrad",                   "drop"  },
    [29348]  = { "Warchief Kargath — Heroic Shattered Halls", "drop" },
    [31692]  = { "Quest: Dimensius the All-Devouring",     "quest" },
    [32087]  = { "Badge of Justice — 50 badges",           "badge" },
    -- Fire Resistance gear
    [23513]  = { "Blacksmithing (Aldor)",                  "craft" },  -- Flamebane Breastplate
    [23514]  = { "Blacksmithing (Aldor)",                  "craft" },  -- Flamebane Gloves
    [23515]  = { "Blacksmithing (Aldor)",                  "craft" },  -- Flamebane Bracers
    [23516]  = { "Blacksmithing (Aldor)",                  "craft" },  -- Flamebane Helm
    [24092]  = { "Jewelcrafting",                          "craft" },  -- Pendant of Frozen Flame
    [29489]  = { "Leatherworking",                         "craft" },  -- Enchanted Felscale Leggings
    [29490]  = { "Leatherworking",                         "craft" },  -- Enchanted Felscale Gloves
    [29491]  = { "Leatherworking",                         "craft" },  -- Enchanted Felscale Boots
    [29495]  = { "Leatherworking",                         "craft" },  -- Enchanted Clefthoof Leggings
    [29496]  = { "Leatherworking",                         "craft" },  -- Enchanted Clefthoof Gloves
    [29497]  = { "Leatherworking",                         "craft" },  -- Enchanted Clefthoof Boots
    [30761]  = { "Badge of Justice — 30 badges",           "badge" },  -- Infernoweave Leggings
    [30762]  = { "Badge of Justice — 30 badges",           "badge" },  -- Infernoweave Robe
    [30763]  = { "Badge of Justice — 20 badges",           "badge" },  -- Infernoweave Boots
    [30764]  = { "Badge of Justice — 20 badges",           "badge" },  -- Infernoweave Gloves
    [30766]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Tempered Leggings
    [30767]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Tempered Gauntlets
    [30768]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Tempered Boots
    [30769]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Tempered Chestguard
    [30770]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Forged Boots
    [30772]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Forged Leggings
    [30773]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Forged Hauberk
    [30774]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Forged Gloves
    [30776]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Hardened Chestguard
    [30778]  = { "Badge of Justice — 30 badges",           "badge" },  -- Inferno Hardened Leggings
    [30779]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Hardened Boots
    [30780]  = { "Badge of Justice — 20 badges",           "badge" },  -- Inferno Hardened Gloves
    [30837]  = { "Tailoring",                              "craft" },  -- Flameheart Bracers
    [30838]  = { "Tailoring",                              "craft" },  -- Flameheart Gloves
    [30839]  = { "Tailoring",                              "craft" },  -- Flameheart Vest
    [31341]  = { "Vendor — Blade's Edge Mountains",        "drop"  },  -- Wyrmcultist's Cloak
    [31746]  = { "Quest: Trial of the Naaru",              "quest" },  -- Phoenix-fire Band
    -- Frost Resistance gear (Hydross)
    [22658]  = { "Tailoring",                              "craft" },  -- Glacial Cloak
    [22661]  = { "Leatherworking",                         "craft" },  -- Polar Tunic
    [22662]  = { "Leatherworking",                         "craft" },  -- Polar Gloves
    [22663]  = { "Leatherworking",                         "craft" },  -- Polar Bracers
    [22701]  = { "Leatherworking",                         "craft" },  -- Polar Leggings
    [24093]  = { "Jewelcrafting",                          "craft" },  -- Pendant of Thawing
    [31369]  = { "Blacksmithing (Violet Eye)",             "craft" },  -- Iceguard Breastplate
    [31370]  = { "Blacksmithing (Violet Eye)",             "craft" },  -- Iceguard Leggings
    [31371]  = { "Blacksmithing (Violet Eye)",             "craft" },  -- Iceguard Helm
    [31398]  = { "Jewelcrafting",                          "craft" },  -- The Frozen Eye
    -- Nature Resistance gear (Hydross)
    [22660]  = { "Tailoring",                              "craft" },  -- Gaea's Embrace
    [22759]  = { "Leatherworking",                         "craft" },  -- Bramblewood Helm
    [22760]  = { "Leatherworking",                         "craft" },  -- Bramblewood Boots
    [22761]  = { "Leatherworking",                         "craft" },  -- Bramblewood Belt
    [24095]  = { "Jewelcrafting",                          "craft" },  -- Pendant of Withering
    [31364]  = { "Blacksmithing (Cenarion Expedition)",    "craft" },  -- Wildguard Breastplate
    [31367]  = { "Blacksmithing (Cenarion Expedition)",    "craft" },  -- Wildguard Leggings
    [31368]  = { "Blacksmithing (Cenarion Expedition)",    "craft" },  -- Wildguard Helm
    [31399]  = { "Jewelcrafting",                          "craft" },  -- The Natural Ward
    -- Non-crafted prebis replacements
    [27775]  = { "Grandmaster Vorpil — Shadow Labyrinth",  "drop"  },  -- Hallowed Pauldrons
    [27911]  = { "Epoch Hunter — Old Hillsbrad",           "drop"  },  -- Epoch's Whispering Cinch
    [28204]  = { "Pathaleon — Mechanar",                   "drop"  },  -- Tunic of Assassination
    [28230]  = { "Murmur — Shadow Labyrinth",              "drop"  },  -- Hallowed Garments
    [29241]  = { "Heroic Mana-Tombs",                      "drop"  },  -- Belt of Depravity
    [29249]  = { "Heroic Sethekk Halls",                   "drop"  },  -- Bands of the Benevolent
    [29250]  = { "Heroic Sethekk Halls",                   "drop"  },  -- Cord of Sanctification
    [29356]  = { "Aeonus — Heroic Black Morass",           "drop"  },  -- Quantum Blade
    -- Mage Tank (Krosh)
    [21859]  = { "Tailoring",                              "craft" },  -- Imbued Netherweave Pants
    [21860]  = { "Tailoring",                              "craft" },  -- Imbued Netherweave Boots
    [21861]  = { "Tailoring",                              "craft" },  -- Imbued Netherweave Robe
    [27465]  = { "Warchief Kargath — Shattered Halls",     "drop"  },  -- Mana-Etched Gloves
    [28190]  = { "Aeonus — Black Morass",                  "drop"  },  -- Scarab of the Infinite Cycle
    [28191]  = { "Epoch Hunter — Old Hillsbrad",           "drop"  },  -- Mana-Etched Vestments
    [28193]  = { "Aeonus — Black Morass",                  "drop"  },  -- Mana-Etched Crown
    -- Leveling 60-70 templates
    [23517]  = { "Blacksmithing",                          "craft" },  -- Felsteel Gloves
    [24390]  = { "Broggok — Blood Furnace",                "drop"  },  -- Auslese's Light Channeler
    [24395]  = { "Keli'dan — Blood Furnace",               "drop"  },  -- Mindfire Waistband
    [24396]  = { "Keli'dan — Blood Furnace",               "drop"  },  -- Vest of Vengeance
    [24459]  = { "Ghaz'an — Underbog",                     "drop"  },  -- Cloak of Healing Rays
    [25562]  = { "Quest: Gurok the Usurper",               "quest" },  -- Earthen Mark of Razing
    [25634]  = { "Quest: Gava'xi — Nagrand",               "quest" },  -- Oshu'gun Relic
    [25644]  = { "Quest: The Ultimate Bloodsport — Nagrand", "quest" }, -- Blessed Book of Nagrand
    [25645]  = { "Quest: The Ultimate Bloodsport — Nagrand", "quest" }, -- Totem of the Plains
    [25761]  = { "Quest: Ring of Blood — Nagrand",         "quest" },  -- Staff of Beasts
    [25804]  = { "Quest: Turning the Tide — Zangarmarsh",  "quest" },  -- Naliko's Revenge
    [25819]  = { "Quest: Forge Camp: Annihilated — HFP",   "quest" },  -- Breastplate of the Warbringer
    [27411]  = { "Exarch Maladaar — Auchenai Crypts",      "drop"  },  -- Slippers of Serenity
    [27434]  = { "Epoch Hunter — Old Hillsbrad",           "drop"  },  -- Mantle of Perenolde
    [27474]  = { "Warchief Kargath — Shattered Halls",     "drop"  },  -- Beast Lord Handguards
    [27484]  = { "The Maker — Blood Furnace",              "drop"  },  -- Libram of Avengement
    [27518]  = { "Quest: Sethekk Halls",                   "quest" },  -- Ivory Idol of the Moongoddess
    [27771]  = { "Hungarfen — Underbog",                   "drop"  },  -- Doomplate Shoulderguards
    [27804]  = { "Kalithresh — Steamvault",                "drop"  },  -- Devilshark Cape
    [27806]  = { "Steamrigger — Steamvault",               "drop"  },  -- Fathomheart Gauntlets
    [27868]  = { "O'mrogg — Shattered Halls",              "drop"  },  -- Runesong Dagger
    [27886]  = { "Quest: Zangarmarsh",                     "quest" },  -- Idol of the Emerald Queen
    [27887]  = { "Hellmaw — Shadow Labyrinth",             "drop"  },  -- Platinum Shield of the Valorous
    [27890]  = { "Blackheart — Shadow Labyrinth",          "drop"  },  -- Wand of the Netherwing
    [27892]  = { "Blackheart — Shadow Labyrinth",          "drop"  },  -- Cloak of the Inciter
    [27903]  = { "Murmur — Shadow Labyrinth",              "drop"  },  -- Sonic Spear
    [27905]  = { "Murmur — Shadow Labyrinth",              "drop"  },  -- Greatsword of Horrid Dreams
    [27907]  = { "Black Stalker — Underbog",               "drop"  },  -- Mana-Etched Pantaloons
    [27917]  = { "Darkweaver Syth — Sethekk Halls",        "drop"  },  -- Libram of the Eternal Rest
    [27918]  = { "Darkweaver Syth — Sethekk Halls",        "drop"  },  -- Bands of Syth
    [27925]  = { "Talon King Ikiss — Sethekk Halls",       "drop"  },  -- Ravenclaw Band
    [27981]  = { "Talon King Ikiss — Sethekk Halls",       "drop"  },  -- Sethekk Oracle Cloak
    [28031]  = { "Quest: Bring Me The Egg! — Nagrand",     "quest" },  -- Nomad's Woven Cloak
    [28032]  = { "Quest: Bring Me The Egg! — Nagrand",     "quest" },  -- Delicate Green Poncho
    [28034]  = { "Temporus — Black Morass",                "drop"  },  -- Hourglass of the Unraveller
    [28040]  = { "Quest: Overlord — Hellfire Peninsula",   "quest" },  -- Vengeance of the Illidari
    [28041]  = { "Quest: Overlord — Hellfire Peninsula",   "quest" },  -- Bladefist's Breadth
    [28042]  = { "Quest: Overlord — Hellfire Peninsula",   "quest" },  -- Regal Protectorate
    [28064]  = { "Quest: Colossal Menace — HFP",           "quest" },  -- Idol of the Wild
    [28167]  = { "Quest: The Soul Devices — Auchindoun",   "quest" },  -- Sha'tari Wrought Armguards
    [28171]  = { "Quest: The Soul Devices — Auchindoun",   "quest" },  -- Spymistress's Wristguards
    [28173]  = { "Quest: Hero of the Mag'har — Nagrand",   "quest" },  -- Mag'hari Huntsman's Leggings
    [28174]  = { "Quest: The Soul Devices — Auchindoun",   "quest" },  -- Shattrath Wraps
    [28176]  = { "Quest: Into the Heart of the Labyrinth", "quest" },  -- Sha'tari Wrought Greaves
    [28180]  = { "Quest: The Warlord's Hideout",           "quest" },  -- Myrmidon's Headdress
    [28187]  = { "Temporus — Black Morass",                "drop"  },  -- Star-Heart Lamp
    [28189]  = { "Aeonus — Black Morass",                  "drop"  },  -- Latro's Shifting Sword
    [28194]  = { "Aeonus — Black Morass",                  "drop"  },  -- Primal Surge Bracers
    [28213]  = { "Lieutenant Drake — Old Hillsbrad",       "drop"  },  -- Lordaeron Medical Guide
    [28227]  = { "Epoch Hunter — Old Hillsbrad",           "drop"  },  -- Sparking Arcanite Ring
    [28248]  = { "Cache of the Legion — Mechanar",         "drop"  },  -- Totem of the Void
    [28257]  = { "Capacitus — Mechanar",                   "drop"  },  -- Hammer of the Penitent
    [28259]  = { "Pathaleon — Mechanar",                   "drop"  },  -- Cosmic Lifeband
    [28263]  = { "Sepethrea — Mechanar",                   "drop"  },  -- Stellaris
    [28288]  = { "Pathaleon — Mechanar",                   "drop"  },  -- Abacus of Violent Odds
    [28304]  = { "Sarannis — Botanica",                    "drop"  },  -- Prismatic Mittens of Mending
    [28315]  = { "Freywinn — Botanica",                    "drop"  },  -- Stormreaver Warblades
    [28370]  = { "Warp Splinter — Botanica",               "drop"  },  -- Bangle of Endless Blessings
    [28406]  = { "Skyriss — Arcatraz",                     "drop"  },  -- Sigil-Laced Boots
    [28412]  = { "Skyriss — Arcatraz",                     "drop"  },  -- Lamp of Peaceful Radiance
    [28413]  = { "Skyriss — Arcatraz",                     "drop"  },  -- Hallowed Crown
    [29316]  = { "Quest: Return to Andormu — Old Hillsbrad", "quest" }, -- Warchief's Mantle
    [29320]  = { "Quest: Hero of the Brood — Caverns of Time", "quest" }, -- Band of the Guardian
    [29323]  = { "Quest: Hero of the Brood — Black Morass", "quest" }, -- Andormu's Tear
    [29325]  = { "Quest: Safety Is Job One — Mana-Tombs",  "quest" },  -- Flesh Beast's Metal Greaves
    [29333]  = { "Quest: Brother Against Brother — Sethekk Halls", "quest" }, -- Torc of the Sethekk Prophet
    [29336]  = { "Quest: Brother Against Brother — Sethekk Halls", "quest" }, -- Mark of the Ravenguard
    [29341]  = { "Quest: Everything Will Be Alright — Terokkar", "quest" }, -- Auchenai Anchorite's Robe
    [29779]  = { "Quest: Ar'kelos the Guardian — Netherstorm", "quest" }, -- Rejuvenating Scepter
    [29813]  = { "Quest: Hitting the Motherlode — Netherstorm", "quest" }, -- Cloak of Woven Energy
    [29814]  = { "Quest: Hitting the Motherlode — Netherstorm", "quest" }, -- Celestial Jewel Ring
    [30003]  = { "Quest: Dealing with the Overmaster — Netherstorm", "quest" }, -- Gloves of the Nether-Stalker
    [30006]  = { "Quest: Dealing with the Overmaster — Netherstorm", "quest" }, -- Wind Trader's Band
    [30009]  = { "Quest: Nexus-King Salhadaar — Netherstorm", "quest" }, -- The Burning Crusader
    [30256]  = { "Quest: Special Delivery to Shattrath",   "quest" },  -- Pants of the Naaru
    [30257]  = { "Quest: Special Delivery to Shattrath",   "quest" },  -- Shattrath Leggings
    [30258]  = { "Quest: Special Delivery to Shattrath",   "quest" },  -- Chestplate of A'dal
    [30279]  = { "Quest: Declawing Doomclaw — Netherstorm", "quest" }, -- Mama's Insurance
    [30299]  = { "Quest: Dimensius — Netherstorm",         "quest" },  -- Starcaller's Plated Legguards
    [30300]  = { "Quest: Dimensius — Netherstorm",         "quest" },  -- Dabiri's Enigma
    [30340]  = { "Quest: Horrors of Pollution — SMV",      "quest" },  -- Starkiller's Bauble
    [30341]  = { "Quest: The Flesh Lies — SMV",            "quest" },  -- Flesh Handler's Gauntlets
    [30365]  = { "Quest: SMV quest chain",                 "quest" },  -- Overseer's Signet
    [30377]  = { "Quest: Manaforge Ara — Netherstorm",     "quest" },  -- Karja's Medallion
    [30860]  = { "Quest: Deathblow to the Legion — Netherstorm", "quest" }, -- Kaylaan's Signet
    [30925]  = { "Quest: Cipher of Damnation — SMV",       "quest" },  -- Spaulders of the Torn-heart
    [30933]  = { "Quest: Varedis Must Be Stopped — SMV",   "quest" },  -- Hauberk of Karabor
    [30942]  = { "Quest: Enraged Spirits of Air — SMV",    "quest" },  -- Manimal's Cinch
    [30951]  = { "Quest: Cipher of Damnation — SMV",       "quest" },  -- Ar'tor's Mainstay
    [30973]  = { "Quest: News of Victory — SMV",           "quest" },  -- Band of Anguish
    [31077]  = { "Quest: Dissension Amongst the Ranks — SMV", "quest" }, -- Slayer's Mark of the Redemption
    [31104]  = { "Quest: Teron Gorefiend, I am... — SMV",  "quest" },  -- Evoker's Helmet of Second Sight
    [31105]  = { "Quest: Teron Gorefiend, I am... — SMV",  "quest" },  -- Overlord's Helmet of Second Sight
    [31106]  = { "Quest: Teron Gorefiend, I am... — SMV",  "quest" },  -- Stalker's Helmet of Second Sight
    [31107]  = { "Quest: Teron Gorefiend, I am... — SMV",  "quest" },  -- Shamanistic Helmet of Second Sight
    [31109]  = { "Quest: Teron Gorefiend, I am... — SMV",  "quest" },  -- Stealther's Helmet of Second Sight
    [31383]  = { "Quest: Battle of the Crimson Watch — SMV", "quest" }, -- Spiritualist's Mark of the Sha'tar
    [31460]  = { "Quest: How to Break Into the Arcatraz",  "quest" },  -- Sha'tari Vindicator's Waistguard
    [31461]  = { "Quest: How to Break Into the Arcatraz",  "quest" },  -- A'dal's Gift
    [31464]  = { "Quest: How to Break Into the Arcatraz",  "quest" },  -- Naaru Belt of Precision
    [31532]  = { "Quest: Whispers of the Raven God — Blade's Edge", "quest" }, -- Supple Leather Boots
    [31544]  = { "Quest: Showdown — Blade's Edge",         "quest" },  -- Clefthoof Hide Leggings
    [31617]  = { "Quest: Vengeful Harbinger — Terokkar",   "quest" },  -- Ancient Draenei War Talisman
    [31695]  = { "Quest: The Hound-Master — Blade's Edge", "quest" },  -- Natasha's Choker
}

-- Search all BIS data for an item's source info
function WTBT:FindItemSource(itemId)
    if not itemId then return nil end
    -- Check BIS data first
    if WTBT_Data then
    for className, specTable in pairs(WTBT_Data) do
        for specName, phaseTable in pairs(specTable) do
            for phase, slotTable in pairs(phaseTable) do
                for slotKey, items in pairs(slotTable) do
                    if type(items) == "table" then
                        for _, item in ipairs(items) do
                            if item.itemId == itemId then
                                return item.source, item.sourceType
                            end
                        end
                    end
                end
            end
        end
    end
    end -- if WTBT_Data
    -- Fallback: check supplementary source table
    local fb = ITEM_SOURCE_FALLBACK[itemId]
    if fb then return fb[1], fb[2] end
    return nil
end

-- ============================================================
-- SOCKET DETECTION via hidden tooltip scanning
-- ============================================================
local socketCache = {}
local scanTooltip = nil

function WTBT:GetItemSockets(itemId)
    if not itemId then return nil end

    -- Return cached result
    if socketCache[itemId] ~= nil then
        return socketCache[itemId]
    end

    -- Ensure item is in client cache before scanning
    local itemName = GetItemInfo(itemId)
    if not itemName then
        -- Item not cached yet — don't cache result, retry later
        return nil
    end

    -- Create hidden scanning tooltip (once)
    if not scanTooltip then
        scanTooltip = CreateFrame("GameTooltip", "WTBTScanTooltip", nil, "GameTooltipTemplate")
        scanTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
    end

    -- Set the tooltip to this item
    scanTooltip:ClearLines()
    scanTooltip:SetHyperlink("item:" .. itemId)

    local sockets = {}

    -- Scan tooltip lines for socket text (use pattern matching for texture-escaped lines)
    for i = 1, scanTooltip:NumLines() do
        local leftText = _G["WTBTScanTooltipTextLeft" .. i]
        if leftText then
            local text = leftText:GetText()
            if text then
                if text:find("Red Socket") then
                    sockets[#sockets + 1] = "red"
                elseif text:find("Blue Socket") then
                    sockets[#sockets + 1] = "blue"
                elseif text:find("Yellow Socket") then
                    sockets[#sockets + 1] = "yellow"
                elseif text:find("Meta Socket") then
                    sockets[#sockets + 1] = "meta"
                end
            end
        end
    end

    -- Cache result — only cache if tooltip had content (item was loaded)
    if scanTooltip:NumLines() > 0 then
        if #sockets == 0 then
            socketCache[itemId] = false  -- confirmed no sockets
        else
            socketCache[itemId] = sockets
        end
    end

    return socketCache[itemId]
end

-- Parse an item link to extract the item ID
function WTBT:ParseItemLink(link)
    if not link then return nil end
    local id = link:match("item:(%d+)")
    if id then return tonumber(id) end
    local num = tonumber(link)
    if num and num > 0 then return num end
    return nil
end

-- ============================================================
-- TEMPLATES
-- ============================================================
-- Template data: WTBT_Templates[className][specName][templateKey] = { slotKey = itemId, ... }
-- templateKey: "prebis", "leveling"
if not WTBT_Templates then WTBT_Templates = {} end

function WTBT:GetTemplateList(className, specName)
    local templates = {}
    -- Check for resolved spec (aliases)
    local resolvedSpec = specName
    local classAliases = self.SPEC_ALIASES and self.SPEC_ALIASES[className]
    if classAliases and classAliases[specName] then
        resolvedSpec = classAliases[specName]
    end

    local classData = WTBT_Templates[className]
    if not classData then return templates end

    local specData = classData[resolvedSpec] or classData[specName]
    if not specData then return templates end

    for key, data in pairs(specData) do
        templates[#templates + 1] = {
            key = key,
            label = data.label or key,
            description = data.description or "",
            slots = data.slots or {},
        }
    end
    table.sort(templates, function(a, b) return a.label < b.label end)
    return templates
end

function WTBT:CreateListFromTemplate(listName, className, specName, templateKey)
    local resolvedSpec = specName
    local classAliases = self.SPEC_ALIASES and self.SPEC_ALIASES[className]
    if classAliases and classAliases[specName] then
        resolvedSpec = classAliases[specName]
    end

    local classData = WTBT_Templates[className]
    if not classData then return false end
    local specData = classData[resolvedSpec] or classData[specName]
    if not specData then return false end
    local tmpl = specData[templateKey]
    if not tmpl then return false end

    -- Create the list (under current class/spec)
    if not self:CreateCustomList(listName) then
        -- List name already exists, append a number
        local csLists = self:GetClassSpecLists()
        local i = 2
        while csLists[listName .. " " .. i] do i = i + 1 end
        listName = listName .. " " .. i
        self:CreateCustomList(listName)
    end

    -- Populate slots
    for slotKey, itemId in pairs(tmpl.slots) do
        self:SetCustomSlot(listName, slotKey, itemId)
    end

    return true, listName
end
