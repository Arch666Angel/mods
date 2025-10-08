data:extend({
  {
    type = "technology",
    name = "angels-construction-robots",
    icon = "__angelsindustriesgraphics__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "engine",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cargo-box",
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
        recipe = "angels-big-chest",
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
    name = "cargo-robots",
    icon = "__angelsindustriesgraphics__/graphics/technology/cargo-robot-tech.png",
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
        recipe = "cargo-robot",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-requester",
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
    icon = "__angelsindustriesgraphics__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-construction-robots",
      "cargo-robots",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cargo-roboport",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-construction-zone-expander-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-chest-buffer",
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
    name = "cargo-robots-2",
    icon = "__angelsindustriesgraphics__/graphics/technology/cargo-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "cargo-robots",
      "advanced-circuit",
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
        recipe = "angels-logistic-chest-active-provider",
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
    name = "angels-construction-robots-3",
    icon = "__angelsindustriesgraphics__/graphics/technology/construction-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-construction-robots-2",
      "processing-unit",
      "low-density-structure",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cargo-hub",
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
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "cargo-robots-3",
    icon = "__angelsindustriesgraphics__/graphics/technology/cargo-robot-tech.png",
    icon_size = 128,
    prerequisites = {
      "cargo-robots-2",
      "electric-engine",
      "processing-unit",
      "low-density-structure",
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
      {
        type = "unlock-recipe",
        recipe = "cargo-robot-2",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  }
})
