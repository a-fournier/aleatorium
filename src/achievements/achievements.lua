local KillAchievement = require("src/achievements/kill_achievement")

local ChallengeAchievement = require("src/achievements/challenge_achievement")
local CompletionMarkAchievement = require("src/achievements/completion_mark_achievement")
local MarkIds = require("src/completion_marks/enums/mark_ids")
local SlotAchievement = require("src/achievements/slot_achivement")
local SlotType = require("src/slots/enums/slot_type")
local TaintedAchievement = require("src/achievements/tainted_achievement")

return {
    -- [1] = Have 7 or more Red Heart Containers at one time
    -- [2] = Hold 55 Coins at one time
    [3] = KillAchievement:new(3, { items = 0, sprites = {"achievement_judas"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_SATAN, times = 1, variant = -1 }}}, difficulty = -1 }),
    [4] = KillAchievement:new(4, { items = 1, sprites = {"achievement_thewomb", "achievement_harbingers", "achievement_challenge20", "achievement_challenge21", "achievement_challenge22", "achievement_challenge25", "achievement_challenge28", "achievement_challenge30", "achievement_challenge32", "achievement_itemdescriptions"} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MOM, times = 1, variant = -1 }}}, difficulty = -1 }),
    -- [5] = Defeat Mom -- Done with 4
    -- [6] = Defeat Mom -- Done with 4
    [7] = KillAchievement:new(7, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'OR' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 0 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 1}}}, difficulty = -1 }),
    [8] = KillAchievement:new(8, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = 0 }}}, difficulty = -1 }),
    [9] = CompletionMarkAchievement:new(9, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
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
    [20] = CompletionMarkAchievement:new(20, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [21] = CompletionMarkAchievement:new(21, { items = 0, sprites = {"achievement_challenge24"} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [22] = KillAchievement:new(22, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND', entities = {{type = EntityType.ENTITY_ENVY, times = 1, variant = -1 }, {type = EntityType.ENTITY_GLUTTONY, times = 1, variant = -1 }, {type = EntityType.ENTITY_WRATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_PRIDE, times = 1, variant = -1 }, {type = EntityType.ENTITY_LUST, times = 1, variant = -1 }, {type = EntityType.ENTITY_GREED, times = 1, variant = -1 }, {type = EntityType.ENTITY_SLOTH, times = 1, variant = -1 } }}, difficulty = -1 }),
    [23] = KillAchievement:new(23, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_MONSTRO2, times = 1, variant = 1 }}}, difficulty = -1 }),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_GEMINI, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }),
    [24] = KillAchievement:new(24, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_CHUB, times = 1, variant = 1 }, { type = EntityType.ENTITY_GEMINI, times = 1, variant = 11 }}}, difficulty = -1 }),
    -- [26] = Visit 10 Arcades
    -- [27] = Defeat Mom, Mom's Heart, or It Lives! using The Bible or (in Repentance) XV - The Devil?
    -- [28] = Destroy 10 Tinted Rocks
    [29] = CompletionMarkAchievement:new(29, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
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
    [43] = CompletionMarkAchievement:new(43, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [44] = CompletionMarkAchievement:new(44, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [45] = CompletionMarkAchievement:new(45, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [46] = CompletionMarkAchievement:new(46, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [47] = CompletionMarkAchievement:new(47, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [48] = CompletionMarkAchievement:new(48, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [49] = CompletionMarkAchievement:new(49, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [50] = CompletionMarkAchievement:new(50, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [51] = CompletionMarkAchievement:new(51, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [52] = CompletionMarkAchievement:new(52, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [53] = CompletionMarkAchievement:new(53, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [54] = CompletionMarkAchievement:new(54, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [55] = CompletionMarkAchievement:new(55, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [56] = CompletionMarkAchievement:new(56, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
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
    [70] = CompletionMarkAchievement:new(70, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),

    [71] = CompletionMarkAchievement:new(71, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [72] = CompletionMarkAchievement:new(72, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [73] = CompletionMarkAchievement:new(73, { items = 1, sprites = {} }, { players = { PlayerType.BLUE_BABY }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [74] = CompletionMarkAchievement:new(74, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [75] = CompletionMarkAchievement:new(75, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [76] = CompletionMarkAchievement:new(76, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [77] = KillAchievement:new(77, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{ type = EntityType.ENTITY_PRIDE, times = 1, variant = 1 }}}, [PlayerType.PLAYER_JUDAS] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 1, variant = 1 }}}, operator = 'OR', difficulty = -1 }),
    [78] = KillAchievement:new(78, { items = 0, sprites = {"achievement_thenegative"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_SATAN, times = 5, variant = -1 }}}, difficulty = -1 }),
    --[79] = TODO: Make 3 Deals with the Devil in one run
    --[80] = TODO: Have 4 or more Soul Hearts at one time
    --[81] = TODO: Complete Chapter 4
    --[82] = TODO: Die in a Sacrifice Room while holding Missing Poster
    --[83] = TODO: Complete Chapter 6 without taking damage
    --[84] = TODO: Collect every non-DLC item, and unlock every secret and ending.
    --[85] = TODO: Destroy 100 rocks
    --[86] = TODO: Beat all Basement bosses (in Repentance and Repentance+) Except Baby Plum Not restricted to beating bosses in The Basement
    --[87] = TODO: Beat all Caves bosses (in Repentance and Repentance+) Except Bumbino Not restricted to beating bosses in The Caves
    --[88] = TODO: Beat all Depths bosses (in Repentance and Repentance+) Except Reap Creep Not restricted to beating bosses in The Depths
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
    [105] = CompletionMarkAchievement:new(105, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [106] = CompletionMarkAchievement:new(106, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [107] = CompletionMarkAchievement:new(107, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [108] = CompletionMarkAchievement:new(108, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [109] = CompletionMarkAchievement:new(109, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [110] = CompletionMarkAchievement:new(110, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [111] = CompletionMarkAchievement:new(111, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [112] = CompletionMarkAchievement:new(112, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [113] = CompletionMarkAchievement:new(113, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [114] = CompletionMarkAchievement:new(114, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [115] = CompletionMarkAchievement:new(115, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [116] = CompletionMarkAchievement:new(116, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [117] = CompletionMarkAchievement:new(117, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [118] = CompletionMarkAchievement:new(118, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [119] = CompletionMarkAchievement:new(119, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [120] = ChallengeAchievement:new(120, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SUICIDE_KING }),
    [121] = CompletionMarkAchievement:new(121, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [122] = CompletionMarkAchievement:new(122, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [123] = CompletionMarkAchievement:new(123, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [124] = CompletionMarkAchievement:new(124, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [125] = CompletionMarkAchievement:new(125, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [126] = CompletionMarkAchievement:new(126, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [127] = CompletionMarkAchievement:new(127, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.ENTITY_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [128] = CompletionMarkAchievement:new(128, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [129] = CompletionMarkAchievement:new(129, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [130] = CompletionMarkAchievement:new(130, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.ENTITY_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [131] = CompletionMarkAchievement:new(131, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [132] = CompletionMarkAchievement:new(132, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [133] = CompletionMarkAchievement:new(133, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [134] = SlotAchievement:new(134, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 10 }),
    [135] = SlotAchievement:new(135, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 50 }),
    [136] = SlotAchievement:new(136, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 150 }),
    [137] = SlotAchievement:new(137, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 400 }),
    [138] = SlotAchievement:new(138, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 999 }),
    [139] = KillAchievement:new(139, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 4, variant = 0 }}}, difficulty = -1 }),
    [140] = KillAchievement:new(140, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 6, variant = 0 }}}, difficulty = -1 }),
    [141] = KillAchievement:new(141, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 7, variant = 0 }}}, difficulty = -1 }),
    --[142] = TODO: Take 20 items from Devil Rooms
    [143] = KillAchievement:new(143, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_FALLEN, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[144] = TODO: Make a Super Meat Boy by picking up 4 copies of Cube of Meat in one run
    --[145] = TODO: Destroy 100 Poops
    --[146] = TODO: Pick up 2 syringe-related items in a single run
    --[147] = TODO: Use the Blood Donation Machine 30 times
    --[148] = TODO: Blow up 30 Slot Machine
    [149] = CompletionMarkAchievement:new(149, { items = 0, sprites = {"achievement_lostposter"} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [150] = KillAchievement:new(150, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 2, variant = 0 }}}, difficulty = -1 }),
    [151] = SlotAchievement:new(151, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 20 }),
    [152] = SlotAchievement:new(152, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 100 }),
    [153] = SlotAchievement:new(153, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 200 }),
    [154] = SlotAchievement:new(154, { items = 1, sprites = {} }, { type = SlotType.SHOP, coins = 600 }),
    --[155] = TODO: Complete Chapter 6
    [156] = CompletionMarkAchievement:new(156, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[157] = TODO: Defeat Mom's Heart 11 times and unlock Eve
    --[158] = TODO: Have 7 or more Red Heart Containers at one time
    [159] = KillAchievement:new(159, { items = 0, sprites = {"achievement_challenge06"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 3, variant = 0 }}}, difficulty = -1 }),
    --[160] = TODO: Unlock Lazarus and It Lives
    --[161] = TODO: Become Guppy
    [162] = KillAchievement:new(162, { items = 0, sprites = {"achievement_challenge09"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 9, variant = 0 }}}, difficulty = -1 }),
    --[163] = TODO: Have 7 or more Red Heart Containers at one time
    --[164] = TODO: Beat The Family Man (challenge #19), defeat Lokii, and unlock Judas and It Lives!
    --[165] = TODO: Pick up both Key Pieces from the Angels in one run
    --[166] = Defeat Mom -- Done with 4
    [167] = CompletionMarkAchievement:new(167, { items = 0, sprites = {"achievement_lostbaby"} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [168] = CompletionMarkAchievement:new(168, { items = 0, sprites = {"achievement_cutebaby"} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [169] = CompletionMarkAchievement:new(169, { items = 0, sprites = {"achievement_crowbaby"} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [170] = CompletionMarkAchievement:new(170, { items = 0, sprites = {"achievement_shadowbaby"} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [171] = CompletionMarkAchievement:new(171, { items = 0, sprites = {"achievement_glassbaby"} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [172] = CompletionMarkAchievement:new(172, { items = 0, sprites = {"achievement_wrappedbaby"} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [173] = CompletionMarkAchievement:new(173, { items = 0, sprites = {"achievement_begottenbaby"} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [174] = CompletionMarkAchievement:new(174, { items = 0, sprites = {"achievement_deadbaby"} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [175] = CompletionMarkAchievement:new(175, { items = 0, sprites = {"achievement_0baby"} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [176] = CompletionMarkAchievement:new(176, { items = 0, sprites = {"achievement_glitchbaby"} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [177] = CompletionMarkAchievement:new(177, { items = 0, sprites = {"achievement_fightingbaby"} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[178] = TODO: Become Beelzebub
    [179] = CompletionMarkAchievement:new(179, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [180] = CompletionMarkAchievement:new(180, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [181] = CompletionMarkAchievement:new(181, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [182] = CompletionMarkAchievement:new(182, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [183] = CompletionMarkAchievement:new(183, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [184] = CompletionMarkAchievement:new(184, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [185] = CompletionMarkAchievement:new(185, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [186] = CompletionMarkAchievement:new(186, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [187] = CompletionMarkAchievement:new(187, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [188] = CompletionMarkAchievement:new(188, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [189] = CompletionMarkAchievement:new(189, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [190] = CompletionMarkAchievement:new(190, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [191] = CompletionMarkAchievement:new(191, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [192] = CompletionMarkAchievement:new(192, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [193] = CompletionMarkAchievement:new(193, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [194] = CompletionMarkAchievement:new(194, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [195] = CompletionMarkAchievement:new(195, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [196] = CompletionMarkAchievement:new(196, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [197] = CompletionMarkAchievement:new(197, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [198] = CompletionMarkAchievement:new(198, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [199] = CompletionMarkAchievement:new(199, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [200] = CompletionMarkAchievement:new(200, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [201] = CompletionMarkAchievement:new(201, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [202] = CompletionMarkAchievement:new(202, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [203] = CompletionMarkAchievement:new(203, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [204] = CompletionMarkAchievement:new(204, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [205] = CompletionMarkAchievement:new(205, { items = 0, sprites = {"achievement_205_crybaby"} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [206] = CompletionMarkAchievement:new(206, { items = 0, sprites = {"achievement_206_redbaby"} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [207] = CompletionMarkAchievement:new(207, { items = 0, sprites = {"achievement_207_greenbaby"} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [208] = CompletionMarkAchievement:new(208, { items = 0, sprites = {"achievement_208_brownbaby"} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [209] = CompletionMarkAchievement:new(209, { items = 0, sprites = {"achievement_209_bluebaby"} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [210] = CompletionMarkAchievement:new(210, { items = 0, sprites = {"achievement_210_lilbaby"} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [211] = CompletionMarkAchievement:new(211, { items = 0, sprites = {"achievement_211_ragebaby"} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [212] = CompletionMarkAchievement:new(212, { items = 0, sprites = {"achievement_212_blackbaby"} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [213] = CompletionMarkAchievement:new(213, { items = 0, sprites = {"achievement_213_longbaby"} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [214] = CompletionMarkAchievement:new(214, { items = 0, sprites = {"achievement_214_yellowbaby"} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [215] = CompletionMarkAchievement:new(215, { items = 0, sprites = {"achievement_215_whitebaby"} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [216] = CompletionMarkAchievement:new(216, { items = 0, sprites = {"achievement_216_bigbaby"} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [217] = CompletionMarkAchievement:new(217, { items = 0, sprites = {"achievement_217_noosebaby"} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [218] = CompletionMarkAchievement:new(218, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [219] = CompletionMarkAchievement:new(219, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [220] = CompletionMarkAchievement:new(220, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [221] = CompletionMarkAchievement:new(221, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [222] = CompletionMarkAchievement:new(222, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [223] = CompletionMarkAchievement:new(223, { items = 0, sprites = {"achievement_223_goatheadbaby"} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
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
    --[235] = TODO: Unlock 275 random achievements and have at least 510 items in the collection page
    [236] = CompletionMarkAchievement:new(236, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [237] = CompletionMarkAchievement:new(237, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [238] = CompletionMarkAchievement:new(238, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [239] = CompletionMarkAchievement:new(239, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [240] = CompletionMarkAchievement:new(240, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [241] = CompletionMarkAchievement:new(241, { items = 0, sprites = {"achievement_241_supergreedbaby"} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
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
    [252] = CompletionMarkAchievement:new(252, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [253] = CompletionMarkAchievement:new(253, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [254] = CompletionMarkAchievement:new(254, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [255] = CompletionMarkAchievement:new(255, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [256] = CompletionMarkAchievement:new(256, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [257] = CompletionMarkAchievement:new(257, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[258] = TODO: Use Blank Card while holding XIX - The Sun
    [259] = CompletionMarkAchievement:new(259, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [260] = CompletionMarkAchievement:new(260, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [261] = CompletionMarkAchievement:new(261, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [262] = CompletionMarkAchievement:new(262, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [263] = CompletionMarkAchievement:new(263, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [264] = CompletionMarkAchievement:new(264, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[265] = Defeat Mom -- Done with 4
    --[266] = Defeat Mom -- Done with 4
    --[267] = TODO: Destroy 10 Tinted Rocks and defeat Mom's Heart 11 times
    --[268] = Defeat Isaac as Cain -- Done with 21
    --[269] = Defeat Mom -- Done with 4
    --[270] = TODO: Defeat Mega Satan and unlock The Negative
    [271] = KillAchievement:new(271, { items = 0, sprites = {"achievement_challenge27", "achievement_challenge35"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_ISAAC, times = 5, variant = 0 }}}, difficulty = -1 }),
    --[272] = Defeat Mom -- Done with 4
    --[273] = TODO: Unlock Judas and It Lives!
    --[274] = Defeat Mom -- Done with 4
    [275] = SlotAchievement:new(275, { items = 0, sprites = {"achievement_generosity"} }, { type = SlotType.GREED, coins = 999 }),
    [276] = CompletionMarkAchievement:new(276, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC, PlayerType.PLAYER_MAGDALENE, PlayerType.PLAYER_CAIN, PlayerType.PLAYER_JUDAS, PlayerType.PLAYER_BLUEBABY, PlayerType.PLAYER_EVE, PlayerType.PLAYER_SAMSON, PlayerType.PLAYER_AZAZEL, PlayerType.PLAYER_LAZARUS, PlayerType.PLAYER_EDEN, PlayerType.PLAYER_THELOST, PlayerType.PLAYER_LILITH, PlayerType.PLAYER_KEEPER, PlayerType.PLAYER_APOLLYON, PlayerType.PLAYER_THEFORGOTTEN, PlayerType.PLAYER_BETHANY, PlayerType.PLAYER_JACOB }, marks = { MarkIds.MEGASATAN }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[277] = TODO: Defeat Mega Satan and unlock The Negative
    --[278] = Defeat Mom -- Done with 4
    --[279] = Defeat Mom's Heart 11 times -- Done with 34
    --[280] = TODO: Defeat Mega Satan and unlock The Negative
    --[281] = Defeat Isaac 5 times -- Done with 271
    [282] = CompletionMarkAchievement:new(282, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [283] = CompletionMarkAchievement:new(283, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [284] = CompletionMarkAchievement:new(284, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [285] = CompletionMarkAchievement:new(285, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [286] = CompletionMarkAchievement:new(286, { items = 0, sprites = {"achievement_kingbaby"} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [287] = CompletionMarkAchievement:new(287, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [288] = CompletionMarkAchievement:new(288, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [289] = CompletionMarkAchievement:new(289, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [290] = CompletionMarkAchievement:new(290, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [291] = CompletionMarkAchievement:new(291, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [292] = CompletionMarkAchievement:new(292, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [293] = CompletionMarkAchievement:new(293, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [294] = CompletionMarkAchievement:new(294, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [295] = CompletionMarkAchievement:new(294, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [296] = CompletionMarkAchievement:new(296, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [297] = CompletionMarkAchievement:new(297, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [298] = CompletionMarkAchievement:new(298, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [299] = CompletionMarkAchievement:new(299, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [300] = CompletionMarkAchievement:new(300, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [301] = CompletionMarkAchievement:new(301, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [302] = CompletionMarkAchievement:new(302, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [303] = CompletionMarkAchievement:new(303, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [304] = CompletionMarkAchievement:new(304, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [305] = CompletionMarkAchievement:new(305, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [306] = CompletionMarkAchievement:new(306, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [307] = CompletionMarkAchievement:new(307, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [308] = CompletionMarkAchievement:new(308, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [309] = CompletionMarkAchievement:new(309, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [310] = CompletionMarkAchievement:new(310, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [311] = CompletionMarkAchievement:new(311, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [312] = CompletionMarkAchievement:new(312, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [313] = CompletionMarkAchievement:new(313, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [314] = CompletionMarkAchievement:new(314, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [315] = CompletionMarkAchievement:new(315, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [316] = CompletionMarkAchievement:new(316, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [317] = CompletionMarkAchievement:new(317, { items = 0, sprites = {"achievement_mortbaby"} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [318] = CompletionMarkAchievement:new(318, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [319] = CompletionMarkAchievement:new(319, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [320] = KillAchievement:new(320, { items = 0, sprites = {"achievement_thevoid"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[321] = TODO: Complete a Victory Lap by defeating The Lamb
    --[322] = TODO: Get a 3-win streak
    --[323] = TODO: Get a 5-win streak, using a different character each time
    --[324] = TODO: Collect every entry in the Bestiary
    --[325] = TODO: Participate in 31 Daily Challenges They don't have to be consecutive; it will still count if Isaac dies in the first room
    --[326] = TODO: Defeat The Lamb in under 20 minutes
    --[327] = TODO: Defeat The Lamb without taking Hearts, Coins, or Bombs through the entire run Letting certain familiars (e.g. Bum Friend, Dark Bum, Bumbo or (in Repentance and Repentance+)Lil Portal) or bosses (e.g. (in Repentance and Repentance+)Bumbino) pick up the consumables fails this condition as well
    --[328] = TODO: Reset 7 times in a row
    --[329] = TODO: Complete a Chapter (floors I and II) after Basement, start-to-finish, with only half a Heart total (can use The Lost)
    --[330] = TODO: Obtain 50 items in a run
    [331] = ChallengeAchievement:new(331, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BACKASSWARDS }),
    [332] = ChallengeAchievement:new(332, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_APRILS_FOOL }),
    [333] = ChallengeAchievement:new(333, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_POKEY_MANS }),
    [334] = ChallengeAchievement:new(334, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ULTRA_HARD }),
    [335] = ChallengeAchievement:new(335, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PONG }),
    --[336] = TODO: Get a 5-win streak in the Daily Challenges They don't have to be consecutive days, only the runs you play are counted
    --[337] = TODO: Complete 3 Victory Laps by defeating The Lamb
    [338] = KillAchievement:new(338, { items = 2, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_DELIRIUM, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[339] = TODO: Unlock 402 random achievements and have at least 510 items in the collection page
    [340] = KillAchievement:new(340, { items = 0, sprites = {"achievement_apollyon"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MEGA_SATAN_2, times = 1, variant = -1 }}}, difficulty = -1 }),
    [341] = SlotAchievement:new(341, { items = 0, sprites = {"achievement_greedier"} }, { type = SlotType.GREED, coins = 500 }),
    --[342] = Defeat Mom's Heart 11 times -- Done with 34
    [343] = KillAchievement:new(343, { items = 0, sprites = {"achievement_floodedcaves"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 16, variant = 1 }}}, difficulty = -1 }),
    [344] = KillAchievement:new(344, { items = 0, sprites = {"achievement_dankdepths"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 21, variant = 1 }}}, difficulty = -1 }),
    [345] = KillAchievement:new(345, { items = 0, sprites = {"achievement_scarredwomb"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOMS_HEART, times = 30, variant = 1 }}}, difficulty = -1 }),
    --[346] = TODO: Defeat ??? as 3 different Characters
    --[347] = TODO: Defeat ??? as 6 different Characters
    [348] = KillAchievement:new(348, { items = 0, sprites = {"achievement_gateopen"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_THE_LAMB, times = 1, variant = -1 }}}, difficulty = -1 }),
    [349] = KillAchievement:new(349, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_PORTAL, times = 20, variant = -1 }}}, difficulty = -1 }),
    --[350] = TODO: Destroy 500 rocks
    --[351] = Beat Chapter 1 without taking damage -- Done with 37
    --[352] = TODO: Done with 178 -- Become Beelzebub
    [353] = KillAchievement:new(353, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_POOP, times = 5, variant = -1 }}}, difficulty = -1 }),
    --[354] = TODO: Complete 7 Daily Challenges (by touching the trophy at the end)
    --[355] = TODO: Pick up 5 familiars in a single run
    [356] = KillAchievement:new(356, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_LITTLE_HORN, times = 20, variant = -1 }}}, difficulty = -1 }),
    --[357] = Defeat Delirium -- Done with 338
    --[358] = TODO: Recharge using Lil' Batteries 20 times
    --[359] = TODO: Sleep in a bed
    --[360] = TODO: Complete 2 Victory Laps by defeating The Lamb
    --[361] = TODO: Be 3 times larger than the starting size. Depending on the item/card/pill size's multiplier, 5 to 7 size increases will be required.
    --[362] = TODO: Use Cards and Runes 20 times
    --[363] = TODO: Add both the Broken Watch and the Stop Watch to your collection
    --[364] = TODO: Purchase anything from Shops, Devil Rooms, and/or Black Markets 50 times
    --[365] = Beat Chapter 2 without taking damage -- Done with 38
    --[366] = TODO: Use Pandora's Box in Dark Room
    --[367] = TODO: Pick up 2 battery-related items in a single run Battery-related items have the 'battery' item tag)
    --[368] = TODO: Done with 39
    --[369] = TODO: Pick up 2 technology-related items in a single run (in Repentance and Repentance+) Technology-related items have the 'tech' item tag
    --[370] = TODO: Acquire both Key Piece 1 and Key Piece 2
    --[371] = TODO: Open 20 Locked Chests
    [372] = KillAchievement:new(372, { items = 1, sprites = {} }, { [-1] = { times = 1, operator = 'AND' , entities = {{type = EntityType.ENTITY_FAMINE, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 0 }, {type = EntityType.ENTITY_PESTILENCE, times = 1, variant = -1 }, {type = EntityType.ENTITY_DEATH, times = 1, variant = -1 }, {type = EntityType.ENTITY_WAR, times = 1, variant = 1 }}}, difficulty = -1 }),
    --[373] = TODO: Defeat an Angel 10 times
    --[374] = Beat Chapter 4 without taking damage -- Done with 40
    --[375] = TODO: Blow up doors and Secret Room walls 50 times
    --[376] = TODO: Take 25 Deals with the Devil
    --[377] = TODO: Acquire Blood Clot 10 times
    --[378] = TODO: Collect 10 "Tears Up" items or pills in one run
    --[379] = TODO: Enter 6 Shops in one run
    --[380] = TODO: Take 25 Angel Rooms items
    --[381] = TODO: Have The Battery, 9 Volt, and Car Battery in Isaac's collection
    --[382] = TODO: Acquire Rubber Cement 5 times
    --[383] = TODO: Take 50 Deals with the Devil
    --[384] = TODO: Have Isaac die to his own explosion from any explosive and poisoned tear (Ipecac, Bob's Rotten Head, Fire Mind / Explosivo + Scorpio, or a Horf! pill)
    --[385] = TODO: Sleep in 10 beds
    --[386] = TODO: Use 5 Gulp! pills in one run Placebo uses count
    --[387] = TODO: Spawn three charmed enemies in the same room
    --[388] = TODO: Have 20 Blue Flies at the same time
    --[389] = TODO: Use I - The Magician or Telepathy For Dummies while already having homing tears
    --[390] = TODO: Unlock Forgotten
    --[391] = Unlock The Forgotten -- Done with 390
    [392] = CompletionMarkAchievement:new(392, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [393] = CompletionMarkAchievement:new(393, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [394] = CompletionMarkAchievement:new(394, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [395] = CompletionMarkAchievement:new(395, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [396] = CompletionMarkAchievement:new(396, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [397] = CompletionMarkAchievement:new(397, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [398] = CompletionMarkAchievement:new(398, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [399] = CompletionMarkAchievement:new(399, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [400] = CompletionMarkAchievement:new(400, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [401] = CompletionMarkAchievement:new(401, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [402] = CompletionMarkAchievement:new(402, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [403] = CompletionMarkAchievement:new(403, { items = 0, sprites = {"achievement_boundbaby"} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    --[404] = TODO: Defeat Mom's Heart/It Lives! on hard mode as Lazarus, without dying at all
    [405] = KillAchievement:new(405, { items = 0, sprites = {"achievement_jacobesau", "achievement_challenge39", "achievement_challenge40", "achievement_strangedoor"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_MOTHER, times = 1, variant = -1 }}}, difficulty = -1 }),
    --[406] = TODO: Collect any 3 items with the 'stars' item tag in a single run
    [407] = KillAchievement:new(407, { items = 0, sprites = {"achievement_secretexit"} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_HUSH, times = 3, variant = -1 }}}, difficulty = -1 }),
    --[408] = TODO: Blow up The Siren's skull after defeating her
    [409] = KillAchievement:new(409, { items = 1, sprites = {} }, { [-1] = { times = 1, entities = {{type = EntityType.ENTITY_BABY_PLUM, times = 10, variant = -1 }}}, difficulty = -1 }),
    --[410] = TODO: Allow Baby Plum to escape instead of defeating her
    --[411] = TODO: Enter Corpse for the first time
    --[412] = TODO: Defeat all bosses in Downpour
    --[413] = TODO: Defeat all bosses in Mines
    --[414] = TODO: Defeat all bosses in Mausoleum
    --[415] = TODO: Open Mom's Chest in Home
    [416] = CompletionMarkAchievement:new(416, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [417] = CompletionMarkAchievement:new(417, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.ENTITY_ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [418] = CompletionMarkAchievement:new(418, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.ENTITY_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [419] = CompletionMarkAchievement:new(419, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [420] = CompletionMarkAchievement:new(420, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [421] = CompletionMarkAchievement:new(421, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [422] = CompletionMarkAchievement:new(422, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [423] = CompletionMarkAchievement:new(423, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [424] = CompletionMarkAchievement:new(424, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [425] = CompletionMarkAchievement:new(425, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [426] = CompletionMarkAchievement:new(426, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [427] = CompletionMarkAchievement:new(427, { items = 0, sprites = {"achievement_glowingbaby"} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [428] = CompletionMarkAchievement:new(428, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.HEART }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [429] = CompletionMarkAchievement:new(429, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.ENTITY_ISAAC }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [430] = CompletionMarkAchievement:new(430, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.ENTITY_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [431] = CompletionMarkAchievement:new(431, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.BLUE_BABY }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [432] = CompletionMarkAchievement:new(432, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [433] = CompletionMarkAchievement:new(433, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.BOSS_RUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [434] = CompletionMarkAchievement:new(434, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [435] = CompletionMarkAchievement:new(435, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [436] = CompletionMarkAchievement:new(436, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [437] = CompletionMarkAchievement:new(437, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [438] = CompletionMarkAchievement:new(438, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = {MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [439] = CompletionMarkAchievement:new(439, { items = 0, sprites = {"achievement_solomonsbaby"} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [440] = CompletionMarkAchievement:new(440, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [441] = CompletionMarkAchievement:new(441, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [442] = CompletionMarkAchievement:new(442, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [443] = CompletionMarkAchievement:new(443, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [444] = CompletionMarkAchievement:new(444, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [445] = CompletionMarkAchievement:new(445, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [446] = CompletionMarkAchievement:new(446, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [447] = CompletionMarkAchievement:new(447, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [448] = CompletionMarkAchievement:new(448, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [449] = CompletionMarkAchievement:new(449, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [450] = CompletionMarkAchievement:new(450, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [451] = CompletionMarkAchievement:new(451, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [452] = CompletionMarkAchievement:new(452, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [453] = CompletionMarkAchievement:new(453, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [454] = CompletionMarkAchievement:new(454, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [455] = CompletionMarkAchievement:new(455, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [456] = CompletionMarkAchievement:new(456, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [457] = CompletionMarkAchievement:new(457, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [458] = CompletionMarkAchievement:new(458, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [459] = CompletionMarkAchievement:new(459, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [460] = CompletionMarkAchievement:new(460, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [461] = CompletionMarkAchievement:new(461, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [462] = CompletionMarkAchievement:new(462, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [463] = CompletionMarkAchievement:new(463, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [464] = CompletionMarkAchievement:new(464, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [465] = CompletionMarkAchievement:new(465, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [466] = CompletionMarkAchievement:new(466, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [467] = CompletionMarkAchievement:new(467, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [468] = CompletionMarkAchievement:new(468, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [469] = CompletionMarkAchievement:new(469, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [470] = CompletionMarkAchievement:new(470, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [471] = CompletionMarkAchievement:new(471, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [472] = CompletionMarkAchievement:new(472, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [473] = CompletionMarkAchievement:new(473, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [474] = TaintedAchievement:new(474, { items = 0, sprites = {"achievement_isaacb"} }, { player = PlayerType.PLAYER_ISAAC }),
    [475] = TaintedAchievement:new(475, { items = 0, sprites = {"achievement_magdaleneb"} }, { player = PlayerType.PLAYER_MAGDALENE }),
    [476] = TaintedAchievement:new(476, { items = 0, sprites = {"achievement_cainb"} }, { player = PlayerType.PLAYER_CAIN }),
    [477] = TaintedAchievement:new(477, { items = 0, sprites = {"achievement_judasb"} }, { player = PlayerType.PLAYER_JUDAS }),
    [478] = TaintedAchievement:new(478, { items = 0, sprites = {"achievement_bluebabyb"} }, { player = PlayerType.PLAYER_BLUEBABY }),
    [479] = TaintedAchievement:new(479, { items = 0, sprites = {"achievement_eveb"} }, { player = PlayerType.PLAYER_EVE }),
    [480] = TaintedAchievement:new(480, { items = 0, sprites = {"achievement_samsonb"} }, { player = PlayerType.PLAYER_SAMSON }),
    [481] = TaintedAchievement:new(481, { items = 0, sprites = {"achievement_azazelb"} }, { player = PlayerType.PLAYER_AZAZEL }),
    [482] = TaintedAchievement:new(482, { items = 0, sprites = {"achievement_lazarusb"} }, { player = PlayerType.PLAYER_LAZARUS }),
    [483] = TaintedAchievement:new(483, { items = 0, sprites = {"achievement_thelostb"} }, { player = PlayerType.PLAYER_THELOST }),
    [484] = TaintedAchievement:new(484, { items = 0, sprites = {"achievement_lilithb"} }, { player = PlayerType.PLAYER_LILITH }),
    [485] = TaintedAchievement:new(485, { items = 0, sprites = {"achievement_keeperb"} }, { player = PlayerType.PLAYER_KEEPER }),
    [486] = TaintedAchievement:new(486, { items = 0, sprites = {"achievement_apollyonb"} }, { player = PlayerType.PLAYER_APOLLYON }),
    [487] = TaintedAchievement:new(487, { items = 0, sprites = {"achievement_theforgottenb"} }, { player = PlayerType.PLAYER_THEFORGOTTEN }),
    [488] = TaintedAchievement:new(488, { items = 0, sprites = {"achievement_bethanyb"} }, { player = PlayerType.PLAYER_BETHANY }),
    [489] = TaintedAchievement:new(489, { items = 0, sprites = {"achievement_jacobb"} }, { player = PlayerType.PLAYER_JACOB }),
    [491] = CompletionMarkAchievement:new(491, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [492] = CompletionMarkAchievement:new(492, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [493] = CompletionMarkAchievement:new(493, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [494] = CompletionMarkAchievement:new(494, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [495] = CompletionMarkAchievement:new(495, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [496] = CompletionMarkAchievement:new(496, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [497] = CompletionMarkAchievement:new(497, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [498] = CompletionMarkAchievement:new(498, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [499] = CompletionMarkAchievement:new(490, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [500] = CompletionMarkAchievement:new(500, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [501] = CompletionMarkAchievement:new(501, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [502] = CompletionMarkAchievement:new(502, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [503] = CompletionMarkAchievement:new(503, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [504] = CompletionMarkAchievement:new(504, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [505] = CompletionMarkAchievement:new(505, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [506] = CompletionMarkAchievement:new(506, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [507] = CompletionMarkAchievement:new(507, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.THE_BEAST }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    --[508] = TODO: Unlock Bethany, Blood Bag, and It Lives!
    --[509] = TODO: Defeat Satan as Bethany, defeat Mom's Heart 11 times, and unlock Maggy's Faith
    --[510] = Defeat Mother -- Done with 405
    --[511] = Defeat Mother -- Done with 405
    --[512] = TODO: Defeat Mom's Heart 11 times and unlock Marbles
    --[513] = Unlock Tainted Forgotten -- Done with 488
    --[514] = Unlock Tainted Cain -- Done with 476
    --[515] = Unlock Tainted Jacob -- Done with 490
    --[516] = Unlock Tainted Eden -- Done with 483
    [517] = ChallengeAchievement:new(517, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SCAT_MAN }),
    [518] = ChallengeAchievement:new(518, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BLOODY_MARY }),
    [519] = ChallengeAchievement:new(519, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_BAPTISM_BY_FIRE }),
    [520] = ChallengeAchievement:new(520, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_ISAACS_AWAKENING }),
    [521] = ChallengeAchievement:new(521, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_SEEING_DOUBLE }),
    [522] = ChallengeAchievement:new(522, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_PICA_RUN }),
    --[523] = TODO: Donate to Battery Bums until they pay out with an item 5 times
    [524] = CompletionMarkAchievement:new(524, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [525] = CompletionMarkAchievement:new(525, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [526] = CompletionMarkAchievement:new(526, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [527] = CompletionMarkAchievement:new(527, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [528] = CompletionMarkAchievement:new(528, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [529] = CompletionMarkAchievement:new(529, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [530] = CompletionMarkAchievement:new(530, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [531] = ChallengeAchievement:new(531, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_HOT_POTATO }),
    [532] = ChallengeAchievement:new(532, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_CANTRIPPED }),
    [533] = ChallengeAchievement:new(533, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_RED_REDEMPTION }),
    [534] = CompletionMarkAchievement:new(534, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [535] = CompletionMarkAchievement:new(535, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [536] = CompletionMarkAchievement:new(536, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [537] = CompletionMarkAchievement:new(537, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [538] = ChallengeAchievement:new(538, { items = 1, sprites = {} }, { challenge = Challenge.CHALLENGE_DELETE_THIS }),
    [539] = CompletionMarkAchievement:new(539, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [540] = CompletionMarkAchievement:new(540, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [541] = CompletionMarkAchievement:new(541, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [542] = CompletionMarkAchievement:new(542, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [443] = CompletionMarkAchievement:new(443, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [544] = CompletionMarkAchievement:new(544, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    --[545] = TODO: Kill 10 Battery Bums
    --[546] = TODO: After breaking Hornfel's minecart, kill him before he can escape
    [547] = CompletionMarkAchievement:new(547, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC, PlayerType.PLAYER_MAGDALENE, PlayerType.PLAYER_CAIN, PlayerType.PLAYER_JUDAS, PlayerType.PLAYER_BLUEBABY, PlayerType.PLAYER_EVE, PlayerType.PLAYER_SAMSON, PlayerType.PLAYER_AZAZEL, PlayerType.PLAYER_LAZARUS, PlayerType.PLAYER_EDEN, PlayerType.PLAYER_THELOST, PlayerType.PLAYER_LILITH, PlayerType.PLAYER_KEEPER, PlayerType.PLAYER_APOLLYON, PlayerType.PLAYER_THEFORGOTTEN, PlayerType.PLAYER_BETHANY, PlayerType.PLAYER_JACOB }, marks = { MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    [548] = CompletionMarkAchievement:new(548, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [549] = CompletionMarkAchievement:new(549, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [550] = CompletionMarkAchievement:new(550, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [551] = CompletionMarkAchievement:new(551, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [552] = CompletionMarkAchievement:new(552, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [553] = CompletionMarkAchievement:new(553, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [554] = CompletionMarkAchievement:new(554, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [555] = CompletionMarkAchievement:new(555, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [556] = CompletionMarkAchievement:new(556, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [557] = CompletionMarkAchievement:new(557, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [558] = CompletionMarkAchievement:new(558, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [559] = CompletionMarkAchievement:new(559, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [560] = CompletionMarkAchievement:new(560, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [561] = CompletionMarkAchievement:new(561, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [562] = CompletionMarkAchievement:new(562, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [563] = CompletionMarkAchievement:new(563, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [564] = CompletionMarkAchievement:new(564, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [565] = CompletionMarkAchievement:new(565, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [566] = CompletionMarkAchievement:new(566, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [567] = CompletionMarkAchievement:new(567, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [568] = CompletionMarkAchievement:new(568, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [569] = CompletionMarkAchievement:new(569, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [570] = CompletionMarkAchievement:new(570, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [571] = CompletionMarkAchievement:new(571, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [572] = CompletionMarkAchievement:new(572, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [573] = CompletionMarkAchievement:new(573, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [574] = CompletionMarkAchievement:new(574, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [575] = CompletionMarkAchievement:new(575, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [576] = CompletionMarkAchievement:new(576, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [577] = CompletionMarkAchievement:new(577, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [578] = CompletionMarkAchievement:new(578, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [579] = CompletionMarkAchievement:new(579, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [580] = CompletionMarkAchievement:new(580, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [581] = CompletionMarkAchievement:new(581, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.MOTHER }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    --[582] = TODO: Spend 40+ coins in a single Shop
    --[583] = TODO: In a single run, obtain 99 Coins, then spend all of them
    [584] = CompletionMarkAchievement:new(584, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [585] = CompletionMarkAchievement:new(585, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [586] = CompletionMarkAchievement:new(586, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [587] = CompletionMarkAchievement:new(587, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [588] = CompletionMarkAchievement:new(588, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [589] = CompletionMarkAchievement:new(589, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [590] = CompletionMarkAchievement:new(590, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [591] = CompletionMarkAchievement:new(591, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [592] = CompletionMarkAchievement:new(592, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [593] = CompletionMarkAchievement:new(593, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [594] = CompletionMarkAchievement:new(594, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [595] = CompletionMarkAchievement:new(595, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [596] = CompletionMarkAchievement:new(596, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [597] = CompletionMarkAchievement:new(597, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [598] = CompletionMarkAchievement:new(598, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [599] = CompletionMarkAchievement:new(599, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [600] = CompletionMarkAchievement:new(600, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.DELIRIUM }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [601] = CompletionMarkAchievement:new(601, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [602] = CompletionMarkAchievement:new(602, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [603] = CompletionMarkAchievement:new(603, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [604] = CompletionMarkAchievement:new(604, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [605] = CompletionMarkAchievement:new(605, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [606] = CompletionMarkAchievement:new(606, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [607] = CompletionMarkAchievement:new(607, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [608] = CompletionMarkAchievement:new(608, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [609] = CompletionMarkAchievement:new(609, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [610] = CompletionMarkAchievement:new(610, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [611] = CompletionMarkAchievement:new(611, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [612] = CompletionMarkAchievement:new(612, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [613] = CompletionMarkAchievement:new(613, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [614] = CompletionMarkAchievement:new(614, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [615] = CompletionMarkAchievement:new(615, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [616] = CompletionMarkAchievement:new(616, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [617] = CompletionMarkAchievement:new(617, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.MEGA_SATAN }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [618] = CompletionMarkAchievement:new(618, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [619] = CompletionMarkAchievement:new(619, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_MAGDALENE_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [620] = CompletionMarkAchievement:new(620, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_CAIN_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [621] = CompletionMarkAchievement:new(621, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JUDAS_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [622] = CompletionMarkAchievement:new(622, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BLUEBABY_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [623] = CompletionMarkAchievement:new(623, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EVE_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [624] = CompletionMarkAchievement:new(624, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_SAMSON_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [625] = CompletionMarkAchievement:new(625, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_AZAZEL_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [626] = CompletionMarkAchievement:new(626, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LAZARUS2_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [627] = CompletionMarkAchievement:new(627, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_EDEN_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [628] = CompletionMarkAchievement:new(628, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THELOST_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [629] = CompletionMarkAchievement:new(629, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_LILITH_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [630] = CompletionMarkAchievement:new(630, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_KEEPER_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [631] = CompletionMarkAchievement:new(631, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_APOLLYON_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [632] = CompletionMarkAchievement:new(632, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_THEFORGOTTEN_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [633] = CompletionMarkAchievement:new(633, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_BETHANY_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    [634] = CompletionMarkAchievement:new(634, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.BOSS_RUSH, MarkIds.HUSH }, difficulty = Difficulty.DIFFICULTY_NORMAL }),
    --[635] = Defeat Mother -- Done with 405
    [636] = CompletionMarkAchievement:new(636, { items = 1, sprites = {} }, { players = { PlayerType.PLAYER_ISAAC, PlayerType.PLAYER_MAGDALENE, PlayerType.PLAYER_CAIN, PlayerType.PLAYER_JUDAS, PlayerType.PLAYER_BLUEBABY, PlayerType.PLAYER_EVE, PlayerType.PLAYER_SAMSON, PlayerType.PLAYER_AZAZEL, PlayerType.PLAYER_LAZARUS, PlayerType.PLAYER_EDEN, PlayerType.PLAYER_THELOST, PlayerType.PLAYER_LILITH, PlayerType.PLAYER_KEEPER, PlayerType.PLAYER_APOLLYON, PlayerType.PLAYER_THEFORGOTTEN, PlayerType.PLAYER_BETHANY, PlayerType.PLAYER_JACOB, PlayerType.PLAYER_ISAAC_B, PlayerType.PLAYER_MAGDALENE_B, PlayerType.PLAYER_CAIN_B, PlayerType.PLAYER_JUDAS_B, PlayerType.PLAYER_BLUEBABY_B, PlayerType.PLAYER_EVE_B, PlayerType.PLAYER_SAMSON_B, PlayerType.PLAYER_AZAZEL_B, PlayerType.PLAYER_LAZARUS_B, PlayerType.PLAYER_EDEN_B, PlayerType.PLAYER_THELOST_B, PlayerType.PLAYER_LILITH_B, PlayerType.PLAYER_KEEPER_B, PlayerType.PLAYER_APOLLYON_B, PlayerType.PLAYER_THEFORGOTTEN_B, PlayerType.PLAYER_BETHANY_B, PlayerType.PLAYER_JACOB_B }, marks = { MarkIds.HEART, MarkIds.ISAAC, MarkIds.BLUE_BABY, MarkIds.SATAN, MarkIds.THE_LAMB, MarkIds.BOSS_RUSH, MarkIds.HUSH, MarkIds.MEGASATAN, MarkIds.DELIRIUM, MarkIds.MOTHER, MarkIds.THE_BEAST, MarkIds.ULTRA_GREED }, difficulty = Difficulty.DIFFICULTY_HARD }),
    --[637] = TODO: Unlock all the other achievements ((in Repentance+) including the 4 Repentance+ achievements) and collect every item in the game
    --[638] = Play an Online game
    --[639] = Win an Online run
    --[640] = Win an Online Daily run
    --[641] = Defeat Mom -- Done with 4
}
