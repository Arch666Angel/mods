local pack_amount_base = 64 / 2 -- half the amount, and the lab has double the speed, so 4x increase
local pack_time_base = 15
if angelsmods.industries.tech then
  data:extend({
    -----------------------------------------------------------------------------
    -- EXPLORATION LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-exploration-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/exploration-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-weapons-basic",
        "tech-red-packs",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-exploration-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-exploration-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/exploration-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-exploration-1",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-exploration-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-exploration-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/exploration-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-exploration-2",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-exploration-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-exploration-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/exploration-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-blue-packs",
        "tech-specialised-labs-basic-exploration-3",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-exploration-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-exploration-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/exploration-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-exploration-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-exploration-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- ENERGY LABS --------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-energy-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/energy-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-basic-exploration-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-energy-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-energy-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/energy-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-energy-1",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-energy-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-energy-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/energy-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-energy-2",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-energy-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-energy-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/energy-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-advanced-exploration-1",
        "tech-specialised-labs-basic-energy-3",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-energy-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-energy-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/energy-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-energy-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-energy-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- LOGISTICS LABS -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-logistic-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/logistic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-basic-exploration-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-logistic-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-logistic-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/logistic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-logistic-1",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-logistic-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-logistic-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/logistic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-logistic-2",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-logistic-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-logistic-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/logistic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-advanced-exploration-1",
        "tech-specialised-labs-basic-logistic-3",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-logistic-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-logistic-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/logistic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-logistic-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-logistic-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- ENHANCEMENT LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-enhance-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/enhance-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-basic-exploration-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-enhance-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-enhance-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/enhance-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-enhance-1",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-enhancement-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-enhance-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/enhance-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-enhance-2",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-enhancement-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-enhance-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/enhance-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-advanced-exploration-1",
        "tech-specialised-labs-basic-enhance-3",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-enhance-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-enhance-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/enhance-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-enhance-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-enhancement-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- PRODUCTION LABS ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-processing-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/processing-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-basic-exploration-1",
        "angels-components-mechanical-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-processing-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-processing-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/processing-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-processing-1",
        "angels-components-mechanical-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-production-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-processing-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/processing-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-processing-2",
        "angels-components-mechanical-3",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-production-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-processing-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/processing-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-advanced-exploration-1",
        "tech-specialised-labs-basic-processing-3",
        "angels-components-mechanical-4",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-processing-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-processing-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/processing-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-processing-1",
        "angels-components-mechanical-5",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-production-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- WARFARE LABS -------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-basic-war-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/war-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-basic-exploration-1",
        "angels-components-weapons-basic",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-war-lab-1",
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
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-war-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/war-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-green-packs",
        "tech-specialised-labs-basic-war-1",
        "military",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-warfare-2",
        },
      },
      unit = {
        count = pack_amount_base * 2,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic-war-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/war-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-orange-packs",
        "tech-specialised-labs-basic-war-2",
        "military-2",
        "angels-stone-smelting-2",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-warfare-3",
        },
      },
      unit = {
        count = pack_amount_base * 4,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-war-1",
      icon = "__angelsindustriesgraphics__/graphics/technology/war-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-specialised-labs-advanced-exploration-1",
        "tech-specialised-labs-basic-war-3",
        "angels-components-weapons-advanced",
        "angels-stone-smelting-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-war-lab-2",
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
      unit = {
        count = pack_amount_base * 8,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-advanced-war-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/war-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "tech-yellow-packs",
        "tech-specialised-labs-advanced-war-1",
        "military-3",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "block-warfare-5",
        },
      },
      unit = {
        count = pack_amount_base * 16,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- BASIC LABS ---------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs",
      icon = "__angelsindustriesgraphics__/graphics/technology/basic-lab-tech.png",
      icon_size = 128,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-basic-lab",
        },
        {
          type = "unlock-recipe",
          recipe = "datacore-basic",
        },
      },
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    {
      type = "technology",
      name = "tech-specialised-labs-basic",
      icon = "__angelsindustriesgraphics__/graphics/technology/basic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        --"tech-specialised-labs-basic-exploration-1",
        "tech-specialised-labs-basic-energy-1",
        "tech-specialised-labs-basic-logistic-1",
        "tech-specialised-labs-basic-enhance-1",
        "tech-specialised-labs-basic-processing-1",
        "tech-specialised-labs-basic-war-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-basic-lab-2",
        },
      },
      unit = {
        count = pack_amount_base,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
        },
        time = pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
    -----------------------------------------------------------------------------
    -- POST ROCKET LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "technology",
      name = "tech-specialised-labs-advanced",
      icon = "__angelsindustriesgraphics__/graphics/technology/basic-lab-tech.png",
      icon_size = 128,
      prerequisites = {
        "space-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-basic-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-enhance-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-energy-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-processing-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-war-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-logistic-lab-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-exploration-lab-3",
        },
      },
      unit = {
        count = pack_amount_base * 32,
        ingredients = {
          { "angels-science-pack-grey", 1 },
          { "angels-science-pack-red", 1 },
          { "angels-science-pack-green", 1 },
          { "angels-science-pack-orange", 1 },
          { "angels-science-pack-blue", 1 },
          { "angels-science-pack-yellow", 1 },
          { "angels-science-pack-white", 1 },
        },
        time = pack_time_base,
        --pack_time_base,
      },
      order = "b-5",
      ignore_tech_cost_multiplier = true,
    },
  })
end
