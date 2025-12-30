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

function ItemManager.buildPoolAvailableItems(pool)
    local availableItems = {}
    for _, item in pairs(SerializedItems) do
        if item.isUnlocked and item.pools[pool] and item.pools[pool] > 0
        then
            availableItems[item.id] = { weight = item.pools[pool] }
        end
    end
    return availableItems
end

function ItemManager.getRandomPoolItem(_, pool, decrease, seed)
    Logger.debug("[[GET RANDOM ITEM] Pool", pool)
    Logger.debug("[[GET RANDOM ITEM] Decrease", decrease)
    Logger.debug("[[GET RANDOM ITEM] seed", seed)
    local availableItems = ItemManager.buildPoolAvailableItems(pool)
    Logger.debug(availableItems)
    Logger.debug(# availableItems)
end

function registerItems()
    SerializedItems = require('src/items/items')
end

function ItemManager.register(mod)
    MOD_REF = mod
    registerItems()
    mod:AddCallback(ModCallbacks.MC_PRE_GET_COLLECTIBLE, ItemManager.getRandomPoolItem)
end

return ItemManager
