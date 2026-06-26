data:extend({
  {
    type = "recipe",
    name = "angels-solid-beans-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-beans", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 80 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-beans",
      }
    ),
    order = "a[nutrient-extraction]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-corn-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-corn", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 70 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-corn",
      }
    ),
    order = "a[nutrient-extraction]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-leafs-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-leafs", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-leafs",
      }
    ),
    order = "a[nutrient-extraction]-c",
  },
  {
    type = "recipe",
    name = "angels-solid-nuts-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-nuts", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 40 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-nuts",
      }
    ),
    order = "a[nutrient-extraction]-d",
  },
  {
    type = "recipe",
    name = "angels-solid-pips-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-pips", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-pips",
      }
    ),
    order = "a[nutrient-extraction]-e",
  },
  {
    type = "recipe",
    name = "angels-solid-fruit-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-fruit", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 60 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "angels-solid-fruit",
      }
    ),
    order = "a[nutrient-extraction]-f",
  },
  -- REFINING
  {
    type = "recipe",
    name = "angels-nutrients-refining-1",
    category = "angels-gas-refining",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 40 },
      { type = "fluid", name = "angels-gas-acetone", amount = 40 },
      { type = "fluid", name = "angels-gas-synthesis", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-fuel-oil",
      "angels-gas-synthesis",
      { "__angelspetrochemgraphics__/graphics/icons/molecules/acetone.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-a",
  },
  {
    type = "recipe",
    name = "angels-nutrients-refining-2",
    category = "angels-gas-refining",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fuel-oil", amount = 60 },
      { type = "fluid", name = "angels-liquid-glycerol", amount = 40 },
      --{type="fluid", name="angels-gas-synthesis", amount=10},
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "angels-liquid-fuel-oil",
      --"angels-gas-synthesis",
      { "__angelspetrochemgraphics__/graphics/icons/molecules/glycerol.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-b",
  },
  {
    type = "recipe",
    name = "angels-nutrients-refining-3",
    category = "angels-gas-refining",
    subgroup = "angels-bio-processor-nutrient",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-gas-acetone", amount = 60 },
      { type = "fluid", name = "angels-gas-ethanol", amount = 30 },
      { type = "fluid", name = "angels-gas-butane", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/acetone.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/butane.png", 72 },
      { "__angelsbioprocessinggraphics__/graphics/icons/molecule-ethanol.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-c",
  },
})
