local rawmulti = angelsmods.marathon.rawmulti

data:extend({
  --STONE & SLAG
  {
    type = "recipe",
    name = "slag-processing-1",
    category = "crystallizing",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "slag-processing-2",
    category = "crystallizing",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "slag-processing-3",
    category = "crystallizing",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "slag-processing-4",
    category = "crystallizing-2",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "slag-processing-5",
    category = "crystallizing-2",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "e",
  },
  {
    type = "recipe",
    name = "slag-processing-6",
    category = "crystallizing-2",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "slag-processing-7",
    category = "crystallizing-2",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "slag-processing-8",
    category = "crystallizing-3",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "slag-processing-9",
    category = "crystallizing-3",
    subgroup = "slag-processing-1",
    energy_required = 8,
    enabled = false,
    normal = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 50 },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    expensive = {
      allow_decomposition = false,
      show_amount_in_title = false,
      always_show_products = true,
      ingredients = {
        { type = "fluid", name = "mineral-sludge", amount = 75 * rawmulti },
      },
      results = {
        { type = "item", name = "angels-void", amount = 1 },
      },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("mineral-sludge"),
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "slag-processing-stone",
    category = "ore-refining-t1",
    subgroup = "processing-crafting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    ingredients = { { type = "item", name = "slag", amount = 1 } },
    results = {
      { type = "item", name = "stone-crushed", amount = 2 },
    },
    main_product = "stone-crushed",
    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
    icon_size = 32,
    order = "c[slag-processing-stone]",
  },
  {
    type = "recipe",
    name = "stone-crushed",
    category = "crafting",
    subgroup = "processing-crafting",
    normal = {
      ingredients = {
        { type = "item", name = "stone-crushed", amount = 2 },
      },
      results = {
        { type = "item", name = "stone", amount = 1 },
      },
      energy_required = 0.5,
      enabled = true,
    },
    expensive = {
      ingredients = {
        { type = "item", name = "stone-crushed", amount = 3 * rawmulti },
      },
      results = {
        { type = "item", name = "stone", amount = 1 },
      },
      energy_required = 1,
      enabled = true,
    },
    icon_size = 32,
    order = "d[stone-crushed]",
  },
})
