local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

KillAchievement = Achievement:extend()

function KillAchievement:check(entity)
    Logger.debug("Entity killed:", entity.Type)
    local game = Game()
    if not self:isAchieve()
        and self.properties.entities[entity.Type] ~= nil
        and self.properties.character == game:GetPlayer(0):GetPlayerType()
        and self.properties.difficulty == game.Difficulty
    then
        Logger.debug("Current state", self.properties.entities[entity.Type])
        self.properties.entities[entity.Type] = math.max(0, self.properties.entities[entity.Type] - 1)
        self:save()
        Logger.debug("Updated state", SaveManager.achievements)

        if self.properties.entities.operator == 'OR' then
            if self.properties.entities[entity.Type] > 0 then
                return
            end
        else
            for _, k in pairs(self.properties.entities) do
                if type(k) == "number" and k > 0 then return end
            end
        end

        self:onAchieve()
    end
end

function KillAchievement:register()
    Logger.debug("SaveManager Achievements", SaveManager.achievements, self.id)
    Logger.debug("Is achieve", self:isAchieve())
    if not self:isAchieve() then
        Logger.debug("Registering KillAchievement callback for ID", self.id)
        self.mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, function(_, entity) self:check(entity) end)
    end
end

return KillAchievement
