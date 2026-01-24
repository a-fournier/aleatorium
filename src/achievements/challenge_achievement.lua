local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

ChallengeAchievement = Achievement:extend()

function ChallengeAchievement:check(entity)
    local challenge = Game().Challenge

    if not self:isAchieve()
        and challenge == self.properties.challenge
        and entity.Type == EntityType.ENTITY_PICKUP
        and entity.Variant == PickupVariant.PICKUP_TROPHY
    then
        self:onAchieve()
    end
end

function ChallengeAchievement:register(mod)
    local challenge = Game().Challenge

    if not self:isAchieve() and challenge ~= Challenge.CHALLENGE_NULL then
        mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, function(_, entity) self:check(entity) end)
    end
end

function ChallengeAchievement:unregister(mod)
    mod:RemoveCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, function(_, entity) self:check(entity) end)
end

return ChallengeAchievement
