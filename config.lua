-- The Forgotten Server Config

	-- Account manager
	accountManager = true
	namelockManager = false
	newPlayerChooseVoc = true
	newPlayerSpawnPosX = 542
	newPlayerSpawnPosY = 524
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 1
	newPlayerLevel = 350
	newPlayerMagicLevel = 0
	generateAccountNumber = false

	-- Unjustified kills
	-- NOTE: *Banishment and *BlackSkull variables are >summed up<
	-- (dailyFragsToRedSkull + dailyFragsToBanishment) with their
	-- *RedSkull equivalents.
	-- Auto banishing works only if useBlackSkull set to negative.
	-- advancedFragList is not advised if you use huge frags
	-- requirements.
	redSkullLength = 1 * 24 * 60 * 60
	blackSkullLength = 2 * 24 * 60 * 60
	dailyFragsToRedSkull = 7
	weeklyFragsToRedSkull = 7
	monthlyFragsToRedSkull = 7
	dailyFragsToBlackSkull = 10
	weeklyFragsToBlackSkull = 10
	monthlyFragsToBlackSkull = 10
	dailyFragsToBanishment = dailyFragsToRedSkull
	weeklyFragsToBanishment = weeklyFragsToRedSkull
	monthlyFragsToBanishment = monthlyFragsToRedSkull
	blackSkulledDeathHealth = 40
	blackSkulledDeathMana = 0
	useBlackSkull = true
	useFragHandler = true
	advancedFragList = false

	-- Banishments
	-- violationNameReportActionType 1 = just a report, 2 = name lock, 3 = player banishment
	-- killsBanLength works only if useBlackSkull option is disabled.
	notationsToBan = 3
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 1 * 24 * 60 * 60
	killsBanLength = 1 * 24 * 60 * 60
	finalBanLength = 1 * 24 * 60 * 60
	ipBanishmentLength = 1 * 24 * 60 * 60
	broadcastBanishments = true
	maxViolationCommentSize = 200
	violationNameReportActionType = 2
	autoBanishUnknownBytes = false

	-- Battle
	-- NOTE: showHealingDamageForMonsters inheritates from showHealingDamage.
	-- loginProtectionPeriod is the famous Tibia anti-magebomb system.
	-- deathLostPercent set to nil enables manual mode.
	worldType = "pvp"
	protectionLevel = 100
	pvpTileIgnoreLevelAndVocationProtection = true
	pzLocked = 30 * 800
	huntingDuration = 60 * 1000
	criticalHitChance = 7
	criticalHitMultiplier = 1
	displayCriticalHitNotify = true
	removeWeaponAmmunition = false
	removeWeaponCharges = false
	removeRuneCharges = true
	whiteSkullTime = 5 * 60 * 1000
	noDamageToSameLookfeet = false
	showHealingDamage = true
	showHealingDamageForMonsters = true
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = false
	oldConditionAccuracy = false
	loginProtectionPeriod = 10 * 1000
	deathLostPercent = 10
	stairhopDelay = 2 * 1000
	pushCreatureDelay = 1 * 1000
	deathContainerId = 1987
	gainExperienceColor = 215
	addManaSpentInPvPZone = true
	squareColor = 0
	allowFightback = true

	-- Connection config
	worldId = 0
	ip = "127.0.0.1"
	bindOnlyConfiguredIpAddress = false
	loginPort = 7171
	gamePort = 7172
	adminPort = 7171
	statusPort = 7171
	loginTries = 10
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = 500
	motd = "Bem vindos"
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = false
	allowClones = false
	serverName = "Bellini"
	loginMessage = "Seja bem vindos"
	statusTimeout = 5 * 60 * 1000
	replaceKickOnLogin = true
	forceSlowConnectionsToDisconnect = false
	loginOnlyWithLoginServer = false
	premiumPlayerSkipWaitList = false

	-- Database
	-- NOTE: sqlFile is used only by sqlite database, and sqlKeepAlive by mysql database.
	-- To disable sqlKeepAlive such as mysqlReadTimeout use 0 value.
	sqlType = "sqlite"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = "root"
	sqlPass = ""
	sqlDatabase = "theforgottenserver"
	sqlFile = "theforgottenserver.s3db"
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	mysqlWriteTimeout = 10
	encryptionType = "plain"

	-- Deathlist
	deathListEnabled = true
	deathListRequiredTime = 1 * 60 * 1000
	deathAssistCount = 19
	maxDeathRecords = 5

	-- Guilds
	ingameGuildManagement = true
	levelToFormGuild = 250
	premiumDaysToFormGuild = 0
	guildNameMinLength = 5
	guildNameMaxLength = 30

	-- Highscores
	highscoreDisplayPlayers = 10
	updateHighscoresAfterMinutes = 3

	-- Houses
	buyableAndSellableHouses = true
	houseNeedPremium = true
	bedsRequirePremium = true
	levelToBuyHouse = 100
	housesPerAccount = 0
	houseRentAsPrice = false
	housePriceAsRent = false
	housePriceEachSquare = 5000
	houseRentPeriod = "never"
	houseCleanOld = 0
	guildHalls = false

	-- Item usage
	timeBetweenActions = 200
	timeBetweenExActions = 1000
	checkCorpseOwner = true
	hotkeyAimbotEnabled = true
	maximumDoorLevel = 500

	-- Map
	-- NOTE: storeTrash costs more memory, but will perform alot faster cleaning.
	-- useHouseDataStorage usage may be found at README.
	mapName = "forgotten"
	mapAuthor = "Unknown"
	randomizeTiles = true
	useHouseDataStorage = false
	storeTrash = true
	cleanProtectedZones = true
	mailboxDisabledTowns = "-1"

	-- Startup
	-- NOTE: defaultPriority works only on Windows and niceLevel on *nix
	-- coresUsed are seperated by comma cores ids used by server process,
	-- default is -1, so it stays untouched (automaticaly assigned by OS).
	defaultPriority = "high"
	niceLevel = 5
	coresUsed = "-1"
	optimizeDatabaseAtStartup = true
	removePremiumOnInit = true
	confirmOutdatedVersion = false

	-- Muted buffer
	maxMessageBuffer = 4
	bufferMutedOnSpellFailure = false

	-- Miscellaneous
	-- NOTE: promptExceptionTracerErrorBox works only with precompiled support feature,
	-- called "exception tracer" (__EXCEPTION_TRACER__ flag).
	-- monsterLootMessage 0 to disable, 1 - only party, 2 - only player, 3 - party or player (like Tibia's)
	dataDirectory = "data/"
	allowChangeOutfit = true
	allowChangeColors = true
	allowChangeAddons = true
	disableOutfitsForPrivilegedPlayers = false
	bankSystem = true
	saveGlobalStorage = true
	displaySkillLevelOnAdvance = false
	spellNameInsteadOfWords = false
	emoteSpells = false
	promptExceptionTracerErrorBox = true
	storePlayerDirection = false
	monsterLootMessage = 3
	monsterLootMessageType = 25
	separateViplistPerCharacter = false

	-- Ghost mode
	ghostModeInvisibleEffect = false
	ghostModeSpellEffects = false

	-- Limits
	idleWarningTime = 59 * 60 * 1000
	idleKickTime = 60 * 60 * 1000
	expireReportsAfterReads = 1
	playerQueryDeepness = 2
	maxItemsPerPZTile = 0
	maxItemsPerHouseTile = 0

	-- Premium-related
	freePremium = true
	premiumForPromotion = true

	-- Blessings
	-- NOTE: blessingReduction* regards items/containers loss.
	-- eachBlessReduction is how much each bless reduces the experience/magic/skills loss.
	blessingOnlyPremium = true
	blessingReductionBase = 30
	blessingReductionDecreament = 5
	eachBlessReduction = 8

	-- Rates
	-- NOTE: experienceStages configuration is located in data/XML/stages.xml.
	-- rateExperienceFromPlayers 0 to disable.
	experienceStages = true
	rateExperience = 200
	rateSkill = 250
	rateMagic = 70
	rateLoot = 4
	rateSpawn = 5

	-- Monster rates
	rateMonsterHealth = 1.0
	rateMonsterMana = 1.0
	rateMonsterAttack = 1.0
	rateMonsterDefense = 1.0

	-- Experience from players
	-- NOTE: min~Threshold* set to 0 will disable the minimum threshold:
	-- player will gain experience from every lower leveled player.
	-- max~Threshold* set to 0 will disable the maximum threshold:
	-- player will gain experience from every higher leveled player.
	minLevelThresholdForKilledPlayer = 0.9
	maxLevelThresholdForKilledPlayer = 1.1

	-- Stamina
	-- NOTE: Stamina is stored in miliseconds, so seconds are multiplied by 1000.
	-- rateStaminaHits multiplies every hit done a creature, which are later
	-- multiplied by player attack speed.
	-- rateStaminaGain is divider of every logged out second, eg:
	-- 60000 / 3 = 20000 milliseconds, what gives 20 stamina seconds for 1 minute being logged off.
	-- rateStaminaThresholdGain is divider for the premium stamina.
	-- staminaRatingLimit* is in minutes.
	rateStaminaLoss = 1
	rateStaminaGain = 3
	rateStaminaThresholdGain = 12
	staminaRatingLimitTop = 41 * 60
	staminaRatingLimitBottom = 14 * 60
	rateStaminaAboveNormal = 1.5
	rateStaminaUnderNormal = 0.5
	staminaThresholdOnlyPremium = true

	-- Party
	-- NOTE: experienceShareLevelDifference is float number.
	-- experienceShareLevelDifference is highestLevel * value
	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 2 / 3
	extraPartyExperienceLimit = 20
	extraPartyExperiencePercent = 5
	experienceShareActivity = 2 * 60 * 1000

	-- Global save
	-- NOTE: globalSaveHour means like 03:00, not that it will save every 3 hours,
	-- if you want such a system please check out data/globalevents/globalevents.xml.
	globalSaveEnabled = false
	globalSaveHour = 3
	shutdownAtGlobalSave = false
	cleanMapAtGlobalSave = false

	-- Spawns
	deSpawnRange = 2
	deSpawnRadius = 50

	-- Summons
	maxPlayerSummons = 2
	teleportAllSummons = false
	teleportPlayerSummons = false

	-- Status
	ownerName = "Kyle Bellini"
	ownerEmail = ""
	url = ""
	location = "Brasil"
	displayGamemastersWithOnlineCommand = false

	-- Logs
	-- NOTE: This kind of logging does not work in GUI version.
	-- For such, please compile the software with __GUI_LOGS__ flag.
	adminLogsEnabled = false
	displayPlayersLogging = true
	prefixChannelLogs = ""
	runFile = ""
	outLogName = ""
	errorLogName = ""
	truncateLogsOnStartup = false