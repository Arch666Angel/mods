--HEALTH:
--SCARAB: 150/300/450/600/750
--BITER 100/200/300/400/500
--SPITTER 50/100/150/200/250

--DAMAGE:
--SCARAB: 5/5,10/5,20/5,30/5,40/5
--BITER: 10/5, 20/10, 30/20, 40/30, 50/40
--SPITTER: 10/10, 20/20, 30/30, 40/40, 50/50

--SPEED:
--SCARAB: 0.185, 0.185, 0.185, 0.17, 0.17
--BITER: 0.185, 0.185, 0.185, 0.17, 0.17
--SPITTER: 0.185, 0.185, 0.185, 0.17, 0.17
--spawner result fetch script
--[[function ammend_spawner_results(base)
  for _, spawner in pairs(data.raw["unit-spawner"]) do
    if spawner.name=base then
      return spawner.results
  end]]


-------------------------------------------------------------------------------
-- BITER DEFINITIONS ----------------------------------------------------------
-------------------------------------------------------------------------------
small_biter =
{
  appearance = {
    type = "biter",
    name = "small",
    scale = 0.5,
    tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 100,
    order = "b-a-a",
    box_scale = 1,
  },
  attack = {
    category = "melee",
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 10,
    damage2 = 5,
  },
  resistance = {
    {type = "physical", decrease = 0, percent = 0},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 0, percent = 0}
  }
}

medium_biter =
{
  appearance = {
    type = "biter",
    name = "medium",
    scale = 0.7,
    tint1 = {r=0.78, g=0.15, b=0.15, a=0.60},
    tint2 = {r=0.90, g=0.30, b=0.30, a=0.75},
    speed = 0.185,
    health = 200,
    order = "b-a-b",
    box_scale = 1,
  },
  attack = {
    category = "melee",
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 20,
    damage2 = 10,
  },
  resistance = {
    {type = "physical", decrease = 5, percent = 20},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 5, percent = 20}
  }
}

big_biter =
{
  appearance = {
    type = "biter",
    name = "big",
    scale = 1,
    tint1 = {r=0.34, g=0.68, b=0.90, a=0.60},
    tint2 = {r=0.31, g=0.61, b=0.95, a=0.85},
    speed = 0.185,
    health = 300,
    order = "b-a-c",
    box_scale = 1,
  },
  attack = {
    category = "melee",
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 30,
    damage2 = 20,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 0, percent = 0},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

behemoth_biter =
{
  appearance = {
    type = "biter",
    name = "behemoth",
    scale = 1.2,
    tint1 = {r=0.30, g=0.90, b=0.30, a=0.75},
    tint2 = {r=0.88, g=0.24, b=0.24, a=0.90},
    speed = 0.17,
    health = 400,
    order = "b-a-d",
    box_scale = 1,
  },
  attack = {
    category = "melee",
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 40,
    damage2 = 30,
  },
  resistance = {
    {type = "physical", decrease = 15, percent = 40},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 15, percent = 40}
  }
}

colossal_biter =
{
  appearance = {
    type = "biter",
    name = "colossal",
    scale = 1.4,
    --tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    --tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    tint1 = {r=1.00, g=0.68, b=0.00, a=0.75},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.90},
    speed = 0.17,
    health = 500,
    order = "b-a-e",
    box_scale = 1.8,
  },
  attack = {
    category = "melee",
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 50,
    damage2 = 40,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 30},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 30},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

-------------------------------------------------------------------------------
-- SPITTER DEFINITIONS --------------------------------------------------------
-------------------------------------------------------------------------------
small_spitter =
{
  appearance = {
    type = "spitter",
    name = "small",
    scale = 0.5,
    tint1 = {r=0.68, g=0.40, b=0.00, a=1.00},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 50,
    order = "b-b-a",
    box_scale = 1,
  },
  attack = {
    range = 15,
    cooldown = 100,
    min_attack_distance = 10,
    creation_distance = 1.9,
    damage_modifier = 1,
    warmup = 30,
    damage = 10,
  },
  resistance = {
    {type = "physical", decrease = 0, percent = 0},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 0, percent = 0}
  }
}

