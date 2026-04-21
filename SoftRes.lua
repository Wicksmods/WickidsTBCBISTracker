-- Wick's TBC BIS Tracker
-- SoftRes.lua - SoftRes.it integration (Gargul export format)

-- ============================================================
-- BASE64 DECODER
-- ============================================================
local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local b64lookup = {}
for i = 1, #b64chars do
    b64lookup[string.byte(b64chars, i)] = i - 1
end
b64lookup[string.byte("=", 1)] = 0

local function DecodeBase64(input)
    if not input or input == "" then return nil end
    input = input:gsub("%s+", "")
    local out = {}
    for i = 1, #input, 4 do
        local a, b, c, d = input:byte(i, i + 3)
        if not a or not b then break end
        a = b64lookup[a] or 0
        b = b64lookup[b] or 0
        c = b64lookup[c or 0] or 0
        d = b64lookup[d or 0] or 0
        out[#out + 1] = string.char(
            bit.band(bit.bor(bit.lshift(a, 2), bit.rshift(b, 4)), 255),
            bit.band(bit.bor(bit.lshift(b, 4), bit.rshift(c, 2)), 255),
            bit.band(bit.bor(bit.lshift(c, 6), d), 255)
        )
    end
    local result = table.concat(out)
    if input:sub(-2) == "==" then
        result = result:sub(1, -3)
    elseif input:sub(-1) == "=" then
        result = result:sub(1, -2)
    end
    return result
end

