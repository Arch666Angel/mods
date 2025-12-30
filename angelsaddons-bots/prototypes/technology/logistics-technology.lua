data:extend({
  {
    type = "technology",
    name = "angels-construction-robots",
    icon = "__angelsaddons-bots__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "engine",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cargo-box",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-construction-robot",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-passive-provider",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-storage",
      },
      {
        type = "create-ghost-on-entity-death",
        modifier = true
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-cargo-robots",
    icon = "__angelsaddons-bots__/graphics/technology/cargo-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-construction-robots",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-relay-station",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-zone-expander",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cargo-robot",
      },
      {
        type = "character-logistic-requests",
        modifier = true
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 30
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-construction-robots-2",
    icon = "__angelsaddons-bots__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-construction-robots",
      "angels-cargo-robots",
      "chemical-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cargo-roboport",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-cargo-robots-2",
    icon = "__angelsaddons-bots__/graphics/technology/cargo-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-cargo-robots",
      "advanced-circuit",
      "chemical-science-pack",
      "electric-engine",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-relay-station-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-zone-expander-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cargo-robot-2",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-construction-robots-3",
    icon = "__angelsaddons-bots__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-construction-robots-2",
      "processing-unit",
      "low-density-structure",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cargo-hub",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander-3",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-cargo-robots-3",
    icon = "__angelsaddons-bots__/graphics/technology/cargo-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-cargo-robots-2",
      "processing-unit",
      "low-density-structure",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-relay-station-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-zone-expander-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-charging-station",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  }
})
