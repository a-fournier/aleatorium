local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local ItemManager = {}
local SerializedItems = {}

function ItemManager.isItemUnlocked(id)
    local items = SaveManager.items
    return items and items[tostring(id)] and items[tostring(id)].isUnlocked == true
end

function ItemManager.pickRandomLockedItem()
    local lockedItems = {}
    for id, item in pairs(SerializedItems) do
        if not item.isUnlocked then
            table.insert(lockedItems, item)
        end
    end
    if #lockedItems == 0 then
        return nil
    end
    local randomIndex = math.random(1, #lockedItems)
    return lockedItems[randomIndex]
end

function ItemManager.unlockItem(item)
    if item == nil then
        Logger.warn("[ItemManager] No locked items available to unlock.")
        return
    end
    Logger.debug("Try to unlock", item)
    item.isUnlocked = true
    SaveManager.items[tostring(item.id)] = { name = item.name, isUnlocked = item.isUnlocked }

    local ok = SaveManager.saveDatas()
    if ok then
        FakeAchievementPopup.Show({ sprite = item.unlockSprite })
    end
end

function registerItems()
    SerializedItems = require('src/items/items')
end

function ItemManager.register(mod)
    MOD_REF = mod
    registerItems()
end

return ItemManager
