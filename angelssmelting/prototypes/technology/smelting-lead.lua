data:extend({
  {
    type = "technology",
    name = "angels-lead-smelting-1",
    localised_name = { "technology-name.angels-lead-metallurgy" },
    localised_description = { "technology-description.angels-lead-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-lead-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-metallurgy-1",
      "angels-basic-chemistry",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-molten-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-lead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-lead-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-lead-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-ore-processing-1",
      "angels-lead-smelting-1",
      "angels-coal-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-processed-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-lead-oxide",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-lead-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-lead",
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
    name = "angels-lead-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-lead-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-2",
      "angels-strand-casting-1",
      "angels-lead-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-lead-2",
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
    name = "angels-lead-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-lead-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-lead-smelting-2",
      "angels-sulfur-processing-2",
      "angels-stone-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-anode-lead",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-hexafluorosilicic-acid",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-ingot-lead-3",
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
    name = "angels-lead-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-lead-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-lead-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-lead-2",
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
})
