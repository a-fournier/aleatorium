local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

KillAchievement = Achievement:extend()

function KillAchievement:check(entity)
    local entityType = tostring(entity.Type)
    Logger.debug("Entity killed:", entityType)
    if not self:isAchieve() and self.properties.entities[entityType] ~= nil then
        Logger.debug("Current state", self.properties.entities[entityType])
        self.properties.entities[entityType] = math.max(0, self.properties.entities[entityType] - 1)
        SaveManager.achievements[tostring(self.id)] = SaveManager.achievements[tostring(self.id)] or {}
        SaveManager.achievements[tostring(self.id)].properties = self.properties
        SaveManager.saveDatas()
        Logger.debug("Updated state", SaveManager.achievements)

        for _, remaining in pairs(self.properties.entities) do
            if remaining > 0 then return end
        end

        self:onAchieve()
    end
end

---@param properties { character: number, entities: {[key: number]: number} }
function KillAchievement:register(properties)
    self.properties = properties
    Logger.debug("SaveManager Achievements", SaveManager.achievements, self.id)
    Logger.debug("Before Load", self.properties)
    if SaveManager.achievements[tostring(self.id)] ~= nil then
        self.properties = SaveManager.achievements[tostring(self.id)].properties or properties
    end
    Logger.debug("After Load", self.properties)
    Logger.debug("Is achieve", self:isAchieve())
    if not self:isAchieve() then
        Logger.debug("Registering KillAchievement callback for ID", self.id)
        self.mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, function(_, entity) self:check(entity) end)
    end
end

return KillAchievement
