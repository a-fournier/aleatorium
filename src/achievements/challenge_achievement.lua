local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

ChallengeAchievement = Achievement:extend()

function ChallengeAchievement:check(isGameOver)
    Logger.debug("=== 3 ===")
    local challenge = Game().Challenge
    Logger.debug("Challenge", challenge, isGameOver)
end

function ChallengeAchievement:register()
    Logger.debug("Registering ChallengeAchievement:", self.id)
    if not self:isAchieve() then

        self._cbPostGameEnd = function(_, isGameOver)
            Logger.debug("=== 2.1 ===")
            self:check(isGameOver)
        end

        self._cbPreGameExit = function(_, shouldSave)
            Logger.debug("=== 2.2 ===")
            self:check(false)
        end


        Logger.debug("=== 1 ===", self.id)
        Logger.debug("[ChallengeAchievement] self.mod =", tostring(self.mod))
        Logger.debug("[ChallengeAchievement] self.mod.Name =", self.mod and self.mod.Name)

        self.mod:AddCallback(ModCallbacks.MC_POST_GAME_END, self._cbPostGameEnd)
        self.mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, self._cbPreGameExit)
        self.mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, function(_, entity) self:check(entity) end)
    end

    return self;
end

return ChallengeAchievement
