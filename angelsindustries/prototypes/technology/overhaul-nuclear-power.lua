data:extend(
  {
    {
      type = "technology",
      name = "angels-plutonium-power",
      icon = "__angelsrefining__/graphics/technology/barrel-tech.png", --to change later
      icon_size = 128,
      prerequisites = {
        "nuclear-fuel-reprocessing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-advanced-uranium-reprocessing"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plutonium-synthesis"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-americium-regeneration"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-mixed-oxide-cell"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-mixed-oxide-reprocessing"
        },
      },
      unit = {
        count = 600,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 60
      },
      order = "e-p-b-ca"
    },
    {
      type = "technology",
      name = "angels-thorium-power",
      icon = "__angelsrefining__/graphics/technology/barrel-tech.png", --to change later
      icon_size = 128,
      prerequisites = {
        "angels-plutonium-power"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-thorium-processing"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-advanced-mixed-oxide-reprocessing"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-thorium-fuel-cell"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-thorium-fuel-cell-reprocessing"
        },
      },
      unit = {
        count = 1200,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 70
      },
      order = "e-p-b-ca"
    },
    {
      type = "technology",
      name = "angels-fusion-power",
      icon = "__angelsrefining__/graphics/technology/barrel-tech.png", --to change later
      icon_size = 128,
      prerequisites = {
        "angels-thorium-power"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-advanced-thorium-fuel-cell-reprocessing"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-deuterium-fuel-cell"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-deuterium-fuel-cell-reprocessing"
        },
      },
      unit = {
        count = 3000,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "production-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1},
          {type = "item", name = "utility-science-pack", amount = 1}
        },
        time = 120
      },
      order = "e-p-b-ca"
    },
  }
)