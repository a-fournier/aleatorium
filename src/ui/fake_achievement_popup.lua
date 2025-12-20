
-- src/ui/fake_achievement_popup.lua
FakeAchievementPopup = {}

-- ====== Dépendances légères ======
local font = Font()
font:Load("font/pftempestasevencondensed.fnt") -- police vanilla

-- Papier (anm2 vanilla ou custom dans ton mod)
local paper = Sprite()
-- Si tu as un papier custom dans ton mod, garde ce chemin.
-- Sinon, référence le papier vanilla (après extraction, nom à adapter).
paper:Load("gfx/ui/achievement/paper.anm2", true)
paper:Play("Idle", true)

-- Icône d’item : on utilise l’ANM2 générique des collectibles
local icon = Sprite()
icon:Load("gfx/005.100_Collectible.anm2", true) -- anm2 générique items
icon:Play("Idle", true)

-- ====== État interne ======
local state = {
    active = false,
    ttl    = 0,       -- frames restantes à rendre
    maxTtl = 120,     -- durée par défaut (~2s)
    title    = "YOU UNLOCKED",
    subtitle = "\"SOMETHING\"",
    -- info pour l’icône (CollectibleType)
    iconItemId = nil,
}

-- ====== API ======
--- Affiche la popup factice.
-- @param params table { title?, subtitle?, itemId?, duration? }
function FakeAchievementPopup.Show(params)
    params = params or {}

    state.title     = params.title    or "YOU UNLOCKED"
    state.subtitle  = params.subtitle or "\"SOMETHING\""
    state.iconItemId = params.itemId  -- CollectibleType (ex: CollectibleType.COLLECTIBLE_FORGET_ME_NOW)
    state.maxTtl    = tonumber(params.duration) or 120
    state.ttl       = state.maxTtl
    state.active    = true

    -- Charger le sprite d’item via ItemConfig (icône dynamique)
    if state.iconItemId ~= nil then
        local cfg = Isaac.GetItemConfig():GetCollectible(state.iconItemId)
        if cfg and cfg.GfxFileName then
            -- Pattern recommandé : remplacer la spritesheet 1 du 005.100_Collectible.anm2
            icon:ReplaceSpritesheet(1, cfg.GfxFileName)   -- injecte le PNG vanilla de l’item
            icon:LoadGraphics()                           -- recharger les textures
            icon:Play("Idle", true)
        end
    end
end

--- Indique si la popup est active
function FakeAchievementPopup.IsActive()
    return state.active and state.ttl > 0
end

--- Ferme immédiatement la popup
function FakeAchievementPopup.Close()
    state.active = false
    state.ttl    = 0
end

-- ====== Rendu (MC_POST_RENDER) ======
function FakeAchievementPopup.OnPostRender(_mod)
    if not state.active or state.ttl <= 0 then return end

    local scrW, scrH = Isaac.GetScreenWidth(), Isaac.GetScreenHeight()
    local center = Vector(scrW / 2, scrH / 3)

    -- Fade/scale très léger
    local t     = state.ttl / state.maxTtl
    local alpha = math.max(0, t)
    local scale = 1.0 + 0.05 * (1.0 - t)

    -- Papier
    paper.Color = Color(1, 1, 1, alpha, 0, 0, 0)
    paper.Scale = Vector(scale, scale)
    paper:Render(center, Vector.Zero, Vector.Zero)

    -- Icône d’item (si dispo)
    if state.iconItemId ~= nil then
        local icoPos = center + Vector(-120, -10)
        icon.Color  = Color(1, 1, 1, alpha, 0, 0, 0)
        icon.Scale = Vector(1.0, 1.0)
        icon:Render(icoPos, Vector.Zero, Vector.Zero)
    end

    -- Texte
    local titleColor    = Color(0, 0, 0, alpha, 0, 0, 0)
    local subtitleColor = Color(0, 0, 0, alpha, 0, 0, 0)
    font:DrawStringScaledUTF8(state.title,    center.X - 30, center.Y - 40, 1.0, 1.0, titleColor,    0, true)
    font:DrawStringScaledUTF8(state.subtitle, center.X - 30, center.Y - 15, 1.0, 1.0, subtitleColor, 0, true)

    -- Countdown
    state.ttl = state.ttl - 1
    if state.ttl <= 0 then
        state.active = false
    end
end

function FakeAchievementPopup.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, FakeAchievementPopup.OnPostRender)
end

return FakeAchievementPopup
