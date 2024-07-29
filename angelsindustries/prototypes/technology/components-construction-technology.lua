local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 1 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-construction-2",
      icon = "__angelsindustriesgraphics__/graphics/technology/steel-components.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing",
        "angels-iron-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "grate-steel",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-frame-2",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-rivet",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-components-rivet",
        },
        {
          type = "unlock-recipe",
          recipe = "block-construction-2",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
    {
      type = "technology",
      name = "angels-components-construction-3",
      icon = "__angelsindustriesgraphics__/graphics/technology/aluminium-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-construction-2",
        "angels-aluminium-smelting-1",
        "angels-stone-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "grate-aluminium",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-frame-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-bracket",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-components-bracket",
        },
        {
          type = "unlock-recipe",
          recipe = "block-construction-3",
        },
        {
          type = "unlock-recipe",
          recipe = "block-fluidbox-2",
        },
        {
          type = "unlock-recipe",
          recipe = "block-mechanical-2",
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
      name = "angels-components-construction-4",
      icon = "__angelsindustriesgraphics__/graphics/technology/titanium-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-construction-3",
        "angels-titanium-smelting-1",
        "angels-stone-smelting-2",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "grate-titanium",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-frame-4",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-plating",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-components-plating",
        },
        {
          type = "unlock-recipe",
          recipe = "block-construction-4",
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
      name = "angels-components-construction-5",
      icon = "__angelsindustriesgraphics__/graphics/technology/tungsten-components.png",
      icon_size = 128,
      prerequisites = {
        "angels-components-construction-4",
        "angels-tungsten-smelting-1",
        "angels-stone-smelting-3",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "grate-tungsten",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-frame-5",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-strut",
        },
        {
          type = "unlock-recipe",
          recipe = "construction-components-strut",
        },
        {
          type = "unlock-recipe",
          recipe = "block-construction-5",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
  })
end
