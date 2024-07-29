data:extend({
  {
    type = "technology",
    name = "angels-glass-smelting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/glass-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-2",
      "powder-metallurgy-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "glass-mixture-1",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-glass-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-glass-1",
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
    name = "angels-glass-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/glass-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "powder-metallurgy-3",
      "angels-glass-smelting-1",
      "angels-stone-smelting-2",
      "angels-lead-smelting-2", -- need this for the lead oxide processing
      "strand-casting-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "glass-mixture-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-glass-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coil-glass-fiber",
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
    name = "angels-glass-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/glass-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-4",
      "powder-metallurgy-4",
      "strand-casting-3",
      "angels-glass-smelting-2",
      "angels-aluminium-smelting-2",
      "angels-tin-casting-3",
      "sodium-processing-2",
      --"angels-nitrogen-processing-1"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "glass-mixture-3",
      },
      {
        type = "unlock-recipe",
        recipe = "glass-mixture-4",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-glass-3",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-coil-glass-fiber-fast",
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
