-- ============================================================
-- MoreFromWick.lua
-- Cross-suite footer link. A small button lives in the status bar
-- and opens a panel listing Wick's other addons. Each row detects
-- whether the addon is already installed and offers a copyable
-- CurseForge URL on click.
-- ============================================================

local MFW = {}
WTBT_MFW = MFW

-- ============================================================
-- DATA. Generated from WickSuite/wick.json by `wick sync`.
-- Do not edit by hand. Excludes the host addon and any addon without a CF page.
-- ============================================================
-- wick:suite-data:start
local SUITE = {
    { folder = "WicksCDTracker", title = "Wick's CD Tracker", tagline = "Live party and raid cooldown tracker", slug = "wicks-cd-tracker" },
    { folder = "WicksTradeHall", title = "Wick's Trade Hall", tagline = "Trade chat as a categorized bulletin board", slug = "trade-hall" },
    { folder = "WicksMacroBuilder", title = "Wick's Macro Builder", tagline = "Clean macro editor with chips and class presets", slug = "wicks-macro-builder" },
    { folder = "WicksCombatLog", title = "Wick's Combat Log", tagline = "Live COMBAT_LOG_EVENT viewer with filters", slug = "wicks-combat-log" },
    { folder = "WicksStats", title = "Wick's Stats", tagline = "Detailed stats Blizzard hides", slug = "wicks-stats" },
    { folder = "WicksQuestKey", title = "Wick's Quest Key", tagline = "ExtraActionButton for quest items", slug = "wicks-quest-key" },
    { folder = "WicksTotemsAndThings", title = "Wick's Totems and Things", tagline = "Enhancement shaman command bar", slug = "wicks-totems-and-things" },
    { folder = "WicksBags", title = "Wick's Bags", tagline = "Categorized bags + bank with masonry layout", slug = "wicks-bags" },
    { folder = "WicksTravelForm", title = "Wick's Travel Form", tagline = "Smart shapeshift binding for druids", slug = "wicks-travel-form" },
    { folder = "WicksLedger", title = "Wick's Ledger", tagline = "Session earnings tracker with AH-priced loot", slug = "wicks-ledger" },
    { folder = "WicksWardrobe", title = "Wick's Wardrobe", tagline = "Tier set and weapon preview browser", slug = "wicks-wardrobe" },
    { folder = "WicksSurvivors", title = "Wick's Survivors", tagline = "Vampire Survivors-style wave survival minigame", slug = "wicks-survivors" },
}
-- wick:suite-data:end

-- Brand palette, mirrored from UI.lua so this module is self-contained.
local C_BG          = { 0.051, 0.039, 0.078, 0.97 }
local C_HEADER_BG   = { 0.090, 0.067, 0.141, 1 }
local C_BORDER      = { 0.220, 0.188, 0.345, 1 }
local C_GREEN       = { 0.310, 0.780, 0.471, 1 }
local C_TEXT_DIM    = { 0.42,  0.35,  0.54,  1 }
local C_TEXT_NORMAL = { 0.831, 0.784, 0.631, 1 }

-- ============================================================
-- CHROME HELPERS (parallel to UI.lua, kept local for module isolation)
-- ============================================================
local function NewTexture(parent, layer, c)
    local t = parent:CreateTexture(nil, layer or "BACKGROUND")
    if c then t:SetColorTexture(c[1], c[2], c[3], c[4] or 1) end
    return t
end

local function NewText(parent, size, color)
    local f = parent:CreateFontString(nil, "OVERLAY")
    f:SetFont("Fonts\\FRIZQT__.TTF", size or 11, "")
    if color then f:SetTextColor(color[1], color[2], color[3], color[4] or 1) end
    return f
end

local function AddBorder(frame, c)
    local edges = {}
    for i = 1, 4 do edges[i] = NewTexture(frame, "BORDER", c) end
    edges[1]:SetPoint("TOPLEFT");    edges[1]:SetPoint("TOPRIGHT");    edges[1]:SetHeight(1)
    edges[2]:SetPoint("BOTTOMLEFT"); edges[2]:SetPoint("BOTTOMRIGHT"); edges[2]:SetHeight(1)
    edges[3]:SetPoint("TOPLEFT");    edges[3]:SetPoint("BOTTOMLEFT");  edges[3]:SetWidth(1)
    edges[4]:SetPoint("TOPRIGHT");   edges[4]:SetPoint("BOTTOMRIGHT"); edges[4]:SetWidth(1)
end

local function AddCornerAccents(frame)
    local sz = 10
    for _, p in ipairs({ "TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT" }) do
        local h = NewTexture(frame, "OVERLAY", C_GREEN)
        h:SetPoint(p, frame, p, 0, 0); h:SetSize(sz, 2)
        local v = NewTexture(frame, "OVERLAY", C_GREEN)
        v:SetPoint(p, frame, p, 0, 0); v:SetSize(2, sz)
    end
