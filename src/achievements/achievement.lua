local AchievementManager = require("src/achievements/achievement_manager")
local Logger = require("src/utils/logger")

local Achievement = {}
Achievement.__index = Achievement
Achievement.__is_abstract = true

function Achievement:new(mod, id, nbItemToUnlock, properties)
    if self.__is_abstract then
        error("You can't create an instance of an abstract class, extend it instead", 2)
    end

    -- Initialize properties
    local o = setmetatable({}, self)
    o.mod = mod
    o.id = id
    o.nbItemToUnlock =nbItemToUnlock
    o.properties = AchievementManager.getProperties(id, properties)
    o.didShowThisRun = false

    -- TODO : check on continue
    -- Reset didShowThisRun on new game start
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, function() o.didShowThisRun = false end)

    return o
end

function Achievement:extend()
    local subclass = {}
    for k, v in pairs(self) do
        if k:sub(1, 2) ~= "__" then
            subclass[k] = v
        end
    end
    subclass.__index = subclass
    setmetatable(subclass, self)

    subclass.__is_abstract = false
    return subclass
end

function Achievement:isAchieve()
    return AchievementManager.isAchievementUnlocked(self.id) or self.didShowThisRun
end

function Achievement:onAchieve()
    if not self:isAchieve() then
        self.didShowThisRun = true
        AchievementManager.unlockAchievement(self.id, self.nbItemToUnlock)
    end
end

function Achievement:getSavedProperties()
    local saved = AchievementManager.getAchievementProperties(self.id)
    return saved or {}
end

function Achievement:save()
    AchievementManager.saveAchievement(self)
end

function Achievement:check()
    error("Method check not implemented", 2)
end

function Achievement:register()
    error("Method register not implemented", 2)
end

return Achievement