medium_spitter =
{
  appearance = {
    type = "spitter",
    name = "medium",
    scale = 0.7,
    tint1 = {r=0.83, g=0.39, b=0.36, a=0.75},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 100,
    order = "b-b-b",
    box_scale = 1,
  },
  attack = {
    range = 15,
    cooldown = 100,
    min_attack_distance = 10,
    creation_distance = 1.9,
    damage_modifier = 1,
    warmup = 30,
    damage = 20,
  },
  resistance = {
    {type = "physical", decrease = 5, percent = 20},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 5, percent = 20}
  }
}

big_spitter =
{
  appearance = {
    type = "spitter",
    name = "big",
    scale = 1,
    tint1 = {r=0.54, g=0.58, b=0.85, a=0.60},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 150,
    order = "b-b-c",
    box_scale = 1,
  },
  attack = {
    range = 15,
    cooldown = 100,
    min_attack_distance = 10,
    creation_distance = 1.9,
    damage_modifier = 1,
    warmup = 30,
    damage = 30,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 0, percent = 0},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

behemoth_spitter =
{
  appearance = {
    type = "spitter",
    name = "behemoth",
    scale = 1.2,
    tint1 = {r=0.30, g=0.90, b=0.30, a=0.75},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 200,
    order = "b-b-d",
    box_scale = 1,
  },
  attack = {
    range = 15,
    cooldown = 100,
    min_attack_distance = 10,
    creation_distance = 1.9,
    damage_modifier = 1,
    warmup = 30,
    damage = 40,
  },
  resistance = {
    {type = "physical", decrease = 15, percent = 40},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 15, percent = 40}
  }
}

colossal_spitter =
{
  appearance = {
    type = "spitter",
    name = "colossal",
    scale = 1.4,
    --tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    --tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    tint1 = {r=1.00, g=0.68, b=0.00, a=0.75},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 250,
    order = "b-b-e",
    box_scale = 1.5,
  },
  attack = {
    range = 15,
    cooldown = 100,
    min_attack_distance = 10,
    creation_distance = 1.9,
    damage_modifier = 1,
    warmup = 30,
    damage = 50,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 30},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 30},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

-------------------------------------------------------------------------------
-- SCARAB DEFINITIONS ---------------------------------------------------------
-------------------------------------------------------------------------------
small_scarab =
{
  appearance = {
    type = "scarab",
    name = "small",
    scale = 0.4,
    tint1 = {r=0.68, g=0.40, b=0.00, a=1.00},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 150,
    order = "b-a-f",
    box_scale = 0.5,
  },
  attack = {
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 5,
  },
  resistance = {
    {type = "physical", decrease = 2.5, percent = 20},
    {type = "fire", decrease = 7.5, percent = 40},
    {type = "explosion", decrease = 7.5, percent = 30},
    {type = "laser", decrease = 7.5, percent = 40},
    {type = "plasma", decrease = 2.5, percent = 20}
  }
}

medium_scarab =
{
  appearance = {
    type = "scarab",
    name = "medium",
    scale = 0.6,
    tint1 = {r=0.83, g=0.39, b=0.36, a=1.00},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 300,
    order = "b-a-g",
    box_scale = 1,
  },
  attack = {
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 10,
  },
  resistance = {
    {type = "physical", decrease = 7.5, percent = 40},
    {type = "fire", decrease = 2.5, percent = 30},
    {type = "explosion", decrease = 7.5, percent = 30},
    {type = "laser", decrease = 2.5, percent = 30},
    {type = "plasma", decrease = 7.5, percent = 40}
  }
}

