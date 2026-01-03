local KillAchievement = require("src/achievements/kill_achievement")

return {
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_CLOTTY] = 1 } }, difficulty = -1 }):register(),
    [21] = KillAchievement:new(21, { items = 0, sprites = {"achievement_207_greenbaby"} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
