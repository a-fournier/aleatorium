local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

OnKillAchievement = Achievement:extend()

function OnKillAchievement:check()
    self:onAchieve()
end

function OnKillAchievement:register()
    if not self:isAchieve() then
        self.mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, function(_, entity) self:check(entity) end)
    end
end

return OnKillAchievement
