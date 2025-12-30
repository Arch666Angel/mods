data:extend({
  {
    type = "recipe",
    name = "angels-liquid-raw-vegetable-oil-nuts",
    localised_name = { "fluid-name.angels-liquid-raw-vegetable-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-solid-nuts", amount = 10 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-vegetable-oil", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 255, 184, 062 }, { 255, 184, 062 }, { 255, 221, 061, 0.8 }, { 255, 221, 061, 0.8 } },
      {
        "angels-solid-nuts",
      }
    ),
    order = "a[oil-extraction]-a",
  },
  {
    type = "recipe",
    name = "angels-liquid-raw-vegetable-oil-pips",
    localised_name = { "fluid-name.angels-liquid-raw-vegetable-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-solid-pips", amount = 10 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-vegetable-oil", amount = 40 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 255, 184, 062 }, { 255, 184, 062 }, { 255, 221, 061, 0.8 }, { 255, 221, 061, 0.8 } },
      {
        "angels-solid-pips",
      }
    ),
    order = "a[oil-extraction]-b",
  },
  {
    type = "recipe",
    name = "angels-liquid-raw-vegetable-oil-beans",
    localised_name = { "fluid-name.angels-liquid-raw-vegetable-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-solid-beans", amount = 10 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-vegetable-oil", amount = 30 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 255, 184, 062 }, { 255, 184, 062 }, { 255, 221, 061, 0.8 }, { 255, 221, 061, 0.8 } },
      {
        "angels-solid-beans",
      }
    ),
    order = "a[oil-extraction]-c",
  },
  -- PROCESSING
  {
    type = "recipe",
    name = "angels-liquid-raw-vegetable-oil-filtering-1",
    category = "angels-filtering",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-raw-vegetable-oil", amount = 100 },
      { type = "fluid", name = "angels-water-purified", amount = 100 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-vegetable-oil", amount = 160 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 40 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    order = "b[oil-processing]-a",
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 255, 184, 062 }, { 255, 255, 060 }, { 255, 221, 061, 0.8 }, { 255, 255, 000, 0.8 } }
    ),
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-liquid-raw-vegetable-oil-filtering-2",
    category = "angels-filtering-2",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-raw-vegetable-oil", amount = 100 },
      { type = "fluid", name = "angels-water-purified", amount = 100 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-vegetable-oil", amount = 180 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1, ignored_by_productivity = 1 },
    },
    order = "b[oil-processing]-b",
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 255, 184, 062 }, { 255, 255, 060 }, { 255, 221, 061, 0.8 }, { 255, 255, 000, 0.8 } }
    ),
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-liquid-vegetable-oil-refining",
    category = "oil-processing",
    subgroup = "angels-bio-processor-press-vegetables",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-vegetable-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 70 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 30 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-fuel-oil",
      "angels-liquid-mineral-oil",
    }, { { 255, 255, 056 }, { 255, 205, 040 }, { 201, 155, 030 } }),
    order = "b[oil-processing]-c",
  },
})
