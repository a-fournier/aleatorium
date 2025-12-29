local Array = require("src/utils/array")
local Logger = require("src/utils/logger")

local MOD_REF
local SerializedItems = {}
local SerializedPools = {}
local PoolManager = {}

function PoolManager.buildPoolAvailableItems(pool)
    local availableItems = {}
    for _, item in pairs(SerializedItems) do
        if item.isUnlocked and Array.includes(item.pools, pool)
        then
            local weight = SerializedPools[pool].weights[item.id] or 1
            availableItems[item.id] = { weight = weight }
        end
    end
    return availableItems
end

function PoolManager.getRandomPoolItem(_, pool, decrease, seed)
    Logger.debug("[[GET RANDOM ITEM] Pool", pool)
    Logger.debug("[[GET RANDOM ITEM] Decrease", decrease)
    Logger.debug("[[GET RANDOM ITEM] seed", seed)
    local availableItems = PoolManager.buildPoolAvailableItems(pool)
    Logger.debug(availableItems)
end

function PoolManager.register(mod)
    MOD_REF = mod
    SerializedItems = require('src/items/items')
    SerializedPools = require('src/pools/pools')
    mod:AddCallback(ModCallbacks.MC_PRE_GET_COLLECTIBLE, PoolManager.getRandomPoolItem)
end

return PoolManager
