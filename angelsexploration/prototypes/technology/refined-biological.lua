-- Biological Bonusses
data:extend({
  {
    type = "technology",
    name = "angels-refined-biological-1",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.2,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.2,
      },
    },
    prerequisites = { "angels-bio-gun" },
    unit = {
      count = 100 * 1,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
      },
      time = 30,
    },
    upgrade = true,
    order = "e-j-a",
  },
  {
    type = "technology",
    name = "angels-refined-biological-2",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.2,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.2,
      },
    },
    prerequisites = { "angels-refined-biological-1" },
    unit = {
      count = 100 * 2,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
      },
      time = 30,
    },
    upgrade = true,
    order = "e-l-b",
  },
  {
    type = "technology",
    name = "angels-refined-biological-3",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.2,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.2,
      },
    },
    prerequisites = {
      "angels-refined-biological-2",
      "chemical-science-pack",
    },
    unit = {
      count = 100 * 3,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = "e-l-c",
  },
  {
    type = "technology",
    name = "angels-refined-biological-4",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.3,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.3,
      },
    },
    prerequisites = {
      "angels-refined-biological-3",
      "utility-science-pack",
    },
    unit = {
      count = 100 * 4,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "utility-science-pack", amount = 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = "e-l-d",
  },
  {
    type = "technology",
    name = "angels-refined-biological-5",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.3,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.3,
      },
    },
    prerequisites = { "angels-refined-biological-4" },
    unit = {
      count = 100 * 5,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "utility-science-pack", amount = 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = "e-l-e",
  },
  {
    type = "technology",
    name = "angels-refined-biological-6",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.4,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.4,
      },
    },
    prerequisites = { "angels-refined-biological-5" },
    unit = {
      count = 100 * 6,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
        { type = "item", name = "utility-science-pack", amount = 1 },
      },
      time = 60,
    },
    upgrade = true,
    order = "e-l-f",
  },
  {
    type = "technology",
    name = "angels-refined-biological-7",
    icon_size = 128,
    icon = "__angelsexplorationgraphics__/graphics/technology/refined-biological.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "bio",
        modifier = 0.2,
      },
      {
        type = "turret-attack",
        turret_id = "angels-bio-turret",
        modifier = 0.2,
      },
    },
    prerequisites = { "angels-refined-biological-6", "space-science-pack" },
    unit = {
      count_formula = "2^(L-7)*1000",
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "military-science-pack", amount = 1 },
        { type = "item", name = "utility-science-pack", amount = 1 },
        { type = "item", name = "space-science-pack", amount = 1 },
      },
      time = 60,
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f",
  },
})
