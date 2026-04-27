-- Wick's TBC BIS Tracker
-- UI.lua - Main panel, gear rows, dropdowns, phase selector

WTBT_UI = WTBT_UI or {}

-- ============================================================
-- CONSTANTS
-- ============================================================
local PANEL_W       = 520
local PANEL_H_MAX   = 650
local PANEL_MIN_W   = 420
local PANEL_MIN_H   = 300
local ROW_H         = 38
local ALT_ROW_INDENT = 24
local ICON_SIZE     = 28
local SLOT_LABEL_W  = 58
local HEADER_H      = 22
local SELECTOR_H    = 36
local TAB_BAR_H     = 28
local STATUS_H      = 22
local GEAR_LIST_H   = 480

-- Wick brand palette — see memory/reference_wick_brand_style.md
-- Fel #4FC778 · Void #0D0A14 · Shadow #171124 · Border #383058 · Text #D4C8A1
local C_BG          = { 0.051, 0.039, 0.078, 0.97 }
local C_HEADER_BG   = { 0.090, 0.067, 0.141, 1 }
local C_BORDER      = { 0.220, 0.188, 0.345, 1 }
local C_GREEN       = { 0.310, 0.780, 0.471, 1 }
local C_TEXT_DIM    = { 0.42, 0.35, 0.54, 1 }
local C_TEXT_NORMAL = { 0.831, 0.784, 0.631, 1 }
local C_EPIC        = { 0.64, 0.21, 0.93, 1 }
local C_RARE        = { 0.00, 0.44, 0.87, 1 }
local C_LEGENDARY   = { 1.00, 0.50, 0.00, 1 }
local C_ROW_HOVER   = { 0.310, 0.780, 0.471, 0.06 }

-- Gem colors (texture via ColorTexture)
local GEM_COLORS = {
    red    = { 0.90, 0.15, 0.15 },
    yellow = { 0.95, 0.85, 0.10 },
    blue   = { 0.15, 0.40, 0.95 },
    meta   = { 0.70, 0.50, 0.95 },
    orange = { 0.95, 0.55, 0.10 },
    purple = { 0.60, 0.10, 0.80 },
    green  = { 0.10, 0.80, 0.30 },
}

-- ============================================================
-- HELPER FUNCTIONS
-- ============================================================
local function SetRGBA(tex, c)
    if c[4] then tex:SetColorTexture(c[1], c[2], c[3], c[4])
    else          tex:SetColorTexture(c[1], c[2], c[3], 1) end
end

local function NewTexture(parent, layer, c)
    local t = parent:CreateTexture(nil, layer or "BACKGROUND")
    if c then SetRGBA(t, c) end
    return t
end

local function NewText(parent, size, r, g, b, a)
    local f = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    f:SetFont("Fonts\\FRIZQT__.TTF", (size or 11) + 1, "")
    f:SetTextColor(r or 1, g or 1, b or 1, a or 1)
    return f
end

-- Thin 1px border helper
local function AddBorder(frame, r, g, b, a)
    r, g, b, a = r or 0.22, g or 0.18, b or 0.36, a or 1
    local e = {}
    -- top
    e[1] = NewTexture(frame, "BORDER"); e[1]:SetColorTexture(r,g,b,a)
    e[1]:SetPoint("TOPLEFT"); e[1]:SetPoint("TOPRIGHT"); e[1]:SetHeight(1)
    -- bottom
    e[2] = NewTexture(frame, "BORDER"); e[2]:SetColorTexture(r,g,b,a)
    e[2]:SetPoint("BOTTOMLEFT"); e[2]:SetPoint("BOTTOMRIGHT"); e[2]:SetHeight(1)
    -- left
    e[3] = NewTexture(frame, "BORDER"); e[3]:SetColorTexture(r,g,b,a)
    e[3]:SetPoint("TOPLEFT"); e[3]:SetPoint("BOTTOMLEFT"); e[3]:SetWidth(1)
    -- right
    e[4] = NewTexture(frame, "BORDER"); e[4]:SetColorTexture(r,g,b,a)
    e[4]:SetPoint("TOPRIGHT"); e[4]:SetPoint("BOTTOMRIGHT"); e[4]:SetWidth(1)
    return e
end

-- (CreateSourceTag and CreateGemDots removed — now embedded in CreateGearRow for reuse)

-- ============================================================
-- GEAR ROW
-- ============================================================
local function CreateGearRow(parent, slotInfo, isAlt)
    local row = CreateFrame("Button", nil, parent)
    row:SetHeight(ROW_H)

    local leftPad = isAlt and (10 + ALT_ROW_INDENT) or 10

    -- Equipped row tint (hidden by default, shown for equipped items)
    -- Uses BORDER layer so it renders above alt row backgrounds (which are BACKGROUND layer)
    local equippedBG = NewTexture(row, "BORDER")
    equippedBG:SetAllPoints()
    equippedBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.08)
    equippedBG:Hide()

    -- Hover highlight
    local hoverBG = NewTexture(row, "BACKGROUND")
    hoverBG:SetAllPoints()
    hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)

    row:SetScript("OnEnter", function(self)
        hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.06)
    end)
    row:SetScript("OnLeave", function(self)
        hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)
        GameTooltip:Hide()
    end)

    -- Separator line at bottom
    local sep = NewTexture(row, "BACKGROUND")
    sep:SetColorTexture(0.220, 0.188, 0.345, 0.25)
    sep:SetPoint("BOTTOMLEFT", 10, 0)
    sep:SetPoint("BOTTOMRIGHT", -10, 0)
    sep:SetHeight(1)

    -- Slot label
    local slotLabel = NewText(row, 9)
    slotLabel:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    slotLabel:SetText(isAlt and "" or slotInfo.label:upper())
    slotLabel:SetPoint("LEFT", row, "LEFT", leftPad, 0)
    slotLabel:SetWidth(isAlt and (SLOT_LABEL_W - ALT_ROW_INDENT) or SLOT_LABEL_W)
    slotLabel:SetJustifyH("LEFT")

    -- Item icon frame
    local iconWrap = CreateFrame("Frame", nil, row)
    iconWrap:SetSize(ICON_SIZE, ICON_SIZE)
    iconWrap:SetPoint("LEFT", slotLabel, "RIGHT", 4, 0)

    local iconBG = NewTexture(iconWrap, "BACKGROUND")
    iconBG:SetAllPoints()
    iconBG:SetColorTexture(0.15, 0.10, 0.25, 1)

    local iconBorder = NewTexture(iconWrap, "BORDER")
    iconBorder:SetAllPoints()
    iconBorder:SetColorTexture(C_EPIC[1], C_EPIC[2], C_EPIC[3], 1)

    -- Actual item icon texture (set in PopulateRow)
    local iconTex = iconWrap:CreateTexture(nil, "ARTWORK")
    iconTex:SetPoint("TOPLEFT", 1, -1)
    iconTex:SetPoint("BOTTOMRIGHT", -1, 1)
    iconTex:SetTexCoord(0.08, 0.92, 0.08, 0.92)

    -- Fallback color (shown when no icon available)
    local iconFallback = NewTexture(iconWrap, "ARTWORK")
    iconFallback:SetPoint("TOPLEFT", 1, -1)
    iconFallback:SetPoint("BOTTOMRIGHT", -1, 1)
    iconFallback:SetColorTexture(0.12, 0.08, 0.20, 1)

    -- Green glow overlay for equipped items (hidden by default)
    local iconGlow = CreateFrame("Frame", nil, iconWrap)
    iconGlow:SetPoint("TOPLEFT", iconWrap, "TOPLEFT", -3, 3)
    iconGlow:SetPoint("BOTTOMRIGHT", iconWrap, "BOTTOMRIGHT", 3, -3)
    iconGlow:SetFrameLevel(iconWrap:GetFrameLevel() + 1)
    -- Outer glow edges
    local glowTop = iconGlow:CreateTexture(nil, "OVERLAY")
    glowTop:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.7)
    glowTop:SetPoint("TOPLEFT"); glowTop:SetPoint("TOPRIGHT"); glowTop:SetHeight(2)
    local glowBot = iconGlow:CreateTexture(nil, "OVERLAY")
    glowBot:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.7)
    glowBot:SetPoint("BOTTOMLEFT"); glowBot:SetPoint("BOTTOMRIGHT"); glowBot:SetHeight(2)
    local glowLeft = iconGlow:CreateTexture(nil, "OVERLAY")
    glowLeft:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.7)
    glowLeft:SetPoint("TOPLEFT"); glowLeft:SetPoint("BOTTOMLEFT"); glowLeft:SetWidth(2)
    local glowRight = iconGlow:CreateTexture(nil, "OVERLAY")
    glowRight:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.7)
    glowRight:SetPoint("TOPRIGHT"); glowRight:SetPoint("BOTTOMRIGHT"); glowRight:SetWidth(2)
    iconGlow:Hide()

    -- Yellow diamond equipped indicator (centered between item name and source text)
    -- Uses the raid target diamond icon (index 3), tinted yellow
    local equippedDiamond = CreateFrame("Frame", nil, row)
    equippedDiamond:SetSize(14, 14)
    equippedDiamond:SetPoint("CENTER", row, "CENTER", 42, 0)
    equippedDiamond:SetFrameLevel(row:GetFrameLevel() + 3)
    local diamondIcon = equippedDiamond:CreateTexture(nil, "OVERLAY")
    diamondIcon:SetAllPoints()
    diamondIcon:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcon_3")
    diamondIcon:SetVertexColor(1.00, 0.90, 0.2, 0.9)
    equippedDiamond:Hide()

    -- Item name (top-left of text area, stretches to source area)
    local itemName = NewText(row, 11)
    itemName:SetTextColor(C_EPIC[1], C_EPIC[2], C_EPIC[3], 1)
    itemName:SetPoint("TOPLEFT", iconWrap, "TOPRIGHT", 8, -3)
    itemName:SetPoint("RIGHT", row, "CENTER", 40, 0)
    itemName:SetJustifyH("LEFT")
    itemName:SetWordWrap(false)

    -- Enchant / meta line (below name, left side)
    local enchantText = NewText(row, 9)
    enchantText:SetTextColor(0.00, 0.80, 0.40, 0.85)
    enchantText:SetPoint("BOTTOMLEFT", iconWrap, "BOTTOMRIGHT", 8, 3)
    enchantText:SetPoint("RIGHT", row, "CENTER", 40, 0)
    enchantText:SetJustifyH("LEFT")
    enchantText:SetWordWrap(false)

    -- Source tag (far right, flush) — reusable, created once
    local sourceTagHolder = CreateFrame("Frame", nil, row)
    sourceTagHolder:SetPoint("RIGHT", row, "RIGHT", -8, 0)
    sourceTagHolder:SetSize(38, 14)

    local tagBG = NewTexture(sourceTagHolder, "BACKGROUND")
    tagBG:SetAllPoints()
    local tagBorder = AddBorder(sourceTagHolder)
    local tagLabel = sourceTagHolder:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    tagLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    tagLabel:SetAllPoints()
    tagLabel:SetJustifyH("CENTER")

    -- Source detail text (between item name area and badge)
    local sourceText = NewText(row, 9)
    sourceText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.85)
    sourceText:SetPoint("LEFT", row, "CENTER", 44, 0)
    sourceText:SetPoint("RIGHT", sourceTagHolder, "LEFT", -6, 0)
    sourceText:SetJustifyH("RIGHT")
    sourceText:SetWordWrap(false)

    -- Alt indicator dot (▾ bottom-right of icon)
    local altDot = NewText(row, 7)
    altDot:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    altDot:SetText("▾")
    altDot:SetPoint("BOTTOMRIGHT", iconWrap, "BOTTOMRIGHT", 1, 1)

    -- Pre-created gem dot frames (max 4 gems, reused each populate)
    local gemHolder = CreateFrame("Frame", nil, row)
    gemHolder:SetSize(1, 8)
    gemHolder:SetPoint("BOTTOMLEFT", iconWrap, "BOTTOMRIGHT", 8, 3)

    local MAX_GEMS = 4
    local DOT_SZ = 7
    local DOT_GAP = 3
    local gemDots = {}
    for gi = 1, MAX_GEMS do
        local dot = CreateFrame("Frame", nil, row)
        dot:SetSize(DOT_SZ, DOT_SZ)
        dot:SetPoint("BOTTOMLEFT", gemHolder, "BOTTOMLEFT", (gi - 1) * (DOT_SZ + DOT_GAP), 0)
        local dotBG = NewTexture(dot, "BACKGROUND")
        dotBG:SetAllPoints()
        local dotShine = NewTexture(dot, "ARTWORK")
        dotShine:SetPoint("TOPLEFT", 1, -1)
        dotShine:SetPoint("BOTTOMRIGHT", -1, 1)
        dot.bg = dotBG
        dot.shine = dotShine
        dot:Hide()
        gemDots[gi] = dot
    end

    -- Alt row background (used for alt items, hidden by default)
    local altBG = NewTexture(row, "BACKGROUND")
    altBG:SetAllPoints()
    altBG:SetColorTexture(0.12, 0.10, 0.20, 0.6)
    altBG:Hide()

    row.hoverBG       = hoverBG
    row.iconBorder    = iconBorder
    row.iconTex       = iconTex
    row.iconFallback  = iconFallback
    row.iconGlow      = iconGlow
    row.equippedBG    = equippedBG
    row.equippedDiamond = equippedDiamond
    row.itemName      = itemName
    row.enchantText   = enchantText
    row.sourceText    = sourceText
    row.sourceHolder  = sourceTagHolder
    row.tagBG         = tagBG
    row.tagBorder     = tagBorder
    row.tagLabel      = tagLabel
    row.altDot        = altDot
    row.gemHolder     = gemHolder
    row.gemDots       = gemDots
    row.altBG         = altBG
    row.slotKey       = slotInfo.key
    row.slotLabel     = slotLabel

    return row
