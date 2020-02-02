data:extend(
  {
    --TEMPERATE
    {
      type = "recipe",
      name = "temperate-garden-a",
      category = "seed-extractor",
      subgroup = "farming-temperate-seed",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "temperate-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 16},
        {type = "item", name = "temperate-1-seed", amount = 5, probability = 0.4},
        {type = "item", name = "temperate-2-seed", amount = 5, probability = 0.3},
        {type = "item", name = "temperate-3-seed", amount = 5, probability = 0.2},
        {type = "item", name = "temperate-4-seed", amount = 5, probability = 0.1},
        {type = "item", name = "temperate-5-seed", amount = 5, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
      icon_size = 32,
      order = "ba"
    },
    {
      type = "recipe",
      name = "temperate-garden-cultivating-a",
      category = "seed-extractor",
      subgroup = "farming-temperate-seed",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "temperate-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 32}
      },
      icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
      icon_size = 32,
      order = "bb"
    },
    {
      type = "recipe",
      name = "temperate-garden-b",
      category = "seed-extractor",
      subgroup = "farming-temperate-seed",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "temperate-garden", amount = 1}
      },
      results = {
        {type = "item", name = "temperate-1-seed", amount = 5, probability = 0.8},
        {type = "item", name = "temperate-2-seed", amount = 5, probability = 0.6},
        {type = "item", name = "temperate-3-seed", amount = 5, probability = 0.4},
        {type = "item", name = "temperate-4-seed", amount = 5, probability = 0.2},
        {type = "item", name = "temperate-5-seed", amount = 5, probability = 0.1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
      icon_size = 32,
      order = "bc"
    },
    {
      type = "recipe",
      name = "temperate-garden-cultivating-b",
      category = "seed-extractor",
      subgroup = "farming-temperate-seed",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "temperate-garden", amount = 1},
        {type = "item", name = "solid-fertilizer", amount = 2}
      },
      results = {
        {type = "item", name = "token-bio", amount = 8, probability = 0.25},
        {type = "item", name = "temperate-garden", amount = 1},
        {type = "item", name = "temperate-garden", amount = 1, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/temperate-garden.png",
      icon_size = 32,
      order = "bd"
    },
    --DESERT
    {
      type = "recipe",
      name = "desert-garden-a",
      category = "seed-extractor",
      subgroup = "bio-processor-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "desert-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 16},
        {type = "item", name = "desert-1-seed", amount = 5, probability = 0.4},
        {type = "item", name = "desert-2-seed", amount = 5, probability = 0.3},
        {type = "item", name = "desert-3-seed", amount = 5, probability = 0.2},
        {type = "item", name = "desert-4-seed", amount = 5, probability = 0.1},
        {type = "item", name = "desert-5-seed", amount = 5, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
      icon_size = 32,
      order = "ba"
    },
    {
      type = "recipe",
      name = "desert-garden-cultivating-a",
      category = "seed-extractor",
      subgroup = "bio-processor-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "desert-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 32}
      },
      icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
      icon_size = 32,
      order = "bb"
    },
    {
      type = "recipe",
      name = "desert-garden-b",
      category = "seed-extractor",
      subgroup = "bio-processor-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "desert-garden", amount = 1}
      },
      results = {
        {type = "item", name = "desert-1-seed", amount = 5, probability = 0.8},
        {type = "item", name = "desert-2-seed", amount = 5, probability = 0.6},
        {type = "item", name = "desert-3-seed", amount = 5, probability = 0.4},
        {type = "item", name = "desert-4-seed", amount = 5, probability = 0.2},
        {type = "item", name = "desert-5-seed", amount = 5, probability = 0.1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
      icon_size = 32,
      order = "bc"
    },
    {
      type = "recipe",
      name = "desert-garden-cultivating-b",
      category = "seed-extractor",
      subgroup = "bio-processor-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "desert-garden", amount = 1},
        {type = "item", name = "solid-fertilizer", amount = 2}
      },
      results = {
        {type = "item", name = "token-bio", amount = 8, probability = 0.25},
        {type = "item", name = "desert-garden", amount = 1},
        {type = "item", name = "desert-garden", amount = 1, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/desert-garden.png",
      icon_size = 32,
      order = "bd"
    },
    --SWAMP
    {
      type = "recipe",
      name = "swamp-garden-a",
      category = "seed-extractor",
      subgroup = "farming-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "swamp-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 16},
        {type = "item", name = "swamp-1-seed", amount = 5, probability = 0.4},
        {type = "item", name = "swamp-2-seed", amount = 5, probability = 0.3},
        {type = "item", name = "swamp-3-seed", amount = 5, probability = 0.2},
        {type = "item", name = "swamp-4-seed", amount = 5, probability = 0.1},
        {type = "item", name = "swamp-5-seed", amount = 5, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
      icon_size = 32,
      order = "ba"
    },
    {
      type = "recipe",
      name = "swamp-garden-cultivating-a",
      category = "seed-extractor",
      subgroup = "farming-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "swamp-garden", amount = 1}
      },
      results = {
        {type = "item", name = "token-bio", amount = 32}
      },
      icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
      icon_size = 32,
      order = "bb"
    },
    {
      type = "recipe",
      name = "swamp-garden-b",
      category = "seed-extractor",
      subgroup = "farming-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "swamp-garden", amount = 1}
      },
      results = {
        {type = "item", name = "swamp-1-seed", amount = 5, probability = 0.8},
        {type = "item", name = "swamp-2-seed", amount = 5, probability = 0.6},
        {type = "item", name = "swamp-3-seed", amount = 5, probability = 0.4},
        {type = "item", name = "swamp-4-seed", amount = 5, probability = 0.2},
        {type = "item", name = "swamp-5-seed", amount = 5, probability = 0.1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
      icon_size = 32,
      order = "bc"
    },
    {
      type = "recipe",
      name = "swamp-garden-cultivating-b",
      category = "seed-extractor",
      subgroup = "farming-temperate",
      enabled = "false",
      energy_required = 300,
      ingredients = {
        {type = "item", name = "swamp-garden", amount = 1},
        {type = "item", name = "solid-fertilizer", amount = 2}
      },
      results = {
        {type = "item", name = "token-bio", amount = 8, probability = 0.25},
        {type = "item", name = "swamp-garden", amount = 1},
        {type = "item", name = "swamp-garden", amount = 1, probability = 0.05}
      },
      icon = "__angelsbioprocessing__/graphics/icons/swamp-garden.png",
      icon_size = 32,
      order = "bd"
    },
    --COMPOST
    {
      type = "recipe",
      name = "solid-soil",
      category = "crafting",
      subgroup = "bio-wood",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-mud", amount = 1},
        {type = "item", name = "solid-compost", amount = 1}
      },
      results = {
        {type = "item", name = "solid-soil", amount = 1}
      },
      icon_size = 32,
      order = "a[support]-a"
    },
    {
      type = "recipe",
      name = "solid-fertilizer",
      category = "crafting-with-fluid",
      subgroup = "bio-wood",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-compost", amount = 2},
        {type = "fluid", name = "gas-urea", amount = 40}
      },
      results = {
        {type = "item", name = "solid-fertilizer", amount = 2}
      },
      icon_size = 32,
      order = "a[support]-c"
    },
    --UPGRADES
    {
      type = "recipe",
      name = "temperate-upgrade",
      category = "crafting",
      subgroup = "bio-processing-blocks",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "token-bio", amount = 5},
        {type = "item", name = "angels-void", amount = 1}
      },
      results = {
        {type = "item", name = "temperate-upgrade", amount = 1}
      },
      icon_size = 32,
      order = "d"
    },
    {
      type = "recipe",
      name = "desert-upgrade",
      category = "crafting",
      subgroup = "bio-processing-blocks",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "token-bio", amount = 5},
        {type = "item", name = "angels-void", amount = 1}
      },
      results = {
        {type = "item", name = "desert-upgrade", amount = 1}
      },
      icon_size = 32,
      order = "d"
    },
    {
      type = "recipe",
      name = "swamp-upgrade",
      category = "crafting",
      subgroup = "bio-processing-blocks",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "token-bio", amount = 5},
        {type = "item", name = "angels-void", amount = 1}
      },
      results = {
        {type = "item", name = "swamp-upgrade", amount = 1}
      },
      icon_size = 32,
      order = "d"
    }
  }
)
