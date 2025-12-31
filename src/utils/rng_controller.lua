local Logger = require("src/utils/logger")
local SaveManager = require("src/save/save_manager")

local RNGController = { rng = nil }
local RECOMMENDED_SHIFT_IDX = 35

function RNGController:RandomFloat(max)
    SaveManager.rng.attempts = SaveManager.rng.attempts + 1
    return self.rng:RandomFloat() * (max or 1)
end

function RNGController.register()
    local game = Game()
    local seeds = game:GetSeeds()
    local startSeed = seeds:GetStartSeed()
    Logger.debug(SaveManager)
    local attempts = SaveManager.rng.attempts or 0
    Logger.debug(SaveManager.rng, attempts)

    RNGController.rng = RNG()
    RNGController.rng:SetSeed(startSeed, RECOMMENDED_SHIFT_IDX + attempts)
end

return RNGController
