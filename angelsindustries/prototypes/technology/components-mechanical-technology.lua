local OV = angelsmods.functions.OV

if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 1 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-mechanical-1",
      icon = "__base__/graphics/technology/engine.png",
      icon_size = 256,
      prerequisites = {},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-casing-iron-plate",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-block-1",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-1",
        },
        --{
        --  type = "unlock-recipe",
        --  recipe = "angels-gear"
        --},
        --{
        --  type = "unlock-recipe",
        --  recipe = "mechanical-parts-gear"
        --}
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
  })

  OV.add_unlock("angels-iron-smelting-2", "angels-casing-iron-1")
  OV.add_prereq("angels-iron-smelting-2", "angels-components-mechanical-1")
  OV.add_prereq("angels-iron-smelting-2", "angels-stone-smelting-1")

  OV.add_unlock("angels-iron-smelting-3", "angels-casing-iron-2")
  OV.add_prereq("angels-iron-smelting-3", "angels-stone-smelting-2")

  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 2 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-mechanical-2",
      icon = "__base__/graphics/technology/engine.png",
      icon_size = 256,
      prerequisites = {
        "angels-components-mechanical-1",
        "angels-stone-smelting-1",
        "logistic-science-pack",
        "steel-processing",
        "angels-iron-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-casing-steel-1",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-block-2",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-2",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-axle",
        },
        {
          type = "unlock-recipe",
          recipe = "mechanical-parts-axle",
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
  })

  OV.add_unlock("angels-steel-smelting-3", "angels-casing-steel-2")
  OV.add_prereq("angels-steel-smelting-3", "angels-components-mechanical-2")
  OV.add_prereq("angels-steel-smelting-3", "angels-stone-smelting-2")

  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 3 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-mechanical-3",
      icon = "__base__/graphics/technology/engine.png",
      icon_size = 256,
      prerequisites = {
        "angels-components-mechanical-2",
        --"angels-stone-smelting-1",
        "angels-aluminium-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-casing-aluminium-1",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-block-3",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-3",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-roller-chain",
        },
        {
          type = "unlock-recipe",
          recipe = "mechanical-parts-roller-chain",
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
  })

  OV.add_unlock("angels-aluminium-smelting-2", "angels-casing-aluminium-2")
  OV.add_prereq("angels-aluminium-smelting-2", "angels-components-mechanical-3")
  OV.add_prereq("angels-aluminium-smelting-2", "angels-stone-smelting-2")

  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 4 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-mechanical-4",
      icon = "__base__/graphics/technology/electric-engine.png",
      icon_size = 256,
      prerequisites = {
        "angels-components-mechanical-3",
        --"angels-stone-smelting-1",
        "angels-titanium-smelting-1",
        "lubricant",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-casing-titanium-1",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-block-4",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-4",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-spring",
        },
        {
          type = "unlock-recipe",
          recipe = "mechanical-parts-spring",
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
  })

  OV.add_unlock("angels-titanium-smelting-2", "angels-casing-titanium-2")
  OV.add_prereq("angels-titanium-smelting-2", "angels-components-mechanical-4")
  OV.add_prereq("angels-titanium-smelting-2", "angels-stone-smelting-2")

  -------------------------------------------------------------------------------
  -- MECHANICAL PARTS 5 ---------------------------------------------------------
  -------------------------------------------------------------------------------
  data:extend({
    {
      type = "technology",
      name = "angels-components-mechanical-5",
      icon = "__base__/graphics/technology/electric-engine.png",
      icon_size = 256,
      prerequisites = {
        "angels-components-mechanical-4",
        --"angels-stone-smelting-1",
        "angels-tungsten-smelting-1",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-casing-tungsten-1",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-block-5",
        },
        {
          type = "unlock-recipe",
          recipe = "motor-5",
        },
        {
          type = "unlock-recipe",
          recipe = "angels-bearing",
        },
        {
          type = "unlock-recipe",
          recipe = "mechanical-parts-bearing",
        },
      },
      unit = {
        count = 64,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 60,
      },
      order = "a-5",
    },
  })

  OV.add_unlock("angels-tungsten-smelting-2", "angels-casing-tungsten-green")
  OV.add_unlock("angels-tungsten-smelting-2", "angels-casing-tungsten-2")
  OV.add_prereq("angels-tungsten-smelting-2", "angels-components-mechanical-5")
  OV.add_prereq("angels-tungsten-smelting-2", "angels-stone-smelting-2")
end
