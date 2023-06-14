data:extend({
  {
    type = "recipe",
    name = "solid-beans-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-beans", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 80 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-beans",
      }
    ),
    order = "a[nutrient-extraction]-a",
  },
  {
    type = "recipe",
    name = "solid-corn-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-corn", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 70 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-corn",
      }
    ),
    order = "a[nutrient-extraction]-b",
  },
  {
    type = "recipe",
    name = "solid-leafs-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-leafs", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-leafs",
      }
    ),
    order = "a[nutrient-extraction]-c",
  },
  {
    type = "recipe",
    name = "solid-nuts-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-nuts", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 40 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-nuts",
      }
    ),
    order = "a[nutrient-extraction]-d",
  },
  {
    type = "recipe",
    name = "solid-pips-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-pips", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-pips",
      }
    ),
    order = "a[nutrient-extraction]-e",
  },
  {
    type = "recipe",
    name = "solid-fruit-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-fruit", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 60 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(
      nil,
      { { 214, 135, 010 }, nil, { 239, 168, 044 } },
      {
        "solid-fruit",
      }
    ),
    order = "a[nutrient-extraction]-f",
  },
  -- REFINING
  {
    type = "recipe",
    name = "nutrients-refining-1",
    category = "gas-refining",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-fuel-oil", amount = 40 },
      { type = "fluid", name = "gas-acetone", amount = 40 },
      { type = "fluid", name = "gas-synthesis", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "liquid-fuel-oil",
      "gas-synthesis",
      { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-a",
  },
  {
    type = "recipe",
    name = "nutrients-refining-2",
    category = "gas-refining",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-fuel-oil", amount = 60 },
      { type = "fluid", name = "liquid-glycerol", amount = 40 },
      --{type="fluid", name="gas-synthesis", amount=10},
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      "liquid-fuel-oil",
      --"gas-synthesis",
      { "__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-b",
  },
  {
    type = "recipe",
    name = "nutrients-refining-3",
    category = "gas-refining",
    subgroup = "bio-processor-nutrient",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-acetone", amount = 60 },
      { type = "fluid", name = "gas-ethanol", amount = 30 },
      { type = "fluid", name = "gas-butane", amount = 10 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
      { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
      { "__angelsbioprocessing__/graphics/icons/molecule-ethanol.png", 72 },
    }, { { 214, 146, 040 }, { 169, 130, 039 }, { 120, 083, 004 } }),
    order = "b[nutrient-processing]-c",
  },
})
