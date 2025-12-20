include("src/utils/logger")

OnKillAchievement = {}

local popup = {
    active = false,
    ttl = 0,               -- time to live en frames
    maxTtl = 90,           -- ~1.5s à 60fps
    text = "Achievement aléatoire débloqué !",
}

local hudFont = Font()
hudFont:Load("font/pftempestasevencondensed.fnt") -- une font présente par défaut

local function showPopup(msg)
    popup.text = msg or popup.text
    popup.ttl = popup.maxTtl
    popup.active = true
end

-- MC_POST_ENTITY_KILL
function OnKillAchievement.OnPostEntityKill(mod, entity)
    Logger.logValue("==== OnKillAchievement triggered ====")
    showPopup("FAUX ACHIEVEMENT : Ennemi vaincu !")
end

function OnKillAchievement.OnPostRender(mod)
    if not popup.active then return end

    -- Calcul d'alpha (fade out linéaire)
    local alpha = math.max(0, popup.ttl / popup.maxTtl)

    -- Position d'affichage (center-top)
    local screenW, screenH = Isaac.GetScreenWidth(), Isaac.GetScreenHeight()
    local x = screenW / 2
    local y = 80

    local color = KColor(1, 1, 1, alpha, 0, 0, 0)
    hudFont:DrawStringScaledUTF8(popup.text, x - 160, y, 1.0, 1.0, color, 0, true)

    -- (Optionnel) dessiner un sprite papier :
    -- sprite:SetFrame("Idle", frameIndex)
    -- sprite.Color = KColor(1,1,1, alpha)
    -- sprite:Render(Vector(x, y), Vector.Zero, Vector.Zero)

    popup.ttl = popup.ttl - 1
    if popup.ttl <= 0 then
        popup.active = false
    end
end


function OnKillAchievement.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKillAchievement.OnPostEntityKill)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER,      OnKillAchievement.OnPostRender)
end
