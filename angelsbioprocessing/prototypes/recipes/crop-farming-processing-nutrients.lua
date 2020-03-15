local function create_recipe_icon(fluid_name, product_name)
  local icon_layers = util.table.deepcopy(angelsmods.functions.get_object_icons(product_name))
  for layer_index, layer in pairs(icon_layers or {}) do
    layer.shift = layer.shift or {}
    layer.shift = {(layer.shift[1] or 0)/2-10, (layer.shift[2] or 0)/2-10}
    layer.scale = (layer.scale or 1)/2
  end
  return angelsmods.functions.add_icon_layer(angelsmods.functions.get_object_icons(fluid_name), icon_layers)
end

data:extend(
  {
    {
      type = "recipe",
      name = "solid-beans-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-beans", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 80}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-beans"),
      order = "ba",
    },
    {
      type = "recipe",
      name = "solid-corn-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-corn", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 70}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-corn"),
      order = "bb",
    },
    {
      type = "recipe",
      name = "solid-leafs-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-leafs", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 10}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-leafs"),
      order = "bc",
    },
    {
      type = "recipe",
      name = "solid-nuts-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-nuts", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 40}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-nuts"),
      order = "ba",
    },
    {
      type = "recipe",
      name = "solid-pips-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-pips", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-pips"),
      order = "bb",
    },
    {
      type = "recipe",
      name = "solid-fruit-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-fruit", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 60}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-nutrient-pulp", "solid-fruit"),
      order = "bc",
    },
    -- REFINING
    {
      type = "recipe",
      name = "nutrients-refining-1",
      category = "gas-refining",
      subgroup = "bio-processor-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100}
      },
      results = {
        {type = "fluid", name = "liquid-fuel-oil", amount = 40},
        {type = "fluid", name = "gas-acetone", amount = 40},
        {type = "fluid", name = "gas-synthesis", amount = 20}
      },
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        "liquid-fuel-oil",
        "gas-synthesis",
        { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
      }, { {214,146,040}, {169,130,039}, {120,083,004} }),
      order = "ba",
    },
    {
      type = "recipe",
      name = "nutrients-refining-2",
      category = "gas-refining",
      subgroup = "bio-processor-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100}
      },
      results = {
        {type = "fluid", name = "liquid-fuel-oil", amount = 60},
        {type = "fluid", name = "gas-glycerol", amount = 40}
        --{type="fluid", name="gas-synthesis", amount=10},
      },
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        "liquid-fuel-oil",
        --"gas-synthesis",
        { "__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72 },
      }, { {214,146,040}, {169,130,039}, {120,083,004} }),
      order = "bb",
    },
    {
      type = "recipe",
      name = "nutrients-refining-3",
      category = "gas-refining",
      subgroup = "bio-processor-swamp",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100}
      },
      results = {
        {type = "fluid", name = "gas-acetone", amount = 60},
        {type = "fluid", name = "gas-ethanol", amount = 30},
        {type = "fluid", name = "gas-butane", amount = 10}
      },
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelspetrochem__/graphics/icons/molecules/acetone.png", 72 },
        { "__angelspetrochem__/graphics/icons/molecules/butane.png", 72 },
        { "__angelsbioprocessing__/graphics/icons/molecule-ethanol.png", 72 },
      }, { {214,146,040}, {169,130,039}, {120,083,004} }),
      order = "bc",
    }
  }
)
