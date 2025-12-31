local Logger = require("src/utils/logger")

local Pool = {}
Pool.__index = Pool

function Pool:new(id, decrementRatio)
    local o = setmetatable({}, self)
    o.id = id
    o.decrementRatio = decrementRatio
    return o
end

return Pool
