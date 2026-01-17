local Achievement = require("src/achievements/achievement")
local Logger = require("src/utils/logger")

DonationAchievement = Achievement:extend()

function DonationAchievement:check(nbCoinsDropped)
    Logger.debug("DonationAchievement:check called, it dropped", nbCoinsDropped)
end

function DonationAchievement:register()
    if not self:isAchieve() then
        self.mod:AddCallback("MC_POST_DONATION_SLOT_DESTROYED", function(_, nbCoinsDropped) self:check(nbCoinsDropped) end)
    end
end

return DonationAchievement

--local Achievement = require("src/achievements/achievement")
--local Logger = require("src/utils/logger")
--
--DonationAchievement = Achievement:extend()
--local heardDonationSound = false
--
---- TODO, il faudrait recoder tout le système debug donation pour que ça marche avec l'explosion de la machine
--function DonationAchievement:check()
--    if SFXManager():IsPlaying(SoundEffect.SOUND_COIN_SLOT) and not heardDonationSound then
--        heardDonationSound = true
--        Logger.debug("Inserted coin detected")
--    else if heardDonationSound then
--        heardDonationSound = false
--        Logger.debug("Inserted coin finished")
--    end end
--end
--
--function DonationAchievement:remove(spawner)
--    Logger.debug(spawner.Type, spawner.Variant, spawner.SubType)
--    if spawner.Type == EntityType.ENTITY_SLOT and spawner.Variant == 8 then
--        Logger.debug("Removing coin slot to prevent donation achievement")
--    end
--end
--
--function DonationAchievement:register()
--    if not self:isAchieve() then
--        self.mod:AddCallback(ModCallbacks.MC_POST_RENDER, function(_) self:check() end)
--        self.mod:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, function(_, _, _, _, _, _, spawner, _) self:remove(spawner)  end)
--    end
--end
--
--return DonationAchievement

--local Achievement = require("src/achievements/achievement")
--local Logger = require("src/utils/logger")
--
--DonationAchievement = Achievement:extend()
--
---- TODO, il faudrait recoder tout le système debug donation pour que ça marche avec l'explosion de la machine
--function DonationAchievement:check(entity, collider)
--    local game = Game()
--    local player = game:GetPlayer(0)
--    if not player or player:GetNumCoins() <= 0 then return end
--    local variants = { NORMAL = 8, GREED  = 11 }
--
--    Logger.debug("=== === ===")
--    Logger.debug(entity.Type, entity.Variant, entity:GetNumCoins());
--    Logger.debug(collider.Type, collider.Variant, collider.SubType);
--    Logger.debug("=== === ===")
--
--    if collider.Type == EntityType.ENTITY_SLOT and collider.Variant == variants[self.properties.type]
--    then
--        self.properties.times = math.max(0, (self.properties.times or 0) - 1)
--        self:save()
--        if self.properties.times == 0 then
--            self:onAchieve()
--        end
--    end
--end
--
--
--function DonationAchievement:register()
--    if not self:isAchieve() then
--        self.mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, function(_, entity, collider) self:check(entity, collider) end)
--    end
--end
--
--return DonationAchievement
