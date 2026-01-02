local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local RNGController = { }
local RECOMMENDED_SHIFT_IDX = 35

function getRNG(stream)
    local game = Game()
    local seeds = game:GetSeeds()
    local startSeed = seeds:GetStartSeed()
    Logger.debug("seeds", seeds, "startSeed", startSeed)

    local rng = RNG()
    rng:SetSeed(startSeed, RECOMMENDED_SHIFT_IDX + stream)
    return rng
end

function RNGController:RandomFloat(pool, max)
    local currentStream = SaveManager.current_game.rng.streams[pool] or 0
    Logger.debug("pool", pool, "n", currentStream, "n+1=", currentStream + 1)
    local rng = getRNG(currentStream)

    SaveManager.current_game.rng.streams[pool] = currentStream + 1
    return rng:RandomFloat() * (max or 1)
end

return RNGController
