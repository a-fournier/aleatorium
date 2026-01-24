local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

TaintedAchievement = Achievement:extend()

function TaintedAchievement:check(collided)
    if not self:isAchieve()
        and Game():GetPlayer(0):GetPlayerType() == self.properties.player
        and collided.Type == EntityType.ENTITY_SLOT
        and collided.Variant == 14
    then
        self:onAchieve()
    end
end

function TaintedAchievement:register(mod)
    if not self:isAchieve() then
        mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, function(_, _, collided) self:check(collided) end)
    end
end

function TaintedAchievement:unregister(mod)
    mod:RemoveCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, function(_, _, collided) self:check(collided) end)
end

return TaintedAchievement
