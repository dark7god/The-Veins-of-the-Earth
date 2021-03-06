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

newEntity{
	define_as = "BASE_NPC_AIR",
	type = "outsider", subtype = "air",
	body = { INVEN = 10 },
	ai = "human_level", ai_state = { talent_in=3, ai_move = "move_astar", },
	combat = { dam= {1,6} },
	fly = true,
	resolvers.wounds()
}


--Electricity ray; immunity to acid, electricity and poison;
newEntity{ base = "BASE_NPC_AIR",
	define_as = "BASE_NPC_ARROWHAWK",
	type = "magical beast",
	image = "tiles/mobiles/eagle.png",
	display = 'e', color=colors.LIGHT_BLUE,
	desc = [[A bird with shimmering feathers. By twisting its body and varying the cadence of its wingbeats, an arrowhawk can fly at top speed in any direction.
	A juvenile arrowhawk (1 to 10 years old) is about 5 feet long from beak to tail, with the body accounting for about one-third of that length. Its wingspan is about 7 feet, and it weighs about 20 pounds.]],

	uncommon_desc = [[Arrowhawks are extremely territorial creatures, and though intelligent will usually attack any creature that encrouches upon its territory with little thought, much like predatory animals from the material plane. In combat they prefer to rely on their ability to unleash a ray of electricity fired from their tails whilst in flight. Arrowhawks speak Auran, but they are not usually talkative creatures.]],
	common_desc = [[An arrowhawk is at home on the wing, eating, sleeping and mating without ever touching the ground. As such they are expert flyers, with manoeuvrability matched only by air elementals and other such creatures. Even the eggs of these creature have an innate levitation abuility, and older examples of this creature regularly perfect the art of the flyby attack. Most examples of these creature range in size from a large brid of prey to a fully grown pegasus, though there are rare cases of the eldest of arrowhawks reaching the size of an adult roc.]],
	base_desc = [[This strange bird-like creature is an arrowhawk, an extraplanar predator and scavenger from the elemental plane of air. It can see in the dark and cannot be brought back to life by normal means.]],

	stats = { str=12, dex=21, con=12, int=10, wis=13, cha=13, luc=12 },
--	movement_speed_bonus = 1,
	movement_speed = 2,
	combat_attackspeed = 2,
	resists = {
        [DamageType.FIRE] = 10,
        [DamageType.COLD] = 10,
    },
}

newEntity{
	base = "BASE_NPC_ARROWHAWK",
	name = "juvenile arrowhawk", color=colors.LIGHT_BLUE,
	level_range = {5, 15}, exp_worth = 900,
	rarity = 10,
	max_life = resolvers.rngavg(15,20),
	hit_die = 3,
	challenge = 3,
	infravision = 4,
	combat_natural = 4,
	skill_listen = 6,
	skill_movesilently = 6,
	skill_search = 6,
	skill_sensemotive = 6,
	skill_spot = 6,
	skill_survival = 6,
}

newEntity{
	base = "BASE_NPC_ARROWHAWK",
	name = "adult arrowhawk", color=colors.LIGHT_BLUE,
	level_range = {5, 15}, exp_worth = 1500,
	rarity = 10,
	max_life = resolvers.rngavg(35,40),
	hit_die = 7,
	challenge = 5,
	stats = { str=14, dex=21, con=12, int=10, wis=13, cha=13, luc=12 },
	combat = { dam= {1,8} },
	infravision = 4,
	combat_natural = 6,
	skill_listen = 10,
	skill_movesilently = 10,
	skill_search = 10,
	skill_sensemotive = 10,
	skill_spot = 10,
	skill_survival = 10,
}

newEntity{
	base = "BASE_NPC_ARROWHAWK",
	name = "elder arrowhawk", color=colors.LIGHT_BLUE,
	level_range = {5, 15}, exp_worth = 2500,
	rarity = 15,
	max_life = resolvers.rngavg(110,115),
	hit_die = 15,
	challenge = 8,
	stats = { str=22, dex=21, con=16, int=10, wis=13, cha=13, luc=12 },
	combat = { dam= {2,6} },
	infravision = 4,
	combat_natural = 8,
	skill_listen = 20,
	skill_movesilently = 18,
	skill_search = 18,
	skill_sensemotive = 18,
	skill_spot = 18,
	skill_survival = 18,
}

