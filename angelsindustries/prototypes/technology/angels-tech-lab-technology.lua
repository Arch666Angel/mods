data:extend(
{
  -----------------------------------------------------------------------------
  -- EXPLORATION LABS ---------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-exploration-1",
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- ENERGY LABS --------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-energy-1",
    icon = "__angelsindustries__/graphics/technology/energy-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1"
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- LOGISTICS LABS -----------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-logistic-1",
    icon = "__angelsindustries__/graphics/technology/logistic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1"
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- ENHANCEMENT LABS ---------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-enhancement-1",
    icon = "__angelsindustries__/graphics/technology/enhance-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1"
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- PRODUCTION LABS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-processing-1",
    icon = "__angelsindustries__/graphics/technology/processing-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1"
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- WARFARE LABS -------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-warfare-1",
    icon = "__angelsindustries__/graphics/technology/war-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1"
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
    order = "a-5"
  },
  -----------------------------------------------------------------------------
  -- BASIC LABS ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "technology",
    name = "tech-specialised-labs-basic-2",
    icon = "__angelsindustries__/graphics/technology/basic-lab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-specialised-labs-exploration-1",
      "tech-specialised-labs-energy-1",
      "tech-specialised-labs-logistic-1",
      "tech-specialised-labs-enhancement-1",
      "tech-specialised-labs-processing-1",
      "tech-specialised-labs-warfare-1",
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
    order = "a-5"
  },
}
)