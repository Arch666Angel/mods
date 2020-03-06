data:extend(
  {
    -- GENERATION
    {
      type = "recipe",
      name = "biter-small-egg",
      localised_name = {"recipe-name.biter-small-egg"},
      category = "crafting",
      subgroup = "bio-biter-eggs",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "crystal-seed", amount = 1},
        {type = "item", name = "crystal-dust", amount = 1},
        {type = "item", name = "bio-puffer-egg-3", amount = 1}
      },
      results = {
        {type = "item", name = "biter-small-egg", amount = 1}
      },
      always_show_products = true,
      main_product = "biter-small-egg",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "biter-medium-egg",
      localised_name = {"recipe-name.biter-medium-egg"},
      category = "crafting",
      subgroup = "bio-biter-eggs",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "crystal-seed", amount = 1},
        {type = "item", name = "crystal-enhancer", amount = 1},
        {type = "item", name = "crystal-splinter-raw", amount = 1},
        {type = "item", name = "bio-puffer-egg-4", amount = 1}
      },
      results = {
        {type = "item", name = "biter-medium-egg", amount = 1}
      },
      always_show_products = true,
      main_product = "biter-medium-egg",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "biter-big-egg",
      localised_name = {"recipe-name.biter-big-egg"},
      category = "crafting",
      subgroup = "bio-biter-eggs",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "crystal-seed", amount = 1},
        {type = "item", name = "crystal-enhancer", amount = 1},
        {type = "item", name = "crystal-shard-raw", amount = 1},
        {type = "item", name = "bio-puffer-egg-5", amount = 1}
      },
      results = {
        {type = "item", name = "biter-big-egg", amount = 1}
      },
      always_show_products = true,
      main_product = "biter-big-egg",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ac"
    },
    -- HATCHING
    {
      type = "recipe",
      name = "biter-small",
      category = "bio-refugium-biter",
      subgroup = "bio-biter-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-small-egg", amount = 1},
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 10}
      },
      results = {
        {type = "item", name = "biter-small", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
          tint = {r = .75, g = .75, b = .75}
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/biter-small.png",
          tint = {r = 1, g = 1, b = 1, a = .75}
        }
      },
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "biter-medium",
      category = "bio-refugium-biter",
      subgroup = "bio-biter-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-medium-egg", amount = 1},
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 20}
      },
      results = {
        {type = "item", name = "biter-medium", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/biter-medium.png"
        }
      },
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "biter-big",
      category = "bio-refugium-biter",
      subgroup = "bio-biter-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-big-egg", amount = 1},
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 30}
      },
      results = {
        {type = "item", name = "biter-big", amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/biter-big.png"
        }
      },
      icon_size = 32,
      order = "ac"
    },
    -- ZOO KEEPING
    {
      type = "recipe",
      name = "biter-small-keeping",
      localised_name = {"recipe-name.biter-small-keeping"},
      category = "bio-refugium-biter",
      subgroup = "bio-biter",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "biter-small", amount = 4},
        {type = "item", name = "bio-raw-meat", amount = 4},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 30}
      },
      results = {
        {type = "item", name = "biter-small", amount = 3},
        {type = "item", name = "biter-small", amount = 1, probability = 0.9},
        {type = "item", name = "crystal-splinter-raw", amount = 4}
      },
      main_product = "biter-small",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "biter-medium-keeping",
      localised_name = {"recipe-name.biter-medium-keeping"},
      category = "bio-refugium-biter",
      subgroup = "bio-biter",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "biter-medium", amount = 4},
        {type = "item", name = "bio-raw-meat", amount = 6},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 60}
      },
      results = {
        {type = "item", name = "biter-medium", amount = 3},
        {type = "item", name = "biter-medium", amount = 1, probability = 0.85},
        {type = "item", name = "crystal-shard-raw", amount = 4}
      },
      main_product = "biter-medium",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "biter-big-keeping",
      localised_name = {"recipe-name.biter-big-keeping"},
      category = "bio-refugium-biter",
      subgroup = "bio-biter",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "biter-big", amount = 4},
        {type = "item", name = "bio-raw-meat", amount = 8},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 90}
      },
      results = {
        {type = "item", name = "biter-big", amount = 3},
        {type = "item", name = "biter-big", amount = 1, probability = 0.75},
        {type = "item", name = "crystal-full-raw", amount = 4}
      },
      main_product = "biter-big",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ac"
    },
    -- BUTCHERY
    {
      type = "recipe",
      name = "biter-small-butchering",
      category = "bio-butchery",
      subgroup = "bio-biter-butchery",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-small", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "item", name = "crystal-splinter-raw", amount = 1, probability = 0.9}
      },
      main_product = "bio-raw-meat",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "biter-medium-butchering",
      category = "bio-butchery",
      subgroup = "bio-biter-butchery",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-medium", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "item", name = "crystal-shard-raw", amount = 1, probability = 0.7}
      },
      main_product = "bio-raw-meat",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "biter-big-butchering",
      category = "bio-butchery",
      subgroup = "bio-biter-butchery",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "biter-big", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1},
        {type = "item", name = "crystal-full-raw", amount = 1, probability = 0.5}
      },
      main_product = "bio-raw-meat",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "ac"
    }
  }
)
