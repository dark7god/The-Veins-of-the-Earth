--Veins of the Earth
--Zireael 2013-2015

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

local Talents = require("engine.interface.ActorTalents")

local outsider_desc = "It can see in the dark and cannot be brought back to life by normal means."
--Outsiders drop no corpses (except barghests)

newEntity{
	define_as = "BASE_NPC_OUTSIDER_EVIL",
	type = "outsider", subtype = "evil",
	body = { INVEN = 10 },
	ai = "human_level", ai_state = { talent_in=3, },
	alignment = "Neutral Evil",
	blood_color = colors.BLACK,
	resolvers.wounds()
}

newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_ACHAIERAI",
	display = 'ǒ', color=colors.BLACK,
	desc = [[A large bird-like creature.]],
	uncommon_desc = [[Achaierais can release a choking, toxic cloud that damages all those it touches and can cause short term insanity.]],
	common_desc = [[An achaierai's strength lies in its formidable natural attacks of claws and beak, coupled with its speed and mobility in combat. Achaierais speak Infernal.]],
	base_desc = [[This creature is an achaierai, a vicious predator from the Infernal Battlefield of Acheron. It can see in the dark and cannot be brought back to life by normal means.]],

	stats = { str=19, dex=13, con=14, int=11, wis=14, cha=16, luc=12 },
	combat = { dam= {2,6} },
}

--black cloud (1 square ball, 2d6)
newEntity{
	base = "BASE_NPC_ACHAIERAI",
	name = "achaierai", color=colors.BLACK,
	level_range = {5, 15}, exp_worth = 1500,
	rarity = 10,
	max_life = resolvers.rngavg(35,40),
	hit_die = 6,
	challenge = 5,
	infravision = 4,
	combat_natural = 6,
	skill_balance = 9,
	skill_climb = 4,
	skill_diplomacy = 2,
	skill_hide = 5,
	skill_intimidate = 11,
	skill_jump = 17,
	skill_listen = 9,
	skill_movesilently = 8,
	skill_sensemotive = 9,
	skill_spot = 9,
	spell_resistance = 19,
}

newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_BARGHEST",
	display = 'd', color=colors.BLACK,
	image = "tiles/mobiles/barghest.png",
	subtype = "shapechanger",
	desc = [[A large bluish-reddish wolf.]],
	specialist_desc = [[When a barghest slays a humanoid opponent, it feasts on both the body and soul, making it extremely difficult to bring the creature back to life even with powerful spells such as true resurrection, miracle, or wish. Those that consume enough corpses grow into powerful versions called greater barghests.]],
	uncommon_desc = [[Barghests can use the following as spell-like abilities: blink, charm monster, crushing despair, dimension door, levitate, misdirection, and rage.]],
	common_desc = [[A barghest can change its shape, turning into either a goblin or a wolf. It has damage reduction, but it is vulnerable to magic weapons.]],
	base_desc = [[This lupine fiend is a barghest, a hybrid between goblin and wolf. It can see in the dark and needs to eat, sleep and breathe.]],

	stats = { str=17, dex=15, con=13, int=14, wis=14, cha=14, luc=12 },
	combat = { dam= {1,6} },
}

newEntity{
	base = "BASE_NPC_BARGHEST",
	name = "barghest", color=colors.PINK,
	level_range = {5, 15}, exp_worth = 1200,
	rarity = 10,
	max_life = resolvers.rngavg(30,35),
	hit_die = 6,
	challenge = 5, --Adjust a'la Incursion
	infravision = 4,
	combat_natural = 6,
	combat_dr = 5,
	combat_dr_tohit = 1,
	skill_bluff = 9,
	skill_diplomacy = 4,
	skill_hide = 9,
	skill_intimidate = 11,
	skill_jump = 9,
	skill_listen = 9,
	skill_movesilently = 8,
	skill_search = 9,
	skill_sensemotive = 9,
	skill_spot = 9,
	skill_survival = 9,
}

--Breath weapon 2d6 fire cone 2 sq Ref DC 13 half, cooldown 5 turns
--1d6 fire on hit; immunity to fire, vulnerability to cold
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_HELL_HOUND",
	subtype = "fire",
	display = 'd', color=colors.RED,
	image = "tiles/UT/hell_hound.png",
	body = { INVEN = 10, BODY = 1 },
	desc = [[A large flame-colored canine.]],
	uncommon_desc = [[Larger, more powerful versions of the hell hound exist, including the Nessian warhound. They are used as mounts and hunters for the devil princes of the Nine Hells.]],
	common_desc = [[Hell hounds are consummate trackers and often employ pack tactics. The bite of a hell hound deals additional fire damage and they can breathe fire every few rounds.]],
	base_desc = [[This infernal-looking canine is a hell hound. It can see in the dark and cannot be brought back to life by normal means.]],

	stats = { str=13, dex=13, con=13, int=6, wis=10, cha=6, luc=10 },
	combat = { dam= {1,6} },
