local ore_tints = angelsmods.refining.ore_tints

data:extend({
  ---------------------------------------------------------------------------
  -- TIER 1 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore1-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore1", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore1-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore1-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore1-crushed",
    order = "a[angels-ore1-crushed]",
  },
  {
    type = "recipe",
    name = "angels-ore1-crushed-hand",
    category = "angels-manual-crafting",
    subgroup = "angels-processing-crafting",
    energy_required = 4,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore1", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore1-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    main_product = "angels-ore1-crushed",
    allow_decomposition = false,
    always_show_made_in = true,
    hidden_in_factoriopedia = true,
    order = "a[angels-ore1-crushed-hand]",
  },
  {
    type = "recipe",
    name = "angels-ore2-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = false,
    ingredients = { { type = "item", name = "angels-ore2", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore2-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore2-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore2-crushed",
    order = "b[angels-ore2-crushed]",
  },
  {
    type = "recipe",
    name = "angels-ore3-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore3", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore3-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore3-crushed",
    order = "c[angels-ore3-crushed]",
  },
  {
    type = "recipe",
    name = "angels-ore3-crushed-hand",
    category = "angels-manual-crafting",
    subgroup = "angels-processing-crafting",
    energy_required = 4,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore3", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    main_product = "angels-ore3-crushed",
    allow_decomposition = false,
    always_show_made_in = true,
    hidden_in_factoriopedia = true,
    order = "b[angels-ore3-crushed-hand]",
  },
  {
    type = "recipe",
    name = "angels-ore4-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = false,
    ingredients = { { type = "item", name = "angels-ore4", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore4-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore4-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore4-crushed",
    order = "d[angels-ore4-crushed]",
  },
  {
    type = "recipe",
    name = "angels-ore5-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore5", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore5-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore5-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore5-crushed",
    order = "e[angels-ore5-crushed]",
  },
  {
    type = "recipe",
    name = "angels-ore6-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = true,
    ingredients = { { type = "item", name = "angels-ore6", amount = 2 } },
    results = {
      { type = "item", name = "angels-ore6-crushed", amount = 2 },
      { type = "item", name = "angels-stone-crushed", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore6-crushed"),
      { 10, 10 },
      0.5
    ),
    main_product = "angels-ore6-crushed",
    order = "f[angels-ore6-crushed]",
  },
  ---------------------------------------------------------------------------
  -- TIER 1.5 ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore8-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crushed", amount = 2 },
      { type = "item", name = "angels-ore2-crushed", amount = 2 },
      { type = "item", name = "angels-ore5-crushed", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ore8-crushed", amount = 6 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore8-crushed"),
      { 10, 10 },
      0.5
    ),
    always_show_products = true,
    show_amount_in_title = false,
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore8-powder",
    category = "angels-ore-refining-t1-5",
    subgroup = "angels-ore-processing-a",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore8-crushed", amount = 3 },
      { type = "item", name = "angels-milling-drum-lubricated", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-ore8-powder", amount = 3 },
      { type = "item", name = "angels-milling-drum", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1 },
    },
    main_product = "angels-ore8-powder",
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-ore9-crushed",
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-processing-a",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "item", name = "angels-ore4-crushed", amount = 2 },
      { type = "item", name = "angels-ore6-crushed", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-ore9-crushed", amount = 6 },
    },
    icons = angelsmods.functions.add_icon_layer(
      {
        {
          icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
          icon_size = 64,
          scale = 0.5
        }
      },
      angelsmods.functions.get_object_icons("angels-ore9-crushed"),
      { 10, 10 },
      0.5
    ),
    always_show_products = true,
    show_amount_in_title = false,
    order = "i",
  },
  {
    type = "recipe",
    name = "angels-ore9-powder",
    category = "angels-ore-refining-t1-5",
    subgroup = "angels-ore-processing-a",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore9-crushed", amount = 3 },
      { type = "item", name = "angels-milling-drum-lubricated", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-ore9-powder", amount = 3 },
      { type = "item", name = "angels-milling-drum", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1 },
    },
    main_product = "angels-ore9-powder",
    order = "j",
  },
  ---------------------------------------------------------------------------
  -- TIER 2 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore1-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore1-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-blue", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore1-chunk",
    order = "a[angels-ore1-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore1"] }),
  },
  {
    type = "recipe",
    name = "angels-ore2-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore2-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore2-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-purple", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore2-chunk",
    order = "b[angels-ore2-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore2"] }),
  },
  {
    type = "recipe",
    name = "angels-ore3-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore3-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore3-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-yellow", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore3-chunk",
    order = "c[angels-ore3-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore3"] }),
  },
  {
    type = "recipe",
    name = "angels-ore4-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore4-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore4-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-lightgreen", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore4-chunk",
    order = "d[angels-ore4-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore4"] }),
  },
  {
    type = "recipe",
    name = "angels-ore5-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore5-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore5-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-cyan", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore5-chunk",
    order = "e[angels-ore5-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore5"] }),
  },
  {
    type = "recipe",
    name = "angels-ore6-chunk",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore6-crushed", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-ore6-chunk", amount = 2 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 50 },
      { type = "item", name = "angels-geode-red", amount = 1, probability = 0.5 },
    },
    main_product = "angels-ore6-chunk",
    order = "f[angels-ore6-chunk]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-water-yellow-waste", ore_tints["ore6"] }),
  },
  ---------------------------------------------------------------------------
  -- TIER 2.5 ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore8-sludge",
    category = "chemistry",
    subgroup = "angels-ore-processing-b",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore8-powder", amount = 3 },
      { type = "item", name = "angels-ore1-chunk", amount = 1 },
      { type = "item", name = "angels-ore2-chunk", amount = 1 },
      { type = "item", name = "angels-ore5-chunk", amount = 1 },
      { type = "fluid", name = "angels-thermal-water", amount = 20 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-ore8-sludge", amount = 6 },
    },
    main_product = "angels-ore8-sludge",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-ore8-sludge",
      "angels-thermal-water",
      "sulfuric-acid",
    }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore8-dust",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore8-sludge", amount = 4 },
      --{type="item", name="angels-solid-sodium-hydroxide", amount=2},
    },
    results = {
      { type = "item", name = "angels-ore8-dust", amount = 4 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
    },
    main_product = "angels-ore8-dust",
    order = "h",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-ore8-sludge"),
  },
  {
    type = "recipe",
    name = "angels-ore9-sludge",
    category = "chemistry",
    subgroup = "angels-ore-processing-b",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore9-powder", amount = 3 },
      { type = "item", name = "angels-ore3-chunk", amount = 1 },
      { type = "item", name = "angels-ore4-chunk", amount = 1 },
      { type = "item", name = "angels-ore6-chunk", amount = 1 },
      { type = "fluid", name = "angels-thermal-water", amount = 20 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-ore9-sludge", amount = 6 },
    },
    main_product = "angels-ore9-sludge",
    always_show_products = true,
    show_amount_in_title = false,
    order = "i",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-thermal-water",
      "sulfuric-acid",
      "angels-ore9-sludge",
    }),
  },
  {
    type = "recipe",
    name = "angels-ore9-dust",
    category = "angels-ore-refining-t2",
    subgroup = "angels-ore-processing-b",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore9-sludge", amount = 4 },
      --{type="item", name="angels-solid-sodium-hydroxide", amount=2},
    },
    results = {
      { type = "item", name = "angels-ore9-dust", amount = 4 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
    },
    main_product = "angels-ore9-dust",
    order = "j",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-ore9-sludge"),
  },
  ---------------------------------------------------------------------------
  -- TIER 3 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore1-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore1-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore1-crystal", amount = 2 },
    },
    main_product = "angels-ore1-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "a[angels-ore1-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore1"] }),
  },
  {
    type = "recipe",
    name = "angels-ore2-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore2-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore2-crystal", amount = 2 },
    },
    main_product = "angels-ore2-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "b[angels-ore2-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore2"] }),
  },
  {
    type = "recipe",
    name = "angels-ore3-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore3-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore3-crystal", amount = 2 },
    },
    main_product = "angels-ore3-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "c[angels-ore3-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore3"] }),
  },
  {
    type = "recipe",
    name = "angels-ore4-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore4-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore4-crystal", amount = 2 },
    },
    main_product = "angels-ore4-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "d[angels-ore4-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore4"] }),
  },
  {
    type = "recipe",
    name = "angels-ore5-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore5-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore5-crystal", amount = 2 },
    },
    main_product = "angels-ore5-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "e[angels-ore5-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore5"] }),
  },
  {
    type = "recipe",
    name = "angels-ore6-crystal",
    category = "angels-ore-refining-t3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore6-chunk", amount = 2 },
      { type = "fluid", name = "sulfuric-acid", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-ore6-crystal", amount = 2 },
    },
    main_product = "angels-ore6-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    order = "f[angels-ore6-crystal]",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "sulfuric-acid", ore_tints["ore6"] }),
  },
  ---------------------------------------------------------------------------
  -- TIER 3.5 ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore8-solution",
    category = "angels-ore-refining-t3b",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore8-dust", amount = 3 },
      { type = "item", name = "angels-ore1-crystal", amount = 1 },
      { type = "item", name = "angels-ore2-crystal", amount = 1 },
      { type = "item", name = "angels-ore5-crystal", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-ore8-solution", amount = 60 },
    },
    main_product = "angels-ore8-solution",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-ore8-solution", "sulfuric-acid" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore8-slime",
    category = "angels-filtering-3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore8-solution", amount = 60 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-ore8-slime", amount = 60 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 10 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    main_product = "angels-ore8-slime",
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 104, 112, 113 }, { 133, 196, 060 }, { 133, 196, 060 }, { 113, 224, 028, 0.9 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-ore8-slime",
      "angels-water-purified",
      "angels-water-yellow-waste",
    }),
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-ore8-anode-sludge",
    category = "angels-ore-refining-t3-5",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore8-slime", amount = 60 },
      --{type="fluid", name="angels-liquid-ferric-chloride-solution", amount=2},
    },
    results = {
      { type = "fluid", name = "angels-ore8-anode-sludge", amount = 60 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    main_product = "angels-ore8-anode-sludge",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-ore8-anode-sludge",
      "angels-ore8-slime",
      "angels-water-yellow-waste",
    }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-ore8-crystal",
    category = "angels-crystallizing-3",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore8-anode-sludge", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ore8-crystal", amount = 6 },
    },
    main_product = "angels-ore8-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-ore8-anode-sludge"),
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-ore9-solution",
    category = "angels-ore-refining-t3b",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore9-dust", amount = 3 },
      { type = "item", name = "angels-ore3-crystal", amount = 1 },
      { type = "item", name = "angels-ore4-crystal", amount = 1 },
      { type = "item", name = "angels-ore6-crystal", amount = 1 },
      { type = "fluid", name = "sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-ore9-solution", amount = 60 },
    },
    main_product = "angels-ore9-solution",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-ore9-solution", "sulfuric-acid" }),
    order = "i",
  },
  {
    type = "recipe",
    name = "angels-ore9-slime",
    category = "angels-filtering-3",
    subgroup = "angels-ore-processing-c",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore9-solution", amount = 60 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-ore9-slime", amount = 60 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 10 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    main_product = "angels-ore9-slime",
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 095, 106, 090 }, { 254, 110, 022 }, { 254, 110, 022, 0.8 }, { 252, 103, 005, 0.9 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-ore9-slime",
      "angels-water-purified",
      "angels-water-yellow-waste",
    }),
    order = "j",
  },
  {
    type = "recipe",
    name = "angels-ore9-anode-sludge",
    category = "angels-ore-refining-t3-5",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore9-slime", amount = 60 },
      --{type="fluid", name="angels-liquid-cupric-chloride-solution", amount=2},
    },
    results = {
      { type = "fluid", name = "angels-ore9-anode-sludge", amount = 60 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    main_product = "angels-ore9-anode-sludge",
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-ore9-anode-sludge",
      "angels-ore9-slime",
      "angels-water-yellow-waste",
    }),
    order = "i",
  },
  {
    type = "recipe",
    name = "angels-ore9-crystal",
    category = "angels-crystallizing-3",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-ore9-anode-sludge", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ore9-crystal", amount = 6 },
    },
    main_product = "angels-ore9-crystal",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-ore9-anode-sludge"),
    order = "j",
  },
  ---------------------------------------------------------------------------
  -- TIER 4 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-ore1-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore1-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore1-pure", amount = 4 },
    },
    main_product = "angels-ore1-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore1"] }, 0.6),
    order = "a[angels-ore1-pure]",
  },
  {
    type = "recipe",
    name = "angels-ore2-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore2-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore2-pure", amount = 4 },
    },
    main_product = "angels-ore2-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore2"] }, 0.6),
    order = "b[angels-ore2-pure]",
  },
  {
    type = "recipe",
    name = "angels-ore3-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore3-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore3-pure", amount = 4 },
    },
    main_product = "angels-ore3-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore3"] }, 0.6),
    order = "c[angels-ore3-pure]",
  },
  {
    type = "recipe",
    name = "angels-ore4-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore4-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore4-pure", amount = 4 },
    },
    main_product = "angels-ore4-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore4"] }, 0.6),
    order = "d[angels-ore4-pure]",
  },
  {
    type = "recipe",
    name = "angels-ore5-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore5-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore5-pure", amount = 4 },
    },
    main_product = "angels-ore5-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore5"] }, 0.6),
    order = "e[angels-ore5-pure]",
  },
  {
    type = "recipe",
    name = "angels-ore6-pure",
    category = "angels-ore-refining-t4",
    subgroup = "angels-ore-processing-d",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ore6-crystal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-ore6-pure", amount = 4 },
    },
    main_product = "angels-ore6-pure",
    always_show_products = true,
    show_amount_in_title = false,
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ angelsmods.refining.ore_tints["ore6"] }, 0.6),
    order = "f[angels-ore6-pure]",
  },
  --SLAG PROCESSING
  {
    type = "recipe",
    name = "angels-filter-frame",
    category = "crafting",
    subgroup = "angels-catalysts-filters",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-filter-frame", amount = 1 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/filter-frame.png",
    icon_size = 32,
    order = "x[filter-frame]",
  },
  {
    type = "recipe",
    name = "angels-filter-coal",
    category = "crafting",
    subgroup = "angels-catalysts-filters",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "coal", amount = 1 },
      { type = "item", name = "angels-filter-frame", amount = 5, ignored_by_stats = 5 },
    },
    results = {
      { type = "item", name = "angels-filter-coal", amount = 5 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/filter-coal.png",
    icon_size = 32,
    order = "y[filter-coal]",
  },
  {
    type = "recipe",
    name = "angels-filter-ceramic",
    category = "crafting",
    subgroup = "angels-catalysts-filters",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-filter-frame", amount = 1 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-filter-ceramic", amount = 1 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/filter-ceramic.png",
    icon_size = 32,
    order = "z[filter-ceramic]-a[new]",
  },
  {
    type = "recipe",
    name = "angels-filter-ceramic-refurbish",
    localised_name = { "item-name.angels-filter-ceramic" },
    category = "crafting-with-fluid",
    subgroup = "angels-catalysts-filters",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/filter-ceramic.png",
    icon_size = 32,
    order = "z[filter-ceramic]-b[refurbish]",
  },
  {
    type = "recipe",
    name = "angels-milling-drum",
    category = "crafting",
    subgroup = "angels-ore-powderizer",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-milling-drum", amount = 1 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/milling-drum.png",
    icon_size = 32,
    order = "z[milling-drum]-a[new]",
  },
  {
    type = "recipe",
    name = "angels-milling-drum-lubricated",
    category = "crafting-with-fluid",
    subgroup = "angels-ore-powderizer",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-milling-drum", amount = 1, ignored_by_stats = 1 },
      { type = "fluid", name = "lubricant", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-milling-drum-lubricated", amount = 1 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/milling-drum-lubricated.png",
    icon_size = 32,
    order = "z[milling-drum]-b[lubricated]",
  },
  {
    type = "recipe",
    name = "angels-slag-processing-dissolution",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-slag", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-slag-slurry", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 142, 079, 028 }, { 107, 062, 021 }, { 075, 040, 015 } },
      { "angels-slag" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-slag-slurry"),
    order = "i [slag-processing-dissolution]",
  },
  {
    type = "recipe",
    name = "angels-stone-crushed-dissolution",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-stone-crushed", amount = 25 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-slag-slurry", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 142, 079, 028 }, { 107, 062, 021 }, { 075, 040, 015 } },
      { "angels-stone-crushed" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-slag-slurry"),
    order = "j [stone-crushed-dissolution]",
  },
  --FILTERING
  {
    type = "recipe",
    name = "angels-slag-processing-filtering-1",
    category = "angels-filtering",
    subgroup = "angels-filtering",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-slag-slurry", amount = 50 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 50 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 40 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 140, 073, 029 }, { 230, 116, 017 } }
    ),
    order = "a[filtering-mineral]-a[slag-processing]-a[coal]",
  },
  {
    type = "recipe",
    name = "angels-slag-processing-filtering-2",
    category = "angels-filtering-2",
    subgroup = "angels-filtering",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-slag-slurry", amount = 35 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 35 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 140, 073, 029 }, { 230, 116, 017 } }
    ),
    order = "a[filtering-mineral]-a[slag-processing]-b[ceramic]",
  },
  {
    type = "recipe",
    name = "angels-thermal-water-filtering-1",
    category = "angels-filtering",
    subgroup = "angels-filtering",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-thermal-water", amount = 50 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 50 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 243, 135, 000 }, { 230, 116, 017 }, { 247, 140, 003 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-mineral-sludge", "angels-thermal-water" }),
    order = "a[filtering-mineral]-a[thermal-processing]-a[coal]",
  },
  {
    type = "recipe",
    name = "angels-thermal-water-filtering-2",
    category = "angels-filtering-2",
    subgroup = "angels-filtering",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-thermal-water", amount = 35 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 35 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 243, 135, 000 }, { 230, 116, 017 }, { 247, 140, 003 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({ "angels-mineral-sludge", "angels-thermal-water" }),
    order = "a[filtering-mineral]-a[thermal-processing]-b[ceramic]",
  },
  --CRYSTAL SLURRY
  --GEODES LIQUIFY
  {
    type = "recipe",
    name = "angels-geode-blue-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-blue", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-blue" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "a[geode-blue-liquify]",
  },
  {
    type = "recipe",
    name = "angels-geode-red-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-red", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 20 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-red" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "f[geode-red-liquify]",
  },
  {
    type = "recipe",
    name = "angels-geode-yellow-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-yellow", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 30 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-yellow" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "c[geode-yellow-liquify]",
  },
  {
    type = "recipe",
    name = "angels-geode-purple-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-purple", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 40 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-purple" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "b[geode-purple-liquify]",
  },
  {
    type = "recipe",
    name = "angels-geode-cyan-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-cyan", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-cyan" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "e[geode-cyan-liquify]",
  },
  {
    type = "recipe",
    name = "angels-geode-lightgreen-liquify",
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-geode-lightgreen", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-geode-lightgreen" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "d[geode-lightgreen-liquify]",
  },
  {
    type = "recipe",
    name = "angels-crystal-dust-liquify",
    localised_name = { "fluid-name.angels-crystal-slurry" },
    category = "angels-liquifying",
    subgroup = "angels-liquifying",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-crystal-dust", amount = 10 },
      { type = "fluid", name = "sulfuric-acid", amount = 15 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 50 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 184, 231, 043 }, { 080, 172, 033 }, { 055, 126, 017 } },
      { "angels-crystal-dust" }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-crystal-slurry"),
    order = "g",
  },
  --FILTERING
  {
    type = "recipe",
    name = "angels-crystal-slurry-filtering-1",
    category = "angels-filtering",
    subgroup = "angels-filtering",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 50 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-seedling", amount = 50 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 40 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 105, 237, 038 }, { 211, 255, 052 }, { 100, 255, 000 }, { 147, 207, 47 } }
    ),
    order = "b[filtering-crystal]-c[crystal-processing]-a[coal]",
  },
  {
    type = "recipe",
    name = "angels-crystal-slurry-filtering-2",
    category = "angels-filtering-2",
    subgroup = "angels-filtering",
    energy_required = 1.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 35 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-crystal-seedling", amount = 35 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 105, 237, 038 }, { 211, 255, 052 }, { 100, 255, 000 }, { 147, 207, 47 } }
    ),
    order = "b[filtering-crystal]-c[crystal-processing]-b[ceramic]",
  },
  {
    type = "recipe",
    name = "angels-crystal-slurry-filtering-conversion-1",
    category = "angels-filtering",
    subgroup = "angels-filtering",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 50 },
      { type = "fluid", name = "angels-water-mineralized", amount = 100 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 50 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 40 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 105, 237, 038 }, { 230, 116, 017 }, { 100, 255, 000 } }
    ),
    order = "a[filtering-mineral]-c[crystal-processing]-a[coal]",
  },
  {
    type = "recipe",
    name = "angels-crystal-slurry-filtering-conversion-2",
    category = "angels-filtering-2",
    subgroup = "angels-filtering",
    energy_required = 1.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-crystal-slurry", amount = 35 },
      { type = "fluid", name = "angels-water-mineralized", amount = 100 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 35 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    icons = angelsmods.functions.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 105, 237, 038 }, { 230, 116, 017 }, { 100, 255, 000 } }
    ),
    order = "a[filtering-mineral]-c[crystal-processing]-b[ceramic]",
  },
  --CATALYSTS
  {
    type = "recipe",
    name = "angels-catalysator-brown",
    category = "angels-crystallizing",
    subgroup = "angels-catalysts-filters",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-mineral-sludge", amount = 25 },
    },
    results = {
      { type = "item", name = "angels-catalysator-brown", amount = 2 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/catalysator-brown.png",
    icon_size = 32,
    order = "i[catalysator-brown]",
  },
  {
    type = "recipe",
    name = "angels-catalysator-green",
    category = "angels-crystallizing-2",
    subgroup = "angels-catalysts-filters",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-crystal-seedling", amount = 25 },
    },
    results = {
      { type = "item", name = "angels-catalysator-green", amount = 2 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/catalysator-green.png",
    icon_size = 32,
    order = "j[catalysator-green]",
  },
  {
    type = "recipe",
    name = "angels-catalysator-orange",
    category = "angels-crystallizing-3",
    subgroup = "angels-catalysts-filters",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-catalysator-brown", amount = 2 },
      { type = "item", name = "angels-catalysator-green", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-catalysator-orange", amount = 2 },
    },
    icon = "__angelsrefininggraphics__/graphics/icons/catalysator-orange.png",
    icon_size = 32,
    order = "k[catalysator-orange]",
  },
  --VANILLA
  --IRON
  {
    type = "recipe",
    name = "angels-iron-pebbles-smelting",
    localised_name = { "item-name.iron-plate" },
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    enabled = false,
    ingredients = { { type = "item", name = "angels-iron-pebbles", amount = 4 } },
    results = {
      { type = "item", name = "iron-plate", amount = 2 },
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/iron-pebbles.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    order = "b[iron-ore]-c[pebbles]",
  },
  {
    type = "recipe",
    name = "angels-iron-nugget-smelting",
    localised_name = { "item-name.iron-plate" },
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    enabled = false,
    ingredients = { { type = "item", name = "angels-iron-nugget", amount = 2 } },
    results = {
      { type = "item", name = "iron-plate", amount = 3 },
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/iron-nugget.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    order = "b[iron-ore]-d[nugget]",
  },
  {
    type = "recipe",
    name = "angels-iron-pebbles",
    localised_name = { "item-name.angels-iron-pebbles" },
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    ingredients = { { type = "item", name = "iron-ore", amount = 2 } },
    results = {
      { type = "item", name = "angels-iron-pebbles", amount = 4 },
    },
    order = "a[iron]-c[pebbles]",
  },
  --COPPER
  {
    type = "recipe",
    name = "angels-copper-pebbles-smelting",
    localised_name = { "item-name.copper-plate" },
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    enabled = false,
    ingredients = { { type = "item", name = "angels-copper-pebbles", amount = 4 } },
    results = {
      { type = "item", name = "copper-plate", amount = 2 },
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/copper-pebbles.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    order = "c[copper-ore]-c[pebbles]",
  },
  {
    type = "recipe",
    name = "angels-copper-nugget-smelting",
    localised_name = { "item-name.copper-plate" },
    category = "smelting",
    subgroup = "raw-material",
    energy_required = 7,
    enabled = false,
    ingredients = { { type = "item", name = "angels-copper-nugget", amount = 2 } },
    results = {
      { type = "item", name = "copper-plate", amount = 3 },
    },
    icons = {
      mods["angelssmelting"] and {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
        icon_size = 32,
      } or {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 32 / 64,
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/copper-nugget.png",
        icon_size = 32,
        scale = 0.4,
        shift = { -10, -10 },
      },
    },
    order = "c[copper-ore]-d[nugget]",
  },
  {
    type = "recipe",
    name = "angels-copper-pebbles",
    localised_name = { "item-name.angels-copper-pebbles" },
    category = "angels-ore-refining-t1",
    subgroup = "angels-ore-sorting-advanced",
    energy_required = 1,
    enabled = false,
    ingredients = { { type = "item", name = "copper-ore", amount = 2 } },
    results = {
      { type = "item", name = "angels-copper-pebbles", amount = 4 },
    },
    order = "b[copper]-c[pebbles]",
  },
})
