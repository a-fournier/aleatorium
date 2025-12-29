
local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local ItemManager = {}
local SerializedItems = {}

-- cache runtime
local PoolsDef = nil
local ItemById = nil -- [stringId] = item

-- ---------------------------
-- Helpers
-- ---------------------------
local function initIfNeeded()
    if PoolsDef ~= nil then return end

    PoolsDef = require("src/pools/pools") -- ton pools.lua
    ItemById = {}

    for _, item in pairs(SerializedItems or {}) do
        if type(item) == "table" and item.id ~= nil then
            ItemById[item.id] = item -- item.id est string (tostring(id) dans Item:new)
        end
    end
end

local function isUnlocked(collectibleId)
    return ItemManager.isItemUnlocked(tostring(collectibleId)) == true
end

-- Wiki "Weight decrementation" (à la vue) [3](https://moddingofisaac.com/docs/rep/RNG.html)
local function getSightDecrementPercent(poolType)
    -- 10%
    if poolType == ItemPoolType.POOL_LIBRARY
            or poolType == ItemPoolType.POOL_GREED_LIBRARY
            or poolType == ItemPoolType.POOL_CRANE_GAME
    then
        return 0.10
    end

    -- 40%
    if poolType == ItemPoolType.POOL_GOLDEN_CHEST
            or poolType == ItemPoolType.POOL_GREED_GOLDEN_CHEST
            or poolType == ItemPoolType.POOL_RED_CHEST
            or poolType == ItemPoolType.POOL_ULTRA_SECRET
            or poolType == ItemPoolType.POOL_OLD_CHEST
    then
        return 0.40
    end

    -- 50%
    if poolType == ItemPoolType.POOL_BEGGAR
            or poolType == ItemPoolType.POOL_BOMB_BUM
            or poolType == ItemPoolType.POOL_CURSE
            or poolType == ItemPoolType.POOL_GREED_CURSE
            or poolType == ItemPoolType.POOL_DEMON_BEGGAR
            or poolType == ItemPoolType.POOL_KEY_MASTER
            or poolType == ItemPoolType.POOL_BATTERY_BUM
            or poolType == ItemPoolType.POOL_SHOP
            or poolType == ItemPoolType.POOL_GREED_SHOP
            or poolType == ItemPoolType.POOL_MOMS_CHEST
    then
        return 0.50
    end

    -- Sinon: full decremented (retiré)
    return 1.00
end

local function applyDecrementToPool(poolObj, collectibleId, percent)
    if not poolObj or not poolObj.weights then return end
    local w = poolObj.weights[collectibleId]
    if type(w) ~= "number" then return end

    if percent >= 1.0 then
        poolObj.weights[collectibleId] = 0
    else
        local newW = w * (1.0 - percent) -- décrémentation en % (wiki) [3](https://moddingofisaac.com/docs/rep/RNG.html)
        if newW < 1e-6 then newW = 0 end
        poolObj.weights[collectibleId] = newW
    end
end

local function decrementAcrossPools(collectibleId, sourcePoolType)
    local percent = getSightDecrementPercent(sourcePoolType)
    local item = ItemById[tostring(collectibleId)]

    -- Si l'item est connu dans items.lua, on utilise item.pools
    if item and type(item.pools) == "table" then
        for _, p in ipairs(item.pools) do
            local poolObj = PoolsDef[p]
            if poolObj then
                applyDecrementToPool(poolObj, collectibleId, percent)
            end
        end
        return
    end

    -- Fallback: décrémenter partout où l'ID existe dans weights
    for _, poolObj in pairs(PoolsDef) do
        if poolObj and poolObj.weights and poolObj.weights[collectibleId] ~= nil then
            applyDecrementToPool(poolObj, collectibleId, percent)
        end
    end
end

local function rollWeighted(poolObj, seed)
    local weights = poolObj.weights
    if type(weights) ~= "table" then return nil end

    local ids = {}
    local total = 0

    for id, w in pairs(weights) do
        if type(id) == "number" and type(w) == "number" and w > 0 and isUnlocked(id) then
            ids[#ids + 1] = id
        end
    end

    if #ids == 0 then
        return nil
    end

    -- Important: ordre stable (pairs() non ordonné)
    table.sort(ids)

    for _, id in ipairs(ids) do
        total = total + weights[id]
    end

    if total <= 0 then return nil end

    -- RNG déterministe basé sur seed + shift 35 recommandé [1](https://moddingofisaac.com/docs/rep/EntityPlayer.html)
    local rng = RNG()
    rng:SetSeed(seed or 0, 35)

    local r = rng:RandomFloat() * total -- RandomFloat() ∈ [0,1) [1](https://moddingofisaac.com/docs/rep/EntityPlayer.html)
    for _, id in ipairs(ids) do
        r = r - weights[id]
        if r <= 0 then
            return id
        end
    end

    return ids[#ids]
end

-- ---------------------------
-- Main
-- ---------------------------
function registerItems()
    SerializedItems = require("src/items/items") -- ton items.lua
end

function ItemManager.getRandomItem(_, poolType, decrease, seed)
    initIfNeeded()

    local poolObj = PoolsDef and PoolsDef[poolType]
    if not poolObj then
        -- pool inconnu → laisser le jeu choisir
        return nil
    end

    local chosenId = rollWeighted(poolObj, seed)
    if not chosenId then
        -- fallback simple
        if CollectibleType and CollectibleType.COLLECTIBLE_BREAKFAST then
            return CollectibleType.COLLECTIBLE_BREAKFAST
        end
        return nil
    end

    if decrease == true then
        decrementAcrossPools(chosenId, poolType)
    end

    return chosenId
end

function ItemManager.register(mod)
    registerItems()
    mod:AddCallback(ModCallbacks.MC_PRE_GET_COLLECTIBLE, ItemManager.getRandomItem)
end

return ItemManager
