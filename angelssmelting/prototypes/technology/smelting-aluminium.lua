data:extend({
  {
    type = "technology",
    name = "angels-aluminium-smelting-1",
    localised_name = { "technology-name.angels-aluminium-metallurgy" },
    localised_description = { "technology-description.angels-aluminium-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-aluminium-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-floatation",
      --"angels-metallurgy-2",
      "angels-powder-metallurgy-2",
      "angels-chlorine-processing-1",
      --"angels-coal-processing"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-aluminium-hydroxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-aluminium-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-aluminium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-aluminium",
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
      "angels-ore-processing-2",
      "angels-powder-metallurgy-3",
      "angels-aluminium-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-aluminium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-aluminium-hydroxide-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-aluminium",
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
      "angels-strand-casting-2",
      "angels-aluminium-smelting-1",
      "angels-manganese-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-aluminium-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-aluminium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-aluminium-2",
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
      "angels-ore-processing-3",
      "angels-aluminium-smelting-2",
      "angels-sodium-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-aluminium",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sodium-aluminate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-aluminium-oxide-2",
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
      "angels-strand-casting-3",
      "angels-aluminium-casting-2",
      "angels-copper-smelting-3",
      "angels-silicon-smelting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-aluminium-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-aluminium-2",
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
