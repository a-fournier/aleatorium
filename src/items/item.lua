local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")

local Item = {}
Item.__index = Item

-- @param id number
-- @param name string
-- @param achievement number
-- @param unlockSprite string
function Item:new(id, name, achievement, unlockSprite)
    -- Initialize properties
    local o = setmetatable({}, self)
    o.id = tostring(id)
    o.name = name
    o.achievement = achievement
    o.unlockSprite = unlockSprite
    o.isUnlocked = ItemManager.isItemUnlocked(o.id)
    return o
end

return Item
