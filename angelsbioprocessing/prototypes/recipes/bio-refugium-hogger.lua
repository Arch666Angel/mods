data:extend({
  -- HOGGING
  {
    type = "recipe",
    name = "angels-hogger-hogging-1",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-1", amount = 4, ignored_by_stats = 4 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-1", amount_min = 3, amount_max = 5, ignored_by_productivity = 5, ignored_by_stats = 4 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-1-icon.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-hogger-hogging-2",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-2", amount = 4, ignored_by_stats = 4 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-2", amount_min = 3, amount_max = 5, ignored_by_productivity = 5, ignored_by_stats = 4 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-2-icon.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-hogger-hogging-3",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-3", amount = 4, ignored_by_stats = 4 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-3", amount_min = 3, amount_max = 5, ignored_by_productivity = 5, ignored_by_stats = 4 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-3-icon.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "angels-hogger-hogging-4",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-4", amount = 4, ignored_by_stats = 4 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-4", amount_min = 3, amount_max = 5, ignored_by_productivity = 5, ignored_by_stats = 4 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-4-icon.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-hogger-hogging-5",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-5", amount = 4, ignored_by_stats = 4 },
      { type = "item", name = "iron-ore", amount = 10 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-5", amount_min = 3, amount_max = 5, ignored_by_productivity = 5, ignored_by_stats = 4 },
      { type = "item", name = "copper-ore", amount = 10 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-5-icon.png",
    icon_size = 32,
    order = "d",
  },
  -- BREEDING
  {
    type = "recipe",
    name = "angels-hogger-breeding-1",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-1", amount = 2, ignored_by_stats = 2 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-1", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      { type = "item", name = "angels-bio-hogger-1", amount = 1, probability = 0.5 },
      { type = "item", name = "angels-bio-hogger-2", amount = 1, probability = 0.1 },
      { type = "item", name = "angels-bio-hogger-3", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-4", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-5", amount = 1, probability = 0.05 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-1-icon.png",
        icon_size = 32
      },
    },
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-hogger-breeding-2",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-2", amount = 2, ignored_by_stats = 2 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-2", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      { type = "item", name = "angels-bio-hogger-1", amount = 1, probability = 0.5 },
      { type = "item", name = "angels-bio-hogger-2", amount = 1, probability = 0.1 },
      { type = "item", name = "angels-bio-hogger-3", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-4", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-5", amount = 1, probability = 0.05 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-2-icon.png",
        icon_size = 32
      },
    },
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-hogger-breeding-3",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-3", amount = 2, ignored_by_stats = 21 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-3", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      { type = "item", name = "angels-bio-hogger-1", amount = 1, probability = 0.5 },
      { type = "item", name = "angels-bio-hogger-2", amount = 1, probability = 0.1 },
      { type = "item", name = "angels-bio-hogger-3", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-4", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-5", amount = 1, probability = 0.05 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-3-icon.png",
        icon_size = 32
      },
    },
    order = "c",
  },
  {
    type = "recipe",
    name = "angels-hogger-breeding-4",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-4", amount = 2, ignored_by_stats = 2 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-4", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      { type = "item", name = "angels-bio-hogger-1", amount = 1, probability = 0.5 },
      { type = "item", name = "angels-bio-hogger-2", amount = 1, probability = 0.1 },
      { type = "item", name = "angels-bio-hogger-3", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-4", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-5", amount = 1, probability = 0.05 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-4-icon.png",
        icon_size = 32
      },
    },
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-hogger-breeding-5",
    category = "angels-bio-refugium-hogger",
    subgroup = "angels-bio-hogger-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-5", amount = 2, ignored_by_stats = 2 },
      { type = "item", name = "iron-plate", amount = 1 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-bio-hogger-5", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      { type = "item", name = "angels-bio-hogger-1", amount = 1, probability = 0.5 },
      { type = "item", name = "angels-bio-hogger-2", amount = 1, probability = 0.1 },
      { type = "item", name = "angels-bio-hogger-3", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-4", amount = 1, probability = 0.05 },
      { type = "item", name = "angels-bio-hogger-5", amount = 1, probability = 0.05 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/hogger-5-icon.png",
        icon_size = 32
      },
    },
    order = "d",
  },
  -- BUTCHERY
  {
    type = "recipe",
    name = "angels-hogger-butchery-1",
    localised_name = { "item-name.angels-bio-raw-meat" },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-hogger-butchery",
    enabled = false,
    hidden = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-1", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-hogger-butchery-2",
    localised_name = { "item-name.angels-bio-raw-meat" },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-hogger-butchery",
    enabled = false,
    hidden = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-2", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-hogger-butchery-3",
    localised_name = { "item-name.angels-bio-raw-meat" },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-hogger-butchery",
    enabled = false,
    hidden = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-3", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "angels-hogger-butchery-4",
    localised_name = { "item-name.angels-bio-raw-meat" },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-hogger-butchery",
    enabled = false,
    hidden = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-4", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-hogger-butchery-5",
    localised_name = { "item-name.angels-bio-raw-meat" },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-hogger-butchery",
    enabled = false,
    hidden = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-hogger-5", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "d",
  },
})
