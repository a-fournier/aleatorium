local Logger = require("src/utils/logger")

local MOD_REF
local DebugManager = {}

local function OnKill(_, entity)
    Logger.debug("Entity killed:", "Type =", entity.Type, "Variant =", entity.Variant, "SubType =", entity.SubType)
end

local function OnPickupCollision(_, entity, _)
    Logger.debug("Pickup collided:", "Type =", entity.Type, "Variant =", entity.Variant, "SubType =", entity.SubType)
end

function DebugManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKill)
    mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, OnPickupCollision)
end

function DebugManager.unregister(mod)
    MOD_REF = nil
    mod:RemoveCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKill)
    mod:RemoveCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, OnPickupCollision)
end

return DebugManager
