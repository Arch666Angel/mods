data:extend(
{
  -----------------------------------------------------------------------------
  -- EXPLORATION LABS ---------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-exploration-1",
    icon = "__angelsindustries__/graphics/technology/exploration-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-red-packs",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-exploration-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-exploration-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-exploration-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-exploration-2",
    icon = "__angelsindustries__/graphics/technology/exploration-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-exploration-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-exploration-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-exploration-3",
    icon = "__angelsindustries__/graphics/technology/exploration-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-exploration-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-exploration-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-exploration-1",
    icon = "__angelsindustries__/graphics/technology/exploration-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-blue-packs",
      "tech-specialised-labs-basic-exploration-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-exploration-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-exploration-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-exploration-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-exploration-2",
    icon = "__angelsindustries__/graphics/technology/exploration-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-exploration-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-exploration-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- ENERGY LABS --------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-energy-1",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-basic-exploration-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-energy-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-energy-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-energy-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-energy-2",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-energy-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-energy-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-energy-3",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-energy-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-energy-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-energy-1",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-advanced-exploration-1",
      "tech-specialised-labs-basic-energy-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-energy-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-energy-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-energy-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-energy-2",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-energy-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-energy-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- LOGISTICS LABS -----------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-logistic-1",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-basic-exploration-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-logistic-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-logistic-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-logistic-2",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-logistic-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-logistic-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-logistic-3",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-logistic-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-logistic-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-logistic-1",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-advanced-exploration-1",
      "tech-specialised-labs-basic-logistic-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-logistic-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-logistic-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-logistic-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-logistic-2",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-logistic-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-logistic-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- ENHANCEMENT LABS ---------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-enhance-1",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-basic-exploration-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-enhance-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-enhance-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-enhancement-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-enhance-2",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-enhance-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-enhancement-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-enhance-3",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-enhance-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-enhancement-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-enhance-1",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-advanced-exploration-1",
      "tech-specialised-labs-basic-enhance-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-enhance-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-enhance-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-enhancement-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-enhance-2",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-enhance-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-enhancement-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- PRODUCTION LABS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-processing-1",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-basic-exploration-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-processing-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-processing-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-production-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-processing-2",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-production-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-processing-3",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-production-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-processing-1",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-advanced-exploration-1",
      "tech-specialised-labs-basic-processing-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-processing-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-processing-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-production-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-processing-2",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-production-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- WARFARE LABS -------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-war-1",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-basic-exploration-1"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-war-lab-1"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-war-1",
      },
      {
        type = "unlock-recipe",
        recipe = "block-warfare-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-war-2",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-specialised-labs-basic-war-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-warfare-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-basic-war-3",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-specialised-labs-basic-war-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-warfare-3",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-war-1",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-advanced-exploration-1",
      "tech-specialised-labs-basic-war-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-war-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "datacore-war-2",
      },
      {
        type = "unlock-recipe",
        recipe = "block-warfare-4",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  {
    type = "technology",
    name = "tech-specialised-labs-advanced-war-2",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-yellow-packs",
      "tech-specialised-labs-advanced-war-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-warfare-5",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
        {"angels-science-pack-green", 1},
        {"angels-science-pack-orange", 1},
        {"angels-science-pack-blue", 1},
        {"angels-science-pack-yellow", 1},
      },
      time = 60
    },
    order = "b-5"
  },
  -----------------------------------------------------------------------------
  -- BASIC LABS ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic",
    icon = "__angelsindustries__/graphics/technology/basic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      --"tech-specialised-labs-basic-exploration-1",
      "tech-specialised-labs-basic-energy-1",
      "tech-specialised-labs-basic-logistic-1",
      "tech-specialised-labs-basic-enhance-1",
      "tech-specialised-labs-basic-processing-1",
      "tech-specialised-labs-basic-war-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-basic-lab-2"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
        {"angels-science-pack-red", 1},
      },
      time = 60
    },
    order = "b-5"
  },
}
)