local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

KillAchievement = Achievement:extend()

function indexOfEntityMatching(entity, player, properties)
    local playerProperties = properties[player] or properties[-1]
    if playerProperties == nil then return -1 end

    for i, v in pairs(playerProperties.entities) do
        if v.type == entity.Type
            and ( v.variant == -1 or v.variant == entity.Variant )
        then
            return i
        end
    end

    return -1
end

function isDifficultyMatching(difficulty, properties)
    return properties.difficulty == difficulty or properties.difficulty == -1
end

function KillAchievement:check(entity)
    local game = Game()
    local player = game:GetPlayer(0):GetPlayerType()
    local entityIndex = indexOfEntityMatching(entity, player, self.properties)
    Logger.debug("You killed entity type",entity.Type, "variant", entity.Variant, "subType", entity.SubType)
    if not self:isAchieve() and entityIndex ~= -1 and isDifficultyMatching(game.Difficulty, self.properties)
    then
        Logger.debug("KillAchievement matched for player", player, "entity type", entity.Type)
        local entityProperty = self.properties[player] or self.properties[-1]
        local entities = entityProperty.entities

        entities[entityIndex].times = math.max(0, entities[entityIndex].times - 1)
        self:save()

        if entityProperty.operator == 'OR' then
            if entities[entityIndex].times > 0 then
                return
            end
        else
            for _, k in pairs(entities) do
                if type(k) == "table" and k.times ~= nil and k.times > 0 then
                    return
                end
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
