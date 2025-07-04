data:extend({
  {
    type = "technology",
    name = "angels-zinc-smelting-1",
    localised_name = { "technology-name.angels-zinc-metallurgy" },
    localised_description = { "technology-description.angels-zinc-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    prerequisites = {
      "angels-ore-floatation",
      "angels-metallurgy-2",
      "angels-lead-smelting-1",
      --"angels-basic-chemistry"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-zinc-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-molten-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-zinc",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-zinc-ore-processing-alt",
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
    name = "angels-zinc-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-zinc-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-ore-processing-2",
      "angels-zinc-smelting-1",
      "angels-coal-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-zinc-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-processed-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-powder-zinc",
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
    name = "angels-zinc-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-strand-casting-2",
      "angels-zinc-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-zinc-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-zinc-converting",
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
    name = "angels-zinc-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-zinc-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-ore-processing-3",
      "angels-zinc-smelting-2",
      "angels-sulfur-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-zinc-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-pellet-zinc-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-zinc-oxide-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cathode-zinc-smelting",
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
    name = "angels-zinc-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-zinc-tech.png",
    icon_size = 256,
    prerequisites = {
      --"angels-metallurgy-4",
      "angels-strand-casting-3",
      "angels-zinc-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-roll-zinc-casting-fast",
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
