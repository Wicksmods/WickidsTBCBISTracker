-- ============================================================
-- Wick's TBC BIS Tracker — Mini Dashboard
-- Shows BIS/custom list items obtainable in the current dungeon/zone/quests
-- ============================================================

WTBT_MiniDash = WTBT_MiniDash or {}

local DASH_W = 220
local TITLE_BAR_H = 22
local HEADER_H = 28        -- subtitle + locText
local BOTTOM_PAD = 6
local ROW_H = 26
local ICON_SIZE = 20
local EMPTY_STATE_H = 64
local MAX_FRAME_H = 480

-- Brand colors (mirrors UI.lua)
local C_BG          = { 0.07, 0.06, 0.12 }
local C_BORDER      = { 0.45, 0.35, 0.65, 0.9 }
local C_GREEN       = { 0.31, 0.78, 0.47 }
local C_PURPLE      = { 0.42, 0.35, 0.65 }
local C_TEXT_NORMAL = { 0.92, 0.86, 0.78 }
local C_TEXT_DIM    = { 0.55, 0.50, 0.62 }
local C_GOLD        = { 0.78, 0.71, 0.55 }

local function NewTexture(parent, layer)
    return parent:CreateTexture(nil, layer or "ARTWORK")
end

local function NewText(parent, size)
    local t = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    t:SetFont("Fonts\\FRIZQT__.TTF", size or 10, "")
    return t
end

local function AddBorder(frame, r, g, b, a)
    a = a or 1
    local edges = {}
    for i = 1, 4 do
        local edge = NewTexture(frame, "BORDER")
        edge:SetColorTexture(r, g, b, a)
        edges[i] = edge
    end
    edges[1]:SetPoint("TOPLEFT");     edges[1]:SetPoint("TOPRIGHT");    edges[1]:SetHeight(1)
    edges[2]:SetPoint("BOTTOMLEFT");  edges[2]:SetPoint("BOTTOMRIGHT"); edges[2]:SetHeight(1)
    edges[3]:SetPoint("TOPLEFT");     edges[3]:SetPoint("BOTTOMLEFT");  edges[3]:SetWidth(1)
    edges[4]:SetPoint("TOPRIGHT");    edges[4]:SetPoint("BOTTOMRIGHT"); edges[4]:SetWidth(1)
    return edges
end

-- ============================================================
-- CONTEXT DETECTION
-- ============================================================

