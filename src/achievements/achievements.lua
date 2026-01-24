local KillAchievement = require("src/achievements/kill_achievement")

local ChallengeAchievement = require("src/achievements/challenge_achievement")
local SlotAchievement = require("src/achievements/slot_achivement")
local SlotType = require("src/slots/enums/slot_type")

return {
    -- [0] = KillAchievement:new(0, { items = 0, sprites = {} }, { operator = 'OR', [PlayerType.PLAYER_ISAAC] = { times = 1, operator = 'OR', entities = { [EntityType.ENTITY_FLY] = 2, [EntityType.ENTITY_POOTER] = 1 } }, difficulty = Difficulty.DIFFICULTY_HARD })
    -- [1] = Have 7 or more Red Heart Containers at one time
    -- [2] = Hold 55 Coins at one time
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [4] = KillAchievement:new(4, { items = 1, sprites = {"achievement_thewomb", "achievement_harbingers", "achievement_challenge20", "achievement_challenge21", "achievement_challenge22", "achievement_challenge25", "achievement_challenge28", "achievement_challenge30", "achievement_challenge32", "achievement_itemdescriptions"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MOM, times = 1, variant = -1 }}}, difficulty = -1 }),
    -- [5] = Included in 4
    -- [6] = Included in 4
    [7] = KillAchievement:new(7, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'OR' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 0 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 1}}}, difficulty = -1 }),
    [8] = KillAchievement:new(8, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = 0 }}}, difficulty = -1 }),
    -- 9 Complete the Boss Rush as Azazel
    [10] = KillAchievement:new(10, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 8, variant = 0 }}}, difficulty = -1 }),
    [11] = KillAchievement:new(11, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 9, variant = 0 }}}, difficulty = -1 }),
    -- [12] = Destroy 100 Tinted Rocks
    -- [13] = Beat Chapter 1
    -- [14] = Beat Chapter 2
    [15] = KillAchievement:new(15, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_LOKI, times = 1, variant = -1 } } }, difficulty = -1 }),
    -- [16] = Beat Chapter 1 40 times
    -- [17] = Beat Chapter 2 30 times
    -- [18] = Beat Chapter 3 20 times
    -- [19] = Make a Super Bandage Girl by picking up 4 copies of Ball of Bandages in one run
    [20] = KillAchievement:new(20, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC,  times = 1, variant = 0 }}}, difficulty = -1 }),
    [21] = KillAchievement:new(21, { items = 1, sprites = {"achievement_challenge24"} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [22] = KillAchievement:new(22, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND', entities = {{type = EntityType.ENTITY_ENVY, times = 1, variant = -1 }, {type = EntityType.ENTITY_GLUTTONY, times = 1, variant = -1 }, {type = EntityType.ENTITY_WRATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_PRIDE, times = 1, variant = -1 }, {type = EntityType.ENTITY_LUST, times = 1, variant = -1 }, {type = EntityType.ENTITY_GREED, times = 1, variant = -1 }, {type = EntityType.ENTITY_SLOTH, times = 1, variant = -1 } }}, difficulty = -1 }),
    [23] = KillAchievement:new(23, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MONSTRO2, times = 1, variant = 1 }}}, difficulty = -1 }),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_GEMINI, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_CHUB, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }),
    -- [26] = Visit 10 Arcades
    -- [27] = Defeat Mom, Mom's Heart, or It Lives! using The Bible or (in Repentance) XV - The Devil?
    -- [28] = Destroy 10 Tinted Rocks
    [29] = KillAchievement:new(29, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    -- [30] = Die 100 times
    -- [31] = Pick up any 2 items that have the 'dead' item tag
    [32] = KillAchievement:new(32, { items = 0, sprites = {"achievement_bluebaby"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 10, variant = 0 }}}, difficulty = -1 }),
    [33] = KillAchievement:new(33, { items = 0, sprites = {"achievement_everythingisterrible"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 5, variant = 0 }}}, difficulty = -1 }),
    [34] = KillAchievement:new(34, { items = 0, sprites = {"achievement_itlives", "achievement_challenge33", "achievement_burningbasement"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 11, variant = 0 }}}, difficulty = -1 }),
    -- [35] = Obtain three Yes Mother? items in one run
    -- [36] = Use XIII - Death 4 times
    -- [37] = Beat Chapter 1 without taking damage
    -- [38] = Beat Chapter 2 without taking damage
    -- [39] = Beat Chapter 3 without taking damage
    -- [40] = Beat Chapter 4 without taking damage
    [41] = KillAchievement:new(41, { items = 0, sprites = {"achievement_goldengod"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, {type = ENTITY_ISAAC, times = 1, variant = 1}}}, difficulty = -1 }),
    -- [42] = Don't pick up any Hearts for 2 floors in a row
    [43] = KillAchievement:new(43, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [44] = KillAchievement:new(44, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [45] = KillAchievement:new(45, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [46] = KillAchievement:new(46, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [47] = KillAchievement:new(47, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [48] = KillAchievement:new(48, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [49] = KillAchievement:new(49, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [50] = KillAchievement:new(50, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [51] = KillAchievement:new(51, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [52] = KillAchievement:new(52, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [53] = KillAchievement:new(53, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [54] = KillAchievement:new(54, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [55] = KillAchievement:new(55, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [56] = KillAchievement:new(56, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [57] = KillAchievement:new(57, { items = 0, sprites = {"achievement_thepolaroid"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 5, variant = 0 }}}, difficulty = -1 }),
    -- [58] = Pick up both Key Pieces from the Angels in one run
    [59] = SlotAchievement:new(59, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 900 }),
    [60] = ChallengeAchievement:new(60, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BEANS }),
    [61] = KillAchievement:new(61, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_SHOPKEEPER, times = 20, variant = -1 }}}, difficulty = -1 }),
    [62] = ChallengeAchievement:new(62, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_THE_FAMILY_MAN }),
    [63] = ChallengeAchievement:new(63, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ITS_IN_THE_CARDS }),
    -- [64] = Play either Shell Game or (in Repentance) Hell Game 100 times
    -- [65] = Become Guppy
    -- [66] = Take 10 Angel Room items
    -- [67] = Complete 2 floors in a row without taking damage
    [68] = KillAchievement:new(68, { items = 0, sprites = {"achievement_triachnid"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 10, variant = 0 }}}, difficulty = -1 }),
    -- [69] = Collect all non-DLC items in the game, and unlock all of the secrets and endings (minus The Lost and his 6 unlockable items)
    -- [70] = Complete the Boss Rush as Isaac
    [71] = KillAchievement:new(71, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [72] = KillAchievement:new(72, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [73] = KillAchievement:new(73, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [74] = KillAchievement:new(74, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [75] = KillAchievement:new(75, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [76] = KillAchievement:new(76, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [77] = KillAchievement:new(77, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_PRIDE, times = 1, variant = 1 }}}, [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, operator = 'OR', difficulty = -1 }),
    [78] = KillAchievement:new(78, { items = 0, sprites = {"achievement_thenegative"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 5, variant = -1 }}}, difficulty = -1 }),
    --[79] = Make 3 Deals with the Devil in one run
    --[80] = Have 4 or more Soul Hearts at one time
    --[81] = Complete Chapter 4
    --[82] = Die in a Sacrifice Room while holding Missing Poster
    --[83] = Complete Chapter 6 without taking damage
    --[84] = Collect every non-DLC item, and unlock every secret and ending.
    --[85] = Destroy 100 rocks
    --[86] = Beat all Basement bosses (in Repentance and Repentance+) Except Baby Plum Not restricted to beating bosses in The Basement
    --[87] = Beat all Caves bosses (in Repentance and Repentance+) Except Bumbino Not restricted to beating bosses in The Caves
    --[88] = Beat all Depths bosses (in Repentance and Repentance+) Except Reap Creep Not restricted to beating bosses in The Depths
    [89] = ChallengeAchievement:new(89, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PITCH_BLACK }),
    [90] = ChallengeAchievement:new(90, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_HIGH_BROW }),
    [91] = ChallengeAchievement:new(91, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_HEAD_TRAUMA }),
    [92] = ChallengeAchievement:new(92, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_DARKNESS_FALLS }),
    [93] = ChallengeAchievement:new(93, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_THE_TANK }),
    [94] = ChallengeAchievement:new(94, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SOLAR_SYSTEM }),
    [95] = ChallengeAchievement:new(95, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PURIST }),
    [96] = ChallengeAchievement:new(96, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_CAT_GOT_YOUR_TONGUE }),
    [97] = ChallengeAchievement:new(97, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_DEMO_MAN }),
    [98] = ChallengeAchievement:new(98, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_CURSED }),
    [99] = ChallengeAchievement:new(99, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_GLASS_CANNON }),
    [100] = ChallengeAchievement:new(100, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_WHEN_LIFE_GIVES_LEMONS }),
    [101] = ChallengeAchievement:new(101, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SLOW_ROLL }),
    [102] = ChallengeAchievement:new(102, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_COMPUTER_SAVY }),
    [103] = ChallengeAchievement:new(103, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_WAKA_WAKA }),
    [104] = ChallengeAchievement:new(104, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_THE_HOST }),
    --[105] = Complete the Boss Rush as Lazarus
    [106] = KillAchievement:new(106, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [107] = KillAchievement:new(107, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    --[108] = Complete the Boss Rush as Judas
    --[109] = Complete the Boss Rush as Magdalene
    --[110] = Complete the Boss Rush as Cain
    [111] = KillAchievement:new(111, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[112] = Complete the Boss Rush as Eve
    [113] = KillAchievement:new(113, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[114] = Complete the Boss Rush as Blue Baby
    --[115] = Complete the Boss Rush as Samson
    [116] = KillAchievement:new(116, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [117] = KillAchievement:new(117, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [118] = KillAchievement:new(118, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [119] = KillAchievement:new(119, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [120] = ChallengeAchievement:new(120, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SUICIDE_KING }),
    [121] = KillAchievement:new(121, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [122] = KillAchievement:new(122, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [123] = KillAchievement:new(123, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [124] = KillAchievement:new(124, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[125] = Complete the Boss Rush as Eden
    [126] = KillAchievement:new(126, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [127] = KillAchievement:new(127, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [128] = KillAchievement:new(128, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [129] = KillAchievement:new(129, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [130] = KillAchievement:new(130, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [131] = KillAchievement:new(131, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [132] = KillAchievement:new(132, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[133] = Complete the Boss Rush as The Lost
    [134] = SlotAchievement:new(134, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 10 }),
    [135] = SlotAchievement:new(135, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 50 }),
    [136] = SlotAchievement:new(136, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 150 }),
    [137] = SlotAchievement:new(137, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 400 }),
    [138] = SlotAchievement:new(138, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 999 }),
    [139] = KillAchievement:new(139, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 4, variant = 0 }}}, difficulty = -1 }),
    [140] = KillAchievement:new(140, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 6, variant = 0 }}}, difficulty = -1 }),
    [141] = KillAchievement:new(141, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 7, variant = 0 }}}, difficulty = -1 }),
    --[142] = Take 20 items from Devil Rooms
    [143] = KillAchievement:new(143, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_FALLEN, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[144] = Make a Super Meat Boy by picking up 4 copies of Cube of Meat in one run
    --[145] = Destroy 100 Poops
    --[146] = Pick up 2 syringe-related items in a single run
    --[147] = Use the Blood Donation Machine 30 times
    --[148] = Blow up 30 Slot Machine
    [149] = KillAchievement:new(149, { items = 0, sprites = {"achievement_lostposter"} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [150] = KillAchievement:new(150, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 2, variant = 0 }}}, difficulty = -1 }),
    [151] = SlotAchievement:new(151, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 20 }),
    [152] = SlotAchievement:new(152, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 100 }),
    [153] = SlotAchievement:new(153, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 200 }),
    [154] = SlotAchievement:new(154, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 600 }),
    --[155] = Complete Chapter 6
    --[156] = Earn all Completion Marks on Hard mode as The Lost
    --[157] = Defeat Mom's Heart 11 times and unlock Eve
    --[158] = Have 7 or more Red Heart Containers at one time
    [159] = KillAchievement:new(159, { items = 0, sprites = {"achievement_challenge06"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = 0 }}}, difficulty = -1 }),
    --[160] = ???
    --[161] = Become Guppy
    [162] = KillAchievement:new(162, { items = 0, sprites = {"achievement_challenge09"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 9, variant = 0 }}}, difficulty = -1 }),
    --[163] = Have 7 or more Red Heart Containers at one time
    --[164] = Beat The Family Man (challenge #19), defeat Lokii, and unlock Judas and It Lives!
    --[165] = Pick up both Key Pieces from the Angels in one run
    --[166] = Done with 4
    [167] = KillAchievement:new(167, { items = 0, sprites = {"achievement_lostbaby"} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [168] = KillAchievement:new(168, { items = 0, sprites = {"achievement_cutebaby"} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [169] = KillAchievement:new(169, { items = 0, sprites = {"achievement_crowbaby"} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [170] = KillAchievement:new(170, { items = 0, sprites = {"achievement_shadowbaby"} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [171] = KillAchievement:new(171, { items = 0, sprites = {"achievement_glassbaby"} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [172] = KillAchievement:new(172, { items = 0, sprites = {"achievement_wrappedbaby"} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [173] = KillAchievement:new(173, { items = 0, sprites = {"achievement_begottenbaby"} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [174] = KillAchievement:new(174, { items = 0, sprites = {"achievement_deadbaby"} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [175] = KillAchievement:new(175, { items = 0, sprites = {"achievement_0baby"} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [176] = KillAchievement:new(176, { items = 0, sprites = {"achievement_glitchbaby"} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    [177] = KillAchievement:new(177, { items = 0, sprites = {"achievement_fightingbaby"} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[178] = Become Beelzebub
    [179] = KillAchievement:new(179, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [180] = KillAchievement:new(180, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [181] = KillAchievement:new(181, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [182] = KillAchievement:new(182, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [183] = KillAchievement:new(183, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [184] = KillAchievement:new(184, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [185] = KillAchievement:new(185, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [186] = KillAchievement:new(186, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [187] = KillAchievement:new(187, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [188] = KillAchievement:new(188, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [189] = KillAchievement:new(189, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [190] = KillAchievement:new(190, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [191] = KillAchievement:new(191, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [192] = KillAchievement:new(192, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [193] = KillAchievement:new(193, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [194] = KillAchievement:new(194, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [195] = KillAchievement:new(195, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [196] = KillAchievement:new(196, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [197] = KillAchievement:new(197, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [198] = KillAchievement:new(198, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [199] = KillAchievement:new(199, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [200] = KillAchievement:new(200, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [201] = KillAchievement:new(201, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [202] = KillAchievement:new(202, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [203] = KillAchievement:new(203, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [204] = KillAchievement:new(204, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [205] = KillAchievement:new(205, { items = 0, sprites = {"achievement_205_crybaby"} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [206] = KillAchievement:new(206, { items = 0, sprites = {"achievement_206_redbaby"} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [207] = KillAchievement:new(207, { items = 0, sprites = {"achievement_207_greenbaby"} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [208] = KillAchievement:new(208, { items = 0, sprites = {"achievement_208_brownbaby"} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [209] = KillAchievement:new(209, { items = 0, sprites = {"achievement_209_bluebaby"} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [210] = KillAchievement:new(210, { items = 0, sprites = {"achievement_210_lilbaby"} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [211] = KillAchievement:new(211, { items = 0, sprites = {"achievement_211_ragebaby"} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [212] = KillAchievement:new(212, { items = 0, sprites = {"achievement_212_blackbaby"} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [213] = KillAchievement:new(213, { items = 0, sprites = {"achievement_213_longbaby"} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [214] = KillAchievement:new(214, { items = 0, sprites = {"achievement_214_yellowbaby"} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [215] = KillAchievement:new(215, { items = 0, sprites = {"achievement_215_whitebaby"} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [216] = KillAchievement:new(216, { items = 0, sprites = {"achievement_216_bigbaby"} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [217] = KillAchievement:new(217, { items = 0, sprites = {"achievement_217_noosebaby"} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [218] = KillAchievement:new(218, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [219] = KillAchievement:new(219, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [220] = KillAchievement:new(220, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [221] = KillAchievement:new(221, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[222] = Complete the Boss Rush as Lilith
    [223] = KillAchievement:new(223, { items = 0, sprites = {"achievement_223_goatheadbaby"} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = -1 }),

    [224] = ChallengeAchievement:new(224, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_XXXXXXXXL }),
    [225] = ChallengeAchievement:new(225, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SPEED }),
    [226] = ChallengeAchievement:new(226, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BLUE_BOMBER }),
    [227] = ChallengeAchievement:new(227, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PAY_TO_PLAY }),
    [228] = ChallengeAchievement:new(228, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_HAVE_A_HEART }),
    [229] = ChallengeAchievement:new(229, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_I_RULE }),
    [230] = ChallengeAchievement:new(230, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BRAINS }),
    [231] = ChallengeAchievement:new(231, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PRIDE_DAY }),
    [232] = ChallengeAchievement:new(232, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ONANS_STREAK }),
    [233] = ChallengeAchievement:new(233, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_GUARDIAN }),
    [234] = KillAchievement:new(234, { items = 0, sprites = {"achievement_234_bluewomb"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 10, variant = 0 }}}, difficulty = -1 }),
    --[235] = Unlock 275 random achievements and have at least 510 items in the collection page
    [236] = KillAchievement:new(236, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [237] = KillAchievement:new(237, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [238] = KillAchievement:new(238, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [239] = KillAchievement:new(239, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[240] = Complete the Boss Rush as Keeper
    [241] = KillAchievement:new(241, { items = 0, sprites = {"achievement_241_supergreedbaby"} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }}}, difficulty = -1 }),
    [242] = SlotAchievement:new(242, { items = 0, sprites = {"achievement_242_luckypenny"} }, { type = SlotType.GREED, coins = 2 }),
    [243] = SlotAchievement:new(243, { items = 0, sprites = {"achievement_243_specialhangingshopkeepers"} }, { type = SlotType.GREED, coins = 14 }),
    [244] = SlotAchievement:new(244, { items = 1, sprites = {} }, { type = SlotType.GREED, coins = 33 }),
    [245] = SlotAchievement:new(245, { items = 0, sprites = {"achievement_245_cainpaperclip"} }, { type = SlotType.GREED, coins = 68 }),
    [246] = SlotAchievement:new(246, { items = 0, sprites = {"achievement_246_everythingisterrible2"} }, { type = SlotType.GREED, coins = 111 }),
    [247] = SlotAchievement:new(247, { items = 0, sprites = {"achievement_247_specialshopkeepers"} }, { type = SlotType.GREED, coins = 234 }),
    [248] = SlotAchievement:new(248, { items = 0, sprites = {"achievement_248_everazorblade"} }, { type = SlotType.GREED, coins = 439 }),
    [249] = SlotAchievement:new(249, { items = 1, sprites = {} }, { type = SlotType.GREED, coins = 666 }),
    [250] = SlotAchievement:new(250, { items = 0, sprites = {"achievement_250_lostholymantle"} }, { type = SlotType.GREED, coins = 879 }),
    [251] = SlotAchievement:new(251, { items = 0, sprites = {"achievement_251_keeper"} }, { type = SlotType.GREED, coins = 1000 }),
    --[252] = Earn all Hard mode Completion Marks as ???
    --[253] = Earn all Hard mode Completion Marks as Isaac
    --[254] = Earn all Hard mode Completion Marks as Magdalene
    --[255] = Earn all Hard mode Completion Marks as Eve
    --[256] = Earn all Hard mode Completion Marks as Eden
    --[257] = Earn all Hard mode Completion Marks as Lazarus
    --[258] = Use Blank Card while holding XIX - The Sun
    --[259] = Earn all Hard mode Completion Marks as Azazel
    --[260] = Earn all Hard mode Completion Marks as Lilith
    --[261] = Earn all Hard mode Completion Marks as Cain
    --[262] = Earn all Hard mode Completion Marks as Samson
    --[263] = Earn all Hard mode Completion Marks as Judas
    --[264] = Earn all Hard mode Completion Marks as Keeper
    --[265] = Done with 4
    --[266] = Done with 4
    --[267] = Destroy 10 Tinted Rocks and defeat Mom's Heart 11 times
    --[268] = Done with 21
    --[269] = Done with 4
    --[270] = Defeat Mega Satan and unlock The Negative
    [271] = KillAchievement:new(271, { items = 0, sprites = {"achievement_challenge27", "achievement_challenge35"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 5, variant = 0 }}}, difficulty = -1 }),
    --[272] = Done with 4
    --[273] = Unlock Judas and It Lives!
    --[274] = Done with 4
    [275] = SlotAchievement:new(275, { items = 0, sprites = {"achievement_generosity"} }, { type = SlotType.GREED, coins = 999 }),
    --[276] = Defeat Mega Satan as every character ((in Repentance and Repentance+) except tainted characters)
    --[277] = Defeat Mega Satan and unlock The Negative
    --[278] = Done with 4
    --[279] = Done with 34
    --[280] = Defeat Mega Satan and unlock The Negative
    --[281] = Done with 271
    [282] = KillAchievement:new(282, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [283] = KillAchievement:new(283, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [284] = KillAchievement:new(284, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [285] = KillAchievement:new(285, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [286] = KillAchievement:new(286, { items = 0, sprites = {"achievement_kingbaby"} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [287] = KillAchievement:new(287, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [288] = KillAchievement:new(288, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [289] = KillAchievement:new(289, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [290] = KillAchievement:new(290, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [291] = KillAchievement:new(291, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [292] = KillAchievement:new(292, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [293] = KillAchievement:new(293, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [294] = KillAchievement:new(294, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [295] = KillAchievement:new(295, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [296] = KillAchievement:new(296, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [297] = KillAchievement:new(297, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [298] = KillAchievement:new(298, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [299] = KillAchievement:new(299, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [300] = KillAchievement:new(300, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [301] = KillAchievement:new(301, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [302] = KillAchievement:new(302, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [303] = KillAchievement:new(303, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [304] = KillAchievement:new(304, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [305] = KillAchievement:new(305, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [306] = KillAchievement:new(306, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [307] = KillAchievement:new(307, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [308] = KillAchievement:new(308, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [309] = KillAchievement:new(309, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [310] = KillAchievement:new(310, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [311] = KillAchievement:new(311, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = 0 }}}, difficulty = -1 }),
    [312] = KillAchievement:new(312, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [313] = KillAchievement:new(313, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[314] = Complete the Boss Rush as Apollyon
    [315] = KillAchievement:new(315, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [316] = KillAchievement:new(316, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [317] = KillAchievement:new(317, { items = 0, sprites = {"achievement_mortbaby"} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [318] = KillAchievement:new(318, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, operator='OR', entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }, {type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 1 }}}, difficulty = DIFFICULTY_HARD }),
    --[319] = Earn all Hard mode Completion Marks as Apollyon
    [320] = KillAchievement:new(320, { items = 0, sprites = {"achievement_thevoid"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[321] = Complete a Victory Lap by defeating The Lamb
    --[322] = Get a 3-win streak
    --[323] = Get a 5-win streak, using a different character each time
    --[324] = Collect every entry in the Bestiary
    --[325] = Participate in 31 Daily Challenges They don't have to be consecutive; it will still count if Isaac dies in the first room
    --[326] = Defeat The Lamb in under 20 minutes
    --[327] = Defeat The Lamb without taking Hearts, Coins, or Bombs through the entire run Letting certain familiars (e.g. Bum Friend, Dark Bum, Bumbo or (in Repentance and Repentance+)Lil Portal) or bosses (e.g. (in Repentance and Repentance+)Bumbino) pick up the consumables fails this condition as well
    --[328] = Reset 7 times in a row
    --[329] = Complete a Chapter (floors I and II) after Basement, start-to-finish, with only half a Heart total (can use The Lost)
    --[330] = Obtain 50 items in a run
    [331] = ChallengeAchievement:new(331, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BACKASSWARDS }),
    [332] = ChallengeAchievement:new(332, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_APRILS_FOOL }),
    [333] = ChallengeAchievement:new(333, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_POKEY_MANS }),
    [334] = ChallengeAchievement:new(334, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ULTRA_HARD }),
    [335] = ChallengeAchievement:new(335, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PONG }),
    --[336] = Get a 5-win streak in the Daily Challenges They don't have to be consecutive days, only the runs you play are counted
    --[337] = Complete 3 Victory Laps by defeating The Lamb
    [338] = KillAchievement:new(338, { items = 2, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[339] = Unlock 402 random achievements and have at least 510 items in the collection page
    [340] = KillAchievement:new(340, { items = 0, sprites = {"achievement_apollyon"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [341] = SlotAchievement:new(341, { items = 0, sprites = {"achievement_greedier"} }, { type = SlotType.GREED, coins = 500 }),
    --[342] = Done with 34
    [343] = KillAchievement:new(343, { items = 0, sprites = {"achievement_floodedcaves"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 16, variant = 1 }}}, difficulty = -1 }),
    [344] = KillAchievement:new(344, { items = 0, sprites = {"achievement_dankdepths"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 21, variant = 1 }}}, difficulty = -1 }),
    [345] = KillAchievement:new(345, { items = 0, sprites = {"achievement_scarredwomb"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 30, variant = 1 }}}, difficulty = -1 }),
    --[346] = Defeat ??? as 3 different Characters
    --[347] = Defeat ??? as 6 different Characters
    [348] = KillAchievement:new(348, { items = 0, sprites = {"achievement_gateopen"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [349] = KillAchievement:new(349, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_PORTAL, times = 20, variant = -1 }}}, difficulty = -1 }),
    --[350] = Destroy 500 rocks
    --[351] = Done with 37
    --[352] = Become Beelzebub
    [353] = KillAchievement:new(353, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_POOP, times = 5, variant = -1 }}}, difficulty = -1 }),
    --[354] = Complete 7 Daily Challenges (by touching the trophy at the end)
    --[355] = Pick up 5 familiars in a single run
    [356] = KillAchievement:new(356, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_LITTLE_HORN, times = 20, variant = -1 }}}, difficulty = -1 }),
    --[357] = Done with 338
    --[358] = Recharge using Lil' Batteries 20 times
    --[359] = Sleep in a bed
    --[360] = Complete 2 Victory Laps by defeating The Lamb
    --[361] = Be 3 times larger than the starting size. Depending on the item/card/pill size's multiplier, 5 to 7 size increases will be required.
    --[362] = Use Cards and Runes 20 times
    --[363] = Add both the Broken Watch and the Stop Watch to your collection
    --[364] = Purchase anything from Shops, Devil Rooms, and/or Black Markets 50 times
    --[365] = Done with 38
    --[366] = Use Pandora's Box in Dark Room
    --[367] = Pick up 2 battery-related items in a single run Battery-related items have the 'battery' item tag)
    --[368] = Done with 39
    --[369] = Pick up 2 technology-related items in a single run (in Repentance and Repentance+) Technology-related items have the 'tech' item tag
    --[370] = Acquire both Key Piece 1 and Key Piece 2
    --[371] = Open 20 Locked Chests
    [372] = KillAchievement:new(372, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 0 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[373] = Defeat an Angel 10 times
    --[374] = Done with 40
    --[375] = Blow up doors and Secret Room walls 50 times
    --[376] = Take 25 Deals with the Devil
    --[377] = Acquire Blood Clot 10 times
    --[378] = Collect 10 "Tears Up" items or pills in one run
    --[379] = Enter 6 Shops in one run
    --[380] = Take 25 Angel Rooms items
    --[381] = Have The Battery, 9 Volt, and Car Battery in Isaac's collection
    --[382] = Acquire Rubber Cement 5 times
    --[383] = Take 50 Deals with the Devil
    --[384] = Have Isaac die to his own explosion from any explosive and poisoned tear (Ipecac, Bob's Rotten Head, Fire Mind / Explosivo + Scorpio, or a Horf! pill)
    --[385] = Sleep in 10 beds
    --[386] = Use 5 Gulp! pills in one run Placebo uses count
    --[387] = Spawn three charmed enemies in the same room
    --[388] = Have 20 Blue Flies at the same time
    --[389] = Use I - The Magician or Telepathy For Dummies while already having homing tears
    --[390] = Unlock Forgotten
    --[391] = Done with 390
    [392] = KillAchievement:new(392, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, operator='OR', entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }, {type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 1 }}}, difficulty = DIFFICULTY_HARD }),
    [393] = KillAchievement:new(393, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [394] = KillAchievement:new(394, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = 0 }}}, difficulty = -1 }),
    [395] = KillAchievement:new(395, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [396] = KillAchievement:new(396, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[397] = Complete the Boss Rush as The Forgotten
    [398] = KillAchievement:new(398, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [399] = KillAchievement:new(399, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [400] = KillAchievement:new(400, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [401] = KillAchievement:new(401, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[402] = Earn all Hard mode Completion Marks as The Forgotten
    [403] = KillAchievement:new(403, { items = 0, sprites = {"achievement_boundbaby"} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[404] = Defeat Mom's Heart/It Lives! on hard mode as Lazarus, without dying at all
    [405] = KillAchievement:new(405, { items = 0, sprites = {"achievement_jacobesau", "achievement_challenge39", "achievement_challenge40", "achievement_strangedoor"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[406] = Collect any 3 items with the 'stars' item tag in a single run
    [407] = KillAchievement:new(407, { items = 0, sprites = {"achievement_secretexit"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 3, variant = -1 }}}, difficulty = -1 }),
    --[408] = Blow up The Siren's skull after defeating her
    [409] = KillAchievement:new(409, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_BABY_PLUM, times = 10, variant = -1 }}}, difficulty = -1 }),
    --[410] = Allow Baby Plum to escape instead of defeating her
    --[411] = Enter Corpse for the first time
    --[412] = Defeat all bosses in Downpour
    --[413] = Defeat all bosses in Mines
    --[414] = Defeat all bosses in Mausoleum
    --[415] = Open Mom's Chest in Home
    [416] = KillAchievement:new(416, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, operator='OR', entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }, {type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 1 }}}, difficulty = DIFFICULTY_HARD }),
    [417] = KillAchievement:new(417, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, difficulty = -1 }),
    [418] = KillAchievement:new(418, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = 0 }}}, difficulty = -1 }),
    [419] = KillAchievement:new(419, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, difficulty = -1 }),
    [420] = KillAchievement:new(420, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[421] = Complete the Boss Rush as Bethany
    [422] = KillAchievement:new(422, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 }}}, difficulty = -1 }),
    [423] = KillAchievement:new(423, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    [424] = KillAchievement:new(424, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [425] = KillAchievement:new(425, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[426] = Earn all Hard mode Completion Marks as Bethany
    [427] = KillAchievement:new(427, { items = 0, sprites = {"achievement_glowingbaby"} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),

    [428] = KillAchievement:new(428, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, operator='OR', entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }, {type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, operator='OR', entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 0 }, {type = EntityType.ENTITY_MOMS_HEART, times = 1, variant = 1 }}}, operator = 'OR', difficulty = DIFFICULTY_HARD }),
    [429] = KillAchievement:new(429, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }}}, operator = 'OR', difficulty = -1 }),
    [430] = KillAchievement:new(430, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = 0 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 1, variant = 0 }}}, operator = 'OR', difficulty = -1 }),
    [431] = KillAchievement:new(431, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, operator = 'OR', difficulty = -1 }),
    [432] = KillAchievement:new(432, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    --[433] = Complete Boss Rush as Jacob and Esau
    [434] = KillAchievement:new(434, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 } }}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 0 } }}, operator = 'OR', difficulty = -1 }),
    [435] = KillAchievement:new(435, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [436] = KillAchievement:new(436, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, operator = 'OR', difficulty = -1 }),
    [437] = KillAchievement:new(437, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    --[438] = Earn all Hard mode Completion Marks as Jacob and Esau
    [439] = KillAchievement:new(439, { items = 0, sprites = {"achievement_solomonsbaby"} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [440] = KillAchievement:new(440, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [441] = KillAchievement:new(441, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [442] = KillAchievement:new(442, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [443] = KillAchievement:new(443, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [444] = KillAchievement:new(444, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [445] = KillAchievement:new(445, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [446] = KillAchievement:new(446, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [447] = KillAchievement:new(447, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [448] = KillAchievement:new(448, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [449] = KillAchievement:new(449, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [450] = KillAchievement:new(450, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [451] = KillAchievement:new(451, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [452] = KillAchievement:new(452, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [453] = KillAchievement:new(453, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [454] = KillAchievement:new(454, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [455] = KillAchievement:new(455, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [456] = KillAchievement:new(456, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [457] = KillAchievement:new(457, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [458] = KillAchievement:new(458, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [459] = KillAchievement:new(459, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [460] = KillAchievement:new(460, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [461] = KillAchievement:new(461, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [462] = KillAchievement:new(462, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [463] = KillAchievement:new(463, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [464] = KillAchievement:new(464, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [465] = KillAchievement:new(465, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [466] = KillAchievement:new(466, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [467] = KillAchievement:new(467, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [468] = KillAchievement:new(468, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [469] = KillAchievement:new(469, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [470] = KillAchievement:new(470, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [471] = KillAchievement:new(471, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [472] = KillAchievement:new(472, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [473] = KillAchievement:new(473, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, [PlayerType.PLAYER_ESAU] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    --[474] = Use Red Key (etc.) to open the hidden closet in Home as Isaac
    --[475] = Use Red Key (etc.) to open the hidden closet in Home as Magdalene
    --[476] = Use Red Key (etc.) to open the hidden closet in Home as Cain
    --[477] = Use Red Key (etc.) to open the hidden closet in Home as Judas
    --[478] = Use Red Key (etc.) to open the hidden closet in Home as Blue Baby
    --[479] = Use Red Key (etc.) to open the hidden closet in Home as Eve
    --[480] = Use Red Key (etc.) to open the hidden closet in Home as Samson
    --[481] = Use Red Key (etc.) to open the hidden closet in Home as Azazel
    --[482] = Use Red Key (etc.) to open the hidden closet in Home as Lazarus
    --[483] = Use Red Key (etc.) to open the hidden closet in Home as Eden
    --[484] = Use Red Key (etc.) to open the hidden closet in Home as The Lost
    --[485] = Use Red Key (etc.) to open the hidden closet in Home as Lilith
    --[486] = Use Red Key (etc.) to open the hidden closet in Home as Keeper
    --[487] = Use Red Key (etc.) to open the hidden closet in Home as Apollyon
    --[488] = Use Red Key (etc.) to open the hidden closet in Home as The Forgotten
    --[489] = Use Red Key (etc.) to open the hidden closet in Home as Bethany
    --[490] = Use Red Key (etc.) to open the hidden closet in Home as Jacob and Esau
    [491] = KillAchievement:new(491, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [492] = KillAchievement:new(492, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [493] = KillAchievement:new(493, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [494] = KillAchievement:new(494, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [495] = KillAchievement:new(495, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [496] = KillAchievement:new(496, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [497] = KillAchievement:new(497, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [498] = KillAchievement:new(498, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [499] = KillAchievement:new(499, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, operator= 'OR', difficulty = -1 }),
    [500] = KillAchievement:new(500, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [501] = KillAchievement:new(501, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [502] = KillAchievement:new(502, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [503] = KillAchievement:new(503, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [504] = KillAchievement:new(504, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [505] = KillAchievement:new(505, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, operator= 'OR', difficulty = -1 }),
    [506] = KillAchievement:new(506, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, difficulty = -1 }),
    [507] = KillAchievement:new(507, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, entities = {{type = EntityType.ENTITY_BEAST, times = 1, variant = -1 }}}, operator= 'OR', difficulty = -1 }),
    --[508] = Unlock Bethany, Blood Bag, and It Lives!
    --[509] = Defeat Satan as Bethany, defeat Mom's Heart 11 times, and unlock Maggy's Faith
    --[510] = Done with 405
    --[511] = Done with 405
    --[512] = Defeat Mom's Heart 11 times and unlock Marbles
    --[513] = Done with 488
    --[514] = Done with 476
    --[515] = Done with 490
    --[516] = Done with 483
    [517] = ChallengeAchievement:new(517, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SCAT_MAN }),
    [518] = ChallengeAchievement:new(518, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BLOODY_MARY }),
    [519] = ChallengeAchievement:new(519, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BAPTISM_BY_FIRE }),
    [520] = ChallengeAchievement:new(520, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ISAACS_AWAKENING }),
    [521] = ChallengeAchievement:new(521, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SEEING_DOUBLE }),
    [522] = ChallengeAchievement:new(522, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PICA_RUN }),
    --[523] = Donate to Battery Bums until they pay out with an item 5 times
    [524] = KillAchievement:new(524, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [525] = KillAchievement:new(525, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [526] = KillAchievement:new(526, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [527] = KillAchievement:new(527, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [528] = KillAchievement:new(528, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [529] = KillAchievement:new(529, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [530] = KillAchievement:new(530, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [531] = ChallengeAchievement:new(531, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_HOT_POTATO }),
    [532] = ChallengeAchievement:new(532, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_CANTRIPPED }),
    [533] = ChallengeAchievement:new(533, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_RED_REDEMPTION }),
    [534] = KillAchievement:new(534, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [535] = KillAchievement:new(535, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [536] = KillAchievement:new(536, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [537] = KillAchievement:new(537, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, operator= 'OR', difficulty = -1 }),
    [538] = ChallengeAchievement:new(538, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_DELETE_THIS }),
    [539] = KillAchievement:new(539, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [540] = KillAchievement:new(540, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [541] = KillAchievement:new(541, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    [542] = KillAchievement:new(542, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, operator= 'OR', difficulty = -1 }),
    [443] = KillAchievement:new(443, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, operator= 'OR', difficulty = -1 }),
    [544] = KillAchievement:new(544, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_ULTRA_GREED, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[545] = Kill 10 Battery Bums
    --[546] = After breaking Hornfel's minecart, kill him before he can escape
    --[547] = Earn all Hard mode Completion Marks for all non-Tainted characters
    [548] = KillAchievement:new(548, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [549] = KillAchievement:new(549, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [550] = KillAchievement:new(550, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [551] = KillAchievement:new(551, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [552] = KillAchievement:new(552, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [553] = KillAchievement:new(553, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [554] = KillAchievement:new(554, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [555] = KillAchievement:new(555, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [556] = KillAchievement:new(556, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [557] = KillAchievement:new(557, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [558] = KillAchievement:new(558, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [559] = KillAchievement:new(559, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [560] = KillAchievement:new(560, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [561] = KillAchievement:new(561, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [562] = KillAchievement:new(562, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [563] = KillAchievement:new(563, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [564] = KillAchievement:new(564, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, operator = 'OR', difficulty = -1 }),
    [565] = KillAchievement:new(565, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [566] = KillAchievement:new(566, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [567] = KillAchievement:new(567, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [568] = KillAchievement:new(568, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [569] = KillAchievement:new(569, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [570] = KillAchievement:new(570, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [571] = KillAchievement:new(571, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [572] = KillAchievement:new(572, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [573] = KillAchievement:new(573, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [574] = KillAchievement:new(574, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [575] = KillAchievement:new(575, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [576] = KillAchievement:new(576, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, operator = 'OR', difficulty = -1 }),
    [577] = KillAchievement:new(577, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [578] = KillAchievement:new(578, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, difficulty = -1 }),
    [579] = KillAchievement:new(579, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    [580] = KillAchievement:new(580, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, operator = 'OR', entities = { {type = EntityType.ENTITY_ISAAC, times = 1, variant = 0 }, {type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }, {type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }, {type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }, }}, operator = 'OR', difficulty = -1 }),
    [581] = KillAchievement:new(581, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    --[582] = Spend 40+ coins in a single Shop
    --[583] = In a single run, obtain 99 Coins, then spend all of them
    [584] = KillAchievement:new(584, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [585] = KillAchievement:new(585, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [586] = KillAchievement:new(586, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [587] = KillAchievement:new(587, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [588] = KillAchievement:new(588, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [589] = KillAchievement:new(589, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [590] = KillAchievement:new(590, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [581] = KillAchievement:new(591, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [592] = KillAchievement:new(592, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [593] = KillAchievement:new(593, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [594] = KillAchievement:new(594, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [595] = KillAchievement:new(595, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [596] = KillAchievement:new(596, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [597] = KillAchievement:new(597, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [598] = KillAchievement:new(598, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [599] = KillAchievement:new(599, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    [600] = KillAchievement:new(600, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [601] = KillAchievement:new(601, { items = 1, sprites = {} }, { [PlayerType.PLAYER_ISAAC_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [602] = KillAchievement:new(602, { items = 1, sprites = {} }, { [PlayerType.PLAYER_MAGDALENE_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [603] = KillAchievement:new(603, { items = 1, sprites = {} }, { [PlayerType.PLAYER_CAIN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [604] = KillAchievement:new(604, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JUDAS_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [605] = KillAchievement:new(605, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BLUEBABY_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [606] = KillAchievement:new(606, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EVE_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [607] = KillAchievement:new(607, { items = 1, sprites = {} }, { [PlayerType.PLAYER_SAMSON_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [608] = KillAchievement:new(608, { items = 1, sprites = {} }, { [PlayerType.PLAYER_AZAZEL_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [609] = KillAchievement:new(609, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LAZARUS_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, [PlayerType.PLAYER_LAZARUS2_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [610] = KillAchievement:new(610, { items = 1, sprites = {} }, { [PlayerType.PLAYER_EDEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [611] = KillAchievement:new(611, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THELOST_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [612] = KillAchievement:new(612, { items = 1, sprites = {} }, { [PlayerType.PLAYER_LILITH_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [613] = KillAchievement:new(613, { items = 1, sprites = {} }, { [PlayerType.PLAYER_KEEPER_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [614] = KillAchievement:new(614, { items = 1, sprites = {} }, { [PlayerType.PLAYER_APOLLYON_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [615] = KillAchievement:new(615, { items = 1, sprites = {} }, { [PlayerType.PLAYER_THEFORGOTTEN_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, [PlayerType.PLAYER_THESOUL_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    [616] = KillAchievement:new(616, { items = 1, sprites = {} }, { [PlayerType.PLAYER_BETHANY_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [617] = KillAchievement:new(617, { items = 1, sprites = {} }, { [PlayerType.PLAYER_JACOB_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, [PlayerType.PLAYER_JACOB2_B] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, operator = 'OR', difficulty = -1 }),
    --[618] = Defeat Hush and Boss Rush as Tainted Isaac
    --[619] = Defeat Hush and Boss Rush as Tainted Magdalene
    --[620] = Defeat Hush and Boss Rush as Tainted Cain
    --[621] = Defeat Hush and Boss Rush as Tainted Judas
    --[622] = Defeat Hush and Boss Rush as Tainted Blue Baby
    --[623] = Defeat Hush and Boss Rush as Tainted Eve
    --[624] = Defeat Hush and Boss Rush as Tainted Samson
    --[625] = Defeat Hush and Boss Rush as Tainted Azazel
    --[626] = Defeat Hush and Boss Rush as Tainted Lazarus
    --[627] = Defeat Hush and Boss Rush as Tainted Eden
    --[628] = Defeat Hush and Boss Rush as Tainted The Lost
    --[629] = Defeat Hush and Boss Rush as Tainted Lilith
    --[630] = Defeat Hush and Boss Rush as Tainted Keeper
    --[631] = Defeat Hush and Boss Rush as Tainted Apollyon
    --[632] = Defeat Hush and Boss Rush as Tainted The Forgotten
    --[633] = Defeat Hush and Boss Rush as Tainted Bethany
    --[634] = Defeat Hush and Boss Rush as Tainted Jacob
    --[635] = Done with 405
    --[636] = Earn all Hard mode Completion Marks for all characters, including tainted ones
    --[637] = Unlock all the other achievements ((in Repentance+) including the 4 Repentance+ achievements) and collect every item in the game
    --[638] = Play an Online game
    --[639] = Win an Online run
    --[640] = Win an Online Daily run
    --[641] = Done with 4
}
