local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local Pools = require("src/pools/pools")
local SaveManager = require("src/save/save_manager")

local Item = {}
Item.__index = Item

function Item:new(id, pools, isDefaultUnlock, unlockSprite)
    local o = setmetatable({}, self)
    o.id = id
    o.pools = pools
    o.unlockSprite = unlockSprite
    o.isUnlocked = isDefaultUnlock

    if not isDefaultUnlock then
        o.isUnlocked = ItemManager.isItemUnlocked(o.id)
    end

    -- TODO: not working while game has not been shut downs
    if SaveManager.current_game.items[id] then
        o.pools = SaveManager.current_game.items[id].pools
        Logger.debug("Loading saved pools for item ID " .. tostring(id), o.pools)
    end
    return o
end

function Item:decrementWeight(pool)
    local decrementRatio = Pools[pool] and Pools[pool].decrementRatio or 1
    SaveManager.current_game.items[self.id] = { pools = {} }

    for p, value in pairs(self.pools) do
        self.pools[p] = math.max(0, value - decrementRatio)
        SaveManager.current_game.items[self.id].pools[p] = self.pools[p]
    end
end

return Item
