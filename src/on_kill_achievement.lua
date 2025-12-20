include("src/utils/logger")
include("src/ui/fake_achievement_popup")

OnKillAchievement = {}

-- Callback : MC_POST_ENTITY_KILL
function OnKillAchievement.OnPostEntityKill(_mod, entity)
    FakeAchievementPopup.Show({ image = "achievement_planetarium" })
end

function OnKillAchievement.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKillAchievement.OnPostEntityKill)
    FakeAchievementPopup.Init(mod)
end
