include("src/utils/logger")
include("src/ui/fake_achievement_popup")

OnKillAchievement = {}

-- Callback : MC_POST_ENTITY_KILL
function OnKillAchievement.OnPostEntityKill(_mod, entity)
    Logger.logValue("==== OnKillAchievement: enemy killed, show fake popup ====")

    FakeAchievementPopup.Show({
        title    = "TU ES RACISTE",
        subtitle = "\"ET OUAIS\"",
        itemId   = CollectibleType.COLLECTIBLE_FORGET_ME_NOW,
        duration = 120
    })
end

function OnKillAchievement.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKillAchievement.OnPostEntityKill)
    FakeAchievementPopup.Init(mod)
end