--	movement_speed_bonus = 0.33,
	movement_speed = 1.33,
	combat_attackspeed = 1.33,
	alignment = "Lawful Evil",
	resolvers.talents{ [Talents.T_HELL_HOUND_BREATH]=1 },
}

newEntity{
	base = "BASE_NPC_HELL_HOUND",
	name = "hell hound",
	level_range = {5, 15}, exp_worth = 900,
	rarity = 15,
	max_life = resolvers.rngavg(20,25),
	hit_die = 4,
	challenge = 3,
	infravision = 4,
	combat_natural = 5,
	skill_hide = 12,
	skill_jump = 11,
	skill_listen = 7,
	skill_movesilently = 11,
	skill_spot = 7,
	skill_survival = 7,
}

--Imp Crit, Weapon Focus
newEntity{
	base = "BASE_NPC_HELL_HOUND",
	name = "Nessian warhound",
	level_range = {10, 25}, exp_worth = 2700,
	rarity = 20,
	max_life = resolvers.rngavg(110,115),
	hit_die = 12,
	challenge = 9,
	infravision = 4,
	combat_natural = 6,
	skill_hide = 15,
	skill_jump = 11,
	skill_listen = 17,
	skill_movesilently = 19,
	skill_spot = 17,
	skill_survival = 7,
	skill_tumble = 1,
	stats = { str=26, dex=14, con=20, int=4, wis=12, cha=6, luc=10 },
	combat = { dam= {2,6} },
	resolvers.talents{ [Talents.T_ALERTNESS]=1 },
	resolvers.equip{
		full_id=true,
		{ name = "chain shirt" },
	},
}

--Quill DC 16 Ref or -1 to attacks, saves and checks
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_HOWLER",
	image = "tiles/new/howler.png",
	display = 'O', color=colors.RED,
	desc = [[A large creature with a ring of spikes around its neck.]],
	specialist_desc = [[Howlers can be trained for use as mounts, pack animals, or the equivalent of hunting dogs. They are most often put to use by lesser fiends.]],
	uncommon_desc = [[Howlers thrash about as they bite, potentially spearing opponents on their long quills. Such quills often snap off, doing the howler no harm but remaining lodged in the victim’s body. Imbedded quills are painful and interfere with the victim’s movements. A quill must be removed with care, lest it cause more damage on its way out.]],
	common_desc = [[Howlers hunt in packs and howl incessantly as they do so. These howls can slowly numb the minds of creatures forced to listen to them for an hour or more. Howlers are surprisingly intelligent. Sages are unsure whether their howls represent a language, but howlers do understand Abyssal.]],
	base_desc = "This gaunt, houndlike creature, maned with bristling quills, is a howler, a lesser horror from the plane of Pandemonium.",

	stats = { str=21, dex=17, con=15, int=6, wis=14, cha=8, luc=12 },
	combat = { dam= {2,8} },
--	movement_speed_bonus = 0.88,
	movement_speed = 1.88,
	combat_attackspeed = 1.88,
	alignment = "Chaotic Evil",
}

newEntity{
	base = "BASE_NPC_HOWLER",
	name = "howler",
	level_range = {5, 15}, exp_worth = 900,
	rarity = 10,
	max_life = resolvers.rngavg(35,40),
	hit_die = 6,
	challenge = 3,
	infravision = 4,
	combat_natural = 4,
	skill_climb = 8,
	skill_hide = 5,
	skill_listen = 11,
	skill_movesilently = 9,
	skill_search = 11,
	skill_spot = 11,
	resolvers.talents{ [Talents.T_ALERTNESS]=1 },
}

