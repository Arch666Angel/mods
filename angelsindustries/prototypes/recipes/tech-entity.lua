data:extend(
  {
    -----------------------------------------------------------------------------
    -- BASIC LABS ---------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-basic-lab",
      energy_required = 5,
      enabled = "true",
      ingredients = {
        {"block-electronics-0", 9}
      },
      result = "angels-basic-lab",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-basic-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-construction-1", 3},
        {"block-exploration-1", 1},
        {"block-electronics-1", 1},
        {"block-energy-1", 1},
        {"block-logistic-1", 1},
        {"block-enhancement-1", 1},
        {"block-production-1", 1},
        {"block-warfare-1", 1},
        {"angels-basic-lab", 1}
      },
      result = "angels-basic-lab-2",
      icon_size = 32,
      subgroup = "angels-labs-2",
      order = "g"
    },
    {
      type = "recipe",
      name = "angels-basic-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-construction-4", 3},
        {"block-exploration-4", 1},
        {"block-electronics-4", 1},
        {"block-energy-4", 1},
        {"block-logistic-4", 1},
        {"block-enhancement-4", 1},
        {"block-production-4", 1},
        {"block-warfare-4", 1},
        {"angels-basic-lab-2", 1}
      },
      result = "angels-basic-lab-3",
      icon_size = 32,
      subgroup = "angels-labs-3",
      order = "g"
    },
    -----------------------------------------------------------------------------
    -- EXPLORATION LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-exploration-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 2},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-exploration-lab-1"
    },
    {
      type = "recipe",
      name = "angels-exploration-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-exploration-lab-1", 1}
      },
      result = "angels-exploration-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-exploration-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 1},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-exploration-lab-2", 1}
      },
      result = "angels-exploration-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- ENERGY LABS --------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-energy-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 1},
        {"block-energy-1", 1},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-energy-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-energy-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-energy-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-energy-lab-1", 1}
      },
      result = "angels-energy-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-energy-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 1},
        {"block-energy-5", 1},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-energy-lab-2", 1}
      },
      result = "angels-energy-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- LOGISTIC LABS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-logistic-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 1},
        {"block-logistic-1", 1},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-logistic-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-logistic-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-logistic-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-logistic-lab-1", 1}
      },
      result = "angels-logistic-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-logistic-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 4},
        {"block-logistic-5", 4},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-logistic-lab-2", 1}
      },
      result = "angels-logistic-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- ENCHANTMENT LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-enhance-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 1},
        {"block-enhancement-1", 1},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-enhance-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-enhance-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-enhancement-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-enhance-lab-1", 1}
      },
      result = "angels-enhance-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-enhance-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 1},
        {"block-enhancement-5", 1},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-enhance-lab-2", 1}
      },
      result = "angels-enhance-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- PROCESISNG LABS ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-processing-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 1},
        {"block-production-1", 1},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-processing-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-processing-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-production-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-processing-lab-1", 1}
      },
      result = "angels-processing-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-processing-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 4},
        {"block-production-5", 4},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-processing-lab-2", 1}
      },
      result = "angels-processing-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- WARFARE LABS -------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-war-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-1", 1},
        {"block-warfare-1", 1},
        {"block-electronics-1", 4},
        {"block-construction-1", 4}
      },
      result = "angels-war-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-war-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-4", 1},
        {"block-warfare-4", 1},
        {"block-electronics-4", 4},
        {"block-construction-4", 4},
        {"angels-war-lab-1", 1}
      },
      result = "angels-war-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-war-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"block-exploration-5", 4},
        {"block-warfare-5", 4},
        {"block-electronics-5", 4},
        {"block-construction-5", 4},
        {"angels-war-lab-2", 1}
      },
      result = "angels-war-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- MAIN LABS ----------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-main-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-1", 1},
        {"block-electronics-0", 9},
        {"block-construction-1", 6}
      },
      result = "angels-main-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-2", 1},
        {"block-electronics-1", 1},
        {"block-exploration-1", 1},
        {"block-energy-1", 1},
        {"block-logistic-1", 1},
        {"block-enhancement-1", 1},
        {"block-production-1", 1},
        {"block-warfare-1", 1}
      },
      result = "angels-main-lab-3",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-3", 1},
        {"block-electronics-2", 1},
        {"block-exploration-2", 1},
        {"block-energy-2", 1},
        {"block-logistic-2", 1},
        {"block-enhancement-2", 1},
        {"block-production-2", 1},
        {"block-warfare-2", 1}
      },
      result = "angels-main-lab-4",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-5",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-4", 1},
        {"block-electronics-3", 1},
        {"block-exploration-3", 1},
        {"block-energy-3", 1},
        {"block-logistic-3", 1},
        {"block-enhancement-3", 1},
        {"block-production-3", 1},
        {"block-warfare-3", 1}
      },
      result = "angels-main-lab-5",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-6",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-5", 1},
        {"block-electronics-4", 1},
        {"block-exploration-4", 1},
        {"block-energy-4", 1},
        {"block-logistic-4", 1},
        {"block-enhancement-4", 1},
        {"block-production-4", 1},
        {"block-warfare-4", 1}
      },
      result = "angels-main-lab-6",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-7",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"angels-main-lab-6", 1},
        {"block-electronics-5", 1},
        {"block-exploration-5", 1},
        {"block-energy-5", 1},
        {"block-logistic-5", 1},
        {"block-enhancement-5", 1},
        {"block-production-5", 1},
        {"block-warfare-5", 1}
      },
      result = "angels-main-lab-7",
      icon_size = 32
    }
  }
)
