local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local AchievementManager = {}

function AchievementManager.isAchievementUnlocked(id)
    return SaveManager.achievements
        and SaveManager.achievements[id]
        and SaveManager.achievements[id].isAchieve == true
end

function AchievementManager.getProperties(id, default)
    if SaveManager.achievements[id]
    then
        return SaveManager.achievements[id].properties or default
    end
    return default
end

function AchievementManager.saveAchievement(achievement)
    local id = achievement.id
    SaveManager.achievements[id] = SaveManager.achievements[id] or {}
    SaveManager.achievements[id].properties = achievement.properties
    SaveManager.saveDatas()
end

function AchievementManager.unlockAchievement(id, nbItemToUnlock)
    SaveManager.achievements[id] = { isAchieve = true }
    local ok = SaveManager.saveDatas()

    if ok then
        ItemManager.unlockNItems(nbItemToUnlock)
    end
end

function registerAchievements()
    require("src/achievements/achievements")
end

function AchievementManager.register(mod)
    MOD_REF = mod
    registerAchievements()
end

return AchievementManager
