data:extend({
  {
    type = "technology",
    name = "angels-aluminium-smelting-1",
    localised_name = { "technology-name.angels-aluminium-metallurgy" },
    localised_description = { "technology-description.angels-aluminium-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      "ore-floatation",
      --"angels-metallurgy-2",
      "powder-metallurgy-2",
      "chlorine-processing-1",
      --"angels-coal-processing"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bauxite-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-aluminium-hydroxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-aluminium-oxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-aluminium-smelting-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-aluminium",
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
    name = "angels-aluminium-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "powder-metallurgy-3",
      "angels-aluminium-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bauxite-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-aluminium-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-aluminium",
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
    name = "angels-aluminium-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-aluminium-smelting-1",
      "angels-manganese-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "molten-aluminium-smelting-2",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-aluminium-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-aluminium-converting",
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
    name = "angels-aluminium-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "ore-processing-3",
      "angels-aluminium-smelting-2",
      "sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "aluminium-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-aluminium-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "solid-sodium-aluminate-smelting",
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
    name = "angels-aluminium-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "strand-casting-3",
      "angels-aluminium-casting-2",
      "angels-copper-smelting-3",
      "angels-silicon-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "molten-aluminium-smelting-3",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-aluminium-casting-fast",
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
