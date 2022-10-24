data:extend({
  {
    type = "recipe",
    name = "deco-nilaus-1",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "stone-brick", amount = 5 },
    },
    result = "deco-nilaus-1",
  },
  {
    type = "recipe",
    name = "deco-nilaus-2",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "stone-brick", amount = 5 },
    },
    result = "deco-nilaus-2",
  },
  {
    type = "recipe",
    name = "deco-nilaus-lamp",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 1 },
      { type = "item", name = "copper-cable", amount = 3 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    result = "deco-nilaus-lamp",
  },
  {
    type = "recipe",
    name = "nilaus-truck",
    normal = {
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "engine-unit", amount = 20 },
        { type = "item", name = "steel-plate", amount = 75 },
        { type = "item", name = "electronic-circuit", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 25 },
      },
      results = { { type = "item", name = "nilaus-truck", amount = 1 } },
    },
    expensive = {
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "engine-unit", amount = 40 },
        { type = "item", name = "steel-plate", amount = 125 },
        { type = "item", name = "electronic-circuit", amount = 30 },
        { type = "item", name = "iron-gear-wheel", amount = 35 },
      },
      results = { { type = "item", name = "nilaus-truck", amount = 1 } },
    },
  },
  {
    type = "recipe",
    name = "nilaus-truck-2",
    normal = {
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "nilaus-truck", amount = 1 },
        { type = "item", name = "speed-module-2", amount = 2 },
        { type = "item", name = "effectivity-module-2", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 20 },
        { type = "item", name = "electric-engine-unit", amount = 25 },
      },
      results = { { type = "item", name = "nilaus-truck-2", amount = 1 } },
    },
    expensive = {
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "nilaus-truck", amount = 1 },
        { type = "item", name = "speed-module-2", amount = 2 },
        { type = "item", name = "effectivity-module-2", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 30 },
        { type = "item", name = "electric-engine-unit", amount = 55 },
      },
      results = { { type = "item", name = "nilaus-truck-2", amount = 1 } },
    },
  },
  {
    type = "recipe",
    name = "deco-nilaus-start",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "stone-brick", amount = 5 },
    },
    result = "deco-nilaus-start",
  },
})
