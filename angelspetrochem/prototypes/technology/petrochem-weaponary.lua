data:extend({
  --WEAPONARY
  {
    type = "technology",
    name = "angels-rocket-booster-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-nitrogen-processing-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-ammonium-nitrate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rocket-booster",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-rocket-booster-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/booster-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-rocket-booster-1",
      "angels-chlorine-processing-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-solid-ammonium-perchlorate",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rocket-booster-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-explosives-1",
    icon = "__angelspetrochemgraphics__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "explosives",
      "angels-nitrogen-processing-2",
      "angels-chlorine-processing-2",
      "military-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-glycerol",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-nitroglycerin",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-explosives-2",
    icon = "__angelspetrochemgraphics__/graphics/technology/tnt-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-explosives-1",
      "angels-advanced-chemistry-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-toluene-from-benzene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-liquid-toluene",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-solid-trinitrotoluene",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
})