end

-- ============================================================
-- SECTION HEADER (must be defined before pool code)
-- ============================================================
local function CreateSectionHeader(parent, text)
    local f = CreateFrame("Frame", nil, parent)
    f:SetHeight(16)

    local bg = NewTexture(f, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.310, 0.780, 0.471, 0.03)

    local topLine = NewTexture(f, "BORDER")
    topLine:SetColorTexture(0.220, 0.188, 0.345, 0.40)
    topLine:SetPoint("TOPLEFT"); topLine:SetPoint("TOPRIGHT"); topLine:SetHeight(1)

    local botLine = NewTexture(f, "BORDER")
    botLine:SetColorTexture(0.220, 0.188, 0.345, 0.40)
    botLine:SetPoint("BOTTOMLEFT"); botLine:SetPoint("BOTTOMRIGHT"); botLine:SetHeight(1)

    local label = NewText(f, 9)
    label:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    label:SetText(text:upper())
    label:SetPoint("LEFT", f, "LEFT", 10, 0)
    label:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")

    f.label = label
    return f
end

-- Frame pools for recycling
local gearRowPool = {}
local sectionHeaderPool = {}
local activeGearRows = {}

-- Forward-declare pool release functions (defined after Refresh)
local ReleaseAllConsumableRows
local ReleaseAllGemRows
local activeSectionHeaders = {}

