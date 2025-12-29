local Logger = require("src/utils/logger")

local Pool = {}
Pool.__index = Pool

function Pool:new(id, decrement, weights)
    local o = setmetatable({}, self)
    o.id = id
    o.decrement = decrement
    o.weights = weights
    return o
end

function Pool:getItemWeight(id)
    return self.weights[id] or 1
end

function Pool:decreaseItemWeight(id)
    self.weights[id] = math.max(0, (self:getItemWeight(id)) - self.decrement)
end

return Pool
