local Logger = require("src/utils/logger")

local Pool = {}
Pool.__index = Pool

function Pool:new(id, weights)
    local o = setmetatable({}, self)
    o.id = id
    o.weights = weights
    return o
end

return Pool