-- Acquire a gear row from pool or create new
local function AcquireGearRow(parent, slotInfo, isAlt)
    local row = table.remove(gearRowPool)
    if not row then
        row = CreateGearRow(parent, slotInfo, isAlt)
    end
    row:SetParent(parent)
    row:Show()
    activeGearRows[#activeGearRows + 1] = row
    return row
end

-- Acquire a section header from pool or create new
local function AcquireSectionHeader(parent, text)
    local hdr = table.remove(sectionHeaderPool)
    if not hdr then
        hdr = CreateSectionHeader(parent, text)
    else
        hdr.label:SetText(text:upper())
    end
    hdr:SetParent(parent)
    hdr:Show()
    activeSectionHeaders[#activeSectionHeaders + 1] = hdr
    return hdr
end

-- Release all active frames back to pools
local function ReleaseAllFrames()
    for _, row in ipairs(activeGearRows) do
        row:Hide()
        row:ClearAllPoints()
        gearRowPool[#gearRowPool + 1] = row
    end
    wipe(activeGearRows)

    for _, hdr in ipairs(activeSectionHeaders) do
        hdr:Hide()
        hdr:ClearAllPoints()
        sectionHeaderPool[#sectionHeaderPool + 1] = hdr
    end
    wipe(activeSectionHeaders)
end

-- Configure a pooled gear row for its current slot/alt state
local function ConfigureGearRow(row, slotInfo, isAlt)
    local leftPad = isAlt and (10 + ALT_ROW_INDENT) or 10
    row.slotLabel:SetText(isAlt and "" or slotInfo.label:upper())
    row.slotLabel:ClearAllPoints()
    row.slotLabel:SetPoint("LEFT", row, "LEFT", leftPad, 0)
    row.slotLabel:SetWidth(isAlt and (SLOT_LABEL_W - ALT_ROW_INDENT) or SLOT_LABEL_W)
    row.slotKey = slotInfo.key

    -- Show alt row dimming for alternates, hide for primaries
    if row.altBG then
        if isAlt then row.altBG:Show() else row.altBG:Hide() end
    end
end

-- Track which slots are expanded to show alternatives
local expandedSlots = {}

-- ============================================================
-- POPULATE A ROW WITH ITEM DATA
-- ============================================================
local function PopulateRow(row, item, slotInfo, hasAlts, isAlt, altIndex)
    if not item then
        row.itemName:SetText("— No data —")
        row.itemName:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
        row.enchantText:SetText("")
        row.sourceText:SetText("")
        row.altDot:SetText("")
        row.iconTex:Hide()
        row.iconFallback:Show()
        row.iconGlow:Hide()
        row.equippedBG:Hide()
        row.equippedDiamond:Hide()
        row.sourceHolder:Hide()
        for _, dot in ipairs(row.gemDots) do dot:Hide() end
        if row.altBG then row.altBG:Hide() end
        return
    end

    -- Item name + quality color (use actual item quality if available)
    local nameColor = C_EPIC
    local borderColor = C_EPIC
    if item.itemId then
        local _, _, itemRarity = GetItemInfo(item.itemId)
        if itemRarity and GetItemQualityColor then
            local r, g, b = GetItemQualityColor(itemRarity)
            if r then
                nameColor = { r, g, b, 1 }
                borderColor = nameColor
            end
        end
    end

    if isAlt then
        row.itemName:SetText("#" .. (altIndex + 1) .. " " .. item.name)
    else
        row.itemName:SetText(item.name)
    end
    row.itemName:SetTextColor(nameColor[1], nameColor[2], nameColor[3], 1)
    row.iconBorder:SetColorTexture(borderColor[1], borderColor[2], borderColor[3], 1)

    -- Item icon via itemId
    local iconFound = false
    if item.itemId then
        if GetItemInfoInstant then
            local _, _, _, _, icon = GetItemInfoInstant(item.itemId)
            if icon then
                row.iconTex:SetTexture(icon)
                iconFound = true
            end
        end
        if not iconFound then
            local _, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(item.itemId)
            if itemIcon then
                row.iconTex:SetTexture(itemIcon)
                iconFound = true
            end
        end
        -- Queue item info for tooltip caching
        GetItemInfo(item.itemId)
    else
        local _, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(item.name)
        if itemIcon then
            row.iconTex:SetTexture(itemIcon)
            iconFound = true
        end
    end
    if iconFound then
        row.iconTex:Show()
        row.iconFallback:Hide()
    else
        row.iconTex:Hide()
        row.iconFallback:Show()
    end

    -- Green glow + row tint + diamond if this item is equipped and we're viewing our own class
    if item.itemId and WTBT:IsViewingOwnClass() and WTBT:IsItemEquipped(item.itemId) then
        row.iconGlow:Show()
        row.equippedBG:Show()
        row.equippedDiamond:Show()
        -- Hide alt row dimming so the green tint matches normal rows
        if row.altBG then row.altBG:Hide() end
    else
        row.iconGlow:Hide()
        row.equippedBG:Hide()
        row.equippedDiamond:Hide()
        -- Restore alt row dimming
        if row.altBG then row.altBG:Show() end
    end

    -- Enchant
    if item.enchant then
        row.enchantText:SetText(item.enchant)
        row.enchantText:SetTextColor(0.00, 0.78, 0.40, 0.85)
    else
        row.enchantText:SetText("No enchant")
        row.enchantText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.5)
    end

    -- Source detail text (visible in row)
    if item.source then
        row.sourceText:SetText(item.source)
    else
        row.sourceText:SetText("")
    end

    -- Alt dot (expand/collapse indicator)
    if hasAlts and not isAlt then
        local expanded = expandedSlots[slotInfo.key]
        row.altDot:SetText(expanded and "▴" or "▾")
    else
        row.altDot:SetText("")
    end

    -- Gem dots — reuse pre-created dot frames
    -- Use hand-entered gems if available, otherwise fall back to tooltip socket scan
    local DOT_SZ = 7
    local DOT_GAP = 3
    local gemList = item.gems
    local isFallback = false
    if (not gemList or #gemList == 0) and item.itemId then
        local scanned = WTBT:GetItemSockets(item.itemId)
        if scanned and scanned ~= false then
            gemList = scanned
            isFallback = true
        end
    end
    local gemCount = (gemList and #gemList) or 0
    for gi, dot in ipairs(row.gemDots) do
        if gi <= gemCount then
            local gemColor = gemList[gi]
            local gc = GEM_COLORS[gemColor] or { 0.5, 0.5, 0.5 }
            local size = (gemColor == "meta") and 8 or DOT_SZ
            dot:SetSize(size, size)
            if isFallback then
                -- Dimmed outline style for auto-detected sockets
                dot.bg:SetColorTexture(gc[1] * 0.25, gc[2] * 0.25, gc[3] * 0.25, 0.6)
                dot.shine:SetColorTexture(gc[1], gc[2], gc[3], 0.35)
            else
                -- Full bright style for curated gem recommendations
                dot.bg:SetColorTexture(gc[1] * 0.5, gc[2] * 0.5, gc[3] * 0.5, 1)
                dot.shine:SetColorTexture(gc[1], gc[2], gc[3], 0.85)
            end
            dot:Show()
        else
            dot:Hide()
        end
    end
    row.enchantText:ClearAllPoints()
    if gemCount > 0 then
        local totalW = gemCount * DOT_SZ + (gemCount - 1) * DOT_GAP + 6
        row.enchantText:SetPoint("BOTTOMLEFT", row.gemHolder, "BOTTOMLEFT", totalW, 0)
    else
        row.enchantText:SetPoint("BOTTOMLEFT", row.gemHolder, "BOTTOMLEFT", 0, 0)
    end
    row.enchantText:SetPoint("RIGHT", row, "CENTER", 40, 0)

    -- Source tag — update existing tag in-place
    local sourceType = item.sourceType
    if sourceType then
        local sc = WTBT.SOURCE_COLORS[sourceType] or { 0.6, 0.6, 0.6 }
        local tagNames = { drop="Drop", craft="Craft", badge="Badge", rep="Rep", quest="Quest", pvp="PvP", token="Token", custom="Note" }
        row.tagBG:SetColorTexture(sc[1], sc[2], sc[3], 0.15)
        for _, e in ipairs(row.tagBorder) do e:SetColorTexture(sc[1], sc[2], sc[3], 0.30) end
        row.tagLabel:SetTextColor(sc[1], sc[2], sc[3], 1)
        row.tagLabel:SetText(tagNames[sourceType] or sourceType)
        row.sourceHolder:Show()
    else
        row.sourceHolder:Hide()
    end

    -- Tooltip on hover — use native item tooltip if we have itemId
    row:SetScript("OnEnter", function(self)
        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.06)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:ClearLines()
        if item.itemId then
            GameTooltip:SetHyperlink("item:" .. item.itemId)
        else
            -- Fallback: try by name
            local itemName, itemLink = GetItemInfo(item.name)
            if itemLink then
                GameTooltip:SetHyperlink(itemLink)
            else
                -- Manual tooltip as last resort
                if isAlt then
                    GameTooltip:AddLine(item.name, C_RARE[1], C_RARE[2], C_RARE[3])
                else
                    GameTooltip:AddLine(item.name, C_EPIC[1], C_EPIC[2], C_EPIC[3])
                end
                GameTooltip:AddLine(slotInfo.label, 1, 1, 1)
                if item.source then
                    GameTooltip:AddLine(" ")
                    GameTooltip:AddDoubleLine("Source:", item.source, 0.7, 0.7, 0.7, 1, 1, 1)
                end
            end
        end
        GameTooltip:Show()
    end)
    row:SetScript("OnLeave", function(self)
        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)
        GameTooltip:Hide()
    end)

    -- Click to expand/collapse alternatives
    if hasAlts and not isAlt then
        row:SetScript("OnClick", function(self)
            expandedSlots[slotInfo.key] = not expandedSlots[slotInfo.key]
            WTBT_UI:Refresh()
        end)
    else
        row:SetScript("OnClick", nil)
    end
end

-- Helper: get class color by name
local function GetClassColor(className)
    for _, c in ipairs(WTBT.CLASSES) do
        if c.name == className then return c.color end
    end
    return { 1, 1, 1 }
end

-- ============================================================
-- DROPDOWN (custom popup list, no UIDropDownMenuTemplate)
-- ============================================================
local activePopup = nil -- track open popup so we can close it

local function CloseActivePopup()
    if activePopup then activePopup:Hide(); activePopup = nil end
end

-- colorFn: optional function(optionName) returning {r,g,b} for that option
local function CreateWTBTDropdown(parent, options, currentVal, onChange, colorFn)
    local btn = CreateFrame("Button", nil, parent)
    btn:SetSize(130, 24)
    btn:RegisterForClicks("LeftButtonUp")

    local bg = NewTexture(btn, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.09, 0.08, 0.18, 1)

    local btnBorder = AddBorder(btn, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

    local label = NewText(btn, 11)
    label:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    label:SetText(currentVal)
    label:SetPoint("LEFT", btn, "LEFT", 8, 0)
    label:SetPoint("RIGHT", btn, "RIGHT", -18, 0)
    label:SetJustifyH("LEFT")

    local arrow = NewText(btn, 10)
    arrow:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    arrow:SetText("▾")
    arrow:SetPoint("RIGHT", btn, "RIGHT", -6, 0)

    btn.label = label
    btn.options = options
    btn.colorFn = colorFn

    -- Apply initial color
    if colorFn then
        local c = colorFn(currentVal)
        if c then label:SetTextColor(c[1], c[2], c[3], 1) end
    end

    btn:SetScript("OnEnter", function(self)
        for _, e in ipairs(btnBorder) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
    end)
    btn:SetScript("OnLeave", function(self)
        for _, e in ipairs(btnBorder) do e:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4]) end
    end)

    -- Custom popup list
    btn:SetScript("OnClick", function(self)
        CloseActivePopup()

        local popup = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        popup:SetFrameStrata("TOOLTIP")
        popup:SetClampedToScreen(true)

        local optList = self.options
        local rowH = 20
        local popW = self:GetWidth()
        local popH = #optList * rowH + 4

        popup:SetSize(popW, popH)
        popup:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -2)

        local popBG = NewTexture(popup, "BACKGROUND")
        popBG:SetAllPoints()
        popBG:SetColorTexture(0.07, 0.06, 0.12, 0.97)
        AddBorder(popup, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

        local cfn = self.colorFn
        for i, opt in ipairs(optList) do
            local optBtn = CreateFrame("Button", nil, popup)
            optBtn:SetSize(popW - 2, rowH)
            optBtn:SetPoint("TOPLEFT", popup, "TOPLEFT", 1, -(2 + (i - 1) * rowH))
            optBtn:RegisterForClicks("LeftButtonUp", "LeftButtonDown")

            local optLabel = NewText(optBtn, 11)
            optLabel:SetText(opt)
            optLabel:SetPoint("LEFT", optBtn, "LEFT", 8, 0)
            optLabel:SetJustifyH("LEFT")

            -- Color the option text
            if cfn then
                local c = cfn(opt)
                if c then optLabel:SetTextColor(c[1], c[2], c[3], 1) end
            else
                optLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
            end

            local optHover = NewTexture(optBtn, "HIGHLIGHT")
            optHover:SetAllPoints()
            optHover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.15)

            optBtn:SetScript("OnClick", function()
                label:SetText(opt)
                if cfn then
                    local c = cfn(opt)
                    if c then label:SetTextColor(c[1], c[2], c[3], 1) end
                end
                onChange(opt)
                popup:Hide()
                activePopup = nil
            end)
        end

        activePopup = popup

        -- Close popup when clicking elsewhere
        local elapsed = 0
        popup:SetScript("OnUpdate", function(self, dt)
            elapsed = elapsed + dt
            if elapsed > 0.05 then
                if not MouseIsOver(self) and not MouseIsOver(btn) and IsMouseButtonDown("LeftButton") then
                    self:Hide()
                    activePopup = nil
                end
            end
        end)
    end)

    return btn
end

-- ============================================================
-- PHASE BUTTONS
-- ============================================================
local function CreatePhaseSelector(parent)
    local holder = CreateFrame("Frame", nil, parent)
    holder:SetSize(5 * 26 + 4 * 2, 24)

    local buttons = {}
    for i = 1, 5 do
        local btn = CreateFrame("Button", nil, holder)
        btn:SetSize(26, 24)
        btn:SetPoint("LEFT", holder, "LEFT", (i - 1) * 28, 0)

        local bg = NewTexture(btn, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(0.07, 0.06, 0.12, 1)

        local border = AddBorder(btn, 0.16, 0.12, 0.28, 1)

        local label = NewText(btn, 9)
        label:SetText("P" .. i)
        label:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
        label:SetAllPoints()
        label:SetJustifyH("CENTER")
        label:SetJustifyV("MIDDLE")
        label:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")

        btn.bg     = bg
        btn.border = border
        btn.label  = label
        btn.phase  = i

        btn:SetScript("OnClick", function(self)
            WTBT.state.phase = self.phase
            -- update all button visuals
            for _, b in ipairs(buttons) do
                local active = (b.phase == WTBT.state.phase)
                if active then
                    b.bg:SetColorTexture(0.10, 0.22, 0.15, 1)
                    for _, e in ipairs(b.border) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
                    b.label:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
                else
                    b.bg:SetColorTexture(0.07, 0.06, 0.12, 1)
                    for _, e in ipairs(b.border) do e:SetColorTexture(0.16, 0.12, 0.28, 1) end
                    b.label:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
                end
            end
            WTBT_UI:Refresh()
        end)

        buttons[i] = btn
    end

    holder.buttons = buttons

    -- Activate current phase
    local function SetActive(phase)
        for _, b in ipairs(buttons) do
            local active = (b.phase == phase)
            if active then
                b.bg:SetColorTexture(0.10, 0.22, 0.15, 1)
                for _, e in ipairs(b.border) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
                b.label:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
            else
                b.bg:SetColorTexture(0.07, 0.06, 0.12, 1)
                for _, e in ipairs(b.border) do e:SetColorTexture(0.16, 0.12, 0.28, 1) end
                b.label:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
            end
        end
    end

    holder.SetActive = SetActive
    SetActive(WTBT.state.phase)

    return holder
end

-- ============================================================
-- CORNER ACCENTS (fel green brackets)
-- ============================================================
local function AddCornerAccents(frame)
    local sz = 10
    local corners = {
        { point = "TOPLEFT",     x =  0, y =  0, wx = sz, wy = 1, hx = 1, hy = -sz },
        { point = "TOPRIGHT",    x =  0, y =  0, wx = -sz, wy = 1, hx = -1, hy = -sz },
        { point = "BOTTOMLEFT",  x =  0, y =  0, wx = sz, wy = -1, hx = 1, hy = sz },
        { point = "BOTTOMRIGHT", x =  0, y =  0, wx = -sz, wy = -1, hx = -1, hy = sz },
    }
    for _, c in ipairs(corners) do
        -- horizontal bar
        local h = NewTexture(frame, "OVERLAY")
        h:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
        h:SetPoint(c.point, frame, c.point, 0, 0)
        h:SetSize(sz, 2)
        -- vertical bar
        local v = NewTexture(frame, "OVERLAY")
        v:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
        v:SetPoint(c.point, frame, c.point, 0, 0)
        v:SetSize(2, sz)
    end
end

-- ============================================================
-- BUILD — called once on ADDON_LOADED
-- ============================================================
function WTBT_UI:Build()
    -- Main panel
    local panel = CreateFrame("Frame", "WTBTPanel", UIParent, "BackdropTemplate")
    panel:Hide()  -- Start hidden, shown only by user action
    panel:SetScript("OnShow", function()
        WTBT_UI:Refresh()  -- Re-render when shown (items may have cached since init)
    end)
    panel:SetSize(PANEL_W, PANEL_H_MAX)
    panel:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    panel:SetFrameStrata("HIGH")
    panel:SetMovable(true)
    panel:SetResizable(true)
    if panel.SetResizeBounds then
        panel:SetResizeBounds(PANEL_MIN_W, PANEL_MIN_H, 800, 1000)
    else
        panel:SetMinResize(PANEL_MIN_W, PANEL_MIN_H)
        panel:SetMaxResize(800, 1000)
    end
    panel:EnableMouse(true)
    panel:RegisterForDrag("LeftButton")
    panel:SetScript("OnDragStart", function(self) self:StartMoving() end)
    panel:SetScript("OnDragStop",  function(self) self:StopMovingOrSizing() end)
    panel:SetClampedToScreen(true)

    -- Background
    local bg = NewTexture(panel, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(C_BG[1], C_BG[2], C_BG[3], C_BG[4])

    -- Outer border
    AddBorder(panel, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
    AddCornerAccents(panel)

    self.panel = panel

    -- ---- HEADER (slim, plain texture on main frame) ----
    local headerBG = NewTexture(panel, "BACKGROUND")
    headerBG:SetPoint("TOPLEFT", panel, "TOPLEFT", 1, -1)
    headerBG:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -1, -1)
    headerBG:SetHeight(HEADER_H)
    headerBG:SetColorTexture(C_HEADER_BG[1], C_HEADER_BG[2], C_HEADER_BG[3], C_HEADER_BG[4])

    -- 1px separator below the header
    local headerSep = NewTexture(panel, "BORDER")
    headerSep:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 1)
    headerSep:SetPoint("TOPLEFT", panel, "TOPLEFT", 1, -HEADER_H - 1)
    headerSep:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -1, -HEADER_H - 1)
    headerSep:SetHeight(1)

    -- Title — slim font, two-tone color preserved
    local title = panel:CreateFontString(nil, "OVERLAY")
    title:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
    title:SetText("|cff4FC778Wick's|r |cffD4C8A1TBC BIS Tracker|r")
    title:SetPoint("LEFT", panel, "TOPLEFT", 10, -HEADER_H / 2)

    -- Close (×) button — plain text, no border
    local closeBtn = CreateFrame("Button", nil, panel)
    closeBtn:SetSize(HEADER_H - 4, HEADER_H - 4)
    closeBtn:SetPoint("RIGHT", panel, "TOPRIGHT", -4, -HEADER_H / 2)

    local closeX = closeBtn:CreateFontString(nil, "OVERLAY")
    closeX:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    closeX:SetText("×")
    closeX:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    closeX:SetAllPoints()
    closeX:SetJustifyH("CENTER")
    closeX:SetJustifyV("MIDDLE")

    closeBtn:SetScript("OnEnter", function()
        closeX:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    end)
    closeBtn:SetScript("OnLeave", function()
        closeX:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    end)
    closeBtn:SetScript("OnClick", function() panel:Hide() end)

    -- ---- SELECTOR BAR ----
    local selectorBar = CreateFrame("Frame", nil, panel)
    selectorBar:SetPoint("TOPLEFT",  panel, "TOPLEFT",  1, -(HEADER_H + 1))
    selectorBar:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -1, -(HEADER_H + 1))
    selectorBar:SetHeight(SELECTOR_H)

    local selectorBG = NewTexture(selectorBar, "BACKGROUND")
    selectorBG:SetAllPoints()
    selectorBG:SetColorTexture(0, 0, 0, 0.20)

    local selectorBot = NewTexture(selectorBar, "BORDER")
    selectorBot:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.5)
    selectorBot:SetPoint("BOTTOMLEFT"); selectorBot:SetPoint("BOTTOMRIGHT"); selectorBot:SetHeight(1)

    -- Class dropdown
    local classNames = {}
    for _, c in ipairs(WTBT.CLASSES) do classNames[#classNames + 1] = c.name end

    local classDD = CreateWTBTDropdown(selectorBar, classNames, WTBT.state.class, function(val)
        WTBT.state.class = val
        -- Reset spec to first valid and update spec dropdown options
        for _, c in ipairs(WTBT.CLASSES) do
            if c.name == val then
                WTBT.state.spec = c.specs[1]
                WTBT_UI.specDD.label:SetText(c.specs[1])
                WTBT_UI.specDD.options = c.specs
                break
            end
        end
        -- Reset custom list selection for new class/spec
        WTBT.state.customList = nil
        local csNames = WTBT:GetCustomListNames()
        if #csNames > 0 then WTBT.state.customList = csNames[1] end
        WTBT_UI:Refresh()
    end, GetClassColor)
    classDD:SetPoint("LEFT", selectorBar, "LEFT", 8, 0)
    classDD:SetSize(110, 24)

    -- Spec dropdown
    local specNames = {}
    for _, c in ipairs(WTBT.CLASSES) do
        if c.name == WTBT.state.class then
            specNames = c.specs
            break
        end
    end

    local specDD = CreateWTBTDropdown(selectorBar, specNames, WTBT.state.spec, function(val)
        WTBT.state.spec = val
        -- Reset custom list selection for new spec
        WTBT.state.customList = nil
        local csNames = WTBT:GetCustomListNames()
        if #csNames > 0 then WTBT.state.customList = csNames[1] end
        WTBT_UI:Refresh()
    end)
    specDD:SetPoint("LEFT", classDD, "RIGHT", 4, 0)
    specDD:SetSize(110, 24)

    self.classDD = classDD
    self.specDD = specDD

    -- Phase selector
    local phaseBar = CreatePhaseSelector(selectorBar)
    phaseBar:SetPoint("RIGHT", selectorBar, "RIGHT", -8, 0)

    self.phaseBar = phaseBar

    -- ---- TAB BAR ----
    local tabBar = CreateFrame("Frame", nil, panel)
    tabBar:SetPoint("TOPLEFT",  panel, "TOPLEFT",  1, -(HEADER_H + SELECTOR_H + 1))
    tabBar:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -1, -(HEADER_H + SELECTOR_H + 1))
    tabBar:SetHeight(TAB_BAR_H)

    local tabBarBG = NewTexture(tabBar, "BACKGROUND")
    tabBarBG:SetAllPoints()
    tabBarBG:SetColorTexture(0, 0, 0, 0.20)

    local tabBarBot = NewTexture(tabBar, "BORDER")
    tabBarBot:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.5)
    tabBarBot:SetPoint("BOTTOMLEFT"); tabBarBot:SetPoint("BOTTOMRIGHT"); tabBarBot:SetHeight(1)

    local TAB_DEFS = {
        { key = "bis",         label = "BIS Tracker" },
        { key = "custom",      label = "Custom Lists" },
        { key = "consumables", label = "Consumables" },
        { key = "gems",        label = "Gems" },
        { key = "softres",     label = "SoftRes" },
    }

    local TAB_W = 100
    local TAB_GAP = 3
    local tabButtons = {}

    local function UpdateTabVisuals()
        for _, tb in ipairs(tabButtons) do
            local active = (tb.tabKey == WTBT.state.tab)
            if active then
                tb.bg:SetColorTexture(0.10, 0.22, 0.15, 1)
                for _, e in ipairs(tb.border) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
                tb.label:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
            else
                tb.bg:SetColorTexture(0.07, 0.06, 0.12, 1)
                for _, e in ipairs(tb.border) do e:SetColorTexture(0.16, 0.12, 0.28, 1) end
                tb.label:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
            end
        end
    end

    for i, def in ipairs(TAB_DEFS) do
        local tb = CreateFrame("Button", nil, tabBar)
        tb:SetSize(TAB_W, TAB_BAR_H - 6)
        tb:SetPoint("LEFT", tabBar, "LEFT", 8 + (i - 1) * (TAB_W + TAB_GAP), 0)

        local tbBG = NewTexture(tb, "BACKGROUND")
        tbBG:SetAllPoints()

        local tbBorder = AddBorder(tb)

        local tbLabel = NewText(tb, 9)
        tbLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
        tbLabel:SetText(def.label)
        tbLabel:SetAllPoints()
        tbLabel:SetJustifyH("CENTER")
        tbLabel:SetJustifyV("MIDDLE")

        tb.bg     = tbBG
        tb.border = tbBorder
        tb.label  = tbLabel
        tb.tabKey = def.key

        tb:SetScript("OnClick", function()
            WTBT.state.tab = def.key
            UpdateTabVisuals()
            WTBT_UI:UpdateSelectorVisibility()
            WTBT_UI:Refresh()
        end)

        tabButtons[i] = tb
    end

    self.tabBar = tabBar
    self.tabButtons = tabButtons
    self.UpdateTabVisuals = UpdateTabVisuals

    UpdateTabVisuals()

    -- ---- FILTER BUTTON (right side of tab bar) ----
    local filterBtn = CreateFrame("Button", nil, tabBar)
    filterBtn:SetSize(50, TAB_BAR_H - 6)
    filterBtn:SetPoint("RIGHT", tabBar, "RIGHT", -8, 0)

    local filterBG = NewTexture(filterBtn, "BACKGROUND")
    filterBG:SetAllPoints()
    filterBG:SetColorTexture(0.07, 0.06, 0.12, 1)
    local filterBorder = AddBorder(filterBtn, 0.16, 0.12, 0.28, 1)

    local filterLabel = NewText(filterBtn, 9)
    filterLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    filterLabel:SetText("Filter")
    filterLabel:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    filterLabel:SetAllPoints()
    filterLabel:SetJustifyH("CENTER")
    filterLabel:SetJustifyV("MIDDLE")

    filterBtn:SetScript("OnEnter", function()
        for _, e in ipairs(filterBorder) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
        filterLabel:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    end)
    filterBtn:SetScript("OnLeave", function()
        for _, e in ipairs(filterBorder) do e:SetColorTexture(0.16, 0.12, 0.28, 1) end
        filterLabel:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    end)

    -- Filter popup (hide World Boss / PvP items)
    local filterPopup = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    filterPopup:SetFrameStrata("TOOLTIP")
    filterPopup:SetClampedToScreen(true)
    filterPopup:Hide()

    local FILTER_DEFS = {
        { key = "hideWorldBoss", label = "World Boss" },
        { key = "hidePvP",      label = "PvP" },
    }

    local FROW_H = 20
    local FPOP_W = 130
    local FPOP_H = #FILTER_DEFS * FROW_H + 6

    filterPopup:SetSize(FPOP_W, FPOP_H)
    filterPopup:SetPoint("TOPRIGHT", filterBtn, "BOTTOMRIGHT", 0, -2)

    local fpBG = NewTexture(filterPopup, "BACKGROUND")
    fpBG:SetAllPoints()
    fpBG:SetColorTexture(0.07, 0.06, 0.12, 0.97)
    AddBorder(filterPopup, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

    local filterChecks = {}
    for i, ft in ipairs(FILTER_DEFS) do
        local frow = CreateFrame("Button", nil, filterPopup)
        frow:SetSize(FPOP_W - 4, FROW_H)
        frow:SetPoint("TOPLEFT", filterPopup, "TOPLEFT", 2, -(3 + (i - 1) * FROW_H))
        frow:RegisterForClicks("LeftButtonUp")

        local rowHover = NewTexture(frow, "HIGHLIGHT")
        rowHover:SetAllPoints()
        rowHover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.10)

        local check = NewText(frow, 9)
        check:SetPoint("LEFT", frow, "LEFT", 6, 0)
        check:SetWidth(14)
        check:SetJustifyH("LEFT")

        local lbl = NewText(frow, 9)
        lbl:SetText("Hide " .. ft.label)
        lbl:SetPoint("LEFT", check, "RIGHT", 2, 0)
        lbl:SetJustifyH("LEFT")

        local function UpdateCheck()
            if WTBT.settings[ft.key] then
                check:SetText("|cffff4444x|r")
                lbl:SetTextColor(0.9, 0.3, 0.3, 1)
            else
                check:SetText("|cff4FC778o|r")
                lbl:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
            end
        end
        UpdateCheck()

        frow:SetScript("OnClick", function()
            WTBT.settings[ft.key] = not WTBT.settings[ft.key]
            UpdateCheck()
            WTBT_UI:Refresh()
        end)

        filterChecks[i] = { row = frow, update = UpdateCheck }
    end

    filterBtn:SetScript("OnClick", function()
        if filterPopup:IsShown() then
            filterPopup:Hide()
        else
            for _, fc in ipairs(filterChecks) do fc.update() end
            filterPopup:Show()
        end
    end)

    -- Close filter popup when clicking elsewhere
    filterPopup:SetScript("OnUpdate", function(self)
        if not MouseIsOver(self) and not MouseIsOver(filterBtn) and IsMouseButtonDown("LeftButton") then
            self:Hide()
        end
    end)

    self.filterPopup = filterPopup

    -- ---- SCROLL FRAME (gear list) ----
    local scrollFrame = CreateFrame("ScrollFrame", "WTBTScrollFrame", panel, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT",  panel, "TOPLEFT",  1, -(HEADER_H + SELECTOR_H + TAB_BAR_H + 2))
    scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -20, STATUS_H + 1)

    local scrollChild = CreateFrame("Frame", "WTBTScrollChild", scrollFrame)
    scrollChild:SetHeight(1) -- height set dynamically in Refresh
    scrollChild:SetWidth(scrollFrame:GetWidth())
    scrollFrame:SetScrollChild(scrollChild)

    -- Keep scroll child width in sync when panel is resized
    scrollFrame:SetScript("OnSizeChanged", function(self, w, h)
        scrollChild:SetWidth(w)
    end)

    -- Style the scrollbar
    local sb = WTBTScrollFrameScrollBar
    if sb then
        sb:SetWidth(6)
    end

    self.scrollChild = scrollChild
    self.scrollFrame = scrollFrame

    -- ---- STATUS BAR ----
    local statusBar = CreateFrame("Frame", nil, panel)
    statusBar:SetPoint("BOTTOMLEFT",  panel, "BOTTOMLEFT",  1, 1)
    statusBar:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -1, 1)
    statusBar:SetHeight(STATUS_H)

    local statusBG = NewTexture(statusBar, "BACKGROUND")
    statusBG:SetAllPoints()
    statusBG:SetColorTexture(0, 0, 0, 0.20)

    local statusTop = NewTexture(statusBar, "BORDER")
    statusTop:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.5)
    statusTop:SetPoint("TOPLEFT"); statusTop:SetPoint("TOPRIGHT"); statusTop:SetHeight(1)

    local statusLeft = NewText(statusBar, 9)
    statusLeft:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    statusLeft:SetPoint("LEFT", statusBar, "LEFT", 10, 0)

    -- Tooltip BIS toggle button
    local tooltipToggle = CreateFrame("Button", nil, statusBar)
    tooltipToggle:SetSize(80, 16)
    tooltipToggle:SetPoint("RIGHT", statusBar, "RIGHT", -10, 0)
    tooltipToggle:RegisterForClicks("LeftButtonUp")

    local tooltipToggleLabel = NewText(tooltipToggle, 8)
    tooltipToggleLabel:SetAllPoints()
    tooltipToggleLabel:SetJustifyH("RIGHT")

    local function UpdateTooltipToggle()
        if WTBT.settings.tooltipBIS then
            tooltipToggleLabel:SetText("|cff4FC778[BIS Tips: ON]|r")
        else
            tooltipToggleLabel:SetText("|cff6B598A[BIS Tips: OFF]|r")
        end
    end
    UpdateTooltipToggle()

    tooltipToggle:SetScript("OnClick", function()
        WTBT.settings.tooltipBIS = not WTBT.settings.tooltipBIS
        UpdateTooltipToggle()
    end)
    tooltipToggle:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine("Toggle BIS Tooltips", 1, 1, 1)
        GameTooltip:AddLine("When enabled, hovering any item in the game will show if it's on your BIS list.", 0.7, 0.7, 0.7, true)
        GameTooltip:Show()
    end)
    tooltipToggle:SetScript("OnLeave", function() GameTooltip:Hide() end)

    local statusRight = NewText(statusBar, 9)
    statusRight:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    statusRight:SetPoint("RIGHT", tooltipToggle, "LEFT", -8, 0)

    self.statusLeft  = statusLeft
    self.statusRight = statusRight

    -- ---- RESIZE GRIP ----
    local resizeGrip = CreateFrame("Button", nil, panel)
    resizeGrip:SetSize(16, 16)
    resizeGrip:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -2, 2)
    resizeGrip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeGrip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeGrip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")

    resizeGrip:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" then
            panel:StartSizing("BOTTOMRIGHT")
        end
    end)
    resizeGrip:SetScript("OnMouseUp", function(self, button)
        panel:StopMovingOrSizing()
    end)

    -- Minimap / slash command
    SLASH_WTBT1 = "/bis"
    SLASH_WTBT2 = "/wtbt"
    SlashCmdList["WTBT"] = function(msg)
        local cmd = strtrim((msg or ""):lower())
        if cmd == "" then
            if panel:IsShown() then panel:Hide() else panel:Show() end
        elseif cmd == "reset" then
            panel:ClearAllPoints()
            panel:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
            panel:SetSize(PANEL_W, PANEL_H_MAX)
            print("|cff4FC778[Wick's BIS]|r Position and size reset.")
        elseif cmd == "tips" or cmd == "tooltip" then
            WTBT.settings.tooltipBIS = not WTBT.settings.tooltipBIS
            local state = WTBT.settings.tooltipBIS and "ON" or "OFF"
            print("|cff4FC778[Wick's BIS]|r Tooltip BIS tags: " .. state)
        elseif cmd:match("^phase%s+(%d)$") then
            local p = tonumber(cmd:match("^phase%s+(%d)$"))
            if p and p >= 1 and p <= 5 then
                WTBT.state.phase = p
                WTBT_UI.phaseBar.SetActive(p)
                WTBT_UI:Refresh()
                print("|cff4FC778[Wick's BIS]|r Switched to Phase " .. p)
            end
        elseif cmd == "sr" or cmd == "softres" then
            WTBT.state.tab = "softres"
            UpdateTabVisuals()
            WTBT_UI:UpdateSelectorVisibility()
            WTBT_UI:Refresh()
            if not panel:IsShown() then panel:Show() end
        else
            print("|cff4FC778[Wick's BIS]|r Commands:")
            print("  /bis - Toggle window")
            print("  /bis reset - Reset window position and size")
            print("  /bis tips - Toggle BIS tooltip tags")
            print("  /bis phase 1-5 - Switch phase")
            print("  /bis sr - Open SoftRes tab")
        end
    end

    -- Initial selector visibility
    self:UpdateSelectorVisibility()

    -- Pre-create editbox to register shift-click hook early
    GetOrCreateEditBox()

    -- ---- MINIMAP BUTTON ----
    local mmBtn = CreateFrame("Button", "WTBTMinimapButton", Minimap)
    mmBtn:SetSize(31, 31)
    mmBtn:SetFrameStrata("MEDIUM")
    mmBtn:SetFrameLevel(8)
    mmBtn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    local mmOverlay = mmBtn:CreateTexture(nil, "OVERLAY")
    mmOverlay:SetSize(53, 53)
    mmOverlay:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    mmOverlay:SetPoint("TOPLEFT")

    local mmIcon = mmBtn:CreateTexture(nil, "BACKGROUND")
    mmIcon:SetSize(20, 20)
    mmIcon:SetTexture("Interface\\Icons\\INV_Jewelry_Ring_03")
    mmIcon:SetPoint("CENTER", mmBtn, "CENTER", 0, 0)

    local mmBG = mmBtn:CreateTexture(nil, "BACKGROUND", nil, -1)
    mmBG:SetSize(25, 25)
    mmBG:SetColorTexture(0, 0, 0, 0.6)
    mmBG:SetPoint("CENTER", mmBtn, "CENTER", 0, 0)

    -- Position around minimap edge (draggable)
    local minimapAngle = WTBT.settings.minimapAngle or 220
    local function UpdateMinimapPos()
        local rad = math.rad(minimapAngle)
        local x = math.cos(rad) * 80
        local y = math.sin(rad) * 80
        mmBtn:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end
    UpdateMinimapPos()

    -- Drag to reposition around minimap
    mmBtn:RegisterForDrag("LeftButton")
    mmBtn:SetScript("OnDragStart", function(self) self.dragging = true end)
    mmBtn:SetScript("OnDragStop",  function(self) self.dragging = false end)
    mmBtn:SetScript("OnUpdate", function(self)
        if self.dragging then
            local mx, my = Minimap:GetCenter()
            local cx, cy = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            cx, cy = cx / scale, cy / scale
            minimapAngle = math.deg(math.atan2(cy - my, cx - mx))
            WTBT.settings.minimapAngle = minimapAngle
            UpdateMinimapPos()
        end
    end)

    mmBtn:SetScript("OnClick", function()
        if panel:IsShown() then panel:Hide() else panel:Show() end
    end)
    mmBtn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:AddLine("|cff4FC778Wick's TBC BIS Tracker|r")
        GameTooltip:AddLine("Click to toggle", 0.7, 0.7, 0.7)
        GameTooltip:AddLine("Drag to move", 0.5, 0.5, 0.5)
        GameTooltip:Show()
    end)
    mmBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

    self.minimapButton = mmBtn
