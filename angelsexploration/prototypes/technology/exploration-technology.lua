data:extend({
  --VEHICLES
  {
    type = "technology",
    name = "angels-turbo-bike",
    icon = "__angelsexplorationgraphics__/graphics/technology/turbo-bike-tech.png",
    icon_size = 128,
    prerequisites = {
      "steel-processing",
    },
    effects = {
      {
        recipe = "angels-turbo-bike",
        type = "unlock-recipe",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "angels-heavy-tank",
    icon = "__angelsexplorationgraphics__/graphics/technology/heavy-tank-tech.png",
    icon_size = 128,
    prerequisites = {
      "tank",
      --"angels-vequipment-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-tank",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-cannon-shell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-explosive-cannon-shell",
      },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "angels-rocket-defense-equipment-vequip"
      -- },
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --TURRETS
  {
    type = "technology",
    name = "angels-cannon-turret",
    icon = "__angelsexplorationgraphics__/graphics/technology/cannon-turret-tech.png",
    icon_size = 128,
    prerequisites = {
      "military-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cannon-turret",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cannon-turret-shell-1",
      },
      --{
      --  type = "unlock-recipe",
      --  recipe = "angels-cannon-turret-shell-2"     -- moved to military 3 (see overrides)
      --},
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-rocket-turret",
    icon = "__angelsexplorationgraphics__/graphics/technology/rocket-turret-tech.png",
    icon_size = 128,
    prerequisites = {
      "rocketry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-rocket-turret",
      },
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 2 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-gathering-turret",
    icon = "__angelsexplorationgraphics__/graphics/technology/gathering-turret.png",
    icon_size = 256,
    prerequisites = {
      "military-science-pack",
      "angels-alien-artifact", --TODO where is this defined? [angelsbioprocessing\prototypes\technology\bio-processing-artifacts.lua]
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-gathering-turret",
      },
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack",  2 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 2 },
      },
      time = 30,
    },
    order = "c-a",
  },
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 1, cost = 100, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 2, cost = 150, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 3, cost = 250, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 4, cost = 400, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 5, cost = 600, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 6, cost = 750, modifier = 0.5 }), -- +1.0/s
  angelsmods.functions.generate_gathering_turret_speed_upgrade_technology({ level = 7, cost = 1000, modifier = 0.5 }), -- +1.0/s
  --BIO TECH
  {
    type = "technology",
    name = "angels-bio-gun",
    icon = "__angelsexplorationgraphics__/graphics/technology/bio-tech.png",
    icon_size = 128,
    prerequisites = {
      "flammables",
      "military-science-pack",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-bio-gun",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-ammo",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-bio-turret",
      },
    },
    unit = {
      count = 80,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 2 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --MOAR AMMO
  {
    type = "technology",
    name = "angels-heavy-uranium-ammo",
    icon_size = 256,
    icon = "__base__/graphics/technology/uranium-ammo.png",
    prerequisites = {
      "uranium-ammo",
      "angels-heavy-tank",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cannon-turret-shell-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-uranium-cannon-shell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-explosive-uranium-cannon-shell",
      },
    },
    unit = {
      count = 1500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 45,
    },
    order = "e-a-b",
  },
})
