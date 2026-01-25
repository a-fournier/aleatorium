local Logger = require("src/utils/logger")

local MOD_REF
local DebugManager = {}

local function OnKill(_, entity)
    Logger.debug("Entity killed:", "Type =", entity.Type, "Variant =", entity.Variant, "SubType =", entity.SubType)
end

local function OnPickupCollision(_, entity, _)
    Logger.debug("Pickup collided:", "Type =", entity.Type, "Variant =", entity.Variant, "SubType =", entity.SubType)
end

local function OnPlayerCollision(_, _, collided)
    Logger.debug("Player collided:", "Type =", collided.Type, "Variant =", collided.Variant, "SubType =", collided.SubType)
end

local function onRoomClear()
    local game = Game()
    local room = game:GetRoom()
    Logger.debug("Room cleared", "RoomType =", room:GetType(), "LevelStage =", game:GetLevel():GetStage(), "StageType =", game:GetLevel():GetStageType(), "GridHeight =", room:GetGridHeight(), "GridWidth =", room:GetGridWidth(), "GridSize", room:GetGridSize())
end

function DebugManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKill)
    mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, OnPickupCollision)
    mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, OnPlayerCollision)
    mod:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, onRoomClear)
end

function DebugManager.unregister(mod)
    MOD_REF = nil
    mod:RemoveCallback(ModCallbacks.MC_POST_ENTITY_KILL, OnKill)
    mod:RemoveCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, OnPickupCollision)
    mod:RemoveCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, OnPlayerCollision)
    mod:RemoveCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, onRoomClear)
end

return DebugManager