end

-- ============================================================
-- SELECTOR VISIBILITY — show/hide dropdowns & phase per tab
-- ============================================================
function WTBT_UI:UpdateSelectorVisibility()
    local tab = WTBT.state.tab or "bis"
    if tab == "bis" then
        self.classDD:Show()
        self.specDD:Show()
        self.phaseBar:Show()
    elseif tab == "custom" then
        self.classDD:Show()
        self.specDD:Show()
        self.phaseBar:Hide()
    elseif tab == "softres" then
        self.classDD:Hide()
        self.specDD:Hide()
        self.phaseBar:Hide()
    elseif tab == "consumables" then
        self.classDD:Show()
        self.specDD:Show()
        self.phaseBar:Hide()
    elseif tab == "gems" then
        self.classDD:Show()
        self.specDD:Show()
        self.phaseBar:Hide()
    end
end

-- ============================================================
-- REFRESH — dispatch to tab-specific content
-- ============================================================
function WTBT_UI:Refresh()
    local sc = self.scrollChild
    if not sc then return end

    -- Return all frames to pools for reuse
    ReleaseAllFrames()

    -- Hide placeholder text if it exists
    if self.placeholderText then self.placeholderText:Hide() end
    if self.placeholderTitle then self.placeholderTitle:Hide() end
    -- Hide custom list UI elements when not on custom tab
    if self.customBar then self.customBar:Hide() end
    if self.customEmptyText then self.customEmptyText:Hide() end
    -- Hide SoftRes UI elements and release grid cells when not on softres tab
    if self.softResBar then self.softResBar:Hide() end
    if self.srEmptyTitle then self.srEmptyTitle:Hide() end
    if self.srEmptyText then self.srEmptyText:Hide() end
    if self.ReleaseAllSRFrames then self:ReleaseAllSRFrames() end
    if self.srHeaders then
        for _, hdr in ipairs(self.srHeaders) do hdr:Hide() end
    end
    -- Release consumable row pools
    if ReleaseAllConsumableRows then ReleaseAllConsumableRows() end
    -- Release gem row pools
    if ReleaseAllGemRows then ReleaseAllGemRows() end

    local tab = WTBT.state.tab or "bis"
    if tab == "bis" then
        self:RefreshBIS()
    elseif tab == "custom" then
        self:RefreshCustom()
    elseif tab == "softres" then
        self:RefreshSoftRes()
    elseif tab == "consumables" then
        self:RefreshConsumables()
    elseif tab == "gems" then
        self:RefreshGems()
    end
