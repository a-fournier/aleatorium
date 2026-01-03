local KillAchievement = require("src/achievements/kill_achievement")

return {
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_SATAN] = 1 } }, difficulty = -1 }):register(),
    -- 4 / 5 / 6
    [4] = KillAchievement:new(4, { items = 2, sprites = {"achievement_thewomb", "achievement_harbingers"} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_FLY] = 1 } }, difficulty = -1 }):register(),



    --[21] = KillAchievement:new(21, { items = 0, sprites = {} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
