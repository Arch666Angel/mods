local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- CABLING COMPONENTS 1 -------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-cabling-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/cable-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-tin-smelting-1",
        "logistic-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cable-shielding-2",
        },
        {
          type = "unlock-recipe",
          recipe = "cable-harness-2",
        },
        {
          type = "unlock-recipe",
          recipe = "cabling-cable-harness-2",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-servo-motor-2",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
    {
      type = "technology",
      name = "angels-components-cabling-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/cable-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-cabling-2",
        "angels-silver-smelting-1",
        "angels-rubbers",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cable-shielding-3",
        },
        {
          type = "unlock-recipe",
          recipe = "cable-harness-3",
        },
        {
          type = "unlock-recipe",
          recipe = "cabling-cable-harness-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-servo-motor-3",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
    {
      type = "technology",
      name = "angels-components-cabling-4",
      icon = "__angelsindustriesgraphics__/graphics/technology/cable-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-cabling-3",
        "angels-gold-smelting-1",
        "chemical-science-pack",
        "plastics",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cable-shielding-4",
        },
        {
          type = "unlock-recipe",
          recipe = "cable-harness-4",
        },
        {
          type = "unlock-recipe",
          recipe = "cabling-cable-harness-4",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-servo-motor-4",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
    {
      type = "technology",
      name = "angels-components-cabling-5",
      icon = "__angelsindustriesgraphics__/graphics/technology/cable-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-cabling-4",
        "angels-platinum-smelting-1",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "cable-shielding-5",
        },
        {
          type = "unlock-recipe",
          recipe = "cable-harness-5",
        },
        {
          type = "unlock-recipe",
          recipe = "cabling-cable-harness-5",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-servo-motor-5",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
  })
end