end

-- ============================================================
-- REFRESH BIS — existing gear list logic
-- ============================================================
function WTBT_UI:RefreshBIS()
    local sc = self.scrollChild

    local bisData = WTBT:GetCurrentBIS()
    local yOffset = 0

    local sections = {
        { label = "Armor",       slots = { "Head","Neck","Shoulder","Back","Chest","Wrist","Hands","Waist","Legs","Feet" } },
        { label = "Accessories", slots = { "Ring1","Ring2","Trinket1","Trinket2" } },
        { label = "Weapons",     slots = { "MainHand","OffHand","Relic" } },
    }

    -- Build slot info lookup with class-specific Relic/Ranged label
    local relicLabels = {
        Priest = "Wand", Mage = "Wand", Warlock = "Wand",
        Paladin = "Libram", Druid = "Idol", Shaman = "Totem",
        Hunter = "Ranged", Rogue = "Ranged", Warrior = "Ranged",
    }
    local slotInfoByKey = {}
    for _, s in ipairs(WTBT.SLOTS) do
        if s.key == "Relic" then
            slotInfoByKey[s.key] = { key = s.key, label = relicLabels[WTBT.state.class] or "Ranged" }
        else
            slotInfoByKey[s.key] = s
        end
    end

    for _, section in ipairs(sections) do
        -- Section header (pooled)
        local sh = AcquireSectionHeader(sc, section.label)
        sh:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
        sh:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)
        yOffset = yOffset + 16

        for _, slotKey in ipairs(section.slots) do
            local slotInfo = slotInfoByKey[slotKey]
            if slotInfo then
                local rawSlotData = bisData and bisData[slotKey]

                -- Apply source filters (World Boss / PvP)
                local slotData
                if rawSlotData then
                    slotData = {}
                    for _, itm in ipairs(rawSlotData) do
                        local dominated = false
                        if WTBT.settings.hideWorldBoss and itm.source and itm.source:find("World Boss") then
                            dominated = true
                        end
                        if WTBT.settings.hidePvP and itm.sourceType == "pvp" then
                            dominated = true
                        end
                        if not dominated then
                            slotData[#slotData + 1] = itm
                        end
                    end
                    if #slotData == 0 then slotData = nil end
                end

                local firstItem = slotData and slotData[1]
                local hasAlts   = slotData and #slotData > 1

                local row = AcquireGearRow(sc, slotInfo, false)
                ConfigureGearRow(row, slotInfo, false)
                row:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
                row:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

                PopulateRow(row, firstItem, slotInfo, hasAlts, false, nil)

                yOffset = yOffset + ROW_H

                -- Show alternative items if this slot is expanded
                if hasAlts and expandedSlots[slotKey] then
                    for altIdx = 2, #slotData do
                        local altItem = slotData[altIdx]
                        local altRow = AcquireGearRow(sc, slotInfo, true)
                        ConfigureGearRow(altRow, slotInfo, true)
                        altRow:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
                        altRow:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

                        PopulateRow(altRow, altItem, slotInfo, false, true, altIdx - 1)

                        yOffset = yOffset + ROW_H
                    end
                end
            end
        end
    end

    sc:SetHeight(yOffset + 4)

    -- Count equipped BIS items (only when viewing own class)
    local bisCount, bisTotal = 0, 0
    if WTBT:IsViewingOwnClass() and bisData then
        local counted = {}
        for _, section in ipairs(sections) do
            for _, sk in ipairs(section.slots) do
                local sd = bisData[sk]
                if sd then
                    bisTotal = bisTotal + 1
                    -- Check BIS (#1) and all alts for equipped
                    for _, itm in ipairs(sd) do
                        if itm.itemId and not counted[sk] and WTBT:IsItemEquipped(itm.itemId) then
                            bisCount = bisCount + 1
                            counted[sk] = true
                        end
                    end
                end
            end
        end
    end

    -- Status bar
    local noData = not bisData
    self.statusLeft:SetText(WTBT.state.class .. " · " .. WTBT.state.spec .. " · Phase " .. WTBT.state.phase .. (noData and "  |cffff4444 No data yet|r" or ""))
    if WTBT:IsViewingOwnClass() and bisTotal > 0 then
        local pct = math.floor((bisCount / bisTotal) * 100)
        local color = bisCount == bisTotal and "4FC778" or "C8B68C"
        self.statusRight:SetText("|cff" .. color .. bisCount .. "/" .. bisTotal .. " BIS|r")
    else
        self.statusRight:SetText("")
    end
end

-- ============================================================
-- REFRESH PLACEHOLDER — "Coming Soon" content for unbuilt tabs
-- ============================================================
function WTBT_UI:RefreshPlaceholder(title, description)
    local sc = self.scrollChild

    -- Create placeholder text once, reuse
    if not self.placeholderText then
        local f = sc:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        f:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
        self.placeholderText = f
    end
    if not self.placeholderTitle then
        local t = sc:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        t:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        t:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
        self.placeholderTitle = t
    end

    self.placeholderTitle:SetText(title)
    self.placeholderTitle:ClearAllPoints()
    self.placeholderTitle:SetPoint("TOP", sc, "TOP", 0, -60)
    self.placeholderTitle:Show()

    self.placeholderText:SetText(description)
    self.placeholderText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.85)
    self.placeholderText:ClearAllPoints()
    self.placeholderText:SetPoint("TOP", self.placeholderTitle, "BOTTOM", 0, -12)
    self.placeholderText:SetWidth(300)
    self.placeholderText:SetJustifyH("CENTER")
    self.placeholderText:Show()

    sc:SetHeight(200)

    -- Status bar
    self.statusLeft:SetText(title)
    self.statusRight:SetText("")
end

-- ============================================================
-- CUSTOM LIST — list management bar (created once)
-- ============================================================
local customBarBuilt = false

local function BuildCustomBar(parent)
    if customBarBuilt then return end
    customBarBuilt = true

    -- Container bar sits at top of scroll child
    local bar = CreateFrame("Frame", nil, parent)
    bar:SetHeight(30)

    -- "New List" button
    local newBtn = CreateFrame("Button", nil, bar)
    newBtn:SetSize(70, 22)
    newBtn:SetPoint("LEFT", bar, "LEFT", 8, 0)
    local newBG = NewTexture(newBtn, "BACKGROUND")
    newBG:SetAllPoints()
    newBG:SetColorTexture(0.10, 0.22, 0.15, 1)
    local newBorder = AddBorder(newBtn, C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.5)
    local newLabel = NewText(newBtn, 9)
    newLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    newLabel:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    newLabel:SetText("+ New List")
    newLabel:SetAllPoints()
    newLabel:SetJustifyH("CENTER")
    newLabel:SetJustifyV("MIDDLE")

    newBtn:SetScript("OnEnter", function()
        for _, e in ipairs(newBorder) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
    end)
    newBtn:SetScript("OnLeave", function()
        for _, e in ipairs(newBorder) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.5) end
    end)

    -- Template button
    local tmplBtn = CreateFrame("Button", nil, bar)
    tmplBtn:SetSize(78, 22)
    tmplBtn:SetPoint("LEFT", newBtn, "RIGHT", 4, 0)
    local tmplBG = NewTexture(tmplBtn, "BACKGROUND")
    tmplBG:SetAllPoints()
    tmplBG:SetColorTexture(0.12, 0.08, 0.22, 1)
    local tmplBorder = AddBorder(tmplBtn, C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.7)
    local tmplLabel = NewText(tmplBtn, 9)
    tmplLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    tmplLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    tmplLabel:SetText("+ Template")
    tmplLabel:SetAllPoints()
    tmplLabel:SetJustifyH("CENTER")
    tmplLabel:SetJustifyV("MIDDLE")

    tmplBtn:SetScript("OnEnter", function(self)
        for _, e in ipairs(tmplBorder) do e:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end
        tmplLabel:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine("Create from template", C_GREEN[1], C_GREEN[2], C_GREEN[3])
        GameTooltip:AddLine("Pre-built gear sets for the selected class/spec.", 0.7, 0.7, 0.7, true)
        GameTooltip:Show()
    end)
    tmplBtn:SetScript("OnLeave", function()
        for _, e in ipairs(tmplBorder) do e:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.7) end
        tmplLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
        GameTooltip:Hide()
    end)

    -- Delete button
    local delBtn = CreateFrame("Button", nil, bar)
    delBtn:SetSize(22, 22)
    delBtn:SetPoint("RIGHT", bar, "RIGHT", -8, 0)
    local delBG = NewTexture(delBtn, "BACKGROUND")
    delBG:SetAllPoints()
    delBG:SetColorTexture(0.20, 0.06, 0.06, 1)
    local delBorder = AddBorder(delBtn, 0.6, 0.15, 0.15, 0.5)
    local delLabel = NewText(delBtn, 9)
    delLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
    delLabel:SetTextColor(0.9, 0.3, 0.3, 1)
    delLabel:SetText("x")
    delLabel:SetAllPoints()
    delLabel:SetJustifyH("CENTER")
    delLabel:SetJustifyV("MIDDLE")
    delBtn:SetScript("OnEnter", function(self)
        for _, e in ipairs(delBorder) do e:SetColorTexture(0.9, 0.3, 0.3, 1) end
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine("Delete this list", 0.9, 0.3, 0.3)
        GameTooltip:Show()
    end)
    delBtn:SetScript("OnLeave", function()
        for _, e in ipairs(delBorder) do e:SetColorTexture(0.6, 0.15, 0.15, 0.5) end
        GameTooltip:Hide()
    end)

    -- List name dropdown area (between template and delete)
    local listDD = CreateFrame("Button", nil, bar)
    listDD:SetSize(160, 22)
    listDD:SetPoint("LEFT", tmplBtn, "RIGHT", 6, 0)
    listDD:SetPoint("RIGHT", delBtn, "LEFT", -6, 0)
    local listBG = NewTexture(listDD, "BACKGROUND")
    listBG:SetAllPoints()
    listBG:SetColorTexture(0.09, 0.08, 0.18, 1)
    local listBorder = AddBorder(listDD, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
    local listLabel = NewText(listDD, 10)
    listLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    listLabel:SetPoint("LEFT", listDD, "LEFT", 8, 0)
    listLabel:SetPoint("RIGHT", listDD, "RIGHT", -18, 0)
    listLabel:SetJustifyH("LEFT")
    local listArrow = NewText(listDD, 10)
    listArrow:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    listArrow:SetText("▾")
    listArrow:SetPoint("RIGHT", listDD, "RIGHT", -6, 0)

    bar.newBtn   = newBtn
    bar.tmplBtn  = tmplBtn
    bar.delBtn   = delBtn
    bar.listDD   = listDD
    bar.listLabel = listLabel
    bar.listBorder = listBorder

    WTBT_UI.customBar = bar
end

-- ============================================================
-- CUSTOM LIST — source prompt for non-BIS items
-- ============================================================
local function PromptForSource(listName, slotKey)
    local entry = WTBT:GetCustomSlot(listName, slotKey)
    if not entry or (entry.source and entry.source ~= "") then
        return
    end
    StaticPopupDialogs["WTBT_ITEM_SOURCE"] = {
        text = "Source for this item (optional):\ne.g. \"BoE world drop\", \"Heroic Mech\"",
        button1 = "Save",
        button2 = "Skip",
        hasEditBox = true,
        maxLetters = 60,
        OnAccept = function(self)
            local eb = self.editBox or _G[self:GetName().."EditBox"]
            if eb then
                local src = eb:GetText()
                if src and strtrim(src) ~= "" then
                    entry.source = strtrim(src)
                    entry.sourceType = "custom"
                    WTBT_UI:Refresh()
                end
            end
        end,
        EditBoxOnEnterPressed = function(self)
            local parent = self:GetParent()
            local src = self:GetText()
            if src and strtrim(src) ~= "" then
                entry.source = strtrim(src)
                entry.sourceType = "custom"
            end
            parent:Hide()
            WTBT_UI:Refresh()
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }
    StaticPopup_Show("WTBT_ITEM_SOURCE")
end

-- ============================================================
-- CUSTOM LIST — item input via EditBox (shift-click capture)
-- ============================================================
local customEditBox = nil

local function GetOrCreateEditBox()
    if customEditBox then return customEditBox end

    local eb = CreateFrame("EditBox", "WTBTCustomItemInput", UIParent, "InputBoxTemplate")
    eb:SetSize(280, 28)
    eb:SetFrameStrata("FULLSCREEN_DIALOG")
    eb:SetAutoFocus(true)
    eb:SetMaxLetters(100)
    eb:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    eb:Hide()

    -- Title label above
    local title = eb:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE")
    title:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
    title:SetPoint("BOTTOM", eb, "TOP", 0, 6)
    eb.titleText = title

    -- Hint below
    local hint = eb:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    hint:SetFont("Fonts\\FRIZQT__.TTF", 9, "")
    hint:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.8)
    hint:SetText("Shift-click, drag from bags, or type an item ID")
    hint:SetPoint("TOP", eb, "BOTTOM", 0, -4)
    hint:SetWidth(280)
    hint:SetJustifyH("CENTER")
    eb.hintText = hint

    -- Background panel — anchor to editbox with fixed padding
    local bgFrame = CreateFrame("Frame", nil, eb, "BackdropTemplate")
    bgFrame:SetPoint("TOPLEFT", eb, "TOPLEFT", -30, 34)
    bgFrame:SetPoint("BOTTOMRIGHT", eb, "BOTTOMRIGHT", 30, -32)
    bgFrame:SetFrameLevel(eb:GetFrameLevel() - 1)
    local bgTex = NewTexture(bgFrame, "BACKGROUND")
    bgTex:SetAllPoints()
    bgTex:SetColorTexture(C_BG[1], C_BG[2], C_BG[3], 0.97)
    AddBorder(bgFrame, C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.5)
    eb.bgFrame = bgFrame

    eb:SetScript("OnEscapePressed", function(self)
        WTBT.state.customSlotPending = nil
        self:Hide()
        WTBT_UI:Refresh()
    end)

    eb:SetScript("OnEnterPressed", function(self)
        local text = self:GetText()
        local slot = WTBT.state.customSlotPending
        local listName = WTBT.state.customList
        if slot and listName then
            local itemId = WTBT:ParseItemLink(text)
            if itemId then
                WTBT:SetCustomSlot(listName, slot, itemId)
                WTBT.state.customSlotPending = nil
                self:Hide()
                WTBT_UI:Refresh()
                PromptForSource(listName, slot)
            else
                self:SetText("")
            end
        end
    end)

    -- Hook BOTH ChatEdit_InsertLink and HandleModifiedItemClick for shift-click capture
    local function TryCapture(link)
        local slot = WTBT.state.customSlotPending
        local listName = WTBT.state.customList
        if slot and listName then
            local itemId = WTBT:ParseItemLink(link)
            if itemId then
                WTBT:SetCustomSlot(listName, slot, itemId)
                WTBT.state.customSlotPending = nil
                if eb:IsShown() then eb:Hide() end
                WTBT_UI:Refresh()
                PromptForSource(listName, slot)
                return true
            end
        end
        return false
    end

    local origChatEdit = ChatEdit_InsertLink
    if origChatEdit then
        ChatEdit_InsertLink = function(link)
            if TryCapture(link) then return true end
            if eb:IsShown() and eb:HasFocus() then
                eb:SetText(link)
                return true
            end
            return origChatEdit(link)
        end
    end

    local origHandleModified = HandleModifiedItemClick
    if origHandleModified then
        HandleModifiedItemClick = function(link, ...)
            if TryCapture(link) then return true end
            return origHandleModified(link, ...)
        end
    end

    -- Drag & drop support: receive items dragged from bags/equipped
    eb:SetScript("OnReceiveDrag", function(self)
        local infoType, id = GetCursorInfo()
        if infoType == "item" and id then
            local slot = WTBT.state.customSlotPending
            local ln = WTBT.state.customList
            if slot and ln then
                WTBT:SetCustomSlot(ln, slot, id)
                WTBT.state.customSlotPending = nil
                ClearCursor()
                self:Hide()
                WTBT_UI:Refresh()
                PromptForSource(ln, slot)
            end
        end
    end)
    eb:SetScript("OnMouseDown", eb:GetScript("OnReceiveDrag"))

    customEditBox = eb
    return eb
