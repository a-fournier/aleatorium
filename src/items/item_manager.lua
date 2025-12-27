local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local ItemManager = {}
local Items = {}

function ItemManager.isItemUnlocked(id)
    local stringifiedId = tostring(id)
    Logger.debug("Checking if item is unlocked:", id, Items[id].isUnlocked)
    return SaveManager.items
        and SaveManager.items[stringifiedId]
        and SaveManager.items[stringifiedId].isUnlocked == true
end

function ItemManager.pickRandomLockedItem()
    local lockedItems = {}
    for id, item in pairs(Items) do
        if not item.isUnlocked then
            table.insert(lockedItems, item)
        end
    end
    local randomIndex = math.random(1, #lockedItems)
    return lockedItems[randomIndex]
end

function ItemManager.unlockItem(item)
    item.isUnlocked = true
    SaveManager.items[tostring(item.id)] = { name = item.name, isUnlocked = true }
    Logger.debug("Is Item unlocked:", item.isUnlocked)
    Logger.debug("Is Items unlocked:", Items[item.id].isUnlocked)
    local ok = SaveManager.saveDatas()
    if ok then
        FakeAchievementPopup.Show({ sprite = item.unlockSprite })
    end
end

function registerItems()
    Items = require('src/items/items')
end

function ItemManager.register()
    registerItems()
end

return ItemManager
