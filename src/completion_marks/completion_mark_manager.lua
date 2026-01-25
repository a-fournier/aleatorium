local Logger = require("src/utils/logger")
local CallBackIds = require("src/callback/enums/callback_ids")
local DifficultyMarkMapper = require("src/completion_marks/mappers/difficulty_mark_mapper")
local LevelRoomMarkMapper = require("src/completion_marks/mappers/level_room_mark_mapper")
local PlayerMapper = require("src/completion_marks/mappers/player_mapper")
local SaveManager = require("src/save/save_manager")

local MOD_REF
local CompletionMarkManager = {}

function CompletionMarkManager.hasMarks(player, marks, difficulty)
    local isAllGranted = true
    local mapped_difficulty = DifficultyMarkMapper[difficulty]

    for _, mark in pairs(marks) do
        if isAllGranted and not CompletionMarkManager.hasMark(PlayerMapper[player], mark, mapped_difficulty) then
            isAllGranted = false
        end
    end
    return isAllGranted
end

-- Check if the player has a completion mark for the given room and difficulty
-- Difficulties are 0 or 1 (for normal and hard), greed is counted as normal, greedier as hard
function CompletionMarkManager.hasMark(player, mark, difficulty)
    local completion_marks = SaveManager.completion_marks
    Logger.debug("Checking completion mark for player type " .. tostring(player) .. " and mark " .. tostring(mark) .. " at difficulty " .. tostring(difficulty))
    return completion_marks[player] ~= nil and completion_marks[player][mark] ~= nil and completion_marks[player][mark] >= difficulty
end

function CompletionMarkManager.getMark(game)
    local room = game:GetRoom()
    local roomType = room:GetType()
    local gridSize = room:GetGridSize()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    local mode = game:IsGreedMode() and "greed" or "vanilla"

    if LevelRoomMarkMapper[mode] ~= nil
        and LevelRoomMarkMapper[mode][stage] ~= nil
        and LevelRoomMarkMapper[mode][stage][stageType] ~= nil
        and LevelRoomMarkMapper[mode][stage][stageType][gridSize] ~= nil
        and LevelRoomMarkMapper[mode][stage][stageType][gridSize][roomType] ~= nil
    then
        return LevelRoomMarkMapper[mode][stage][stageType][gridSize][roomType]
    end
    return nil
end

function CompletionMarkManager.onRoomClear()
    Logger.debug("Room cleared, granting completion marks...")
    local game = Game()
    local player = PlayerMapper[game:GetPlayer(0):GetPlayerType()]
    local mark = CompletionMarkManager.getMark(game)
    local difficulty = DifficultyMarkMapper[game.Difficulty]

    if mark ~= nil and not CompletionMarkManager.hasMark(player, mark, difficulty) then
        Logger.debug("Granting completion mark", "PlayerType =", player, "Mark =", mark, "Difficulty =", difficulty)
        SaveManager.completion_marks[player] = SaveManager.completion_marks[player] or {}
        SaveManager.completion_marks[player][mark] = difficulty
        Isaac.RunCallbackWithParam(CallBackIds.MC_POST_COMPLETION_MARK_GRANTED)
    end
end

function CompletionMarkManager.register(mod)
    MOD_REF = mod
    mod:AddCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, CompletionMarkManager.onRoomClear)
end

function CompletionMarkManager.unregister(mod)
    MOD_REF = mod
    mod:RemoveCallback(ModCallbacks.MC_PRE_SPAWN_CLEAN_AWARD, CompletionMarkManager.onRoomClear)
end

return CompletionMarkManager
