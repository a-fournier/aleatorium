local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local Pools = require("src/pools/pools")

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
    return o
end

function Item:decrementWeight(pool)
    local decrementRatio = Pools[pool] and Pools[pool].decrementRatio or 1

    for p, value in pairs(self.pools) do
        self.pools[p] = math.max(0, value - decrementRatio)
    end
end

return Item