-- Returns { dungeon = name|nil, zone = name|nil, quests = {name1, name2, ...} }
function WTBT_MiniDash:GetContext()
    local ctx = { dungeon = nil, zone = nil, quests = {} }

    local zoneName, instType = GetInstanceInfo()
    if instType == "party" or instType == "raid" then
        ctx.dungeon = zoneName
    end
    ctx.zone = GetRealZoneText() or zoneName

    -- Enumerate active quests
    local numEntries = GetNumQuestLogEntries() or 0
    for i = 1, numEntries do
        local title, _, _, isHeader = GetQuestLogTitle(i)
        if title and not isHeader then
            ctx.quests[#ctx.quests + 1] = title
        end
    end

    return ctx
end

-- Determine which list to track based on last-viewed tab
function WTBT_MiniDash:GetTrackedList()
    local lastTab = WTBT.state.tab or "bis"

    if lastTab == "custom" and WTBT.state.customList then
        local csLists = WTBT:GetClassSpecLists()
        local list = csLists[WTBT.state.customList]
        if list then
            -- Convert to flat item array
            local items = {}
            for slotKey, entry in pairs(list) do
                if type(entry) == "table" and entry.itemId then
                    items[#items + 1] = {
                        slot       = slotKey,
                        itemId     = entry.itemId,
                        source     = entry.source,
                        sourceType = entry.sourceType,
                    }
                end
            end
            return items, ("Custom · " .. WTBT.state.customList)
        end
    end

    -- Default to BIS list
    local bis = WTBT:GetCurrentBIS()
    if bis then
        local items = {}
        for slotKey, slotItems in pairs(bis) do
            if type(slotItems) == "table" then
                for _, item in ipairs(slotItems) do
                    if item.itemId then
                        items[#items + 1] = {
                            slot       = slotKey,
                            itemId     = item.itemId,
                            name       = item.name,
                            source     = item.source,
                            sourceType = item.sourceType,
                        }
                    end
                end
            end
        end
        return items, (WTBT.state.spec .. " · Phase " .. (WTBT.state.phase or 1) .. " BIS")
    end

    return {}, "No list"
end

-- Split a location string into searchable tokens.
-- Handles "Auchindoun: Shadow Labyrinth" → {"Auchindoun: Shadow Labyrinth", "Auchindoun", "Shadow Labyrinth"}
-- and "Black Morass" → {"Black Morass"}.
local function LocationTokens(name)
    if not name or name == "" then return {} end
    local tokens = { name }
    for part in name:gmatch("[^:%-—–]+") do
        local trimmed = part:match("^%s*(.-)%s*$")
        if trimmed and trimmed ~= "" and trimmed ~= name then
            tokens[#tokens + 1] = trimmed
        end
    end
    return tokens
end

-- Try to match any token from `loc` inside `source`. Skips very short tokens to avoid false hits.
local function SourceContainsLocation(source, loc)
    if not loc or loc == "" then return false end
    for _, tok in ipairs(LocationTokens(loc)) do
        if #tok >= 4 and source:find(tok, 1, true) then
            return true
        end
    end
    return false
end

-- Re-resolve a missing source via the live BIS/fallback lookup
local function ResolveSource(item)
    if (not item.source or item.source == "") and item.itemId and WTBT and WTBT.FindItemSource then
        local s, t = WTBT:FindItemSource(item.itemId)
        if s then
            item.source = s
            item.sourceType = item.sourceType or t
        end
    end
end

-- Match an item's source string against the current context
-- Returns matchType ("drop", "quest", "zone") or nil
local function MatchItem(item, ctx)
    ResolveSource(item)
    local source = item.source
    if not source or source == "" then return nil end

    -- Quest match: any active quest title appearing in source
    if item.sourceType == "quest" then
        for _, qname in ipairs(ctx.quests) do
            if qname and #qname >= 3 and source:find(qname, 1, true) then
                return "quest"
            end
        end
        -- Sometimes "quest" items still match a zone (e.g., quest given in current zone)
        if SourceContainsLocation(source, ctx.zone) then
            return "quest"
        end
        return nil
    end

    -- Drop match: dungeon name appears in source (token-based)
    if item.sourceType == "drop" then
        if SourceContainsLocation(source, ctx.dungeon) then
            return "drop"
        end
        if SourceContainsLocation(source, ctx.zone) then
            return "drop"
        end
        return nil
    end

    -- Generic zone fallback for other types (rep, badge, world drops, etc.)
    if SourceContainsLocation(source, ctx.dungeon) or SourceContainsLocation(source, ctx.zone) then
        return "zone"
    end

    return nil
end

-- Check if player already owns the item (equipped or in bags)
local function PlayerHasItem(itemId)
    if not itemId then return false end
    -- Equipped
    for slot = 1, 19 do
        if GetInventoryItemID("player", slot) == itemId then
            return true
        end
    end
    -- Bags (0 = backpack, 1-4 = bag slots)
    local getContainerItemID = (C_Container and C_Container.GetContainerItemID) or GetContainerItemID
    local getContainerNumSlots = (C_Container and C_Container.GetContainerNumSlots) or GetContainerNumSlots
    if not getContainerItemID or not getContainerNumSlots then return false end
    for bag = 0, 4 do
        local slots = getContainerNumSlots(bag) or 0
        for slot = 1, slots do
            if getContainerItemID(bag, slot) == itemId then
                return true
            end
        end
    end
    return false
end

-- Filter list to items matching current context AND not already owned
function WTBT_MiniDash:GetMatches()
    local ctx = self:GetContext()
    local items, label = self:GetTrackedList()
    local matches = {}

    -- Dedup by itemId (BIS lists have alts under same slot)
    local seen = {}
    for _, item in ipairs(items) do
        if not seen[item.itemId] then
            seen[item.itemId] = true
            local mtype = MatchItem(item, ctx)
            if mtype and not PlayerHasItem(item.itemId) then
                item.matchType = mtype
                matches[#matches + 1] = item
            end
        end
    end

    return matches, label, ctx
end

-- ============================================================
-- FRAME
-- ============================================================

local rowPool = {}
local activeRows = {}

local function CreateRow(parent)
    local row = CreateFrame("Button", nil, parent)
    row:SetHeight(ROW_H)

    local hoverBG = NewTexture(row, "BACKGROUND")
    hoverBG:SetAllPoints()
    hoverBG:SetColorTexture(0, 0, 0, 0)
    row.hoverBG = hoverBG

    local iconFrame = CreateFrame("Frame", nil, row)
    iconFrame:SetSize(ICON_SIZE, ICON_SIZE)
    iconFrame:SetPoint("LEFT", row, "LEFT", 6, 0)
    local iconTex = iconFrame:CreateTexture(nil, "ARTWORK")
    iconTex:SetAllPoints()
    iconTex:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    row.iconTex = iconTex
    AddBorder(iconFrame, C_PURPLE[1], C_PURPLE[2], C_PURPLE[3], 0.7)

    local nameText = NewText(row, 10)
    nameText:SetPoint("TOPLEFT", iconFrame, "TOPRIGHT", 6, 0)
    nameText:SetPoint("RIGHT", row, "RIGHT", -4, 0)
    nameText:SetJustifyH("LEFT")
    nameText:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    row.nameText = nameText

    local slotText = NewText(row, 8)
    slotText:SetPoint("TOPLEFT", nameText, "BOTTOMLEFT", 0, -1)
    slotText:SetPoint("RIGHT", row, "RIGHT", -4, 0)
    slotText:SetJustifyH("LEFT")
    slotText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    row.slotText = slotText

    local div = NewTexture(row, "BORDER")
    div:SetColorTexture(C_PURPLE[1], C_PURPLE[2], C_PURPLE[3], 0.18)
    div:SetPoint("BOTTOMLEFT", 6, 0); div:SetPoint("BOTTOMRIGHT", -6, 0); div:SetHeight(1)

    row:SetScript("OnEnter", function(self)
        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.06)
        if self.itemId then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetHyperlink("item:" .. self.itemId)
            GameTooltip:Show()
        end
    end)
    row:SetScript("OnLeave", function(self)
        self.hoverBG:SetColorTexture(0, 0, 0, 0)
        GameTooltip:Hide()
    end)

    return row
end

local function AcquireRow(parent)
    local row = table.remove(rowPool)
    if not row then row = CreateRow(parent) end
    row:SetParent(parent)
    row:Show()
    activeRows[#activeRows + 1] = row
    return row
end

local function ReleaseAllRows()
    for _, row in ipairs(activeRows) do
        row:Hide()
        row:ClearAllPoints()
        row.itemId = nil
        rowPool[#rowPool + 1] = row
    end
    wipe(activeRows)
end

function WTBT_MiniDash:CreateFrame()
    if self.frame then return self.frame end

    local f = CreateFrame("Frame", "WTBTMiniDash", UIParent, "BackdropTemplate")
    f:SetSize(DASH_W, TITLE_BAR_H + HEADER_H + EMPTY_STATE_H + BOTTOM_PAD)
    f:SetFrameStrata("MEDIUM")
    f:SetClampedToScreen(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")

    -- Background
    local bg = NewTexture(f, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(C_BG[1], C_BG[2], C_BG[3], 0.93)

    AddBorder(f, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

    -- Title bar
    local titleBar = CreateFrame("Frame", nil, f)
    titleBar:SetPoint("TOPLEFT"); titleBar:SetPoint("TOPRIGHT")
    titleBar:SetHeight(22)
    titleBar:EnableMouse(true)
    titleBar:RegisterForDrag("LeftButton")
    titleBar:SetScript("OnDragStart", function() f:StartMoving() end)
    titleBar:SetScript("OnDragStop", function()
        f:StopMovingOrSizing()
        local point, _, relPoint, x, y = f:GetPoint()
        WTBT.settings.miniDashPos = { point = point, relPoint = relPoint, x = x, y = y }
    end)

    local tbBG = NewTexture(titleBar, "BACKGROUND")
    tbBG:SetAllPoints()
    tbBG:SetColorTexture(C_PURPLE[1] * 0.5, C_PURPLE[2] * 0.5, C_PURPLE[3] * 0.5, 0.5)

    local title = NewText(titleBar, 10)
    title:SetText("|cffC8B68CWick's BIS|r · Mini Dash")
    title:SetPoint("LEFT", titleBar, "LEFT", 8, 0)

    local closeBtn = CreateFrame("Button", nil, titleBar)
    closeBtn:SetSize(18, 18)
    closeBtn:SetPoint("RIGHT", titleBar, "RIGHT", -3, 0)
    local closeText = NewText(closeBtn, 14)
    closeText:SetText("|cffff6655x|r")
    closeText:SetAllPoints()
    closeText:SetJustifyH("CENTER")
    closeBtn:SetScript("OnClick", function()
        WTBT.settings.miniDashEnabled = false
        f:Hide()
    end)

    -- Subtitle (shows tracked list and context)
    local subtitle = NewText(f, 9)
    subtitle:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 8, -4)
    subtitle:SetPoint("TOPRIGHT", titleBar, "BOTTOMRIGHT", -8, -4)
    subtitle:SetJustifyH("LEFT")
    subtitle:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 1)
    f.subtitle = subtitle

    local locText = NewText(f, 8)
    locText:SetPoint("TOPLEFT", subtitle, "BOTTOMLEFT", 0, -2)
    locText:SetPoint("TOPRIGHT", subtitle, "BOTTOMRIGHT", 0, -2)
    locText:SetJustifyH("LEFT")
    locText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    f.locText = locText

    -- Scroll frame for items
    local scroll = CreateFrame("ScrollFrame", "WTBTMiniDashScroll", f, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", f, "TOPLEFT", 4, -56)
    scroll:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -22, 4)

    local scrollChild = CreateFrame("Frame", nil, scroll)
    scrollChild:SetSize(1, 1)
    scroll:SetScrollChild(scrollChild)
    f.scrollChild = scrollChild

    scroll:SetScript("OnSizeChanged", function(self, w, h)
        scrollChild:SetWidth(w)
    end)

    if WTBTMiniDashScrollScrollBar then
        WTBTMiniDashScrollScrollBar:SetWidth(6)
    end

    -- Empty state text
    local empty = NewText(f, 10)
    empty:SetPoint("CENTER", f, "CENTER", 0, 0)
    empty:SetWidth(DASH_W - 20)
    empty:SetJustifyH("CENTER")
    empty:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.85)
    f.emptyText = empty

    -- Restore position
    f:ClearAllPoints()
    if WTBT.settings.miniDashPos then
        local p = WTBT.settings.miniDashPos
        f:SetPoint(p.point or "CENTER", UIParent, p.relPoint or "CENTER", p.x or 0, p.y or 0)
    else
        f:SetPoint("RIGHT", UIParent, "RIGHT", -40, 0)
    end

    f:Hide()
    self.frame = f
    return f
end

-- Extract boss/quest name from a source string.
-- "Blackheart — Shadow Labyrinth" → "Blackheart"
-- "Quest: Teron Gorefiend, I am... — SMV" → "Teron Gorefiend, I am..."
local function ExtractBossName(source, sourceType)
    if not source or source == "" then return nil end
    -- Take everything before the first separator (em-dash, en-dash, or " - ")
    local before = source:match("^(.-)%s*[—–]") or source:match("^(.-)%s%-%s") or source
    before = before:match("^%s*(.-)%s*$")
    if sourceType == "quest" then
        -- Strip leading "Quest:" prefix
        before = before:gsub("^[Qq]uest:%s*", "")
    end
    return before
end

function WTBT_MiniDash:Refresh()
    if not self.frame or not self.frame:IsShown() then return end

    ReleaseAllRows()
    local matches, label, ctx = self:GetMatches()
    local sc = self.frame.scrollChild

    -- Update header
    self.frame.subtitle:SetText(label or "")

    local locParts = {}
    if ctx.dungeon then locParts[#locParts + 1] = ctx.dungeon
    elseif ctx.zone then locParts[#locParts + 1] = ctx.zone end
    if #ctx.quests > 0 then locParts[#locParts + 1] = #ctx.quests .. " quest" .. (#ctx.quests == 1 and "" or "s") end
    self.frame.locText:SetText(table.concat(locParts, " · "))

    if #matches == 0 then
        self.frame.emptyText:SetText("No matching items here.\n|cff6B5A8CMove to a dungeon or quest area\nthat drops items from your list.|r")
        self.frame.emptyText:Show()
        sc:SetHeight(1)
        self.frame:SetHeight(TITLE_BAR_H + HEADER_H + EMPTY_STATE_H + BOTTOM_PAD)
        return
    end

    self.frame.emptyText:Hide()

    -- Group matches: drops first, then quests
    table.sort(matches, function(a, b)
        if a.matchType ~= b.matchType then
            return a.matchType == "drop"
        end
        return (a.slot or "") < (b.slot or "")
    end)

    local yOffset = 2
    for _, item in ipairs(matches) do
        local row = AcquireRow(sc)
        row:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
        row:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

        row.itemId = item.itemId

        local itemName, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(item.itemId)
        row.iconTex:SetTexture(itemIcon or "Interface\\Icons\\INV_Misc_QuestionMark")
        row.nameText:SetText(itemName or item.name or ("Item #" .. item.itemId))

        local boss = ExtractBossName(item.source, item.sourceType)
        local slotShort = (item.slot or ""):gsub("Ring1", "Ring"):gsub("Ring2", "Ring")
                                            :gsub("Trinket1", "Trinket"):gsub("Trinket2", "Trinket")
                                            :gsub("MainHand", "MH"):gsub("OffHand", "OH")
        local matchLabel
        if item.matchType == "drop" then
            matchLabel = "|cff4FC778" .. slotShort .. "|r · " .. (boss or "Drop")
        elseif item.matchType == "quest" then
            matchLabel = "|cffE0C766" .. slotShort .. "|r · " .. (boss or "Quest")
        else
            matchLabel = "|cffB89CDD" .. slotShort .. "|r · " .. (boss or "Zone")
        end
        row.slotText:SetText(matchLabel)

        yOffset = yOffset + ROW_H
    end

    sc:SetHeight(yOffset + 4)

    -- Resize frame to fit content (capped at MAX_FRAME_H)
    local contentH = #matches * ROW_H + 4
    local desiredH = TITLE_BAR_H + HEADER_H + contentH + BOTTOM_PAD
    if desiredH > MAX_FRAME_H then desiredH = MAX_FRAME_H end
    self.frame:SetHeight(desiredH)
end

function WTBT_MiniDash:Show()
    if not self.frame then self:CreateFrame() end
    self.frame:Show()
    self:Refresh()
end

function WTBT_MiniDash:Hide()
    if self.frame then self.frame:Hide() end
end

function WTBT_MiniDash:Toggle()
    if not self.frame then self:CreateFrame() end
    if self.frame:IsShown() then
        WTBT.settings.miniDashEnabled = false
        self.frame:Hide()
    else
        WTBT.settings.miniDashEnabled = true
        self.frame:Show()
        self:Refresh()
    end
end

-- ============================================================
-- INIT & EVENTS
-- ============================================================

function WTBT_MiniDash:Initialize()
    self:CreateFrame()

    if WTBT.settings.miniDashEnabled then
        self.frame:Show()
        -- Slight delay so quest log is populated
        if C_Timer and C_Timer.After then
            C_Timer.After(0.5, function() self:Refresh() end)
        else
            self:Refresh()
        end
    end

    -- Auto-refresh on context changes
    local evt = CreateFrame("Frame")
    evt:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    evt:RegisterEvent("PLAYER_ENTERING_WORLD")
    evt:RegisterEvent("QUEST_LOG_UPDATE")
    evt:RegisterEvent("QUEST_ACCEPTED")
    evt:RegisterEvent("QUEST_TURNED_IN")
    evt:RegisterEvent("BAG_UPDATE_DELAYED")
    evt:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")

    local pending = false
    evt:SetScript("OnEvent", function()
        if pending then return end
        pending = true
        if C_Timer and C_Timer.After then
            C_Timer.After(0.3, function()
                pending = false
                if self.frame and self.frame:IsShown() then
                    self:Refresh()
                end
            end)
        else
            pending = false
            if self.frame and self.frame:IsShown() then
                self:Refresh()
            end
        end
    end)
end
