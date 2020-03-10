data:extend(
  {
    {
      type = "recipe",
      name = "solid-beans-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-beans", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 80}
      },
      order = "ba",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-beans.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "solid-corn-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-corn", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 70}
      },
      order = "bb",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-corn.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "solid-leafs-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp-seed",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-leafs", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 10}
      },
      order = "bc",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-leafs.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "solid-nuts-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-nuts", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 40}
      },
      order = "ba",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-nuts.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "solid-pips-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-pips", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20}
      },
      order = "bb",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-pips.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "solid-fruit-nutrients",
      category = "nutrient-extractor",
      subgroup = "farming-swamp",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-fruit", amount = 5}
      },
      results = {
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 60}
      },
      order = "bc",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-nutrient-pulp.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
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
      order = "ba",
      icon = "__angelsbioprocessing__/graphics/icons/biomass-refining-1.png",
      icon_size = 32
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
      order = "bb",
      icon = "__angelsbioprocessing__/graphics/icons/biomass-refining-2.png",
      icon_size = 32
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
      order = "bc",
      icon = "__angelsbioprocessing__/graphics/icons/biomass-refining-3.png",
      icon_size = 32
    }
  }
)
