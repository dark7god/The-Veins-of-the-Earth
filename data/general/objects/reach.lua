--Veins of the Earth
--Zireael 2013-2015

newEntity{
    define_as = "BASE_WEAPON_REACH",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon",
    reach = true,
    addons = "/data/general/objects/properties/bonus_weapons.lua",
    egos = "/data/general/objects/properties/weapons.lua",
    egos_chance = resolvers.ego_chance(),
    --egos_chance = { prefix=30, suffix=70},
}


--One-handed weapon
newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_TRIDENT",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="trident",
    image = "tiles/object/trident.png",
    display = "/", color=colors.SLATE,
    encumber = 4,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal trident.\n\n",
    name = "trident",
    level_range = {1, 10},
--    cost = 15,
    cost = resolvers.value{silver=155},
    combat = {
        dam = {1,8},
    },
}


--Two-handed weapons
newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_LSPEAR",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="spear",
    image = "tiles/object/spear.png",
    display = "/", color=colors.BROWN,
    encumber = 10,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A wooden long spear.\n\n",
    name = "long spear",
    level_range = {1, 10},
--    cost = 5,
    cost = resolvers.value{silver=30},
    simple = true,
    combat = {
        dam = {1,8},
        critical = 3,
    },
}


newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_GLAIVE",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="glaive",
    image = "tiles/object/glaive.png",
    display = "/", color=colors.BROWN,
    encumber = 10,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal glaive.\n\n",
    name = "glaive",
    level_range = {1, 10},
--    cost = 8,
    cost = resolvers.value{silver=100},
    martial = true,
    combat = {
        dam = {1,10},
        critical = 3,
    },
}

newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_GUISARME",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="guisarme",
    image = "tiles/object/halberd.png",
    display = "/", color=colors.BROWN,
    encumber = 12,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal guisarme.\n\n",
    name = "guisarme",
    level_range = {1, 10},
--    cost = 9,
    cost = resolvers.value{silver=225},
    martial = true,
    combat = {
        dam = {2,4},
        critical = 3,
    },
}


newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_RANSEUR",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="ranseur",
    image = "tiles/object/halberd.png",
    display = "/", color=colors.BROWN,
    encumber = 12,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal ranseur.\n\n",
    name = "ranseur",
    level_range = {1, 10},
--    cost = 10,
    cost = resolvers.value{silver=250},
    martial = true,
    combat = {
        dam = {2,4},
        critical = 3,
    },
}


newEntity{ base = "BASE_WEAPON_REACH",
    define_as = "BASE_LANCE",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="lance",
    image = "tiles/object/lance.png",
    display = "\\", color=colors.SLATE,
    encumber = 10,
    rarity = 12,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A plain metal lance.\n\n",
    name = "lance",
    level_range = {1, 10},
--    cost = 10,
    cost = resolvers.value{silver=150},
    martial = true,
    combat = {
        dam = {1,8},
        critical = 3,
    },
}
