local FakeAchievementPopup = require("src/ui/fake_achievement_popup")
local Logger = require("src/utils/logger")
local Pools = require("src/pools/pools")
local SaveManager = require("src/save/save_manager")
local RngController = require("src/utils/rng_controller")

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
            availableItems[item.id] = item.pools[pool]
        end
    end
    return availableItems
end

function ItemManager.getRandomPoolItem(_, pool, decrease, seed)
    local availableItems = ItemManager.buildPoolAvailableItems(pool)
    local totalWeight = 0
    local ids = {}

    for id, data in pairs(availableItems) do
        local w = data or 0
        if w > 0 then
            totalWeight = totalWeight + w
            ids[#ids + 1] = id
        end
    end

    if totalWeight <= 0 or #ids == 0 then
        Logger.debug("[[GET RANDOM ITEM] No available items for pool", pool)
        return nil
    end

    table.sort(ids)
    local roll = RngController:RandomFloat(totalWeight)

    local cumulative = 0
    for _, id in ipairs(ids) do
        local w = availableItems[id] or 0
        cumulative = cumulative + w
        if roll < cumulative then
            Logger.debug("Pool ratio", Pools[pool].decrementRatio)
            Logger.debug("Serialized item before decrement", SerializedItems[id])
            local itemConfig = Isaac.GetItemConfig():GetCollectible(id)
            Logger.debug("[GET RANDOM ITEM] chosen", itemConfig.Name, "roll", roll, "totalWeight", totalWeight, "pool", pool, "seed", seed)
            return id
        end
    end
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
