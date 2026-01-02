local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local AchievementManager = {}

function AchievementManager.isAchievementUnlocked(id)
    return SaveManager.achievements
        and SaveManager.achievements[tostring(id)]
        and SaveManager.achievements[tostring(id)].isAchieve == true
end

function AchievementManager.unlockAchievement(id)
    SaveManager.achievements[tostring(id)] = { isAchieve = true }
    local ok = SaveManager.saveDatas()
    if ok then
        ItemManager.unlockItem(ItemManager.pickRandomLockedItem())
    end
end

function registerAchievements()
    local KillAchievement = require("src/achievements/kill_achievement")

    KillAchievement:new(MOD_REF, 21):register({ character = PlayerType.PLAYER_CAIN, entities = {[tostring(EntityType.ENTITY_FLY)] = 2, [tostring(EntityType.ENTITY_POOTER)] = 1} })
end

function AchievementManager.register(mod)
    MOD_REF = mod
    registerAchievements()
end

return AchievementManager
