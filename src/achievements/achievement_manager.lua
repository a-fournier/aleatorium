local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
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

function AchievementManager.unlockAchievement(id, unlock)
    SaveManager.achievements[id] = { isAchieve = true }
    local ok = SaveManager.saveDatas()

    if ok then
        AchievementManager.showPopups(unlock.sprites, unlock.items)
    end
end

function AchievementManager.showPopups(sprites, items)
    if #sprites >= 1
    then
        FakeAchievementPopup.Show({ sprite = sprites[1] }, function()
            table.remove(sprites, 1)
            AchievementManager.showPopups(sprites, items)
        end)
    else if items > 0
    then
        ItemManager.unlockItem(
            ItemManager.pickRandomLockedItem(), function()
            AchievementManager.showPopups(sprites, items - 1)
        end)
    else
        FakeAchievementPopup.Close()
    end end
end

function registerAchievements()
    require("src/achievements/achievements")
end

function AchievementManager.register(mod)
    MOD_REF = mod
    registerAchievements()
end

return AchievementManager
