local Logger = require("src/utils/logger")

local RNGController = { rng = nil }
local RECOMMENDED_SHIFT_IDX = 35

function RNGController:RandomFloat(max)
    return self.rng:RandomFloat() * (max or 1)
end

function RNGController.register()
    local game = Game()
    local seeds = game:GetSeeds()
    local startSeed = seeds:GetStartSeed()

    RNGController.rng = RNG()
    RNGController.rng:SetSeed(startSeed, RECOMMENDED_SHIFT_IDX)
end

return RNGController
