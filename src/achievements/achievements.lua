local KillAchievement = require("src/achievements/kill_achievement")

return {
    -- [1] = Have 7 or more Red Heart Containers at one time
    -- [2] = Hold 55 Coins at one time
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_SATAN] = 1 } }, difficulty = -1 }):register(),
    [4] = KillAchievement:new(4, { items = 1, sprites = {"achievement_thewomb", "achievement_harbingers"} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_FLY] = 1 } }, difficulty = -1 }):register(),
    -- [5] = Included in 4
    -- [6] = Included in 4
    -- TODO : test, because of heads, 2operator phases bosses
    [7] = KillAchievement:new(7, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'OR' , entities = { [EntityType.ENTITY_FAMINE] = 1, [EntityType.ENTITY_WAR] = 1, [EntityType.ENTITY_PESTILENCE] = 1, [EntityType.ENTITY_DEATH] = 1 } }, difficulty = -1 }):register(),
    [8] = KillAchievement:new(8, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_MOMS_HEART] = 3 } }, difficulty = -1 }):register(),
    -- 9 Complete the Boss Rush as Azazel
    [10] = KillAchievement:new(10, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_MOMS_HEART] = 8 } }, difficulty = -1 }):register(),
    [11] = KillAchievement:new(11, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_MOMS_HEART] = 9 } }, difficulty = -1 }):register(),
    -- [12] = Destroy 100 Tinted Rocks
    -- [13] = Beat Chapter 1
    -- [14] = Beat Chapter 2
    [15] = KillAchievement:new(15, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = { [EntityType.ENTITY_LOKI] = 1 } }, difficulty = -1 }):register(),


    --[21] = KillAchievement:new(21, { items = 0, sprites = {} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD }):register()
}
