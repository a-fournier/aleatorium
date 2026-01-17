local Logger = require("src/utils/logger")
local Table = require("src/utils/table")

local onDonationSlotDestroyed = {
    ID = "MC_POST_DONATION_SLOT_DESTROYED",
    _roomCoins = {},
    _known = {},
    _gone = {},
    _sessions = {},
}

function onDonationSlotDestroyed.Init(mod)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, onDonationSlotDestroyed._resetRoomState)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, onDonationSlotDestroyed._tick)
end

local function scanCoins()
    local ents  = Isaac.GetRoomEntities()
    for _, e in ipairs(ents) do
        if e.Type == EntityType.ENTITY_PICKUP and e.Variant == PickupVariant.PICKUP_COIN and not onDonationSlotDestroyed._roomCoins[e.InitSeed] then
            onDonationSlotDestroyed._roomCoins[e.InitSeed] = true
        end
    end
end

local function openSession(seed)
    onDonationSlotDestroyed._sessions[seed] = {
        startedFrame = Game():GetFrameCount(),
        window = 20,
    }
end

local function scanDonationMachines(donationMachines)
    for _, e in ipairs(donationMachines) do
        local anim = e:GetSprite():GetAnimation() or nil
        local prevAnim = onDonationSlotDestroyed._known[e.InitSeed] and onDonationSlotDestroyed._known[e.InitSeed].anim or nil

        if anim ~= nil and (prevAnim ~= nil or anim ~= "Death") then
            if prevAnim ~= anim then
                onDonationSlotDestroyed._known[e.InitSeed] = { anim = anim, prevAnim = prevAnim }
            end
        end

    end

    local frame = Game():GetFrameCount()
    for seed, info in pairs(onDonationSlotDestroyed._known) do
        if info.anim == "Death" then
            onDonationSlotDestroyed._known[seed] = nil
            onDonationSlotDestroyed._gone[seed] = { frame = frame }
            openSession(seed)
        end
    end
end

local function aggregateCoins()
    if next(onDonationSlotDestroyed._sessions) == nil then
        scanCoins()
        return
    end

    local frame = Game():GetFrameCount()

    for seed, s in pairs(onDonationSlotDestroyed._sessions) do
        if frame - s.startedFrame >= s.window then
            local nbCoinsBefore = Table.length(onDonationSlotDestroyed._roomCoins)
            scanCoins()
            local nbCoinsAfter = Table.length(onDonationSlotDestroyed._roomCoins)

            local nbCoinsDropped = nbCoinsAfter - nbCoinsBefore
            Isaac.RunCallbackWithParam(onDonationSlotDestroyed.ID, nil, nbCoinsDropped)
            onDonationSlotDestroyed._sessions[seed] = nil
        end
    end
end

function onDonationSlotDestroyed._resetRoomState()
    onDonationSlotDestroyed._roomCoins = {}
    onDonationSlotDestroyed._known = {}
    onDonationSlotDestroyed._gone = {}
    onDonationSlotDestroyed._sessions= {}
end


function onDonationSlotDestroyed._tick()
    local donationMachines = Isaac.FindByType(EntityType.ENTITY_SLOT, 8, -1, false, false)
    scanDonationMachines(donationMachines)
    if donationMachines and #donationMachines > 0 then aggregateCoins() end
end

return onDonationSlotDestroyed