--Immunity to charm and fear
--Demon fever bite Fort DC 18, 1d6 Con; change shape
--Spell-likes: At will—detect chaos, detect evil, detect good, detect law, detect magic, ray of enfeeblement.
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_NIGHT_HAG",
	display = 'O', color=colors.BLACK,
	desc = [[A female creature dressed in dark colors.]],
	specialist_desc = [[Night hags can haunt the dreams of chaotic or evil mortals, draining their health. A night hag has numerous spell-like abilities she can use at will, including etherealness, magic missile, ray of enfeeblement, sleep, and the ability to polymorph herself and detect magic and alignments.]],
	uncommon_desc = [[Night hags resist spells and their iron-hard skin deflects most weapon blows, though magic weapions forged of cold iron can still pierce their defenses. A night hag’s bite carries a dangerous disease called demon fever.]],
	common_desc = [[The connection between night hags and mortal hags is mere speculation. Night hags are native to the Gray Wastes of Hades, where they trade in mortal flesh and souls. They are immune to cold, fire, charm, sleep, and fear.]],
	base_desc = [[This midnight-hued crone is a type of fiend called a night hag. Some scholars believe night hags are the ultimate stage of truly ancient and powerful mortal hags (such as green hags).
	It can see in the dark and cannot be brought back to life by normal means.]],

	stats = { str=19, dex=12, con=18, int=11, wis=15, cha=12, luc=12 },
	combat = { dam= {2,6} },
--	movement_speed_bonus = -0.66,
	movement_speed = 0.33,
	alignment = "Neutral Evil",
}

newEntity{
	base = "BASE_NPC_NIGHT_HAG",
	name = "night hag",
	level_range = {10, nil}, exp_worth = 2700,
	rarity = 20,
	max_life = resolvers.rngavg(65,70),
	hit_die = 8,
	challenge = 9,
	infravision = 4,
	combat_natural = 11,
	combat_dr = 10,
	spell_resistance = 25,
	skill_bluff = 11,
	skill_concentration = 12,
	skill_diplomacy = 4,
	skill_intimidate = 13,
	skill_listen = 13,
	skill_sensemotive = 11,
	skill_spellcraft = 11,
	skill_spot = 12,
	resolvers.talents{ [Talents.T_ALERTNESS]=1,
	[Talents.T_COMBAT_CASTING]=1,
	[Talents.T_MM_INNATE]=1,
	[Talents.T_SLEEP_INNATE]=1,
	[Talents.T_FIRE_IMMUNITY]=1,
	[Talents.T_COLD_IMMUNITY]=1,
	[Talents.T_SLEEP_IMMUNITY]=1,
	},
}

--Fly 90 ft.; 1d4 fire on hit
--Astral projection, etherealness; Run feat
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_NIGHTMARE",
	subtype = "fire",
	display = 'q', color=colors.FIREBRICK,
	desc = [[A horse made of smoke, with flaming hooves.]],
	specialist_desc = [[Nightmares, at will, can use astral projection and etherealness, as the spells.]],
	uncommon_desc = [[Nightmares can fly and often serve as companions and steeds for powerful, evil individuals. Nightmares produce a thick, black smoke when enraged, granting it concealment, as well as blinding and choking opponents.]],
	common_desc = [[The powerful hooves of a nightmare are sheathed in flame and a blow from them sets combustible objects alight.]],
	base_desc = [[This ebon-skinned, flame-covered steed is a nightmare. It can see in the dark and cannot be brought back to life by usual means.]],

	stats = { str=18, dex=15, con=16, int=13, wis=13, cha=12, luc=12 },
	combat = { dam= {1,8} },
	infravision = 4,
--	movement_speed_bonus = 0.33,
	movement_speed = 1.33,
	combat_attackspeed = 1.33,
	alignment = "Neutral Evil",
	fly = true,
}

newEntity{
	base = "BASE_NPC_NIGHTMARE",
	name = "nightmare",
	level_range = {5, nil}, exp_worth = 1500,
	rarity = 15,
	max_life = resolvers.rngavg(45,50),
	hit_die = 6,
	challenge = 5,
	combat_natural = 12,
	skill_concentration = 9,
	skill_diplomacy = 2,
	skill_intimidate = 9,
	skill_knowledge = 9,
	skill_listen = 11,
	skill_movesilently = 9,
	skill_search = 9,
	skill_sensemotive = 9,
	skill_survival = 9,
	skill_spot = 11,
	resolvers.talents{ [Talents.T_ALERTNESS]=1 },
}