big_scarab =
{
  appearance = {
    type = "scarab",
    name = "big",
    scale = 0.9,
    tint1 = {r=0.54, g=0.58, b=0.85, a=1.00},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 450,
    order = "b-a-h",
    box_scale = 1.25,
  },
  attack = {
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 20,
  },
  resistance = {
    {type = "physical", decrease = 12.5, percent = 50},
    {type = "fire", decrease = 7.5, percent = 40},
    {type = "explosion", decrease = 2.5, percent = 20},
    {type = "laser", decrease = 7.5, percent = 40},
    {type = "plasma", decrease = 12.5, percent = 50}
  }
}

behemoth_scarab =
{
  appearance = {
    type = "scarab",
    name = "behemoth",
    scale = 1.1,
    tint1 = {r=0.30, g=0.90, b=0.30, a=1.00},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 600,
    order = "b-a-i",
    box_scale = 1.75,
  },
  attack = {
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 30,
  },
  resistance = {
    {type = "physical", decrease = 17.5, percent = 60},
    {type = "fire", decrease = 12.5, percent = 30},
    {type = "explosion", decrease = 7.5, percent = 30},
    {type = "laser", decrease = 12.5, percent = 30},
    {type = "plasma", decrease = 17.5, percent = 60}
  }
}

colossal_scarab =
{
  appearance = {
    type = "scarab",
    name = "colossal",
    scale = 1.3,
    tint1 = {r=1.00, g=0.68, b=0.00, a=1.00},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.40},
    speed = 0.185,
    health = 750,
    order = "b-a-j",
    box_scale = 2,
  },
  attack = {
    range = 0.5,
    cooldown = 35,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = nil,
    warmup = nil,
    damage = 40,
  },
  resistance = {
    {type = "physical", decrease = 12.5, percent = 50},
    {type = "fire", decrease = 7.5, percent = 50},
    {type = "explosion", decrease = 7.5, percent = 30},
    {type = "laser", decrease = 7.5, percent = 50},
    {type = "plasma", decrease = 12.5, percent = 50}
  }
}

-------------------------------------------------------------------------------
-- PSYKER DEFINITIONS ---------------------------------------------------------
-------------------------------------------------------------------------------
small_psyker =
{
  appearance = {
    type = "psyker",
    name = "small",
    scale = 0.5,
    tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    speed = 0.185,
    health = 100,
    order = "b-b-f",
    box_scale = 0.5,
  },
  attack = {
    range = 7,
    cooldown = 50,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = 1,
    warmup = nil,
    damage = 10,
  },
  resistance = {
    {type = "physical", decrease = 0, percent = 0},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 0, percent = 0}
  }
}

medium_psyker =
{
  appearance = {
    type = "psyker",
    name = "medium",
    scale = 0.7,
    tint1 = {r=0.78, g=0.15, b=0.15, a=0.50},
    tint2 = {r=0.90, g=0.30, b=0.30, a=0.75},
    speed = 0.185,
    health = 200,
    order = "b-b-g",
    box_scale = 1,
  },
  attack = {
    range = 7,
    cooldown = 50,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = 1,
    warmup = nil,
    damage = 20,
  },
  resistance = {
    {type = "physical", decrease = 5, percent = 20},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 5, percent = 20}
  }
}

