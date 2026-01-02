local KillAchievement = require("src/achievements/kill_achievement")

return {
    [21] = KillAchievement:new(21, 3, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