--Cleave, Run, Track
newEntity{
	base = "BASE_NPC_NIGHTMARE",
	name = "cauchemar",
	level_range = {15, nil}, exp_worth = 3300,
	rarity = 15,
	max_life = resolvers.rngavg(45,50),
	hit_die = 6,
	challenge = 11,
	stats = { str=31, dex=14, con=24, int=16, wis=12, cha=12, luc=12 },
	combat = { dam= {2,6} },
	combat_natural = 14,
	skill_bluff = 18,
	skill_concentration = 18,
	skill_diplomacy = 3,
	skill_intimidate = 20,
	skill_knowledge = 18,
	skill_listen = 18,
	skill_movesilently = 18,
	skill_search = 18,
	skill_sensemotive = 18,
	skill_survival = 18,
	skill_spot = 18,
	resolvers.talents{ [Talents.T_ALERTNESS]=1,
--	[Talents.T_POWER_ATTACK]=1
	},
}

--Fly 30 ft.; shriek 5 sq Fort DC 12 or paralyzed for 2d4 rounds
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_VARGOUILLE",
	display = 'O', color=colors.UMBER,
	image = "tiles/new/vargouille.png",
	desc = [[A creature roughly the size of a human head.]],
	uncommon_desc = [[Vargouilles can emit a terrible shriek that causes paralysis in its victims. The "kiss" of a vargouille on a paralyzed victim can cause a terrible transformation that slowly changes it into another vargouille. This transformation is slowed by sunlight or the daylight spell, but can only be reversed with remove disease.]],
	common_desc = [[The bite of a vargouille contains a poison that cannot be healed except through the use of neutralize poison or heal.]],
	base_desc = [[This is a vargouille, a hideous outsider from the deepest pits of Carceri. It can see in the dark and cannot be brought back to life by normal means.]],

	stats = { str=10, dex=13, con=12, int=5, wis=12, cha=8, luc=8 },
	combat = { dam= {1,4} },
--	movement_speed_bonus = -0.66,
	movement_speed = 0.33,
	alignment = "Neutral Evil",
	fly = true,
}

newEntity{
	base = "BASE_NPC_VARGOUILLE",
	name = "vargouille",
	level_range = {1, nil}, exp_worth = 600,
	rarity = 20,
	max_life = resolvers.rngavg(3,7),
	hit_die = 1,
	challenge = 2,
	infravision = 4,
	skill_hide = 10,
	skill_intimidate = 4,
	skill_listen = 4,
	skill_movesilently = 6,
	skill_spot = 4,
	resolvers.talents{ [Talents.T_FINESSE]=1,
	[Talents.T_STEALTHY]=1,
	},
}

--Fly 60 ft.; scent; bay 20 sq except evil outsiders (Will DC 13 or panicked for 2d4 rounds), trip
newEntity{ base = "BASE_NPC_OUTSIDER_EVIL",
	define_as = "BASE_NPC_YETH_HOUND",
	display = 'd', color=colors.DARK_GRAY,
	image = "tiles/mobiles/yeth_hound.png",
	desc = [[A large black shadowy canine.]],
	specialist_desc = [[Specialist hunters have been known to go after yeth hounds during the day. A yeth hound hates and fears sunlight and will not venture out during the day even to save its life, therefore hunters will track a yeth hound to its den in the daylight and attack it with silver weapons, silver being the one material known to harm yeth hounds, the yeth hounds are easily dispatched since they aren't that physically strong and will not flee.]],
	uncommon_desc = [[When hunting or outnumbered the yeth hound will attempt to frighten those it hunts with its howl.]],
	common_desc = [[The yeth hound attacks by latching onto an ankle with its mouth and pulling the creature attacked to the ground where it goes for the throat.
It usually wades into combat fearlessly because very few weapons are known to hurt it.]],
	base_desc = "The strangely thin dog flying towards you is in fact a yeth hound, a vicious nocturnal hunter that is feared for its evil nature. "..outsider_desc.."",

	stats = { str=17, dex=15, con=15, int=6, wis=14, cha=10, luc=10 },
	combat = { dam= {1,6} },
--	movement_speed_bonus = 0.33,
	movement_speed = 1.33,
	combat_attackspeed = 1.33,
	alignment = "Neutral Evil",
	fly = true,
}

newEntity{
	base = "BASE_NPC_YETH_HOUND",
	name = "yeth hound",
	level_range = {5, nil}, exp_worth = 900,
	rarity = 15,
	max_life = resolvers.rngavg(15,20),
	hit_die = 3,
	challenge = 3,
	infravision = 4,
	combat_natural = 8,
	combat_dr = 10,
	skill_listen = 9,
	skill_survival = 9,
	skill_spot = 9,
	skill_search = 9,
}