--Fly 50 ft., smoke form
newEntity{ base = "BASE_NPC_AIR",
	define_as = "BASE_NPC_BELKER",
--	image = "tiles/mobiles/eagle.png",
	display = 'E', color=colors.LIGHT_BLUE,
	desc = [[A demonic humanoid composed of smoke.]],
	uncommon_desc = [[Though not a demon, belkers are undeniably evil. However, they tend to be reclusive creatures that have no or little interest in the affairs of others. When belkers do show interest enough to communicate with others, they usually use the Auran language.]],
	common_desc = [[In normal combat, a belker attacks with its claws, bite and wings. However, they can also take on a smoke form (much like using the spell gaseous form). In this smoke form, a belker can engulf a victim, forcing them to inhale a portion of the belker's essence which then solidifies into a claw within the victim and starts to attack them from within.]],
	base_desc = [[This demonic looking monster is in fact a belker, an elemental creature from the Plane of Air. It can see in the dark and cannot be brought back to life by normal means. It can fly.]],

	stats = { str=14, dex=21, con=13, int=6, wis=11, cha=11, luc=12 },
	name = "belker",
	level_range = {5, 15}, exp_worth = 1800,
	rarity = 10,
	max_life = resolvers.rngavg(35,40),
	hit_die = 7,
	challenge = 6,
	infravision = 4,
	combat_natural = 8,
	skill_listen = 7,
	skill_movesilently = 3,
	skill_spot = 7,
}

--Fly 60 ft.; whirlwind; immunity to acid, plane shift
--Spell-likes: invisibility (self only); 1/day— create food and water, create wine (as create water, but wine instead), major creation (created vegetable matter is permanent), persistent image (DC 17), wind walk.
newEntity{ base = "BASE_NPC_AIR",
	define_as = "BASE_NPC_DJINN",
--	image = "tiles/mobiles/djinn.png",
	display = 'J', color=colors.LIGHT_BLUE,
	body = { INVEN = 10, MAIN_HAND = 1, OFF_HAND = 1, BODY = 1, HELM = 1, QUIVER=1 },
	desc = [[A large humanoid clothed in blue and seemingly hovering in air.]],
	specialist_desc = [[A tiny percentage of djinn (known as noble djinn) who are stronger than their brethren can grant three wishes to any non-genie being who captures them.]],
	uncommon_desc = [[Djinn have access to the following spell-like abilities. At will - create food and water, create wine, invisibilty (self only), major creation, persistant image, wind walk. They can also assume gaseous form for upto an hour per day.]],
	common_desc = [[Djinn disdain physical combat, preferring to use their magical powers and aerial abilities against their foes. Djinn are masters of the air, and airbourne creatures suffer penalties when engaging them in combat. Their affinity with the element of air allows them to transform themselves into a whirlwind which has similar effects to the spell of the same name. Djinn speak Auran, Celestial, Common and Ignan.]],
	base_desc = [[This large, well-formed human-like being is a djinni, a genie from the Elemental Plane of Air.]],
	stats = { str=18, dex=19, con=14, int=14, wis=15, cha=15, luc=12 },
	combat = { dam= {1,8} },

	name = "djinn",
	level_range = {5, 20}, exp_worth = 1500,
	rarity = 20,
	max_life = resolvers.rngavg(40,45),
	hit_die = 7,
	challenge = 5,
	infravision = 4,
	combat_natural = 2,
	skill_concentration = 10,
	skill_diplomacy = 2,
	skill_escapeartist = 10,
	skill_knowledge = 10,
	skill_listen = 10,
	skill_movesilently = 10,
	skill_sensemotive = 10,
	skill_spellcraft = 10,
	skill_spot = 10,
--	movement_speed_bonus = 0.33,
	movement_speed = 1.33,
	combat_attackspeed = 1.33,
	resolvers.talents{ [Talents.T_DODGE]=1,
	[Talents.T_COMBAT_CASTING]=1,
	},
}

--Can grant three wishes per day if not hostile
newEntity {
	base = "BASE_NPC_DJINN",
	name = "noble djinn",
	exp_worth = 2400,
	rarity = 25,
	hit_die = 10,
	max_life = resolvers.rngavg(60,65),
	challenge = 8,
	stats = { str=23, dex=19, con=14, int=14, wis=15, cha=15, luc=12 },
}