end

local function AddHeaderStrip(frame, titleMarkup)
    local hdr = NewTexture(frame, "BACKGROUND", C_HEADER_BG)
    hdr:SetPoint("TOPLEFT", 1, -1); hdr:SetPoint("TOPRIGHT", -1, -1); hdr:SetHeight(22)
    local sep = NewTexture(frame, "BORDER", C_BORDER)
    sep:SetPoint("TOPLEFT", 1, -23); sep:SetPoint("TOPRIGHT", -1, -23); sep:SetHeight(1)

    local title = NewText(frame, 12, C_TEXT_NORMAL)
    title:SetText(titleMarkup)
    title:SetPoint("LEFT", frame, "TOPLEFT", 10, -11)

    local close = CreateFrame("Button", nil, frame)
    close:SetSize(18, 18)
    close:SetPoint("RIGHT", frame, "TOPRIGHT", -4, -11)
    local closeX = NewText(close, 14, C_TEXT_DIM)
    closeX:SetText("\195\151") -- × (U+00D7), encoded as UTF-8 to dodge editor BOM issues
    closeX:SetAllPoints(); closeX:SetJustifyH("CENTER")
    close:SetScript("OnEnter", function() closeX:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1) end)
    close:SetScript("OnLeave", function() closeX:SetTextColor(C_TEXT_DIM[1], C_TEXT_DIM[2], C_TEXT_DIM[3], 1) end)
    close:SetScript("OnClick", function() frame:Hide() end)
    return title
end

-- ============================================================
-- COPY URL POPUP
-- ============================================================
local copyPopup
local function BuildCopyPopup()
    local f = CreateFrame("Frame", "WTBT_MFW_CopyURL", UIParent, "BackdropTemplate")
    f:SetSize(380, 110)
    f:SetPoint("CENTER")
    f:SetFrameStrata("DIALOG")
    f:SetToplevel(true)
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop",  function(self) self:StopMovingOrSizing() end)
    f:SetClampedToScreen(true)
    f:Hide()

    local bg = NewTexture(f, "BACKGROUND", C_BG); bg:SetAllPoints()
    AddBorder(f, C_BORDER)
    AddCornerAccents(f)
    f.title = AddHeaderStrip(f, "")

    local hint = NewText(f, 10, C_TEXT_DIM)
    hint:SetPoint("TOPLEFT", f, "TOPLEFT", 14, -32)
    hint:SetText("Press Ctrl+C to copy, then paste in your browser.")

    local eb = CreateFrame("EditBox", nil, f)
    eb:SetPoint("TOPLEFT",  f, "TOPLEFT",  14, -54)
    eb:SetPoint("TOPRIGHT", f, "TOPRIGHT", -14, -54)
    eb:SetHeight(24)
    eb:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    eb:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
    eb:SetTextInsets(8, 8, 4, 4)
    eb:SetAutoFocus(false)
    eb:SetMaxLetters(256)
    eb:SetScript("OnEscapePressed", function(self) self:ClearFocus(); f:Hide() end)
    eb:SetScript("OnEnterPressed",  function(self) self:ClearFocus() end)

    local ebBG = NewTexture(eb, "BACKGROUND")
    ebBG:SetColorTexture(0, 0, 0, 0.4); ebBG:SetAllPoints()
    local ebBorder = {}
    for i = 1, 4 do ebBorder[i] = NewTexture(eb, "BORDER", C_BORDER) end
    ebBorder[1]:SetPoint("TOPLEFT", -1, 1);     ebBorder[1]:SetPoint("TOPRIGHT", 1, 1);     ebBorder[1]:SetHeight(1)
    ebBorder[2]:SetPoint("BOTTOMLEFT", -1, -1); ebBorder[2]:SetPoint("BOTTOMRIGHT", 1, -1); ebBorder[2]:SetHeight(1)
    ebBorder[3]:SetPoint("TOPLEFT", -1, 1);     ebBorder[3]:SetPoint("BOTTOMLEFT", -1, -1); ebBorder[3]:SetWidth(1)
    ebBorder[4]:SetPoint("TOPRIGHT", 1, 1);     ebBorder[4]:SetPoint("BOTTOMRIGHT", 1, -1); ebBorder[4]:SetWidth(1)

    f.eb = eb
    tinsert(UISpecialFrames, "WTBT_MFW_CopyURL")
    return f
end

local function ShowCopyURL(addonTitle, url)
    if not copyPopup then copyPopup = BuildCopyPopup() end
    local trimmed = (addonTitle:gsub("^Wick's ", ""))
    copyPopup.title:SetText("|cff4FC778Wick's|r |cffD4C8A1" .. trimmed .. "|r")
    copyPopup.eb:SetText(url)
    copyPopup.eb:SetCursorPosition(0)
    copyPopup.eb:HighlightText()
    copyPopup.eb:SetFocus()
    copyPopup:Show()
    copyPopup:Raise()
