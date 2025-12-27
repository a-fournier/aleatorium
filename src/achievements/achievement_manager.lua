local json = require("json")
local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")

local MOD_REF
local AchievementManager = {}

function AchievementManager.isAchievementUnlocked(id)
    return AchievementManager.achievements and AchievementManager.achievements[id] and AchievementManager.achievements[id].isAchieve == true
end

function AchievementManager.unlockAchievement(id, name)
    AchievementManager.achievements[id] = { name = name, isAchieve = true }
    local ok, encoded = pcall(json.encode, AchievementManager)
    if ok then
        MOD_REF:SaveData(encoded)
        ItemManager.unlockItem(ItemManager.pickRandomLockedItem())
    end
end

function loadAchievements()
    if MOD_REF:HasData() then
        local ok, decoded = pcall(json.decode, MOD_REF:LoadData())
        AchievementManager.achievements = decoded.achievements
    else
        AchievementManager.achievements = {}
    end
    registerAchievements()
end

function registerAchievements()
    require("src/achievements/list/on_kill_achievement")
            :new(MOD_REF, 1, "on_kill", "achievement_planetarium")
            :register()
end

function AchievementManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, loadAchievements)
end

return AchievementManager
