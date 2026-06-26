data:extend({
  {
    type = "technology",
    name = "angels-stone-smelting-1",
    icon = "__angelssmeltinggraphics__/graphics/technology/cement-tech.png",
    icon_size = 128,
    prerequisites = {
      --"angels-metallurgy-1",
      "logistic-science-pack",
      "angels-powder-metallurgy-1",
      "angels-water-washing-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-clay",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-limestone",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-sand",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-lime",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-clay-brick-raw",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-clay-brick",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-casing-resin-mold",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mold-expendable",
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
    name = "angels-stone-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/cement-tech.png",
    icon_size = 128,
    prerequisites = {
      --"angels-metallurgy-2",
      "chemical-science-pack",
      "angels-powder-metallurgy-2",
      "angels-silicon-smelting-1",
      "angels-stone-smelting-1",
      "concrete",
      "angels-resins",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cement",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-concrete",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-concrete",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-concrete-brick",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mold-non-expendable",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mold-non-expendable-wash",
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
    name = "angels-stone-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/cement-tech.png",
    icon_size = 128,
    prerequisites = {
      --"angels-metallurgy-3",
      "angels-powder-metallurgy-3",
      "angels-stone-smelting-2",
      "angels-aluminium-smelting-1",
      "angels-steel-smelting-1",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-cement-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-concrete-2",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-reinforced-concrete-brick",
      },
    },
    unit = {
      count = 50,
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