end

-- ============================================================
-- REFRESH CUSTOM — custom list slot grid
-- ============================================================
function WTBT_UI:RefreshCustom()
    local sc = self.scrollChild

    -- Build the management bar (once)
    BuildCustomBar(sc)
    local bar = self.customBar

    -- Position bar at top
    bar:ClearAllPoints()
    bar:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, 0)
    bar:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, 0)
    bar:Show()

    local listName = WTBT.state.customList
    local names = WTBT:GetCustomListNames()

    -- Update list dropdown label
    if listName then
        bar.listLabel:SetText(listName)
    else
        bar.listLabel:SetText("|cff6B598ANo lists|r")
    end

    -- Wire up "New List" button
    bar.newBtn:SetScript("OnClick", function()
        -- Use a simple popup approach: create via StaticPopup
        StaticPopupDialogs["WTBT_NEW_LIST"] = {
            text = "Enter a name for the new list:",
            button1 = "Create",
            button2 = "Cancel",
            hasEditBox = true,
            maxLetters = 30,
            OnAccept = function(self)
                local eb = self.editBox or _G[self:GetName().."EditBox"]
                if eb then
                    local name = eb:GetText()
                    if name and strtrim(name) ~= "" then
                        WTBT:CreateCustomList(strtrim(name))
                        WTBT_UI:Refresh()
                    end
                end
            end,
            EditBoxOnEnterPressed = function(self)
                local parent = self:GetParent()
                local name = self:GetText()
                if name and strtrim(name) ~= "" then
                    WTBT:CreateCustomList(strtrim(name))
                    parent:Hide()
                    WTBT_UI:Refresh()
                end
            end,
            timeout = 0,
            whileDead = true,
            hideOnEscape = true,
            preferredIndex = 3,
        }
        StaticPopup_Show("WTBT_NEW_LIST")
    end)

    -- Wire up template button
    bar.tmplBtn:SetScript("OnClick", function()
        CloseActivePopup()
        local cls = WTBT.state.class
        local spec = WTBT.state.spec
        local templates = WTBT:GetTemplateList(cls, spec)

        if #templates == 0 then
            print("|cff4FC778[Wick's BIS]|r No templates available for " .. cls .. " " .. spec .. " yet.")
            return
        end

        -- Show template picker popup
        local popup = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        popup:SetFrameStrata("TOOLTIP")
        popup:SetClampedToScreen(true)
        local rowH = 24
        local popW = 200
        popup:SetSize(popW, #templates * rowH + 4)
        popup:SetPoint("TOPLEFT", bar.tmplBtn, "BOTTOMLEFT", 0, -2)
        local popBG = NewTexture(popup, "BACKGROUND")
        popBG:SetAllPoints()
        popBG:SetColorTexture(0.07, 0.06, 0.12, 0.97)
        AddBorder(popup, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

        for i, tmpl in ipairs(templates) do
            local optBtn = CreateFrame("Button", nil, popup)
            optBtn:SetSize(popW - 2, rowH)
            optBtn:SetPoint("TOPLEFT", popup, "TOPLEFT", 1, -(2 + (i - 1) * rowH))
            optBtn:RegisterForClicks("LeftButtonUp")
            local optHover = NewTexture(optBtn, "HIGHLIGHT")
            optHover:SetAllPoints()
            optHover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.15)
            local optLabel = NewText(optBtn, 10)
            optLabel:SetText(tmpl.label)
            optLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
            optLabel:SetPoint("LEFT", optBtn, "LEFT", 8, 0)
            optLabel:SetJustifyH("LEFT")

            optBtn:SetScript("OnEnter", function(self)
                if tmpl.description and tmpl.description ~= "" then
                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                    GameTooltip:AddLine(tmpl.label, C_GREEN[1], C_GREEN[2], C_GREEN[3])
                    GameTooltip:AddLine(tmpl.description, 0.7, 0.7, 0.7, true)
                    GameTooltip:Show()
                end
            end)
            optBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

            optBtn:SetScript("OnClick", function()
                local defaultName = spec .. " " .. tmpl.label
                local ok, finalName = WTBT:CreateListFromTemplate(defaultName, cls, spec, tmpl.key)
                if ok then
                    WTBT.state.customList = finalName
                    print("|cff4FC778[Wick's BIS]|r Created list: " .. finalName)
                end
                popup:Hide()
                activePopup = nil
                WTBT_UI:Refresh()
            end)
        end

        activePopup = popup
        popup:SetScript("OnUpdate", function(self)
            if not MouseIsOver(self) and not MouseIsOver(bar.tmplBtn) and IsMouseButtonDown("LeftButton") then
                self:Hide()
                activePopup = nil
            end
        end)
    end)

    -- Wire up delete button
    bar.delBtn:SetScript("OnClick", function()
        if not listName then return end
        StaticPopupDialogs["WTBT_DEL_LIST"] = {
            text = "Delete list \"" .. listName .. "\"?",
            button1 = "Delete",
            button2 = "Cancel",
            OnAccept = function()
                WTBT:DeleteCustomList(listName)
                WTBT_UI:Refresh()
            end,
            timeout = 0,
            whileDead = true,
            hideOnEscape = true,
            preferredIndex = 3,
        }
        StaticPopup_Show("WTBT_DEL_LIST")
    end)

    -- Wire up list dropdown
    bar.listDD:SetScript("OnClick", function(self)
        CloseActivePopup()
        if #names == 0 then return end

        local popup = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
        popup:SetFrameStrata("TOOLTIP")
        popup:SetClampedToScreen(true)
        local rowH = 20
        local popW = self:GetWidth()
        popup:SetSize(popW, #names * rowH + 4)
        popup:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -2)
        local popBG = NewTexture(popup, "BACKGROUND")
        popBG:SetAllPoints()
        popBG:SetColorTexture(0.07, 0.06, 0.12, 0.97)
        AddBorder(popup, C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])

        for i, n in ipairs(names) do
            local optBtn = CreateFrame("Button", nil, popup)
            optBtn:SetSize(popW - 2, rowH)
            optBtn:SetPoint("TOPLEFT", popup, "TOPLEFT", 1, -(2 + (i - 1) * rowH))
            optBtn:RegisterForClicks("LeftButtonUp")
            local optHover = NewTexture(optBtn, "HIGHLIGHT")
            optHover:SetAllPoints()
            optHover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.15)
            local optLabel = NewText(optBtn, 10)
            optLabel:SetText(n)
            optLabel:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
            optLabel:SetPoint("LEFT", optBtn, "LEFT", 8, 0)
            optLabel:SetJustifyH("LEFT")
            optBtn:SetScript("OnClick", function()
                WTBT.state.customList = n
                popup:Hide()
                activePopup = nil
                WTBT_UI:Refresh()
            end)
        end
        activePopup = popup
        popup:SetScript("OnUpdate", function(self, dt)
            if not MouseIsOver(self) and not MouseIsOver(bar.listDD) and IsMouseButtonDown("LeftButton") then
                self:Hide()
                activePopup = nil
            end
        end)
    end)

    local yOffset = 32 -- after bar

    -- If no list selected, show empty state
    local csLists = WTBT:GetClassSpecLists()
    if not listName or not csLists[listName] then
        if not self.customEmptyText then
            local t = sc:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            t:SetFont("Fonts\\FRIZQT__.TTF", 12, "")
            self.customEmptyText = t
        end
        self.customEmptyText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 0.7)
        self.customEmptyText:SetText("No custom lists for " .. WTBT.state.spec .. " " .. WTBT.state.class .. " yet.\nClick '+ New List' or '+ Template' to get started.")
        self.customEmptyText:ClearAllPoints()
        self.customEmptyText:SetPoint("TOP", sc, "TOP", 0, -(yOffset + 40))
        self.customEmptyText:SetWidth(300)
        self.customEmptyText:SetJustifyH("CENTER")
        self.customEmptyText:Show()
        sc:SetHeight(200)
        self.statusLeft:SetText(WTBT.state.class .. " · " .. WTBT.state.spec .. " · Custom Lists")
        self.statusRight:SetText("")
        return
    end

    -- Hide empty text
    if self.customEmptyText then self.customEmptyText:Hide() end

    -- Slot grid — reuse the same sections as BIS
    local sections = {
        { label = "Armor",       slots = { "Head","Neck","Shoulder","Back","Chest","Wrist","Hands","Waist","Legs","Feet" } },
        { label = "Accessories", slots = { "Ring1","Ring2","Trinket1","Trinket2" } },
        { label = "Weapons",     slots = { "MainHand","OffHand","Relic" } },
    }

    local slotInfoByKey = {}
    for _, s in ipairs(WTBT.SLOTS) do
        slotInfoByKey[s.key] = s
    end

    local listData = csLists[listName]
    local pendingSlot = WTBT.state.customSlotPending
    local filledCount = 0

    for _, section in ipairs(sections) do
        local sh = AcquireSectionHeader(sc, section.label)
        sh:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
        sh:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)
        yOffset = yOffset + 16

        for _, slotKey in ipairs(section.slots) do
            local slotInfo = slotInfoByKey[slotKey]
            if slotInfo then
                local row = AcquireGearRow(sc, slotInfo, false)
                ConfigureGearRow(row, slotInfo, false)
                row:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
                row:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

                local entry = listData[slotKey]
                local isPending = (pendingSlot == slotKey)

                if entry and entry.itemId then
                    filledCount = filledCount + 1
                    -- Build a fake item table for PopulateRow
                    local itemName, itemLink, itemRarity, _, _, _, _, _, _, itemIcon = GetItemInfo(entry.itemId)
                    local fakeItem = {
                        name = itemName or ("Item #" .. entry.itemId),
                        itemId = entry.itemId,
                        source = entry.source or "",
                        sourceType = entry.sourceType, -- nil if no source known
                        enchant = nil,
                        gems = {},
                    }
                    PopulateRow(row, fakeItem, slotInfo, false, false, nil)

                    -- Right-click to remove
                    row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
                    row:SetScript("OnClick", function(self, button)
                        if button == "RightButton" then
                            WTBT:SetCustomSlot(listName, slotKey, nil)
                            WTBT_UI:Refresh()
                        end
                    end)

                    -- Add right-click hint to tooltip
                    local origOnEnter = row:GetScript("OnEnter")
                    row:SetScript("OnEnter", function(self)
                        if origOnEnter then origOnEnter(self) end
                        GameTooltip:AddLine(" ")
                        GameTooltip:AddLine("Right-click to remove", 0.6, 0.35, 0.35)
                        GameTooltip:Show()
                    end)
                else
                    -- Empty slot — show clickable placeholder
                    row.itemName:SetText(isPending and "|cff4FC778[ Waiting for item... ]|r" or "|cff6B598A[ Click to add ]|r")
                    row.itemName:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
                    row.enchantText:SetText("")
                    row.sourceText:SetText("")
                    row.iconTex:Hide()
                    row.iconFallback:Show()
                    row.iconGlow:Hide()
                    row.equippedBG:Hide()
                    row.sourceHolder:Hide()
                    row.altDot:SetText("")
                    for _, dot in ipairs(row.gemDots) do dot:Hide() end
                    if row.altBG then row.altBG:Hide() end

                    if isPending then
                        row.equippedBG:Show() -- green tint to show active slot
                    end

                    row:RegisterForClicks("LeftButtonUp")
                    row:SetScript("OnClick", function()
                        WTBT.state.customSlotPending = slotKey
                        local eb = GetOrCreateEditBox()
                        eb.titleText:SetText("Add item to: " .. slotInfo.label)
                        eb:SetText("")
                        eb:ClearAllPoints()
                        eb:SetPoint("CENTER", UIParent, "CENTER", 0, 50)
                        eb:Show()
                        eb:SetFocus()
                        WTBT_UI:Refresh()
                    end)

                    -- Tooltip hint
                    row:SetScript("OnEnter", function(self)
                        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.06)
                        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                        GameTooltip:AddLine("Click to add an item", C_GREEN[1], C_GREEN[2], C_GREEN[3])
                        GameTooltip:AddLine("Shift-click, drag from bags, or type an ID.", 0.7, 0.7, 0.7)
                        GameTooltip:Show()
                    end)
                    row:SetScript("OnLeave", function(self)
                        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)
                        GameTooltip:Hide()
                    end)
                end

                yOffset = yOffset + ROW_H
            end
        end
    end

    sc:SetHeight(yOffset + 4)

    -- Status bar
    self.statusLeft:SetText(WTBT.state.class .. " · " .. WTBT.state.spec .. " · " .. listName)
    self.statusRight:SetText("|cffC8B68C" .. filledCount .. "/17 slots|r")
