data:extend({
  --TEMPERATE
  {
    type = "recipe",
    name = "angels-sorting-temperate-1",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-1", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-corn", amount = 10 },
    },
    always_show_products = true,
    main_product = "angels-solid-corn",
    order = "ba",
    crafting_machine_tint = {
      primary = { r = 222 / 255, g = 209 / 255, b = 95 / 255, a = 1 }, -- Wheathon
      secondary = { r = 240 / 255, g = 217 / 255, b = 55 / 255, a = 1 }, -- Corn
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-1.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-temperate-2",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-2", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-cellulose-fiber", amount = 22 },
    },
    always_show_products = true,
    order = "bb",
    crafting_machine_tint = {
      --primary = {r = 190 / 255, g = 190 / 255, b = 190 / 255, a = 1},  -- Tianaton
      primary = { r = 255 / 255, g = 255 / 255, b = 255 / 255, a = 1 }, -- Tianaton
      secondary = { r = 154 / 255, g = 89 / 255, b = 29 / 255, a = 1 }, -- Celluloce fiber
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-2.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-temperate-3",
    category = "angels-bio-processor",
    subgroup = "angels-farming-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-3", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-leafs", amount = 32 },
      { type = "item", name = "angels-cellulose-fiber", amount = 10 },
    },
    order = "bc",
    crafting_machine_tint = {
      primary = { r = 65 / 255, g = 83 / 255, b = 39 / 255, a = 1 }, -- Okarinome
      secondary = { r = 88 / 255, g = 141 / 255, b = 74 / 255, a = 1 }, -- Leafs
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-3.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-temperate-4",
    category = "angels-bio-processor",
    subgroup = "angels-farming-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-4", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-fruit", amount = 10 },
      { type = "item", name = "angels-solid-pips", amount = 28 },
    },
    order = "bd",
    crafting_machine_tint = {
      primary = { r = 63 / 255, g = 101 / 255, b = 4 / 255, a = 1 }, -- Quillnoa
      secondary = { r = 115 / 255, g = 118 / 255, b = 154 / 255, a = 1 }, -- Pips
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-4.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-temperate-5",
    category = "angels-bio-processor",
    subgroup = "angels-farming-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-5", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-corn", amount = 10 },
      { type = "item", name = "angels-cellulose-fiber", amount = 8 },
      { type = "item", name = "angels-crystal-dust", amount = 4 },
    },
    order = "be",
    crafting_machine_tint = {
      primary = { r = 109 / 255, g = 173 / 255, b = 74 / 255, a = 1 }, -- Kendallion
      secondary = { r = 240 / 255, g = 217 / 255, b = 55 / 255, a = 1 }, -- Corn
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-5.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  --DESERT
  {
    type = "recipe",
    name = "angels-sorting-desert-1",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-1", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-beans", amount = 12 },
    },
    always_show_products = true,
    order = "ba",
    crafting_machine_tint = {
      --primary = {r = 240 / 255, g = 157 / 255, b = 14 / 255, a = 1}, -- Binafran
      primary = { r = 221 / 255, g = 158 / 255, b = 0 / 255, a = 1 }, -- Binafran
      secondary = { r = 154 / 255, g = 89 / 255, b = 29 / 255, a = 1 }, -- Beans
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-1.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-desert-2",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-2", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-corn", amount = 12 },
    },
    always_show_products = true,
    order = "bb",
    crafting_machine_tint = {
      --primary = {r = 79 / 255, g = 39 / 255, b = 34 / 255, a = 1}, --Primedeadelion
      primary = { r = 110 / 255, g = 78 / 255, b = 60 / 255, a = 1 }, --Primedeadelion
      secondary = { r = 240 / 255, g = 217 / 255, b = 55 / 255, a = 1 }, -- Corn
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-2.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-desert-3",
    category = "angels-bio-processor",
    subgroup = "angels-farming-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-3", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-pips", amount = 24 },
      { type = "item", name = "angels-crystal-dust", amount = 4 },
    },
    order = "bc",
    crafting_machine_tint = {
      --primary = {r = 130 / 255, g = 106 / 255, b = 49 / 255, a = 1}, -- Nilaubergine
      primary = { r = 221 / 255, g = 158 / 255, b = 0 / 255, a = 1 }, -- Nilaubergine
      secondary = { r = 115 / 255, g = 118 / 255, b = 154 / 255, a = 1 }, -- Pips
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-3.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-desert-4",
    category = "angels-bio-processor",
    subgroup = "angels-farming-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-4", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-fruit", amount = 12 },
      { type = "item", name = "angels-cellulose-fiber", amount = 14 },
    },
    order = "bd",
    crafting_machine_tint = {
      --primary = {r = 212 / 255, g = 95 / 255, b = 0 / 255, a = 1}, -- Zelosquash
      primary = { r = 255 / 255, g = 128 / 255, b = 0 / 255, a = 1 }, -- Zelosquash
      secondary = { r = 252 / 255, g = 107 / 255, b = 5 / 255, a = 1 }, -- Fruits
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-4.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-desert-5",
    category = "angels-bio-processor",
    subgroup = "angels-farming-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-5", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-nuts", amount = 4 },
      { type = "item", name = "angels-solid-corn", amount = 12 },
      { type = "item", name = "angels-crystal-dust", amount = 4 },
    },
    order = "be",
    crafting_machine_tint = {
      primary = { r = 194 / 255, g = 135 / 255, b = 0 / 255, a = 1 }, -- Arumbiphila
      secondary = { r = 240 / 255, g = 217 / 255, b = 55 / 255, a = 1 }, -- Corn
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-5.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  --SWAMP
  {
    type = "recipe",
    name = "angels-sorting-swamp-1",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-1", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-nuts", amount = 16 },
    },
    always_show_products = true,
    order = "ba",
    crafting_machine_tint = {
      primary = { r = 106 / 255, g = 45 / 255, b = 36 / 255, a = 1 }, -- Elendilomone
      secondary = { r = 154 / 255, g = 89 / 255, b = 29 / 255, a = 1 }, -- Nuts
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-1.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-swamp-2",
    show_amount_in_title = false,
    category = "angels-bio-processor",
    subgroup = "angels-farming-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-2", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-beans", amount = 14 },
    },
    always_show_products = true,
    order = "bb",
    crafting_machine_tint = {
      --primary = {r = 53 / 255, g = 71 / 255, b = 19 / 255, a = 1}, -- Zombieecalyptus
      primary = { r = 63 / 255, g = 101 / 255, b = 4 / 255, a = 1 }, -- Zombieecalyptus
      secondary = { r = 154 / 255, g = 89 / 255, b = 29 / 255, a = 1 }, -- Beans
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-2.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-swamp-3",
    category = "angels-bio-processor",
    subgroup = "angels-farming-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-3", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-leafs", amount = 36 },
      { type = "item", name = "angels-solid-nuts", amount = 6 },
    },
    order = "bc",
    crafting_machine_tint = {
      primary = { r = 80 / 255, g = 98 / 255, b = 47 / 255, a = 1 }, -- Saundsrcress
      secondary = { r = 88 / 255, g = 141 / 255, b = 74 / 255, a = 1 }, -- Leafs
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-3.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-swamp-4",
    category = "angels-bio-processor",
    subgroup = "angels-farming-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-4", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-leafs", amount = 24 },
      { type = "item", name = "angels-crystal-dust", amount = 6 },
    },
    order = "bd",
    crafting_machine_tint = {
      --primary = {r = 119 / 255, g = 79 / 255, b = 63 / 255, a = 1}, -- Nexeflax
      primary = { r = 212 / 255, g = 95 / 255, b = 0 / 255, a = 1 }, -- Nexeflax
      secondary = { r = 88 / 255, g = 141 / 255, b = 74 / 255, a = 1 }, -- Leafs
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-4.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
  {
    type = "recipe",
    name = "angels-sorting-swamp-5",
    category = "angels-bio-processor",
    subgroup = "angels-farming-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-5", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-solid-fruit", amount = 16 },
      { type = "item", name = "angels-solid-pips", amount = 12 },
      { type = "item", name = "angels-alien-bacteria", amount = 4 },
    },
    order = "be",
    crafting_machine_tint = {
      primary = { r = 104 / 255, g = 85 / 255, b = 146 / 255, a = 1 }, -- Mushredtato
      secondary = { r = 115 / 255, g = 118 / 255, b = 154 / 255, a = 1 }, -- Pips
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/processor-recipe.png",
        icon_size = 32
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-5.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { -10, 10 },
        tint = { r = 1, g = 1, b = 1, a = 1 },
      },
    },
  },
})