-- ============================================================
-- MINIMAL JSON PARSER
-- ============================================================
local function ParseJSON(str)
    local pos = 1
    local len = #str

    local function skipWhitespace()
        while pos <= len do
            local ch = str:byte(pos)
            if ch == 32 or ch == 9 or ch == 10 or ch == 13 then
                pos = pos + 1
            else
                break
            end
        end
    end

    local function peek()
        skipWhitespace()
        if pos > len then return nil end
        return str:byte(pos)
    end

    local parseValue -- forward declaration

    local function parseString()
        if str:byte(pos) ~= 34 then return nil, "Expected string" end
        pos = pos + 1
        local parts = {}
        while pos <= len do
            local ch = str:byte(pos)
            if ch == 34 then
                pos = pos + 1
                return table.concat(parts)
            elseif ch == 92 then -- backslash
                pos = pos + 1
                local esc = str:byte(pos)
                if esc == 34 then parts[#parts + 1] = '"'
                elseif esc == 92 then parts[#parts + 1] = '\\'
                elseif esc == 47 then parts[#parts + 1] = '/'
                elseif esc == 110 then parts[#parts + 1] = '\n'
                elseif esc == 114 then parts[#parts + 1] = '\r'
                elseif esc == 116 then parts[#parts + 1] = '\t'
                elseif esc == 98 then parts[#parts + 1] = '\b'
                elseif esc == 102 then parts[#parts + 1] = '\f'
                elseif esc == 117 then
                    -- \uXXXX - skip unicode escapes, replace with ?
                    pos = pos + 4
                    parts[#parts + 1] = '?'
                else
                    parts[#parts + 1] = string.char(esc)
                end
                pos = pos + 1
            else
                parts[#parts + 1] = string.char(ch)
                pos = pos + 1
            end
        end
        return nil, "Unterminated string"
    end

    local function parseNumber()
        local startPos = pos
        if str:byte(pos) == 45 then pos = pos + 1 end -- minus
        while pos <= len and str:byte(pos) >= 48 and str:byte(pos) <= 57 do
            pos = pos + 1
        end
        if pos <= len and str:byte(pos) == 46 then -- decimal
            pos = pos + 1
            while pos <= len and str:byte(pos) >= 48 and str:byte(pos) <= 57 do
                pos = pos + 1
            end
        end
        if pos <= len and (str:byte(pos) == 101 or str:byte(pos) == 69) then -- exponent
            pos = pos + 1
            if pos <= len and (str:byte(pos) == 43 or str:byte(pos) == 45) then
                pos = pos + 1
            end
            while pos <= len and str:byte(pos) >= 48 and str:byte(pos) <= 57 do
                pos = pos + 1
            end
        end
        return tonumber(str:sub(startPos, pos - 1))
    end

    local function parseObject()
        pos = pos + 1 -- skip {
        local obj = {}
        skipWhitespace()
        if pos <= len and str:byte(pos) == 125 then
            pos = pos + 1
            return obj
        end
        while pos <= len do
            skipWhitespace()
            local key, err = parseString()
            if not key then return nil, err or "Expected key" end
            skipWhitespace()
            if str:byte(pos) ~= 58 then return nil, "Expected ':'" end
            pos = pos + 1
            local val
            val, err = parseValue()
            if err then return nil, err end
            obj[key] = val
            skipWhitespace()
            local ch = str:byte(pos)
            if ch == 125 then pos = pos + 1; return obj end
            if ch == 44 then pos = pos + 1 end
        end
        return nil, "Unterminated object"
    end

    local function parseArray()
        pos = pos + 1 -- skip [
        local arr = {}
        skipWhitespace()
        if pos <= len and str:byte(pos) == 93 then
            pos = pos + 1
            return arr
        end
        while pos <= len do
            local val, err = parseValue()
            if err then return nil, err end
            arr[#arr + 1] = val
            skipWhitespace()
            local ch = str:byte(pos)
            if ch == 93 then pos = pos + 1; return arr end
            if ch == 44 then pos = pos + 1 end
        end
        return nil, "Unterminated array"
    end

    parseValue = function()
        skipWhitespace()
        if pos > len then return nil, "Unexpected end" end
        local ch = str:byte(pos)
        if ch == 123 then return parseObject()       -- {
        elseif ch == 91 then return parseArray()      -- [
        elseif ch == 34 then return parseString()     -- "
        elseif ch == 116 then -- true
            pos = pos + 4; return true
        elseif ch == 102 then -- false
            pos = pos + 5; return false
        elseif ch == 110 then -- null
            pos = pos + 4; return nil
        elseif ch == 45 or (ch >= 48 and ch <= 57) then
            return parseNumber()
        else
            return nil, "Unexpected character: " .. string.char(ch)
        end
    end

    local result, err = parseValue()
    if err then return nil, err end
    return result
end

-- ============================================================
-- CLASS MAPPINGS
-- ============================================================
local CLASS_ID_TO_NAME = {
    [1] = "Warrior", [2] = "Paladin", [3] = "Hunter", [4] = "Rogue",
    [5] = "Priest", [7] = "Shaman", [8] = "Mage", [9] = "Warlock",
    [11] = "Druid",
}

local CLASS_STR_TO_NAME = {
    warrior = "Warrior", paladin = "Paladin", hunter = "Hunter",
    rogue = "Rogue", priest = "Priest", shaman = "Shaman",
    mage = "Mage", warlock = "Warlock", druid = "Druid",
    deathknight = "Death Knight", ["death knight"] = "Death Knight",
}

-- Build class color lookup from WTBT.CLASSES
local SR_CLASS_COLORS = {
    ["Death Knight"] = { 0.77, 0.12, 0.23 },
    ["Unknown"] = { 0.50, 0.50, 0.50 },
}
for _, c in ipairs(WTBT.CLASSES) do
    SR_CLASS_COLORS[c.name] = c.color
end

-- ============================================================
-- IMPORT FUNCTION
-- ============================================================
function WTBT:ImportSoftRes(tokenString)
    -- Step 1: Base64 decode
    local decoded = DecodeBase64(tokenString)
    if not decoded or decoded == "" then
        return nil, "Failed to decode base64 data."
    end

    -- Step 2: Zlib decompress via LibDeflate
    local LibDeflate = LibStub and LibStub:GetLibrary("LibDeflate", true)
    if not LibDeflate then
        -- Try global
        LibDeflate = _G.LibDeflate
    end
    if not LibDeflate then
        return nil, "LibDeflate not found. Ensure the library is loaded."
    end

    local decompressed = LibDeflate:DecompressZlib(decoded)
    if not decompressed or decompressed == "" then
        -- Try raw deflate as fallback
        decompressed = LibDeflate:DecompressDeflate(decoded)
    end
    if not decompressed or decompressed == "" then
        return nil, "Failed to decompress data. Is this a valid Gargul export?"
    end

    -- Step 3: JSON parse
    local data, err = ParseJSON(decompressed)
    if not data then
        return nil, "Failed to parse JSON: " .. (err or "unknown error")
    end

    -- Validate structure
    if not data.softreserves or type(data.softreserves) ~= "table" then
        return nil, "No soft reserve data found in import."
    end

    -- Normalize player data
    local players = {}
    for _, entry in ipairs(data.softreserves) do
        local name = entry.name or "Unknown"
        local className = "Unknown"

        -- Resolve class: can be numeric ID or string name
        if type(entry.class) == "number" then
            className = CLASS_ID_TO_NAME[entry.class] or "Unknown"
        elseif type(entry.class) == "string" then
            className = CLASS_STR_TO_NAME[entry.class:lower()] or entry.class
        end

        -- Extract item IDs
        local items = {}
        if entry.items and type(entry.items) == "table" then
            for _, item in ipairs(entry.items) do
                local id = nil
                if type(item) == "number" then
                    id = item
                elseif type(item) == "table" and item.id then
                    id = tonumber(item.id)
                end
                if id then
                    items[#items + 1] = id
                end
            end
        end

        players[#players + 1] = {
            name = name,
            className = className,
            plusOnes = entry.plusOnes or 0,
            note = entry.note or "",
            items = items,
        }
    end

    -- Sort alphabetically
    table.sort(players, function(a, b) return a.name:lower() < b.name:lower() end)

    -- Extract hard reserves
    local hardReserves = {}
    if data.hardreserves and type(data.hardreserves) == "table" then
        for _, hr in ipairs(data.hardreserves) do
            hardReserves[#hardReserves + 1] = {
                itemId = tonumber(hr.id),
                playerName = hr["for"] or "",
                note = hr.note or "",
            }
        end
    end

    -- Extract metadata
    local instance = ""
    if data.metadata then
        instance = data.metadata.instance or data.metadata.id or ""
    elseif data.instance then
        instance = data.instance
    end

    self.softResData = {
        instance = instance,
        url = data.metadata and data.metadata.url or "",
        players = players,
        hardReserves = hardReserves,
        importTime = time(),
    }

    -- Pre-cache item info for all reserved items
    for _, player in ipairs(players) do
        for _, itemId in ipairs(player.items) do
            GetItemInfo(itemId)
        end
    end
    for _, hr in ipairs(hardReserves) do
        if hr.itemId then GetItemInfo(hr.itemId) end
    end

    return true
end

-- ============================================================
-- UI CONSTANTS
-- ============================================================
local CELL_W       = 120
local CELL_PAD     = 6
local ICON_SZ      = 22
local ICON_GAP     = 2
local NAME_H       = 16
local MAX_ICON_COLS = 5 -- icons per row within a cell
local GRID_PAD     = 6

-- Reuse UI helper references (defined in UI.lua, which loads after this file)
-- We'll access them via upvalue closures in the functions that run at runtime

-- ============================================================
-- OBJECT POOLS
-- ============================================================
local cellPool = {}
local activeCells = {}
local iconPool = {}
local activeIcons = {}

local function AcquireSRCell(parent)
    local cell = table.remove(cellPool)
    if not cell then
        cell = CreateFrame("Frame", nil, parent)
        cell:SetWidth(CELL_W)

        local bg = cell:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(0.07, 0.06, 0.12, 0.85)
        cell.bg = bg

        -- Border
        local e = {}
        local r, g, b, a = 0.22, 0.18, 0.36, 0.6
        e[1] = cell:CreateTexture(nil, "BORDER"); e[1]:SetColorTexture(r,g,b,a)
        e[1]:SetPoint("TOPLEFT"); e[1]:SetPoint("TOPRIGHT"); e[1]:SetHeight(1)
        e[2] = cell:CreateTexture(nil, "BORDER"); e[2]:SetColorTexture(r,g,b,a)
        e[2]:SetPoint("BOTTOMLEFT"); e[2]:SetPoint("BOTTOMRIGHT"); e[2]:SetHeight(1)
        e[3] = cell:CreateTexture(nil, "BORDER"); e[3]:SetColorTexture(r,g,b,a)
        e[3]:SetPoint("TOPLEFT"); e[3]:SetPoint("BOTTOMLEFT"); e[3]:SetWidth(1)
        e[4] = cell:CreateTexture(nil, "BORDER"); e[4]:SetColorTexture(r,g,b,a)
        e[4]:SetPoint("TOPRIGHT"); e[4]:SetPoint("BOTTOMRIGHT"); e[4]:SetWidth(1)
        cell.border = e

        local nameText = cell:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        nameText:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
        nameText:SetPoint("TOPLEFT", cell, "TOPLEFT", 4, -3)
        nameText:SetPoint("TOPRIGHT", cell, "TOPRIGHT", -4, -3)
        nameText:SetHeight(NAME_H)
        nameText:SetJustifyH("CENTER")
        nameText:SetJustifyV("TOP")
        cell.nameText = nameText

        cell.icons = {}
    end

    cell:SetParent(parent)
    cell:Show()
    activeCells[#activeCells + 1] = cell
    return cell
end

local function AcquireSRIcon(parent)
    local icon = table.remove(iconPool)
    if not icon then
        icon = CreateFrame("Button", nil, parent)
        icon:SetSize(ICON_SZ, ICON_SZ)

        local tex = icon:CreateTexture(nil, "ARTWORK")
        tex:SetAllPoints()
        icon.iconTex = tex

        -- Quality border
        local e = {}
        local r, g, b, a = 0.50, 0.50, 0.50, 0.8
        e[1] = icon:CreateTexture(nil, "BORDER"); e[1]:SetColorTexture(r,g,b,a)
        e[1]:SetPoint("TOPLEFT"); e[1]:SetPoint("TOPRIGHT"); e[1]:SetHeight(1)
        e[2] = icon:CreateTexture(nil, "BORDER"); e[2]:SetColorTexture(r,g,b,a)
        e[2]:SetPoint("BOTTOMLEFT"); e[2]:SetPoint("BOTTOMRIGHT"); e[2]:SetHeight(1)
        e[3] = icon:CreateTexture(nil, "BORDER"); e[3]:SetColorTexture(r,g,b,a)
        e[3]:SetPoint("TOPLEFT"); e[3]:SetPoint("BOTTOMLEFT"); e[3]:SetWidth(1)
        e[4] = icon:CreateTexture(nil, "BORDER"); e[4]:SetColorTexture(r,g,b,a)
        e[4]:SetPoint("TOPRIGHT"); e[4]:SetPoint("BOTTOMRIGHT"); e[4]:SetWidth(1)
        icon.border = e

        -- Fallback text for uncached items
        local fallback = icon:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        fallback:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
        fallback:SetText("?")
        fallback:SetAllPoints()
        fallback:SetJustifyH("CENTER")
        fallback:SetJustifyV("MIDDLE")
        fallback:Hide()
        icon.fallback = fallback

        icon:SetScript("OnEnter", function(self)
            if self.itemId then
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                GameTooltip:SetItemByID(self.itemId)
                GameTooltip:Show()
            end
        end)
        icon:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end

    icon:SetParent(parent)
    icon:Show()
    activeIcons[#activeIcons + 1] = icon
    return icon
end

function WTBT_UI:ReleaseAllSRFrames()
    for _, cell in ipairs(activeCells) do
        cell:Hide()
        cell:ClearAllPoints()
        for _, ic in ipairs(cell.icons or {}) do
            ic:Hide()
            ic:ClearAllPoints()
        end
        wipe(cell.icons)
        cellPool[#cellPool + 1] = cell
    end
    wipe(activeCells)
    for _, icon in ipairs(activeIcons) do
        icon:Hide()
        icon:ClearAllPoints()
        iconPool[#iconPool + 1] = icon
    end
    wipe(activeIcons)
end

local function PopulateSRIcon(icon, itemId)
    icon.itemId = itemId
    -- Sync icon lookup
    local _, _, _, _, iconFileID = GetItemInfoInstant(itemId)
    if iconFileID then
        icon.iconTex:SetTexture(iconFileID)
        icon.iconTex:Show()
        icon.fallback:Hide()
    else
        icon.iconTex:Hide()
        icon.fallback:Show()
        GetItemInfo(itemId) -- triggers async load
    end

    -- Color border by item rarity
    local _, _, rarity = GetItemInfo(itemId)
    if rarity and rarity >= 2 then
        local r, g, b = GetItemQualityColor(rarity)
        for _, e in ipairs(icon.border) do e:SetColorTexture(r, g, b, 0.9) end
    else
        for _, e in ipairs(icon.border) do e:SetColorTexture(0.50, 0.50, 0.50, 0.5) end
    end
end

-- ============================================================
-- IMPORT POPUP
-- ============================================================
local importPopup = nil

local function GetOrCreateImportPopup()
    if importPopup then return importPopup end

    local f = CreateFrame("Frame", "WTBTSoftResImport", UIParent, "BackdropTemplate")
    f:SetSize(420, 300)
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 50)
    f:SetFrameStrata("FULLSCREEN_DIALOG")
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)
    f:Hide()

    -- Background
    local bg = f:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetColorTexture(0.05, 0.04, 0.08, 0.97)

    -- Border
    local e = {}
    local br, bg2, bb = 0.31, 0.78, 0.47
    e[1] = f:CreateTexture(nil, "BORDER"); e[1]:SetColorTexture(br,bg2,bb,0.5)
    e[1]:SetPoint("TOPLEFT"); e[1]:SetPoint("TOPRIGHT"); e[1]:SetHeight(1)
    e[2] = f:CreateTexture(nil, "BORDER"); e[2]:SetColorTexture(br,bg2,bb,0.5)
    e[2]:SetPoint("BOTTOMLEFT"); e[2]:SetPoint("BOTTOMRIGHT"); e[2]:SetHeight(1)
    e[3] = f:CreateTexture(nil, "BORDER"); e[3]:SetColorTexture(br,bg2,bb,0.5)
    e[3]:SetPoint("TOPLEFT"); e[3]:SetPoint("BOTTOMLEFT"); e[3]:SetWidth(1)
    e[4] = f:CreateTexture(nil, "BORDER"); e[4]:SetColorTexture(br,bg2,bb,0.5)
    e[4]:SetPoint("TOPRIGHT"); e[4]:SetPoint("BOTTOMRIGHT"); e[4]:SetWidth(1)

    -- Title
    local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
    title:SetTextColor(0.31, 0.78, 0.47, 1)
    title:SetText("Import SoftRes.it Data")
    title:SetPoint("TOP", f, "TOP", 0, -12)

    -- Instructions
    local inst = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    inst:SetFont("Fonts\\FRIZQT__.TTF", 10, "")
    inst:SetTextColor(0.42, 0.35, 0.54, 0.9)
    inst:SetText("Paste the Gargul export string from softres.it below:")
    inst:SetPoint("TOP", title, "BOTTOM", 0, -6)

    -- ScrollFrame + EditBox
    local sf = CreateFrame("ScrollFrame", "WTBTSRImportScroll", f, "UIPanelScrollFrameTemplate")
    sf:SetPoint("TOPLEFT", f, "TOPLEFT", 16, -58)
    sf:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -32, 50)

    local sfBG = sf:CreateTexture(nil, "BACKGROUND")
    sfBG:SetAllPoints()
    sfBG:SetColorTexture(0, 0, 0, 0.3)

    -- Border for editbox area
    local se = {}
    se[1] = sf:CreateTexture(nil, "BORDER"); se[1]:SetColorTexture(0.22,0.18,0.36,0.5)
    se[1]:SetPoint("TOPLEFT"); se[1]:SetPoint("TOPRIGHT"); se[1]:SetHeight(1)
    se[2] = sf:CreateTexture(nil, "BORDER"); se[2]:SetColorTexture(0.22,0.18,0.36,0.5)
    se[2]:SetPoint("BOTTOMLEFT"); se[2]:SetPoint("BOTTOMRIGHT"); se[2]:SetHeight(1)
    se[3] = sf:CreateTexture(nil, "BORDER"); se[3]:SetColorTexture(0.22,0.18,0.36,0.5)
    se[3]:SetPoint("TOPLEFT"); se[3]:SetPoint("BOTTOMLEFT"); se[3]:SetWidth(1)
    se[4] = sf:CreateTexture(nil, "BORDER"); se[4]:SetColorTexture(0.22,0.18,0.36,0.5)
    se[4]:SetPoint("TOPRIGHT"); se[4]:SetPoint("BOTTOMRIGHT"); se[4]:SetWidth(1)

    local eb = CreateFrame("EditBox", "WTBTSRImportEditBox", sf)
    eb:SetMultiLine(true)
    eb:SetAutoFocus(false)
    eb:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    eb:SetTextColor(0.9, 0.9, 0.9, 1)
    eb:SetWidth(sf:GetWidth() - 10)
    eb:SetScript("OnEscapePressed", function() f:Hide() end)
    sf:SetScrollChild(eb)

    f.editBox = eb

    -- Import button
    local importBtn = CreateFrame("Button", nil, f)
    importBtn:SetSize(80, 24)
    importBtn:SetPoint("BOTTOMRIGHT", f, "BOTTOM", -6, 14)

    local iBG = importBtn:CreateTexture(nil, "BACKGROUND")
    iBG:SetAllPoints()
    iBG:SetColorTexture(0.10, 0.22, 0.15, 1)

    local ie = {}
    ie[1] = importBtn:CreateTexture(nil, "BORDER"); ie[1]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[1]:SetPoint("TOPLEFT"); ie[1]:SetPoint("TOPRIGHT"); ie[1]:SetHeight(1)
    ie[2] = importBtn:CreateTexture(nil, "BORDER"); ie[2]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[2]:SetPoint("BOTTOMLEFT"); ie[2]:SetPoint("BOTTOMRIGHT"); ie[2]:SetHeight(1)
    ie[3] = importBtn:CreateTexture(nil, "BORDER"); ie[3]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[3]:SetPoint("TOPLEFT"); ie[3]:SetPoint("BOTTOMLEFT"); ie[3]:SetWidth(1)
    ie[4] = importBtn:CreateTexture(nil, "BORDER"); ie[4]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[4]:SetPoint("TOPRIGHT"); ie[4]:SetPoint("BOTTOMRIGHT"); ie[4]:SetWidth(1)

    local iLabel = importBtn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    iLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
    iLabel:SetText("Import")
    iLabel:SetTextColor(0.31, 0.78, 0.47, 1)
    iLabel:SetAllPoints()
    iLabel:SetJustifyH("CENTER"); iLabel:SetJustifyV("MIDDLE")

    importBtn:SetScript("OnClick", function()
        local text = eb:GetText()
        if text and strtrim(text) ~= "" then
            local ok, errMsg = WTBT:ImportSoftRes(strtrim(text))
            if ok then
                f:Hide()
                local count = WTBT.softResData and #WTBT.softResData.players or 0
                print("|cff4FC778[Wick's BIS]|r SoftRes data imported: " .. count .. " players.")
                WTBT_UI:Refresh()
            else
                print("|cffff4444[Wick's BIS]|r Import failed: " .. (errMsg or "unknown error"))
            end
        end
    end)

    -- Cancel button
    local cancelBtn = CreateFrame("Button", nil, f)
    cancelBtn:SetSize(80, 24)
    cancelBtn:SetPoint("BOTTOMLEFT", f, "BOTTOM", 6, 14)

    local cBG = cancelBtn:CreateTexture(nil, "BACKGROUND")
    cBG:SetAllPoints()
    cBG:SetColorTexture(0.07, 0.06, 0.12, 1)

    local ce = {}
    ce[1] = cancelBtn:CreateTexture(nil, "BORDER"); ce[1]:SetColorTexture(0.22,0.18,0.36,0.8)
    ce[1]:SetPoint("TOPLEFT"); ce[1]:SetPoint("TOPRIGHT"); ce[1]:SetHeight(1)
    ce[2] = cancelBtn:CreateTexture(nil, "BORDER"); ce[2]:SetColorTexture(0.22,0.18,0.36,0.8)
    ce[2]:SetPoint("BOTTOMLEFT"); ce[2]:SetPoint("BOTTOMRIGHT"); ce[2]:SetHeight(1)
    ce[3] = cancelBtn:CreateTexture(nil, "BORDER"); ce[3]:SetColorTexture(0.22,0.18,0.36,0.8)
    ce[3]:SetPoint("TOPLEFT"); ce[3]:SetPoint("BOTTOMLEFT"); ce[3]:SetWidth(1)
    ce[4] = cancelBtn:CreateTexture(nil, "BORDER"); ce[4]:SetColorTexture(0.22,0.18,0.36,0.8)
    ce[4]:SetPoint("TOPRIGHT"); ce[4]:SetPoint("BOTTOMRIGHT"); ce[4]:SetWidth(1)

    local cLabel = cancelBtn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    cLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
    cLabel:SetText("Cancel")
    cLabel:SetTextColor(0.42, 0.35, 0.54, 1)
    cLabel:SetAllPoints()
    cLabel:SetJustifyH("CENTER"); cLabel:SetJustifyV("MIDDLE")

    cancelBtn:SetScript("OnClick", function() f:Hide() end)

    importPopup = f
    return f
end

-- ============================================================
-- ACTION BAR (Import / Clear buttons + instance info)
-- ============================================================
local function BuildSoftResBar(parent)
    if WTBT_UI.softResBar then return end

    local bar = CreateFrame("Frame", nil, parent)
    bar:SetHeight(30)

    local barBG = bar:CreateTexture(nil, "BACKGROUND")
    barBG:SetAllPoints()
    barBG:SetColorTexture(0, 0, 0, 0.15)

    -- Import button
    local importBtn = CreateFrame("Button", nil, bar)
    importBtn:SetSize(64, 20)
    importBtn:SetPoint("LEFT", bar, "LEFT", 8, 0)

    local iBG = importBtn:CreateTexture(nil, "BACKGROUND")
    iBG:SetAllPoints()
    iBG:SetColorTexture(0.10, 0.22, 0.15, 1)

    local ie = {}
    ie[1] = importBtn:CreateTexture(nil, "BORDER"); ie[1]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[1]:SetPoint("TOPLEFT"); ie[1]:SetPoint("TOPRIGHT"); ie[1]:SetHeight(1)
    ie[2] = importBtn:CreateTexture(nil, "BORDER"); ie[2]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[2]:SetPoint("BOTTOMLEFT"); ie[2]:SetPoint("BOTTOMRIGHT"); ie[2]:SetHeight(1)
    ie[3] = importBtn:CreateTexture(nil, "BORDER"); ie[3]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[3]:SetPoint("TOPLEFT"); ie[3]:SetPoint("BOTTOMLEFT"); ie[3]:SetWidth(1)
    ie[4] = importBtn:CreateTexture(nil, "BORDER"); ie[4]:SetColorTexture(0.31,0.78,0.47,0.8)
    ie[4]:SetPoint("TOPRIGHT"); ie[4]:SetPoint("BOTTOMRIGHT"); ie[4]:SetWidth(1)

    local iLabel = importBtn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    iLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    iLabel:SetText("Import")
    iLabel:SetTextColor(0.31, 0.78, 0.47, 1)
    iLabel:SetAllPoints()
    iLabel:SetJustifyH("CENTER"); iLabel:SetJustifyV("MIDDLE")

    importBtn:SetScript("OnClick", function()
        local popup = GetOrCreateImportPopup()
        popup.editBox:SetText("")
        popup:Show()
        popup.editBox:SetFocus()
    end)

    -- Clear button
    local clearBtn = CreateFrame("Button", nil, bar)
    clearBtn:SetSize(50, 20)
    clearBtn:SetPoint("LEFT", importBtn, "RIGHT", 6, 0)

    local clBG = clearBtn:CreateTexture(nil, "BACKGROUND")
    clBG:SetAllPoints()
    clBG:SetColorTexture(0.07, 0.06, 0.12, 1)

    local cle = {}
    cle[1] = clearBtn:CreateTexture(nil, "BORDER"); cle[1]:SetColorTexture(0.22,0.18,0.36,0.8)
    cle[1]:SetPoint("TOPLEFT"); cle[1]:SetPoint("TOPRIGHT"); cle[1]:SetHeight(1)
    cle[2] = clearBtn:CreateTexture(nil, "BORDER"); cle[2]:SetColorTexture(0.22,0.18,0.36,0.8)
    cle[2]:SetPoint("BOTTOMLEFT"); cle[2]:SetPoint("BOTTOMRIGHT"); cle[2]:SetHeight(1)
    cle[3] = clearBtn:CreateTexture(nil, "BORDER"); cle[3]:SetColorTexture(0.22,0.18,0.36,0.8)
    cle[3]:SetPoint("TOPLEFT"); cle[3]:SetPoint("BOTTOMLEFT"); cle[3]:SetWidth(1)
    cle[4] = clearBtn:CreateTexture(nil, "BORDER"); cle[4]:SetColorTexture(0.22,0.18,0.36,0.8)
    cle[4]:SetPoint("TOPRIGHT"); cle[4]:SetPoint("BOTTOMRIGHT"); cle[4]:SetWidth(1)

    local clLabel = clearBtn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    clLabel:SetFont("Fonts\\FRIZQT__.TTF", 9, "OUTLINE")
    clLabel:SetText("Clear")
    clLabel:SetTextColor(0.42, 0.35, 0.54, 1)
    clLabel:SetAllPoints()
    clLabel:SetJustifyH("CENTER"); clLabel:SetJustifyV("MIDDLE")

    clearBtn:SetScript("OnClick", function()
        WTBT.softResData = nil
        WTBT_UI:Refresh()
        print("|cff4FC778[Wick's BIS]|r SoftRes data cleared.")
    end)

    -- Instance label (right side)
    local instanceLabel = bar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    instanceLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "")
    instanceLabel:SetPoint("RIGHT", bar, "RIGHT", -8, 0)
    instanceLabel:SetJustifyH("RIGHT")
    bar.instanceLabel = instanceLabel

    WTBT_UI.softResBar = bar
end

-- ============================================================
-- EMPTY STATE
-- ============================================================
local function ShowSoftResEmpty(sc)
    if not WTBT_UI.srEmptyTitle then
        local t = sc:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        t:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
        t:SetTextColor(0.31, 0.78, 0.47, 1)
        WTBT_UI.srEmptyTitle = t
    end
    if not WTBT_UI.srEmptyText then
        local t = sc:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        t:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
        t:SetTextColor(0.42, 0.35, 0.54, 0.85)
        WTBT_UI.srEmptyText = t
    end

    WTBT_UI.srEmptyTitle:SetText("No Soft Reserves Loaded")
    WTBT_UI.srEmptyTitle:ClearAllPoints()
    WTBT_UI.srEmptyTitle:SetPoint("TOP", sc, "TOP", 0, -60)
    WTBT_UI.srEmptyTitle:Show()

    WTBT_UI.srEmptyText:SetText(
        "Click |cff4FC778Import|r above to paste a SoftRes.it\n" ..
        "Gargul export string.\n\n" ..
        "Get yours at |cff4FC778softres.it|r > Export > |cff4FC778Gargul|r"
    )
    WTBT_UI.srEmptyText:ClearAllPoints()
    WTBT_UI.srEmptyText:SetPoint("TOP", WTBT_UI.srEmptyTitle, "BOTTOM", 0, -10)
    WTBT_UI.srEmptyText:SetWidth(300)
    WTBT_UI.srEmptyText:SetJustifyH("CENTER")
    WTBT_UI.srEmptyText:Show()

    sc:SetHeight(200)
end

-- ============================================================
-- GRID RENDERER — WTBT_UI:RefreshSoftRes()
-- ============================================================
function WTBT_UI:RefreshSoftRes()
    local sc = self.scrollChild
    if not sc then return end

    -- Release all SR-specific frames
    self:ReleaseAllSRFrames()

    -- Build action bar (once, reuse on subsequent calls)
    BuildSoftResBar(sc)
    local bar = self.softResBar
    bar:ClearAllPoints()
    bar:SetPoint("TOPLEFT", sc, "TOPLEFT", 0, 0)
    bar:SetPoint("TOPRIGHT", sc, "TOPRIGHT", 0, 0)
    bar:Show()

    -- Hide empty state text by default
    if self.srEmptyTitle then self.srEmptyTitle:Hide() end
    if self.srEmptyText then self.srEmptyText:Hide() end

    local srData = WTBT.softResData
    if not srData or not srData.players or #srData.players == 0 then
        ShowSoftResEmpty(sc)
        if self.statusLeft then self.statusLeft:SetText("SoftRes") end
        if self.statusRight then self.statusRight:SetText("") end
        return
    end

    -- Update instance label on the bar
    local infoText = srData.instance or ""
    if srData.url and srData.url ~= "" then
        infoText = infoText
    end
    bar.instanceLabel:SetText("|cffC8B68C" .. infoText .. "|r")

    -- Grid layout
    local contentW = sc:GetWidth()
    if contentW < 100 then contentW = 400 end -- safety fallback
    local numCols = math.max(1, math.floor((contentW + GRID_PAD) / (CELL_W + GRID_PAD)))
    local gridTotalW = numCols * CELL_W + (numCols - 1) * GRID_PAD
    local gridLeftMargin = math.max(0, math.floor((contentW - gridTotalW) / 2))
    local yOffset = 32 -- below action bar

    -- Helper: create/reuse a section header (separate from cell pool)
    if not self.srHeaders then self.srHeaders = {} end
    local headerIdx = 0
    local function AcquireSectionHeader()
        headerIdx = headerIdx + 1
        local hdr = self.srHeaders[headerIdx]
        if not hdr then
            hdr = CreateFrame("Frame", nil, sc)
            hdr:SetHeight(22)
            local hbg = hdr:CreateTexture(nil, "BACKGROUND")
            hbg:SetAllPoints()
            hdr.bg = hbg
            local htxt = hdr:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            htxt:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
            htxt:SetAllPoints()
            htxt:SetJustifyH("CENTER")
            htxt:SetJustifyV("MIDDLE")
            hdr.text = htxt
            self.srHeaders[headerIdx] = hdr
        end
        hdr:SetParent(sc)
        hdr:Show()
        return hdr
    end
    -- Hide all section headers first
    for _, hdr in ipairs(self.srHeaders) do hdr:Hide() end

    -- Helper: lay out a grid of cells with centering
    local function LayoutGrid(entries, yOff, cellBuilder)
        local col = 0
        local rowMaxH = 0
        for i, entry in ipairs(entries) do
            local cell, cellH = cellBuilder(entry)
            cell:SetWidth(CELL_W)
            cell:SetHeight(cellH)

            local xOffset = gridLeftMargin + col * (CELL_W + GRID_PAD)
            cell:ClearAllPoints()
            cell:SetPoint("TOPLEFT", sc, "TOPLEFT", xOffset, -yOff)

            rowMaxH = math.max(rowMaxH, cellH)
            col = col + 1
            if col >= numCols then
                col = 0
                yOff = yOff + rowMaxH + GRID_PAD
                rowMaxH = 0
            end
        end
        if col > 0 then
            yOff = yOff + rowMaxH + GRID_PAD
        end
        return yOff
    end

    -- Hard reserves section (if any)
    if srData.hardReserves and #srData.hardReserves > 0 then
        local hdr = AcquireSectionHeader()
        hdr:ClearAllPoints()
        hdr:SetPoint("TOPLEFT", sc, "TOPLEFT", GRID_PAD, -yOffset)
        hdr:SetPoint("TOPRIGHT", sc, "TOPRIGHT", -GRID_PAD, -yOffset)
        hdr.bg:SetColorTexture(0.15, 0.08, 0.08, 0.6)
        hdr.text:SetText("|cffff6666Hard Reserves|r")
        yOffset = yOffset + 24

        yOffset = LayoutGrid(srData.hardReserves, yOffset, function(hr)
            if not hr.itemId then
                local cell = AcquireSRCell(sc)
                cell.bg:SetColorTexture(0.12, 0.06, 0.06, 0.7)
                cell.nameText:SetTextColor(1, 0.4, 0.4, 1)
                cell.nameText:SetText("")
                return cell, NAME_H + CELL_PAD
            end
            local cell = AcquireSRCell(sc)
            local cellH = NAME_H + 4 + ICON_SZ + CELL_PAD
            cell.bg:SetColorTexture(0.12, 0.06, 0.06, 0.7)
            cell.nameText:SetTextColor(1, 0.4, 0.4, 1)
            cell.nameText:SetText(hr.playerName ~= "" and hr.playerName or "Reserved")

            local icon = AcquireSRIcon(cell)
            icon:ClearAllPoints()
            icon:SetPoint("TOPLEFT", cell, "TOPLEFT", 4, -(NAME_H + 2))
            PopulateSRIcon(icon, hr.itemId)
            cell.icons[#cell.icons + 1] = icon

            return cell, cellH
        end)
        yOffset = yOffset + 4
    end

    -- Soft reserves section header
    local srHdr = AcquireSectionHeader()
    srHdr:ClearAllPoints()
    srHdr:SetPoint("TOPLEFT", sc, "TOPLEFT", GRID_PAD, -yOffset)
    srHdr:SetPoint("TOPRIGHT", sc, "TOPRIGHT", -GRID_PAD, -yOffset)
    srHdr.bg:SetColorTexture(0.08, 0.12, 0.08, 0.6)
    srHdr.text:SetText("|cff4FC778Soft Reserves|r  |cffC8B68C(" .. #srData.players .. " players)|r")
    yOffset = yOffset + 24

    -- Player grid
    yOffset = LayoutGrid(srData.players, yOffset, function(player)
        local numItems = #player.items
        local iconRows = math.max(1, math.ceil(numItems / MAX_ICON_COLS))
        local cellH = NAME_H + 4 + (iconRows * (ICON_SZ + ICON_GAP)) + CELL_PAD

        local cell = AcquireSRCell(sc)
        cell.bg:SetColorTexture(0.07, 0.06, 0.12, 0.85)

        -- Player name with class color
        local classColor = SR_CLASS_COLORS[player.className] or SR_CLASS_COLORS["Unknown"]
        cell.nameText:SetTextColor(classColor[1], classColor[2], classColor[3], 1)

        local nameStr = player.name
        if player.plusOnes and player.plusOnes > 0 then
            nameStr = nameStr .. " |cffC8B68C(+" .. player.plusOnes .. ")|r"
        end
        cell.nameText:SetText(nameStr)

        -- Place item icons in grid within the cell
        for idx, itemId in ipairs(player.items) do
            local icon = AcquireSRIcon(cell)
            local iconRow = math.floor((idx - 1) / MAX_ICON_COLS)
            local iconCol = (idx - 1) % MAX_ICON_COLS
            icon:ClearAllPoints()
            icon:SetPoint("TOPLEFT", cell, "TOPLEFT",
                4 + iconCol * (ICON_SZ + ICON_GAP),
                -(NAME_H + 2 + iconRow * (ICON_SZ + ICON_GAP)))
            PopulateSRIcon(icon, itemId)
            cell.icons[#cell.icons + 1] = icon
        end

        return cell, cellH
    end)

    sc:SetHeight(yOffset + 8)

    -- Update status bar
    if self.statusLeft then
        self.statusLeft:SetText("SoftRes: " .. (srData.instance or ""))
    end
    if self.statusRight then
        self.statusRight:SetText("|cffC8B68C" .. #srData.players .. " players|r")
    end
end