end

-- ============================================================
-- REFRESH CONSUMABLES — endgame consumables per spec
-- ============================================================

-- Consumable row pool
local consumableRowPool = {}
local activeConsumableRows = {}

local function CreateConsumableRow(parent)
    local row = CreateFrame("Button", nil, parent)
    row:SetHeight(ROW_H)

    -- Hover background
    local hoverBG = NewTexture(row, "BACKGROUND")
    hoverBG:SetAllPoints()
    hoverBG:SetColorTexture(0, 0, 0, 0)
    row.hoverBG = hoverBG

    -- Item icon
    local iconFrame = CreateFrame("Frame", nil, row)
    iconFrame:SetSize(ICON_SIZE, ICON_SIZE)
    iconFrame:SetPoint("LEFT", row, "LEFT", 10, 0)

    local iconTex = iconFrame:CreateTexture(nil, "ARTWORK")
    iconTex:SetAllPoints()
    iconTex:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    row.iconTex = iconTex

    local iconBorder = AddBorder(iconFrame, 0.220, 0.188, 0.345, 1)
    row.iconBorder = iconBorder
    row.iconFrame = iconFrame

    -- Item name
    local itemName = NewText(row, 10)
    itemName:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    itemName:SetPoint("LEFT", iconFrame, "RIGHT", 6, 4)
    itemName:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    row.itemName = itemName

    -- Stat text
    local statText = NewText(row, 8)
    statText:SetFont("Fonts\\FRIZQT__.TTF", 9, "")
    statText:SetPoint("TOPLEFT", itemName, "BOTTOMLEFT", 0, -1)
    statText:SetPoint("RIGHT", row, "RIGHT", -10, 0)
    statText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    row.statText = statText

    -- Category badge (right side)
    local catBadge = CreateFrame("Frame", nil, row)
    catBadge:SetSize(70, 14)
    catBadge:SetPoint("RIGHT", row, "RIGHT", -8, 0)
    local catBG = NewTexture(catBadge, "BACKGROUND")
    catBG:SetAllPoints()
    row.catBG = catBG
    AddBorder(catBadge, 0.220, 0.188, 0.345, 0.6)
    local catLabel = NewText(catBadge, 7)
    catLabel:SetFont("Fonts\\FRIZQT__.TTF", 8, "OUTLINE")
    catLabel:SetAllPoints()
    catLabel:SetJustifyH("CENTER")
    catLabel:SetJustifyV("MIDDLE")
    row.catLabel = catLabel
    row.catBadge = catBadge

    -- Bottom divider
    local div = NewTexture(row, "BORDER")
    div:SetColorTexture(0.220, 0.188, 0.345, 0.25)
    div:SetPoint("BOTTOMLEFT", 10, 0); div:SetPoint("BOTTOMRIGHT", -10, 0); div:SetHeight(1)

    -- Tooltip on hover
    row:SetScript("OnEnter", function(self)
        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.04)
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

