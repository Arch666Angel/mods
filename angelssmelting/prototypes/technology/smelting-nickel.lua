data:extend({
  {
    type = "technology",
    name = "angels-nickel-smelting-1",
    localised_name = { "technology-name.angels-nickel-metallurgy" },
    localised_description = { "technology-description.angels-nickel-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "angels-metallurgy-2",
      "basic-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nickel-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-nickel-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-nickel",
      },
    },
    unit = {
      count = 150,
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
    name = "angels-nickel-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-nickel-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-nickel-smelting-1",
      "angels-sulfur-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nickel-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-nickel-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-nickel-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-nickel",
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
  },
  {
    type = "technology",
    name = "angels-nickel-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-nickel-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-nickel-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-nickel-converting",
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
  },
  {
    type = "technology",
    name = "angels-nickel-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-nickel-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-nickel-smelting-2",
      "angels-sulfur-processing-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nickel-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-nickel-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-nickel-carbonyl-smelting",
      },
    },
    unit = {
      count = 250,
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
    name = "angels-nickel-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-nickel-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "strand-casting-3",
      "angels-nickel-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "roll-nickel-casting-fast",
      },
    },
    unit = {
      count = 250,
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
})
