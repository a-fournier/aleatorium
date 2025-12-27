local ItemManager = require("src/items/item_manager")
local Logger = require("src/utils/logger")

local Item = {}
Item.__index = Item

-- @param id number
-- @param name string
-- @param achievement number
-- @param unlockSprite string
function Item:new(id, name, achievement, unlockSprite)
    Logger.debug("Registering item:", id, name, achievement, unlockSprite)
    -- Initialize properties
    local o = setmetatable({}, self)
    o.id = id
    o.name = name
    o.achievement = achievement
    o.unlockSprite = unlockSprite
    o.isUnlocked = ItemManager.isItemUnlocked()
    Logger.debug("Item registered:", o, o.isUnlocked)
    return o
end

return Item
