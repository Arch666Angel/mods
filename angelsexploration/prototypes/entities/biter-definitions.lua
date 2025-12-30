local bob_biters = mods["bobenemies"] and true or false

local function create_loot_definition(color, avg_amount, variation)
  if not angelsmods.trigger.artifacts[color] then
    return nil
  end

  local item = "angels-small-alien-artifact"
  if color ~= "base" then
    item = item .. "-" .. color
  end

  return { item = item, avg_amount = avg_amount, variation = variation }
end

local biter_definitions = {}

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
biter_definitions.small_biter = {
  appearance = {
    type = "biter",
    name = "small",
    scale = 0.5,
    tint1 = { r = 0.56, g = 0.46, b = 0.42, a = 0.65 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    damage = 8,
    damage2 = 5,
  },
  resistance = {
    { type = "physical", decrease = 0, percent = 0 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 0, percent = 0 },
  },
  loot = {
    create_loot_definition("base", 0.25, 0.5), -- 0.0 - 0.5
  },
}

biter_definitions.medium_biter = {
  appearance = {
    type = "biter",
    name = "medium",
    scale = 0.7,
    tint1 = { r = 0.78, g = 0.15, b = 0.15, a = 0.60 },
    tint2 = { r = 0.90, g = 0.30, b = 0.30, a = 0.75 },
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
    damage = 16,
    damage2 = 10,
  },
  resistance = {
    { type = "physical", decrease = 5, percent = 20 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 5, percent = 20 },
  },
  loot = {
    create_loot_definition("base", 0.5, 1), -- 0-1
  },
}

biter_definitions.big_biter = {
  appearance = {
    type = "biter",
    name = "big",
    scale = 1,
    tint1 = { r = 0.34, g = 0.68, b = 0.90, a = 0.60 },
    tint2 = { r = 0.31, g = 0.61, b = 0.95, a = 0.85 },
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
    damage = 24,
    damage2 = 20,
  },
  resistance = {
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 0, percent = 0 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("base", 1, 2), -- 0-2
    (not bob_biters) and create_loot_definition("yellow", 0.5, 1) or nil, -- 0-1
  },
}

biter_definitions.behemoth_biter = {
  appearance = {
    type = "biter",
    name = "behemoth",
    scale = 1.2,
    tint1 = { r = 0.30, g = 0.90, b = 0.30, a = 0.75 },
    tint2 = { r = 0.88, g = 0.24, b = 0.24, a = 0.90 },
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
    damage = 32,
    damage2 = 30,
  },
  resistance = {
    { type = "physical", decrease = 15, percent = 40 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 15, percent = 40 },
  },
  loot = {
    create_loot_definition("base", 1.5, 1), -- 1-2
    (not bob_biters) and create_loot_definition("yellow", 1.5, 1) or nil, -- 1-2
    (not bob_biters) and create_loot_definition("red", 1.5, 1) or nil, -- 1-2
  },
}

biter_definitions.colossal_biter = {
  appearance = {
    type = "biter",
    name = "angels-colossal",
    scale = 1.4,
    --tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    --tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    tint1 = { r = 1.00, g = 0.68, b = 0.00, a = 0.75 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.90 },
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
    damage = 40,
    damage2 = 40,
  },
  resistance = {
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 30 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("base", 2, 2), -- 1-3
    (not bob_biters) and create_loot_definition("yellow", 2, 2) or nil, -- 1-3
    (not bob_biters) and create_loot_definition("red", 2, 2) or nil, -- 1-3
  },
}

-------------------------------------------------------------------------------
-- SPITTER DEFINITIONS --------------------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.small_spitter = {
  appearance = {
    type = "spitter",
    name = "small",
    scale = 0.5,
    tint1 = { r = 0.68, g = 0.40, b = 0.00, a = 1.00 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    warmup = 30,
    damage = 7, -- damage/second
    damage_modifier = 12, -- direct hit damage
  },
  resistance = {
    { type = "physical", decrease = 0, percent = 0 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 0, percent = 0 },
  },
  loot = {
    create_loot_definition("orange", 0.25, 0.5), -- 0.0-0.5
  },
}

biter_definitions.medium_spitter = {
  appearance = {
    type = "spitter",
    name = "medium",
    scale = 0.7,
    tint1 = { r = 0.83, g = 0.39, b = 0.36, a = 0.75 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    warmup = 30,
    damage = 15, -- damage/second
    damage_modifier = 25, -- direct hit damage
  },
  resistance = {
    { type = "physical", decrease = 5, percent = 20 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 5, percent = 20 },
  },
  loot = {
    create_loot_definition("orange", 0.5, 1), -- 0-1
  },
}

biter_definitions.big_spitter = {
  appearance = {
    type = "spitter",
    name = "big",
    scale = 1,
    tint1 = { r = 0.54, g = 0.58, b = 0.85, a = 0.60 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    warmup = 30,
    damage = 30, -- damage/second
    damage_modifier = 50, -- direct hit damage
  },
  resistance = {
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 0, percent = 0 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("orange", 1, 2), -- 0-2
  },
}

biter_definitions.behemoth_spitter = {
  appearance = {
    type = "spitter",
    name = "behemoth",
    scale = 1.2,
    tint1 = { r = 0.30, g = 0.90, b = 0.30, a = 0.75 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    warmup = 30,
    damage = 60, -- damage/second
    damage_modifier = 100, -- direct hit damage
  },
  resistance = {
    { type = "physical", decrease = 15, percent = 40 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 15, percent = 40 },
  },
  loot = {
    create_loot_definition("orange", 1.5, 1), -- 1-2
    (not bob_biters) and create_loot_definition("green", 1.5, 1) or nil, -- 1-2
  },
}

biter_definitions.colossal_spitter = {
  appearance = {
    type = "spitter",
    name = "angels-colossal",
    scale = 1.4,
    --tint1 = {r=0.56, g=0.46, b=0.42, a=0.65},
    --tint2 = {r=1.00, g=0.63, b=0.00, a=0.40},
    tint1 = { r = 1.00, g = 0.68, b = 0.00, a = 0.75 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
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
    warmup = 30,
    damage = 120, -- damage/second
    damage_modifier = 200, -- direct hit damage
  },
  resistance = {
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 30 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("orange", 2, 2), -- 1-3
    (not bob_biters) and create_loot_definition("green", 2, 2) or nil, -- 1-3
  },
}

-------------------------------------------------------------------------------
-- SCARAB DEFINITIONS ---------------------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.small_scarab = {
  appearance = {
    type = "scarab",
    name = "angels-small",
    scale = 0.4,
    tint1 = { r = 0.68, g = 0.40, b = 0.00, a = 1.00 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
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
    damage = 8,
  },
  resistance = {
    { type = "physical", decrease = 2.5, percent = 15 },
    { type = "fire", decrease = 7.5, percent = 40 },
    { type = "explosion", decrease = 7.5, percent = 30 },
    { type = "laser", decrease = 7.5, percent = 40 },
    { type = "angels-plasma", decrease = 2.5, percent = 20 },
  },
  loot = {
    create_loot_definition("base", 0.5, 1), -- 0-1
  },
}

biter_definitions.medium_scarab = {
  appearance = {
    type = "scarab",
    name = "angels-medium",
    scale = 0.6,
    tint1 = { r = 0.83, g = 0.39, b = 0.36, a = 1.00 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
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
    damage = 15,
  },
  resistance = {
    { type = "physical", decrease = 7.5, percent = 40 },
    { type = "fire", decrease = 2.5, percent = 30 },
    { type = "explosion", decrease = 7.5, percent = 30 },
    { type = "laser", decrease = 2.5, percent = 30 },
    { type = "angels-plasma", decrease = 7.5, percent = 40 },
  },
  loot = {
    create_loot_definition("blue", 0.5, 1), -- 0-1
  },
}

biter_definitions.big_scarab = {
  appearance = {
    type = "scarab",
    name = "angels-big",
    scale = 0.9,
    tint1 = { r = 0.54, g = 0.58, b = 0.85, a = 1.00 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
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
    damage = 25,
  },
  resistance = {
    { type = "physical", decrease = 12.5, percent = 50 },
    { type = "fire", decrease = 7.5, percent = 40 },
    { type = "explosion", decrease = 2.5, percent = 20 },
    { type = "laser", decrease = 7.5, percent = 40 },
    { type = "angels-plasma", decrease = 12.5, percent = 50 },
  },
  loot = {
    create_loot_definition("blue", 1, 2), -- 0-2
  },
}

biter_definitions.behemoth_scarab = {
  appearance = {
    type = "scarab",
    name = "angels-behemoth",
    scale = 1.1,
    tint1 = { r = 0.30, g = 0.90, b = 0.30, a = 1.00 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
    speed = 0.185,
    health = 900,
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
    damage = 35,
  },
  resistance = {
    { type = "physical", decrease = 17.5, percent = 60 },
    { type = "fire", decrease = 12.5, percent = 30 },
    { type = "explosion", decrease = 7.5, percent = 30 },
    { type = "laser", decrease = 12.5, percent = 30 },
    { type = "angels-plasma", decrease = 17.5, percent = 60 },
  },
  loot = {
    create_loot_definition("blue", 1.5, 1), -- 1-2
  },
}

biter_definitions.colossal_scarab = {
  appearance = {
    type = "scarab",
    name = "angels-colossal",
    scale = 1.3,
    tint1 = { r = 1.00, g = 0.68, b = 0.00, a = 1.00 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.40 },
    speed = 0.185,
    health = 2000,
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
    damage = 45,
  },
  resistance = {
    { type = "physical", decrease = 12.5, percent = 50 },
    { type = "fire", decrease = 7.5, percent = 50 },
    { type = "explosion", decrease = 7.5, percent = 30 },
    { type = "laser", decrease = 7.5, percent = 50 },
    { type = "angels-plasma", decrease = 12.5, percent = 50 },
  },
  loot = {
    create_loot_definition("blue", 2, 2), -- 1-3
  },
}

-------------------------------------------------------------------------------
-- PSYKER DEFINITIONS ---------------------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.small_psyker = {
  appearance = {
    type = "psyker",
    name = "angels-small",
    scale = 0.5,
    tint1 = { r = 0.56, g = 0.46, b = 0.42, a = 0.65 },
    tint2 = { r = 1.00, g = 0.63, b = 0.00, a = 0.40 },
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
    { type = "physical", decrease = 0, percent = 0 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 0, percent = 0 },
  },
  loot = {
    create_loot_definition("blue", 0.5, 1), -- 0-1
  },
}

biter_definitions.medium_psyker = {
  appearance = {
    type = "psyker",
    name = "angels-medium",
    scale = 0.7,
    tint1 = { r = 0.78, g = 0.15, b = 0.15, a = 0.50 },
    tint2 = { r = 0.90, g = 0.30, b = 0.30, a = 0.75 },
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
    { type = "physical", decrease = 5, percent = 20 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 5, percent = 20 },
  },
  loot = {
    create_loot_definition("purple", 0.5, 1.0), -- 0-1
  },
}

biter_definitions.big_psyker = {
  appearance = {
    type = "psyker",
    name = "angels-big",
    scale = 1,
    tint1 = { r = 0.34, g = 0.68, b = 0.90, a = 0.60 },
    tint2 = { r = 0.31, g = 0.61, b = 0.95, a = 0.85 },
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
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 20 },
    { type = "explosion", decrease = 0, percent = 0 },
    { type = "laser", decrease = 5, percent = 20 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("purple", 1, 2), -- 0-2
  },
}

biter_definitions.behemoth_psyker = {
  appearance = {
    type = "psyker",
    name = "angels-behemoth",
    scale = 1.2,
    tint1 = { r = 0.30, g = 0.90, b = 0.30, a = 0.65 },
    tint2 = { r = 0.88, g = 0.24, b = 0.24, a = 0.90 },
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
    { type = "physical", decrease = 15, percent = 40 },
    { type = "fire", decrease = 0, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 0, percent = 10 },
    { type = "angels-plasma", decrease = 15, percent = 40 },
  },
  loot = {
    create_loot_definition("purple", 1.5, 1), -- 1-2
    (not bob_biters) and create_loot_definition("red", 1.5, 1) or nil, -- 1-2
  },
}

biter_definitions.colossal_psyker = {
  appearance = {
    type = "psyker",
    name = "angels-colossal",
    scale = 1.4,
    tint1 = { r = 1.00, g = 0.68, b = 0.00, a = 0.65 },
    tint2 = { r = 0.64, g = 0.03, b = 0.03, a = 0.90 },
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
    { type = "physical", decrease = 10, percent = 30 },
    { type = "fire", decrease = 5, percent = 30 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "angels-plasma", decrease = 10, percent = 30 },
  },
  loot = {
    create_loot_definition("purple", 2, 2), -- 1-3
    (not bob_biters) and create_loot_definition("red", 2, 2) or nil, -- 1-3
  },
}

-------------------------------------------------------------------------------
-- BOB ELEMENTAL BITER DEFINITIONS --------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.bob_big_piercing_biter = {
  appearance = {
    full_name = "bob-big-piercing-biter",
  },
  loot = {
    create_loot_definition("blue", 1, 2), -- 0-2
  },
}

biter_definitions.bob_huge_acid_biter = {
  appearance = {
    full_name = "bob-huge-acid-biter",
  },
  loot = {
    create_loot_definition("yellow", 1.5, 1), -- 1-2
  },
}

biter_definitions.bob_huge_explosive_biter = {
  appearance = {
    full_name = "bob-huge-explosive-biter",
  },
  loot = {
    create_loot_definition("yellow", 2, 2), -- 1-3
  },
}

biter_definitions.bob_giant_fire_biter = {
  appearance = {
    full_name = "bob-giant-fire-biter",
  },
  loot = {
    create_loot_definition("red", 3, 2), -- 2-4
  },
}

biter_definitions.bob_giant_poison_biter = {
  appearance = {
    full_name = "bob-giant-poison-biter",
  },
  loot = {
    create_loot_definition("green", 3, 2), -- 2-4
  },
}

biter_definitions.bob_titan_biter = {
  appearance = {
    full_name = "bob-titan-biter",
  },
  loot = {
    create_loot_definition("yellow", 1.5, 1), -- 1-2
    create_loot_definition("green", 2.5, 1), -- 2-3
  },
}

biter_definitions.bob_behemoth_biter = {
  appearance = {
    full_name = "bob-behemoth-biter",
  },
  loot = {
    create_loot_definition("green", 2, 1), -- 2-3
    create_loot_definition("red", 2, 1), -- 2-3
  },
}

biter_definitions.bob_leviathan_biter = {
  appearance = {
    full_name = "bob-leviathan-biter",
  },
  loot = {
    create_loot_definition("yellow", 2, 0), -- 2
    create_loot_definition("green", 3, 0), -- 3
    create_loot_definition("red", 3, 0), -- 3
  },
}

-------------------------------------------------------------------------------
-- BOB ELEMENTAL SPITTER DEFINITIONS ------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.bob_big_electric_spitter = {
  appearance = {
    full_name = "bob-big-electric-spitter",
  },
  loot = {
    create_loot_definition("purple", 1, 2), -- 0-2
  },
}

biter_definitions.bob_huge_acid_spitter = {
  appearance = {
    full_name = "bob-huge-acid-spitter",
  },
  loot = {
    create_loot_definition("yellow", 1.5, 1), -- 1-2
  },
}

biter_definitions.bob_huge_explosive_spitter = {
  appearance = {
    full_name = "bob-huge-explosive-spitter",
  },
  loot = {
    create_loot_definition("yellow", 2, 2), -- 1-3
  },
}

biter_definitions.bob_giant_fire_spitter = {
  appearance = {
    full_name = "bob-giant-fire-spitter",
  },
  loot = {
    create_loot_definition("red", 3, 2), -- 2-4
  },
}

biter_definitions.bob_giant_poison_spitter = {
  appearance = {
    full_name = "bob-giant-poison-spitter",
  },
  loot = {
    create_loot_definition("green", 3, 2), -- 2-4
  },
}

biter_definitions.bob_titan_spitter = {
  appearance = {
    full_name = "bob-titan-spitter",
  },
  loot = {
    create_loot_definition("yellow", 1.5, 1), -- 1-2
    create_loot_definition("red", 2.5, 1), -- 2-3
  },
}

biter_definitions.bob_behemoth_spitter = {
  appearance = {
    full_name = "bob-behemoth-spitter",
  },
  loot = {
    create_loot_definition("green", 2, 1), -- 2-3
    create_loot_definition("red", 2, 1), -- 2-3
  },
}

biter_definitions.bob_leviathan_spitter = {
  appearance = {
    full_name = "bob-leviathan-spitter",
  },
  loot = {
    create_loot_definition("yellow", 2, 0), -- 2
    create_loot_definition("green", 3, 0), -- 3
    create_loot_definition("red", 3, 0), -- 3
  },
}

-------------------------------------------------------------------------------
-- SPAWNER DEFINITIONS --------------------------------------------------------
-------------------------------------------------------------------------------
biter_definitions.biter_spawner = {
  appearance = {
    type = "biter",
    tint = { r = 255 / 255, g = 174 / 255, b = 1 / 255 },
    health = 500,
    spawn_cooldown = { 360, 150 },
    order = "b-d-a",
    full_name = "biter-spawner"
  },
  results = {
    { "angels-colossal-biter", { { 0.95, 0.0 }, { 1.0, 0.8 } } },
  },
  resistance = {
    --[[{type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},]]
    { type = "angels-plasma", decrease = 5, percent = 10 },
  },
  loot = {
    create_loot_definition("base", 15, 10), -- 10-20
  },
}

biter_definitions.spitter_spawner = {
  appearance = {
    type = "spitter",
    tint = { r = 255 / 255, g = 255 / 255, b = 0 / 255 },
    health = 500,
    spawn_cooldown = { 360, 150 },
    order = "b-d-b",
    full_name = "spitter-spawner"
  },
  results = {
    { "angels-colossal-spitter", { { 0.95, 0.0 }, { 1.0, 0.8 } } },
  },
  resistance = {
    --[[{type = "physical", decrease = 5, percent = 10},
    {type = "explosion", decrease = 5, percent = 10},
    {type = "fire", decrease = 30, percent = 60},
    {type = "laser", decrease = 5, percent = 10},]]
    { type = "angels-plasma", decrease = 5, percent = 10 },
  },
  loot = {
    create_loot_definition("base", 15, 10), -- 10-20
  },
}

biter_definitions.scarab_spawner = {
  appearance = {
    type = "scarab",
    tint = { r = 255 / 255, g = 174 / 255, b = 1 / 255 },
    health = 500,
    spawn_cooldown = { 360, 150 },
    order = "b-d-c",
  },
  results = {
    { "small-biter", { { 0.0, 0.2 }, { 0.15, 0.4 }, { 0.2, 0.0 } } },
    { "angels-small-scarab", { { 0.15, 0.0 }, { 0.25, 0.2 }, { 0.75, 0.0 } } },
    { "angels-medium-scarab", { { 0.25, 0.0 }, { 0.5, 0.3 }, { 1.0, 0.2 } } },
    { "angels-big-scarab", { { 0.55, 0.0 }, { 0.75, 0.4 }, { 0.8, 0.4 } } },
    { "angels-behemoth-scarab", { { 0.93, 0.0 }, { 1.0, 0.6 } } },
    { "angels-colossal-scarab", { { 0.965, 0.0 }, { 1.0, 0.8 } } },
  },
  resistance = {
    { type = "physical", decrease = 5, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "fire", decrease = 30, percent = 60 },
    { type = "laser", decrease = 5, percent = 10 },
    { type = "angels-plasma", decrease = 5, percent = 10 },
  },
  loot = {
    create_loot_definition("base", 21, 8), -- 17-25
  },
}

biter_definitions.psyker_spawner = {
  appearance = {
    type = "psyker",
    tint = { r = 255 / 255, g = 255 / 255, b = 0 / 255 },
    health = 500,
    spawn_cooldown = { 360, 150 },
    order = "b-d-d",
  },
  results = {
    { "small-biter", { { 0.0, 1.6 }, { 0.16, 1.6 }, { 0.2, 0.4 }, { 0.3, 0.0 } } },
    { "angels-small-scarab", { { 0.16, 0.0 }, { 0.2, 0.4 }, { 0.3, 1.5 }, { 0.4, 0.0 } } },
    { "angels-small-psyker", { { 0.3, 0.0 }, { 0.4, 0.4 }, { 0.7, 0.0 } } },
    { "angels-medium-psyker", { { 0.45, 0.0 }, { 0.55, 0.1 }, { 0.7, 0.8 }, { 1.0, 0.1 } } },
    { "angels-big-psyker", { { 0.55, 0.0 }, { 0.7, 0.5 } } },
    { "angels-behemoth-psyker", { { 0.93, 0.0 }, { 1.0, 0.6 } } },
    { "angels-colossal-psyker", { { 0.965, 0.0 }, { 1.0, 0.8 } } },
  },
  resistance = {
    { type = "physical", decrease = 5, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "fire", decrease = 30, percent = 60 },
    { type = "laser", decrease = 5, percent = 10 },
    { type = "angels-plasma", decrease = 5, percent = 10 },
  },
  loot = {
    create_loot_definition("base", 21, 8), -- 17-25
  },
}

biter_definitions.bob_biter_spawner = {
  appearance = {
    full_name = "bob-biter-spawner",
  },
  loot = {
    create_loot_definition("base", 27, 6), -- 24-30
  },
}

biter_definitions.bob_spitter_spawner = {
  appearance = {
    full_name = "bob-spitter-spawner",
  },
  loot = {
    create_loot_definition("base", 27, 6), -- 24-30
  },
}

return biter_definitions