local function AcquireConsumableRow(parent)
    local row = table.remove(consumableRowPool)
    if not row then
        row = CreateConsumableRow(parent)
    end
    row:SetParent(parent)
    row:Show()
    activeConsumableRows[#activeConsumableRows + 1] = row
    return row
end

ReleaseAllConsumableRows = function()
    for _, row in ipairs(activeConsumableRows) do
        row:Hide()
        row:ClearAllPoints()
        row.itemId = nil
        consumableRowPool[#consumableRowPool + 1] = row
    end
    wipe(activeConsumableRows)
end

-- Category colors for consumable badges
local CONSUMABLE_COLORS = {
    ["Flask"]           = { 0.78, 0.30, 0.78 },
    ["Battle Elixir"]   = { 0.90, 0.30, 0.30 },
    ["Guardian Elixir"] = { 0.30, 0.60, 0.90 },
    ["Food"]            = { 0.85, 0.65, 0.30 },
    ["Weapon"]          = { 0.60, 0.60, 0.60 },
    ["Potion"]          = { 0.30, 0.85, 0.40 },
}

function WTBT_UI:RefreshConsumables()
    local sc = self.scrollChild
    ReleaseAllConsumableRows()

    local className = WTBT.state.class
    local specName  = WTBT.state.spec
    local data = WTBT_Consumables and WTBT_Consumables[className] and WTBT_Consumables[className][specName]

    if not data or #data == 0 then
        self.statusLeft:SetText(className .. " · " .. specName .. " · Consumables")
        self.statusRight:SetText("|cff6B5A8CNo data|r")
        sc:SetHeight(40)
        return
    end

    local yOffset = 0
    local lastCategory = nil

    -- Category display order
    local catOrder = { "Flask", "Battle Elixir", "Guardian Elixir", "Food", "Weapon", "Potion" }
    local catItems = {}
    for _, cat in ipairs(catOrder) do catItems[cat] = {} end

    -- Bucket items by category
    for _, item in ipairs(data) do
        local cat = item.category
        if catItems[cat] then
            catItems[cat][#catItems[cat] + 1] = item
        end
    end

    local totalItems = 0

    for _, cat in ipairs(catOrder) do
        local items = catItems[cat]
        if #items > 0 then
            -- Section header
            local hdr = AcquireSectionHeader(sc, cat)
            hdr:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
            hdr:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)
            yOffset = yOffset + 16

            for _, item in ipairs(items) do
                local row = AcquireConsumableRow(sc)
                row:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
                row:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

                row.itemId = item.itemId

                -- Set icon from game data
                local itemTexture = item.itemId and GetItemIcon(item.itemId)
                if itemTexture then
                    row.iconTex:SetTexture(itemTexture)
                    row.iconTex:Show()
                else
                    row.iconTex:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                    row.iconTex:Show()
                end

                -- Color icon border based on category
                local cc = CONSUMABLE_COLORS[cat] or { 0.220, 0.188, 0.345 }
                for _, edge in ipairs(row.iconBorder) do
                    edge:SetColorTexture(cc[1], cc[2], cc[3], 0.8)
                end

                row.itemName:SetText(item.name)
                row.statText:SetText(item.stat or "")

                -- Category badge
                row.catLabel:SetText(cat:upper())
                row.catBG:SetColorTexture(cc[1], cc[2], cc[3], 0.15)
                row.catLabel:SetTextColor(cc[1], cc[2], cc[3], 1)

                yOffset = yOffset + ROW_H
                totalItems = totalItems + 1
            end
        end
    end

    sc:SetHeight(yOffset + 4)

    self.statusLeft:SetText(className .. " · " .. specName .. " · Consumables")
    self.statusRight:SetText("|cffC8B68C" .. totalItems .. " items|r")
end

-- ============================================================
-- GEMS TAB
-- ============================================================

-- Gem row pool (shares shape with consumable rows)
local gemRowPool = {}
local activeGemRows = {}

local function CreateGemRow(parent)
    local row = CreateFrame("Button", nil, parent)
    row:SetHeight(ROW_H)

    local hoverBG = NewTexture(row, "BACKGROUND")
    hoverBG:SetAllPoints()
    hoverBG:SetColorTexture(0, 0, 0, 0)
    row.hoverBG = hoverBG

    local iconFrame = CreateFrame("Frame", nil, row)
    iconFrame:SetSize(ICON_SIZE, ICON_SIZE)
    iconFrame:SetPoint("LEFT", row, "LEFT", 10, 0)

    local iconTex = iconFrame:CreateTexture(nil, "ARTWORK")
    iconTex:SetAllPoints()
    iconTex:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    row.iconTex = iconTex

    local iconBorder = AddBorder(iconFrame, 0.220, 0.188, 0.345, 1)
    row.iconBorder = iconBorder
    row.iconFrame = iconFrame

    local itemName = NewText(row, 10)
    itemName:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    itemName:SetPoint("LEFT", iconFrame, "RIGHT", 6, 4)
    itemName:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    row.itemName = itemName

    local statText = NewText(row, 8)
    statText:SetFont("Fonts\\FRIZQT__.TTF", 9, "")
    statText:SetPoint("TOPLEFT", itemName, "BOTTOMLEFT", 0, -1)
    statText:SetPoint("RIGHT", row, "RIGHT", -10, 0)
    statText:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1)
    row.statText = statText

    local catBadge = CreateFrame("Frame", nil, row)
    catBadge:SetSize(70, 14)
    catBadge:SetPoint("RIGHT", row, "RIGHT", -8, 0)
    local catBG = NewTexture(catBadge, "BACKGROUND")
    catBG:SetAllPoints()
    row.catBG = catBG
    AddBorder(catBadge, 0.220, 0.188, 0.345, 0.6)
    local catLabel = NewText(catBadge, 7)
    catLabel:SetFont("Fonts\\FRIZQT__.TTF", 8, "OUTLINE")
    catLabel:SetAllPoints()
    catLabel:SetJustifyH("CENTER")
    catLabel:SetJustifyV("MIDDLE")
    row.catLabel = catLabel
    row.catBadge = catBadge

    local div = NewTexture(row, "BORDER")
    div:SetColorTexture(0.220, 0.188, 0.345, 0.25)
    div:SetPoint("BOTTOMLEFT", 10, 0); div:SetPoint("BOTTOMRIGHT", -10, 0); div:SetHeight(1)

    row:SetScript("OnEnter", function(self)
        self.hoverBG:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.04)
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

local function AcquireGemRow(parent)
    local row = table.remove(gemRowPool)
    if not row then
        row = CreateGemRow(parent)
    end
    row:SetParent(parent)
    row:Show()
    activeGemRows[#activeGemRows + 1] = row
    return row
end

ReleaseAllGemRows = function()
    for _, row in ipairs(activeGemRows) do
        row:Hide()
        row:ClearAllPoints()
        row.itemId = nil
        gemRowPool[#gemRowPool + 1] = row
    end
    wipe(activeGemRows)
end

local GEM_COLORS = {
    ["Meta"]   = { 0.85, 0.65, 0.30 },
    ["Red"]    = { 0.90, 0.30, 0.30 },
    ["Yellow"] = { 0.95, 0.85, 0.30 },
    ["Blue"]   = { 0.30, 0.60, 0.90 },
    ["Hybrid"] = { 0.70, 0.40, 0.85 },
}

function WTBT_UI:RefreshGems()
    local sc = self.scrollChild
    ReleaseAllGemRows()

    local className = WTBT.state.class
    local specName  = WTBT.state.spec
    local data = WTBT_Gems and WTBT_Gems[className] and WTBT_Gems[className][specName]

    if not data or #data == 0 then
        self.statusLeft:SetText(className .. " · " .. specName .. " · Gems")
        self.statusRight:SetText("|cff6B5A8CNo data|r")
        sc:SetHeight(40)
        return
    end

    local yOffset = 0

    local catOrder = { "Meta", "Red", "Yellow", "Blue", "Hybrid" }
    local catItems = {}
    for _, cat in ipairs(catOrder) do catItems[cat] = {} end

    for _, item in ipairs(data) do
        local cat = item.category
        if catItems[cat] then
            catItems[cat][#catItems[cat] + 1] = item
        end
    end

    local totalItems = 0

    for _, cat in ipairs(catOrder) do
        local items = catItems[cat]
        if #items > 0 then
            local hdr = AcquireSectionHeader(sc, cat)
            hdr:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
            hdr:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)
            yOffset = yOffset + 16

            for _, item in ipairs(items) do
                local row = AcquireGemRow(sc)
                row:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, -yOffset)
                row:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, -yOffset)

                row.itemId = item.itemId

                local itemTexture = item.itemId and GetItemIcon(item.itemId)
                if itemTexture then
                    row.iconTex:SetTexture(itemTexture)
                else
                    row.iconTex:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
                end
                row.iconTex:Show()

                local cc = GEM_COLORS[cat] or { 0.220, 0.188, 0.345 }
                for _, edge in ipairs(row.iconBorder) do
                    edge:SetColorTexture(cc[1], cc[2], cc[3], 0.8)
                end

                row.itemName:SetText(item.name)
                row.statText:SetText(item.stat or "")

                row.catLabel:SetText(cat:upper())
                row.catBG:SetColorTexture(cc[1], cc[2], cc[3], 0.15)
                row.catLabel:SetTextColor(cc[1], cc[2], cc[3], 1)

                yOffset = yOffset + ROW_H
                totalItems = totalItems + 1
            end
        end
    end

    sc:SetHeight(yOffset + 4)

    self.statusLeft:SetText(className .. " · " .. specName .. " · Gems")
    self.statusRight:SetText("|cffC8B68C" .. totalItems .. " gems|r")
end
