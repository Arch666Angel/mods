data:extend(
{
  {
    type = "recipe",
    name = "liquid-raw-vegetable-oil-nuts",
    category = "bio-pressing",
    subgroup = "farming-desert-seed",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-nuts", amount=10},
    },
    results=
    {
      {type="fluid", name="liquid-raw-vegetable-oil", amount=50},
    },
    order = "ba",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-nuts.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "liquid-raw-vegetable-oil-pips",
    category = "bio-pressing",
    subgroup = "farming-desert-seed",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-pips", amount=10},
    },
    results=
    {
      {type="fluid", name="liquid-raw-vegetable-oil", amount=40},
    },
    order = "bb",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-pips.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "liquid-raw-vegetable-oil-beans",
    category = "bio-pressing",
    subgroup = "farming-desert-seed",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="item", name="solid-beans", amount=10},
    },
    results=
    {
      {type="fluid", name="liquid-raw-vegetable-oil", amount=30},
    },
    order = "bc",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-beans.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
  },



  -- PROCESSING
  {
    type = "recipe",
    name = "liquid-raw-vegetable-oil-filtering-1",
    category = "filtering",
    subgroup = "farming-desert",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="liquid-raw-vegetable-oil", amount=100},
      {type="fluid", name="water-purified", amount=100},
      {type="item", name="filter-coal", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-vegetable-oil", amount=160},
      {type="fluid", name="liquid-nutrient-pulp", amount=40},
      {type="item", name="filter-frame", amount=1},
    },
    order = "ba",
    icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil-filtering-1.png",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "liquid-raw-vegetable-oil-filtering-2",
    category = "filtering",
    subgroup = "farming-desert",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="liquid-raw-vegetable-oil", amount=100},
      {type="fluid", name="water-purified", amount=100},
      {type="item", name="filter-ceramic", amount=1},
    },
    results=
    {
      {type="fluid", name="liquid-vegetable-oil", amount=180},
      {type="fluid", name="liquid-nutrient-pulp", amount=20},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    order = "bb",
    icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil-filtering-2.png",
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "liquid-vegetable-oil-refining",
    category = "oil-processing",
    subgroup = "farming-desert",
    enabled = "false",
    energy_required = 4,
    ingredients ={
      {type="fluid", name="liquid-vegetable-oil", amount=100},
    },
    results=
    {
      {type="fluid", name="liquid-fuel-oil", amount=70},
      {type="fluid", name="liquid-mineral-oil", amount=30},
    },
    order = "bc",
    icon = "__angelsbioprocessing__/graphics/icons/vegetable-oil-refining-1.png",
    icon_size = 32,
  },
}
)
