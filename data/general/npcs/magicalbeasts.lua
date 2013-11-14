--Veins of the Earth
--Zireael

local Talents = require("engine.interface.ActorTalents")


newEntity{
	define_as = "BASE_NPC_EAGLE",
	type = "magical beast",
	display = 'e', color=colors.YELLOW,
	body = { INVEN = 10 },
	desc = [[A proud eagle.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=18, dex=17, con=12, int=10, wis=14, cha=10, luc=12 },
	combat = { dam= {1,6} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_EAGLE",
	name = "giant eagle", color=colors.YELLOW,
	image = "tiles/eagle.png",
	level_range = {1, 5}, exp_worth = 900,
	rarity = 8,
	max_life = resolvers.rngavg(2,5),
	hit_die = 4,
	challenge = 3,
	skill_listen = 2,
	skill_spot = 13,
	skill_survival = 1,
}

newEntity{
	define_as = "BASE_NPC_SHOCKLIZARD",
	type = "magical beast",
	display = 'q', color=colors.LIGHT_BLUE,

	body = { INVEN = 10 },
	desc = [[A lizard with light blue markings on its back.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=10, dex=15, con=13, int=2, wis=12, cha=6, luc=12 },
	combat = { dam= {1,4} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_SHOCKLIZARD",
	name = "shocker lizard", color=colors.YELLOW,
	level_range = {1, 20}, exp_worth = 300,
	rarity = 8,
	max_life = resolvers.rngavg(12,15),
	hit_die = 2,
	challenge = 2,
	infravision = 3,
	skill_climb = 11,
	skill_hide = 9,
	skill_jump = 7,
	skill_listen = 3,
	skill_spot = 3,
	skill_swim = 10,
}

newEntity{
	define_as = "BASE_NPC_ANKHEG",
	type = "magical beast",
	display = 'B', color=colors.DARK_UMBER,
	body = { INVEN = 10 },
	desc = [[A large chitin-covered insect.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=21, dex=10, con=17, int=1, wis=13, cha=6, luc=6 },
	combat = { dam= {2,6} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_ANKHEG",
	name = "ankheg", color=colors.DARK_UMBER,
	level_range = {5, 15}, exp_worth = 900,
	rarity = 8,
	max_life = resolvers.rngavg(25,30),
	hit_die = 3,
	challenge = 3,
	combat_natural = 8,
	skill_climb = 3,
	skill_listen = 5,
	skill_spot = 2,
}

--Poison, spells, web, shapechange
newEntity{
	define_as = "BASE_NPC_ARANEA",
	type = "magical beast",
	image = "tiles/aranea.png",
	display = 's', color=colors.DARK_RED,
	body = { INVEN = 10 },
	desc = [[A large spider.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=11, dex=15, con=14, int=14, wis=13, cha=14, luc=12 },
	combat = { dam= {1,6} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_ARANEA",
	name = "aranea", color=colors.DARK_RED,
	level_range = {5, 15}, exp_worth = 900,
	rarity = 8,
	max_life = resolvers.rngavg(20,25),
	hit_die = 3,
	challenge = 4,
	infravision = 4,
	combat_natural = 1,
	skill_climb = 10,
	skill_listen = 5,
	skill_spot = 5,
	skill_concentration = 6,
}

--Petrifying gaze 3 squares Fort DC 13, Blind-Fight
newEntity{
	define_as = "BASE_NPC_BASILISK",
	type = "magical beast",
	image = "tiles/lizard.png",
	display = 'R', color=colors.UMBER,
	body = { INVEN = 10 },
	desc = [[A large dull brown reptile.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=15, dex=8, con=15, int=2, wis=12, cha=11, luc=8 },
	combat = { dam= {1,6} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_BASILISK",
	name = "basilisk",
	level_range = {5, 15}, exp_worth = 1200,
	rarity = 10,
	max_life = resolvers.rngavg(40,45),
	hit_die = 6,
	challenge = 5,
	infravision = 4,
	combat_natural = 7,
	skill_hide = 4,
	skill_listen = 6,
	skill_spot = 6,
}

--Speed 40 ft. breath weapon 2 squares cooldown 10 7d6 electric Ref DC 19; constrict 2d8, rake 1d4, immunity to electricity, scent
newEntity{
	define_as = "BASE_NPC_BEHIR",
	type = "magical beast",
	image = "tiles/lizard.png",
	display = 'R', color=colors.DARK_BLUE,
	body = { INVEN = 10 },
	desc = [[A large reptile in various shades of blue.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=26, dex=13, con=21, int=7, wis=14, cha=12, luc=12 },
	combat = { dam= {2,4} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_BEHIR",
	name = "behir",
	level_range = {10, nil}, exp_worth = 2400,
	rarity = 10,
	max_life = resolvers.rngavg(90,95),
	hit_die = 9,
	challenge = 8,
	infravision = 4,
	combat_natural = 9,
	skill_climb = 8,
	skill_hide = 4,
	skill_listen = 2,
	skill_spot = 2,
	resolvers.talents{ [Talents.T_POWER_ATTACK]=1, },
}

--Blink, dimension door; speed 40 ft.
newEntity{
	define_as = "BASE_NPC_BLINKDOG",
	type = "magical beast",
	image = "tiles/wolf.png",
	display = 'd', color=colors.DARK_BLUE,
	body = { INVEN = 10 },
	desc = [[A faintly shimmering canine.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=10, dex=17, con=10, int=10, wis=13, cha=11, luc=12 },
	combat = { dam= {1,6} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_BLINKDOG",
	name = "blink dog",
	level_range = {1, 20}, exp_worth = 600,
	rarity = 10,
	max_life = resolvers.rngavg(20,25),
	hit_die = 4,
	challenge = 2,
	infravision = 4,
	combat_natural = 3,
	skill_sensemotive = 1,
	skill_listen = 2,
	skill_spot = 2,
	skill_survival = 3,
}

--Scent, tremorsense 4 squares
newEntity{
	define_as = "BASE_NPC_BULETTE",
	type = "magical beast",
	image = "tiles/lizard.png",
	display = 'B', color=colors.BROWN,
	body = { INVEN = 10 },
	desc = [[A terrifying beast with a shark's head.]],

	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=27, dex=15, con=20, int=2, wis=13, cha=6, luc=12 },
	combat = { dam= {2,8} },
	--Hack! Monsters drop corpses now
	resolvers.inventory {
	full_id=true,
	{ name = "fresh corpse" }
	},
}

newEntity{
	base = "BASE_NPC_BULETTE",
	name = "bulette",
	level_range = {10, nil}, exp_worth = 600,
	rarity = 15,
	max_life = resolvers.rngavg(90,95),
	hit_die = 9,
	challenge = 7,
	infravision = 4,
	combat_natural = 10,
	skill_jump = 10,
	skill_listen = 8,
	skill_spot = 2,
}