data:extend(
  {
    {
      type = "recipe",
      name = "fermentation-corn",
      category = "liquifying",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-corn", amount = 10},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 75}
      },
      order = "a",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png"
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
      name = "fermentation-fruit",
      category = "liquifying",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-fruit", amount = 10},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      order = "b",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "aerobic-fermentation",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 50},
        {type = "item", name = "solid-compost", amount = 1}
      },
      order = "c",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-acetic-acid.png"
        }
        -- {
        -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
        -- scale = 0.4375,
        -- shift = { -10, -10},
        -- }
      },
      icon_size = 32
    },
    -- PROCESSING
    {
      type = "recipe",
      name = "anaerobic-fermentation",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      results = {
        {type = "fluid", name = "gas-ethanol", amount = 50},
        {type = "item", name = "solid-compost", amount = 1}
      },
      order = "d",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png"
        }
        -- {
        -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
        -- scale = 0.4375,
        -- shift = { -10, -10},
        -- }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "ethanol-to-ethylene-synthesis",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-ethanol", amount = 50},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-ethylene", amount = 50},
        {type = "fluid", name = "water-yellow-waste", amount = 50}
      },
      order = "e",
      main_product = "gas-ethylene",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/liquid-raw-vegetable-oil.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-beans.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    --BIO PLASTICS
    {
      type = "recipe",
      name = "liquid-acetic-acid-catalyst",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-methanol", amount = 70},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 30},
        {type = "fluid", name = "water-purified", amount = 50},
        {type = "item", name = "catalyst-metal-green", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1}
      },
      main_product = "liquid-acetic-acid",
      order = "a",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-acetic-anhydride",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 100},
        {type = "fluid", name = "gas-methanol", amount = 50},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-anhydride", amount = 150}
      },
      order = "b",
      main_product = "liquid-acetic-anhydride",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-acetate-mixture",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 10},
        {type = "fluid", name = "liquid-acetic-acid", amount = 40},
        {type = "fluid", name = "liquid-acetic-anhydride", amount = 40},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 20}
      },
      results = {
        {type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 100}
      },
      order = "c",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-cellulose-acetate",
      category = "chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 50},
        {type = "fluid", name = "water-purified", amount = 20}
      },
      results = {
        {type = "fluid", name = "liquid-cellulose-acetate", amount = 50},
        {type = "fluid", name = "water-yellow-waste", amount = 20}
      },
      order = "d",
      main_product = "liquid-cellulose-acetate",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "bio-plastic-1",
      category = "chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-cellulose-acetate", amount = 25},
        {type = "fluid", name = "gas-acetone", amount = 25}
      },
      results = {
        {type = "fluid", name = "liquid-plastic", amount = 15}
      },
      order = "e",
      icons = {
        {
          icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "liquid-propionic-acid-catalyst",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-ethylene", amount = 50},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 50},
        {type = "fluid", name = "water-purified", amount = 50},
        {type = "item", name = "catalyst-metal-green", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-propionic-acid", amount = 50},
        {type = "item", name = "catalyst-metal-carrier", amount = 1}
      },
      main_product = "liquid-propionic-acid",
      order = "f",
      -- icons = {
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/gas-ethanol.png",
      -- },
      -- {
      -- icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
      -- scale = 0.4375,
      -- shift = { -10, -10},
      -- }
      -- },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "bio-plastic-2",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 10},
        {type = "fluid", name = "liquid-acetic-acid", amount = 25},
        {type = "fluid", name = "liquid-propionic-acid", amount = 25}
      },
      results = {
        {type = "fluid", name = "liquid-plastic", amount = 25}
      },
      order = "g",
      icons = {
        {
          icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32
    }
  }
)
