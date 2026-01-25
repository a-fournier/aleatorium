local Achievement = require("src/achievements/achievement")
local CallBackIds = require("src/callback/enums/callback_ids")
local Logger = require("src/utils/logger")
local CompletionMarkManager = require("src/completion_marks/completion_mark_manager")

CompletionMarkAchievement = Achievement:extend()

function CompletionMarkAchievement:check()
    if not self:isAchieve()
    then
        local allGranted = true
        for _, player in pairs(self.properties.players) do
            if allGranted and not CompletionMarkManager.hasMarks(player, self.properties.marks, self.properties.difficulty)
            then
                allGranted = false
            end
        end
        if allGranted then
            self:onAchieve()
        end
    end
end

function CompletionMarkAchievement:register(mod)
    if not self:isAchieve() then
        mod:AddCallback(CallBackIds.MC_POST_COMPLETION_MARK_GRANTED, function() self:check() end)
    end
end

function CompletionMarkAchievement:unregister(mod)
    mod:RemoveCallback(CallBackIds.MC_POST_COMPLETION_MARK_GRANTED, function() self:check() end)
end

return CompletionMarkAchievement
