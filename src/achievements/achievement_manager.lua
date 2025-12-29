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

function AchievementManager.unlockAchievement(id, name)
    SaveManager.achievements[id] = { name = name, isAchieve = true }
    local ok = SaveManager.saveDatas()
    if ok then
        ItemManager.unlockItem(ItemManager.pickRandomLockedItem())
    end
end

function registerAchievements()
    require("src/achievements/list/on_kill_achievement")
            :new(MOD_REF, "1", "on_kill", "achievement_planetarium")
            :register()
end

function AchievementManager.register(mod)
    MOD_REF = mod
    registerAchievements()
end

return AchievementManager
