local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

KillAchievement = Achievement:extend()

function KillAchievement:check(entity)
    local game = Game()
    local player = game:GetPlayer(0):GetPlayerType()

    if not self:isAchieve()
        and (
            (
                self.properties[-1] ~= nil
                and self.properties[-1].entities[entity.Type] ~= nil
            )
            or (
                self.properties[player] ~= nil
                and self.properties[player].entities[entity.Type] ~= nil
            )
        )
        and (self.properties.difficulty == game.Difficulty or self.properties.difficulty == -1)
    then
        local entityProperty = self.properties[player] or self.properties[-1]
        local entities = entityProperty.entities

        entities[entity.Type] = math.max(0, entities[entity.Type] - 1)
        self:save()

        if entityProperty.operator == 'OR' then
            if entities[entity.Type] > 0 then
                return
            end
        else
            for _, k in pairs(entities) do
                if type(k) == "number" and k > 0 then return end
            end
        end

        entityProperty.times = math.max(0, entityProperty.times - 1)
        self:save()

        if self.properties.operator == 'OR' then
            if entityProperty.times > 0 then
                return
            end
        else
            for _, k in pairs(self.properties) do
                if type(k) == "table" and k.times ~= nil and k.times > 0
                then
                    return
                end
            end
        end

        self:onAchieve()
    end
end

function KillAchievement:register()
    if not self:isAchieve() then
        self.mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, function(_, entity) self:check(entity) end)
    end
end

return KillAchievement
