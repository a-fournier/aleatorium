local json = require("json")
local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local AchievementManager = {}

function AchievementManager.isAchievementUnlocked(id)
    local stringifiedId = tostring(id)
    return SaveManager.achievements
        and SaveManager.achievements[stringifiedId]
        and SaveManager.achievements[stringifiedId].isAchieve == true
end

function AchievementManager.unlockAchievement(id, name)
    SaveManager.achievements[tostring(id)] = { name = name, isAchieve = true }
    local ok = SaveManager.saveDatas()
    if ok then
        ItemManager.unlockItem(ItemManager.pickRandomLockedItem())
    end
end

function registerAchievements()
    require("src/achievements/list/on_kill_achievement")
            :new(MOD_REF, 1, "on_kill", "achievement_planetarium")
            :register()
end

function AchievementManager.register(mod)
    MOD_REF = mod
    registerAchievements()
end

return AchievementManager
