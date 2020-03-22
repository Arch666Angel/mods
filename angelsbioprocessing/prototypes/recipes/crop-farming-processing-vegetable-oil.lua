local function create_recipe_icon(fluid_name, product_name)
  return angelsmods.functions.create_viscous_liquid_fluid_recipe_icon(fluid_name, product_name, 2.3, 9)
end

data:extend(
  {
    {
      type = "recipe",
      name = "liquid-raw-vegetable-oil-nuts",
      category = "bio-pressing",
      subgroup = "farming-desert-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-nuts", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-raw-vegetable-oil", amount = 50}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-raw-vegetable-oil", "solid-nuts"),
      order = "ba"
    },
    {
      type = "recipe",
      name = "liquid-raw-vegetable-oil-pips",
      category = "bio-pressing",
      subgroup = "farming-desert-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-pips", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-raw-vegetable-oil", amount = 40}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-raw-vegetable-oil", "solid-pips"),
      order = "bb"
    },
    {
      type = "recipe",
      name = "liquid-raw-vegetable-oil-beans",
      category = "bio-pressing",
      subgroup = "farming-desert-seed",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-beans", amount = 10}
      },
      results = {
        {type = "fluid", name = "liquid-raw-vegetable-oil", amount = 30}
      },
      always_show_products = "true",
      icons = create_recipe_icon("liquid-raw-vegetable-oil", "solid-beans"),
      order = "bc"
    },
    -- PROCESSING
    {
      type = "recipe",
      name = "liquid-raw-vegetable-oil-filtering-1",
      category = "filtering",
      subgroup = "farming-desert",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-raw-vegetable-oil", amount = 100},
        {type = "fluid", name = "water-purified", amount = 100},
        {type = "item", name = "filter-coal", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-vegetable-oil", amount = 160},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 40},
        {type = "item", name = "filter-frame", amount = 1, catalyst_amount = 1}
      },
      order = "ba",
      icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil-filtering-1.png",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-raw-vegetable-oil-filtering-2",
      category = "filtering",
      subgroup = "farming-desert",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-raw-vegetable-oil", amount = 100},
        {type = "fluid", name = "water-purified", amount = 100},
        {type = "item", name = "filter-ceramic", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-vegetable-oil", amount = 180},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20},
        {type = "item", name = "filter-ceramic-used", amount = 1, catalyst_amount = 1}
      },
      order = "bb",
      icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil-filtering-2.png",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-vegetable-oil-refining",
      category = "oil-processing",
      subgroup = "farming-desert",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-vegetable-oil", amount = 100}
      },
      results = {
        {type = "fluid", name = "liquid-fuel-oil", amount = 70},
        {type = "fluid", name = "liquid-mineral-oil", amount = 30}
      },
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon(
        {
          "liquid-fuel-oil",
          "liquid-mineral-oil"
        },
        {{255, 255, 056}, {255, 205, 040}, {201, 155, 030}}
      ),
      order = "bc"
    }
  }
)
