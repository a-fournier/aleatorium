local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")
local Pools = require("src/pools/pools")
local SaveManager = require("src/save/save_manager")

local Item = {}
Item.__index = Item

function Item:new(id, pools, isDefaultUnlock, unlockSprite)
    local o = setmetatable({}, self)
    o.id = id
    o.pools = SaveManager.current_game.items[tostring(self.id)].pools or pools
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

    SaveManager.current_game.items[tostring(self.id)] = { pools = self.pools }
end

return Item