end

-- ============================================================
-- MAIN PANEL
-- ============================================================
local panel
local function BuildPanel()
    local PANEL_W = 380
    local ROW_H   = 40
    local TOP_PAD = 50
    local BOT_PAD = 12
    local PANEL_H = TOP_PAD + (#SUITE * ROW_H) + BOT_PAD

    local f = CreateFrame("Frame", "WTBT_MFW_Panel", UIParent, "BackdropTemplate")
    f:SetSize(PANEL_W, PANEL_H)
    f:SetPoint("CENTER")
    f:SetFrameStrata("DIALOG")
    f:SetToplevel(true)
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop",  function(self) self:StopMovingOrSizing() end)
    f:SetClampedToScreen(true)
    f:Hide()

    local bg = NewTexture(f, "BACKGROUND", C_BG); bg:SetAllPoints()
    AddBorder(f, C_BORDER)
    AddCornerAccents(f)
    AddHeaderStrip(f, "|cff4FC778More from|r |cffD4C8A1Wick|r")

    local sub = NewText(f, 10, C_TEXT_DIM)
    sub:SetText("Click any addon to copy its CurseForge link.")
    sub:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -32)

    local rowY = -TOP_PAD
    for _, a in ipairs(SUITE) do
        local row = CreateFrame("Button", nil, f)
        row:SetPoint("TOPLEFT",  f, "TOPLEFT",  6,  rowY)
        row:SetPoint("TOPRIGHT", f, "TOPRIGHT", -6, rowY)
        row:SetHeight(ROW_H - 2)

        local hover = NewTexture(row, "BACKGROUND")
        hover:SetAllPoints(); hover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)
        row:SetScript("OnEnter", function()
            hover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0.08)
        end)
        row:SetScript("OnLeave", function()
            hover:SetColorTexture(C_GREEN[1], C_GREEN[2], C_GREEN[3], 0)
        end)
        row:SetScript("OnClick", function()
            ShowCopyURL(a.title, "https://www.curseforge.com/wow/addons/" .. a.slug)
        end)

        local sep = NewTexture(row, "ARTWORK")
        sep:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.30)
        sep:SetPoint("BOTTOMLEFT", 6, 0); sep:SetPoint("BOTTOMRIGHT", -6, 0); sep:SetHeight(1)

        local installed = IsAddOnLoaded and IsAddOnLoaded(a.folder)

        local nameLabel = NewText(row, 12, installed and C_TEXT_DIM or C_TEXT_NORMAL)
        nameLabel:SetText(a.title)
        nameLabel:SetPoint("TOPLEFT", row, "TOPLEFT", 12, -6)

        local tagline = NewText(row, 10, C_TEXT_DIM)
        tagline:SetText(a.tagline)
        tagline:SetPoint("TOPLEFT", row, "TOPLEFT", 12, -22)
        tagline:SetPoint("RIGHT",   row, "RIGHT",  -90, 0)
        tagline:SetJustifyH("LEFT")
        tagline:SetWordWrap(false)

        local rightLabel = NewText(row, 10, C_GREEN)
        rightLabel:SetText(installed and "Installed" or "Get")
        rightLabel:SetPoint("RIGHT", row, "RIGHT", -12, 0)

        rowY = rowY - ROW_H
    end

    tinsert(UISpecialFrames, "WTBT_MFW_Panel")
    return f
end

function MFW:ShowPanel()
    if not panel then panel = BuildPanel() end
    panel:Show()
    panel:Raise()
end

-- ============================================================
-- STATUS BAR ATTACH POINT
-- ============================================================
function MFW:AttachButton(parent)
    local btn = CreateFrame("Button", nil, parent)
    btn:SetSize(98, 16)
    btn:SetPoint("LEFT", parent, "LEFT", 8, 0)

    local label = NewText(btn, 10, C_GREEN)
    label:SetText("More from Wick")
    label:SetAllPoints()
    label:SetJustifyH("LEFT")

    btn:SetScript("OnEnter", function(self)
        label:SetTextColor(C_TEXT_NORMAL[1], C_TEXT_NORMAL[2], C_TEXT_NORMAL[3], 1)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine("More from Wick", 1, 1, 1)
        GameTooltip:AddLine("Browse Wick's other addons.", 0.7, 0.7, 0.7, true)
        GameTooltip:Show()
    end)
    btn:SetScript("OnLeave", function()
        label:SetTextColor(C_GREEN[1], C_GREEN[2], C_GREEN[3], 1)
        GameTooltip:Hide()
    end)
    btn:SetScript("OnClick", function() MFW:ShowPanel() end)

    return btn
end