big_psyker =
{
  appearance = {
    type = "psyker",
    name = "big",
    scale = 1,
    tint1 = {r=0.34, g=0.68, b=0.90, a=0.60},
    tint2 = {r=0.31, g=0.61, b=0.95, a=0.85},
    speed = 0.185,
    health = 300,
    order = "b-b-h",
    box_scale = 1,
  },
  attack = {
    range = 7,
    cooldown = 50,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = 1,
    warmup = nil,
    damage = 30,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 20},
    {type = "explosion", decrease = 0, percent = 0},
    {type = "laser", decrease = 5, percent = 20},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

behemoth_psyker =
{
  appearance = {
    type = "psyker",
    name = "behemoth",
    scale = 1.2,
    tint1 = {r=0.30, g=0.90, b=0.30, a=0.65},
    tint2 = {r=0.88, g=0.24, b=0.24, a=0.90},
    speed = 0.185,
    health = 400,
    order = "b-b-i",
    box_scale = 1,
  },
  attack = {
    range = 7,
    cooldown = 50,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = 1,
    warmup = nil,
    damage = 40,
  },
  resistance = {
    {type = "physical", decrease = 15, percent = 40},
    {type = "fire", decrease = 0, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 0, percent = 10},
    {type = "plasma", decrease = 15, percent = 40}
  }
}

colossal_psyker =
{
  appearance = {
    type = "psyker",
    name = "colossal",
    scale = 1.4,
    tint1 = {r=1.00, g=0.68, b=0.00, a=0.65},
    tint2 = {r=0.64, g=0.03, b=0.03, a=0.90},
    speed = 0.185,
    health = 500,
    order = "b-b-j",
    box_scale = 1.5,
  },
  attack = {
    range = 7,
    cooldown = 50,
    min_attack_distance = nil,
    creation_distance = nil,
    damage_modifier = 1,
    warmup = nil,
    damage = 50,
  },
  resistance = {
    {type = "physical", decrease = 10, percent = 30},
    {type = "fire", decrease = 5, percent = 30},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "laser", decrease = 5, percent = 30},
    {type = "plasma", decrease = 10, percent = 30}
  }
}

-------------------------------------------------------------------------------
-- SPAWNER DEFINITIONS --------------------------------------------------------
-------------------------------------------------------------------------------
biter_spawner =
{
  appearance = {
    type = "biter",
    tint = {r=255/255, g=174/255, b=1/255},
    health = 500,
    spawn_cooldown = {360, 150},
    order = "b-d-a",
  },
  results ={"colossal-biter", {{0.9, 0.0}, {1.0, 0.8}}},
  resistance = --[[{
    {type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},]]
    {type = "plasma", decrease = 5, percent = 10}
  --}
}

spitter_spawner =
{
  appearance = {
    type = "spitter",
    tint = {r=255/255, g=255/255, b=0/255},
    health = 500,
    spawn_cooldown = {360, 150},
    order = "b-d-b"
  },
  results ={"colossal-spitter", {{0.9, 0.0}, {1.0, 0.8}}},
  resistance = --[[{
    {type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},]]
    {type = "plasma", decrease = 5, percent = 10}
  --}
}

scarab_spawner =
{
  appearance = {
    type = "scarab",
    tint = {r=255/255, g=174/255, b=1/255},
    health = 500,
    spawn_cooldown = {360, 150},
    order = "b-d-c",
  },
  results = {
    {"small-scarab", {{0.0, 0.2}, {0.4, 0.0}}},
    {"medium-scarab", {{0.2, 0.0},{0.45,0.3}, {0.6, 0.0}}},
    {"big-scarab", {{0.4, 0.0}, {0.6,0.6},{0.8, 0.4}}},
    {"behemoth-scarab", {{0.6, 0.0}, {1.0, 0.6}}},
    {"colossal-scarab", {{0.8, 0.0}, {1.0, 0.8}}},
  },
  resistance = {
    {type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},
    {type = "plasma", decrease = 5, percent = 10}
  }
}

psyker_spawner =
{
  appearance = {
    type = "psyker",
    tint = {r=255/255, g=255/255, b=0/255},
    health = 500,
    spawn_cooldown = {360, 150},
    order = "b-d-d",
  },
  results = {
    {"small-psyker", {{0.0, 0.2}, {0.4, 0.0}}},
    {"medium-psyker", {{0.2, 0.0},{0.45,0.3}, {0.6, 0.0}}},
    {"big-psyker", {{0.4, 0.0}, {0.6,0.6},{0.8, 0.4}}},
    {"behemoth-psyker", {{0.6, 0.0}, {1.0, 0.6}}},
    {"colossal-psyker", {{0.8, 0.0}, {1.0, 0.8}}},
  },
  resistance = {
    {type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},
    {type = "plasma", decrease = 5, percent = 10}
  }
}
