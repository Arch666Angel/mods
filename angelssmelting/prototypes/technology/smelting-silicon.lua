data:extend({
  {
    type = "technology",
    name = "angels-silicon-smelting-1",
    localised_name = { "technology-name.angels-silicon-metallurgy" },
    localised_description = { "technology-description.angels-silicon-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silicon-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "angels-metallurgy-2",
      "angels-coal-processing",
      "angels-nitrogen-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silicon-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-silicon-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-seed",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-silicon-wafer",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-silicon-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silicon-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-silicon-smelting-1",
      "chlorine-processing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silica-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-silicon-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-trichlorosilane-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-silicon",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-silicon-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-silicon-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-silicon-smelting-2",
      "angels-aluminium-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "silica-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-silicon-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "gas-silane-smelting",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
        { type = "item", name = "production-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-silicon-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-silicon-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "angels-metallurgy-3",
      "angels-silicon-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-mono-silicon-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-quartz-crucible",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { type = "item", name = "automation-science-pack", amount = 1 },
        { type = "item", name = "logistic-science-pack", amount = 1 },
        { type = "item", name = "chemical-science-pack", amount = 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
