data:extend({
  {
    type = "technology",
    name = "angels-plutonium-power",
    icon = "__angelsindustriesgraphics__/graphics/technology/plutonium-processing.png",
    icon_size = 128,
    prerequisites = {
      "nuclear-fuel-reprocessing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-uranium-reprocessing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plutonium-synthesis",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-americium-regeneration",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mixed-oxide-cell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-mixed-oxide-reprocessing",
      },
    },
    unit = {
      count = 600,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 60,
    },
    order = "e-p-b-ca",
  },
  {
    type = "technology",
    name = "angels-thorium-power",
    icon = "__angelsindustriesgraphics__/graphics/technology/thorium-processing.png",
    icon_size = 128,
    prerequisites = {
      "angels-plutonium-power",
      "angels-ore-electro-whinning-cell",
      "utility-science-pack",
      "angels-zinc-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-thorium-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-mixed-oxide-reprocessing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-thorium-fuel-cell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-thorium-fuel-cell-reprocessing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-burner-reactor",
      },
    },
    unit = {
      count = 1200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 70,
    },
    order = "e-p-b-ca",
  },
  {
    type = "technology",
    name = "angels-fusion-power-1",
    icons = angelsmods.functions.add_icon_layer(
      { -- bottom placeholder layer
        {
          icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-arrow.png",
          icon_size = 128,
        },
      },
      angelsmods.functions.add_icon_layer(
        angelsmods.functions.modify_icon_layers(
          angelsmods.functions.create_gas_recipe_icon(nil, "HdHdHd", nil),
          { -25, -20 },
          85 / 32
        ),
        {
          {
            icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-cell.png",
            icon_size = 128,
          },
          {
            icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-arrow.png",
            icon_size = 128,
          },
        }
      )
    ),
    prerequisites = {
      "angels-thorium-power",
      "angels-water-chemistry-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-thorium-fuel-cell-reprocessing",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-deuterium-fuel-cell",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-deuterium-fuel-cell-reprocessing",
      },
    },
    unit = {
      count = 3000,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 120,
    },
    order = "e-p-b-ca",
    upgrade = true,
  },
  {
    type = "technology",
    name = "angels-fusion-power-2",
    icons = angelsmods.functions.add_icon_layer(
      { -- bottom placeholder layer
        {
          icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-arrow.png",
          icon_size = 128,
        },
      },
      angelsmods.functions.add_icon_layer(
        angelsmods.functions.modify_icon_layers(
          angelsmods.functions.create_gas_recipe_icon(nil, "HdHdHd", nil),
          { -25, -20 },
          85 / 32
        ),
        {
          {
            icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-cell.png",
            icon_size = 128,
          },
          {
            icon = "__angelsindustriesgraphics__/graphics/technology/deuterium-fuel-processing-arrow.png",
            icon_size = 128,
          },
        }
      )
    ),
    prerequisites = {
      "angels-fusion-power-1",
      "space-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-advanced-deuterium-fuel-cell-reprocessing",
      },
    },
    unit = {
      count = 3000,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 120,
    },
    order = "e-p-b-ca",
    upgrade = true,
  },
})
