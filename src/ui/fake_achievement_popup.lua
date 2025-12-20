local Logger = require("src/utils/logger")

FakeAchievementPopup = {}

local ANM2_PATH  = "gfx/ui/achievement/achievements.anm2"
local ICON_ROOT  = "gfx/ui/achievement/"

local popup = Sprite()
local state = {
    active     = false,
    phase      = "none",   -- "Appear" | "Idle" | "Dissapear" | "none"
    ttl        = 0,
    maxTtl     = 60,
    alphaIn    = 0.12,
    alphaOut   = 0.25,
    sfx        = true,
    sfxPlayed  = false,
}

local sfx = SFXManager()
local SFX_ID = SoundEffect and SoundEffect.SOUND_POWERUP1 or nil

local function loadPopupSprites(iconPng)
    popup:Load(ANM2_PATH, true)
    popup:ReplaceSpritesheet(3, ICON_ROOT .. iconPng)
    popup:LoadGraphics()
end


local function gotoPhase(phase)
    state.phase = phase

    if phase == "Appear" then
        if state.sfx and not state.sfxPlayed and SFX_ID ~= nil then
            sfx:Play(SFX_ID, 1.0, 0, false, 1.0)
            state.sfxPlayed = true
        end
        popup:Play("Appear", true)
    elseif phase == "Idle" then
        state.ttl = state.maxTtl
        popup:Play(phase, true)
    elseif phase == "Dissapear" then
        popup:Play(phase, true)
    end
end

function FakeAchievementPopup.Show(params)
    if state.active then return end

    params = params or {}
    local iconName = assert(params.sprite, "[AchievementPopup] 'sprite' is required")

    loadPopupSprites(iconName .. ".png")

    state.ttl       = state.maxTtl
    state.sfxPlayed = false
    state.active    = true

    gotoPhase("Appear")
end

function FakeAchievementPopup.IsActive()
    return state.active
end

function FakeAchievementPopup.Close()
    state.active = false
    state.phase  = "none"
    state.ttl    = 0
end

-- ===== MC_POST_RENDER =====
function FakeAchievementPopup.OnPostRender(_mod)
    if not state.active then return end

    if popup.Update then popup:Update() end
    if state.phase == "Appear" then
        if popup:IsFinished("Appear") then
            gotoPhase("Idle")
        end
    elseif state.phase == "Idle" then
        state.ttl = state.ttl - 1
        if state.ttl <= 0 then
            gotoPhase("Dissapear")
        end
    elseif state.phase == "Dissapear" then
        if popup:IsFinished("Dissapear") then
            state.active = false
            state.phase  = "none"
        end
    end

    local scrW, scrH = Isaac.GetScreenWidth(), Isaac.GetScreenHeight()
    local center = Vector(scrW/2, scrH/3)
    popup:Render(center, Vector.Zero, Vector.Zero)
end

function FakeAchievementPopup.register(mod)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, FakeAchievementPopup.OnPostRender)
end

return FakeAchievementPopup
