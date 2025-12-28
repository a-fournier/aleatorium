local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")

local Item = {}
Item.__index = Item

function Item:new(id, quality, pools, isDefaultUnlock, unlockSprite)
    -- Initialize properties
    local o = setmetatable({}, self)
    o.id = tostring(id)
    o.quality = quality
    o.pools = {}
    o.unlockSprite = unlockSprite
    o.isUnlocked = ItemManager.isItemUnlocked(o.id)
    o.haveSeen = false
    return o
end

return Item
