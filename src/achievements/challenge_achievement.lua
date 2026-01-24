local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

ChallengeAchievement = Achievement:extend()

function ChallengeAchievement:check()
    local player = Isaac.GetPlayer()
    local challenge = Game().Challenge
    Logger.debug("=== 3 ===")

    if not self:isAchieve() and challenge == self.properties.challenge and not player.IsDead()
    then
        Logger.debug("=== 4 ===")
    end
end

function ChallengeAchievement:register(mod)
    if not self:isAchieve() then
        mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, function(_) self:check() end)
    end
end

function ChallengeAchievement:unregister(mod)
    mod:RemoveCallback(ModCallbacks.MC_PRE_GAME_EXIT, function(_, isGameOver) self:check(isGameOver) end)
end

return ChallengeAchievement
