data:extend({
  -- RAW WOOD GENERATOR
  {
    type = "recipe",
    name = "angels-tree-seed",
    category = "angels-tree",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "angels-tree-seed-2",
    localised_name = { "item-name.angels-tree-seed" },
    category = "angels-tree",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "angels-tree-seed-3",
    localised_name = { "item-name.angels-tree-seed" },
    category = "angels-tree",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-tree-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-c",
  },
  -- SPECIAL TREE GENERATION
  {
    type = "recipe",
    name = "angels-tree-arboretum-0",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-token-bio", amount = 16 },
      { type = "item", name = "angels-tree-seed", amount = 2 },
      { type = "item", name = "angels-solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-temperate-tree", amount = 1, probability = 0.25 },
      { type = "item", name = "angels-swamp-tree", amount = 1, probability = 0.25 },
      { type = "item", name = "angels-desert-tree", amount = 1, probability = 0.25 },
    },
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/solid-tree.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/token-bio.png",
        icon_size = 32,
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  -- RAW WOOD ARBORETUM
  {
    type = "recipe",
    name = "angels-solid-tree",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-seed", amount = 2 },
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-tree", amount = 4 },
    },
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-tree"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-tree-2",
    localised_name = { "item-name.angels-solid-tree" },
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-seed", amount = 2 },
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-solid-tree", amount = 6 },
    },
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-tree"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-tree-3",
    localised_name = { "item-name.angels-solid-tree" },
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-seed", amount = 2 },
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-solid-tree", amount = 8 },
    },
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-tree"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-c",
  },
  -- RAW WOOD PROCESSING
  {
    type = "recipe",
    name = "angels-solid-saw",
    category = "crafting",
    subgroup = "angels-bio-wood",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-saw", amount = 1 },
    },
    allow_decomposition = false,
    order = "b[saw]-a[iron]",
  },
  {
    type = "recipe",
    name = "angels-solid-crystal-tipped-saw",
    category = "crafting",
    subgroup = "angels-bio-wood",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-saw", amount = 1 },
      { type = "item", name = "angels-crystal-splinter-harmonic", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-crystal-tipped-saw", amount = 1 },
    },
    allow_decomposition = false,
    order = "b[saw]-b[crystal-tipped]",
  },
  {
    type = "recipe",
    name = "angels-solid-crystal-full-saw",
    category = "crafting",
    subgroup = "angels-bio-wood",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-solid-crystal-tipped-saw", amount = 1 },
      { type = "item", name = "angels-crystal-shard-harmonic", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-crystal-full-saw", amount = 1 },
    },
    allow_decomposition = false,
    order = "b[saw]-c[crystal-full]",
  },
  {
    type = "recipe",
    name = "angels-wood-sawing-1",
    localised_name = { "item-name.wood" },
    category = "advanced-crafting",
    subgroup = "angels-bio-processing-wood",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-tree", amount = 1 },
      { type = "item", name = "angels-solid-saw", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      {
        type = "item",
        name = "angels-solid-saw",
        amount = 1,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        probability = 0.9,
      },
    },
    main_product = "wood",
    allow_decomposition = false,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("wood"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[wood]-b[iron-saw]", -- order a[wood]-a[manual] reserved for manual wood crafting (bob greenhouse)
  },
  {
    type = "recipe",
    name = "angels-wood-sawing-2",
    localised_name = { "item-name.wood" },
    category = "advanced-crafting",
    subgroup = "angels-bio-processing-wood",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-tree", amount = 1 },
      { type = "item", name = "angels-solid-crystal-tipped-saw", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      {
        type = "item",
        name = "angels-solid-crystal-tipped-saw",
        amount = 1,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        probability = 0.95,
      },
    },
    main_product = "wood",
    allow_decomposition = false,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("wood"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[wood]-c[crystal-tipped-saw]",
  },
  {
    type = "recipe",
    name = "angels-wood-sawing-3",
    localised_name = { "item-name.wood" },
    category = "advanced-crafting",
    subgroup = "angels-bio-processing-wood",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-solid-tree", amount = 1 },
      { type = "item", name = "angels-solid-crystal-full-saw", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      {
        type = "item",
        name = "angels-solid-crystal-full-saw",
        amount = 1,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        probability = 0.99,
      },
    },
    main_product = "wood",
    allow_decomposition = false,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("wood"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[wood]-d[crystal-full-saw]",
  },
  -- TEMPERATE WOOD GENERATOR
  {
    type = "recipe",
    name = "angels-tree-temperate-seed",
    category = "angels-tree-temperate",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-temperate-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-temperate-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "angels-tree-temperate-seed-2",
    localised_name = { "item-name.angels-tree-temperate-seed" },
    category = "angels-tree-temperate",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-temperate-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-temperate-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "angels-tree-temperate-seed-3",
    localised_name = { "item-name.angels-tree-temperate-seed" },
    category = "angels-tree-temperate",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-tree-temperate-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-temperate-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-c",
  },
  -- TEMPERATE WOOD ARBORETUM
  {
    type = "recipe",
    name = "angels-temperate-tree",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-token-bio", amount = 16 },
      { type = "item", name = "angels-tree-temperate-seed", amount = 2 },
      { type = "item", name = "angels-solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-temperate-tree", amount = 1, probability = 0.5 },
    },
    main_product = "angels-temperate-tree",
    allow_productivity = true,
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-temperate.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/token-bio.png",
        icon_size = 32,
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  {
    type = "recipe",
    name = "angels-bio-resin",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-temperate-seed", amount = 2 },
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-resin", amount = 4 },
      { type = "item", name = "angels-solid-tree", amount = 2, ignored_by_productivity = 2 },
    },
    main_product = "angels-bio-resin",
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-temperate-tree"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-a",
  },
  {
    type = "recipe",
    name = "angels-bio-resin-2",
    localised_name = { "item-name.angels-bio-resin" },
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-temperate-seed", amount = 2 },
      { type = "item", name = "angels-solid-soil", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-resin", amount = 7 },
      { type = "item", name = "angels-solid-tree", amount = 3, ignored_by_productivity = 3 },
    },
    main_product = "angels-bio-resin",
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-temperate-tree"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-b",
  },
  -- TEMPERATE WOOD PROCESSING
  {
    type = "recipe",
    name = "angels-bio-resin-tree",
    localised_name = { "item-name.angels-bio-resin" },
    category = "angels-seed-extractor",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-temperate-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-resin", amount = 10 },
    },
    main_product = "angels-bio-resin",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "angels-liquid-resin-bio",
    localised_name = { "fluid-name.angels-liquid-resin" },
    category = "angels-liquifying",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethanol", amount = 40 },
      { type = "item", name = "angels-bio-resin", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-resin", amount = 10 },
    },
    main_product = "angels-liquid-resin",
    allow_productivity = true,
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      "angels-bio-resin",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-resin",
      "angels-gas-ethanol",
      "angels-liquid-resin",
      "angels-gas-ethanol",
    }),
    order = "c[processing]-a[bio-resin]",
  },
  {
    type = "recipe",
    name = "angels-bio-resin-resin-liquification",
    localised_name = { "fluid-name.angels-liquid-resin" },
    category = "angels-liquifying",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 10,
    ingredients = {
      { type = "fluid", name = "angels-gas-ethanol", amount = 100 }, -- 20 ethanol / 5 liquid resin
      { type = "item", name = "angels-solid-resin", amount = 4 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-resin", amount_min = 10, amount_max = 40 }, -- average 25 liquid resin / 40 wood
    },
    main_product = "angels-liquid-resin",
    allow_productivity = true,
    always_show_products = true,
    show_amount_in_title = false,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      mods["bobplates"] and { "__bobplates__/graphics/icons/resin.png", 32 } or "angels-solid-resin",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-resin",
      "angels-gas-ethanol",
      "angels-liquid-resin",
      "angels-gas-ethanol",
    }),
    order = "c[processing]-b[solid-resin]-a[liquification]",
  },
  {
    type = "recipe",
    name = "angels-bio-resin-wood-reprocessing",
    localised_name = { "item-name.angels-solid-resin" },
    category = "angels-bio-processor",
    subgroup = "angels-bio-arboretum-temperate",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "wood", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-solid-resin", amount = 1 },
    },
    main_product = "angels-solid-resin",
    always_show_products = true,
    order = "c[processing]-b[solid-resin]-b[wood-reprocessing]",
    crafting_machine_tint = {
      primary = { r = 240 / 255, g = 157 / 255, b = 14 / 255, a = 1 },
      secondary = { r = 240 / 255, g = 217 / 255, b = 55 / 255, a = 1 },
    },
  },
  -- SWAMP WOOD GENERATOR
  {
    type = "recipe",
    name = "angels-tree-swamp-seed",
    category = "angels-tree-swamp",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-mud", amount = 5 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-swamp-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-swamp-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "angels-tree-swamp-seed-2",
    localised_name = { "item-name.angels-tree-swamp-seed" },
    category = "angels-tree-swamp",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-mud", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-swamp-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-swamp-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "angels-tree-swamp-seed-3",
    localised_name = { "item-name.angels-tree-swamp-seed" },
    category = "angels-tree-swamp",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-mud", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
      { type = "fluid", name = "angels-gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-tree-swamp-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-swamp-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "a[generator]-c",
  },
  -- SWAMP WOOD ARBORETUM
  {
    type = "recipe",
    name = "angels-swamp-tree",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-token-bio", amount = 16 },
      { type = "item", name = "angels-tree-swamp-seed", amount = 2 },
      { type = "item", name = "angels-solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-swamp-tree", amount = 1, probability = 0.5 },
    },
    main_product = "angels-swamp-tree",
    allow_productivity = true,
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-swamp.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/token-bio.png",
        icon_size = 32,
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  {
    type = "recipe",
    name = "angels-bio-plastic",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-swamp-seed", amount = 2 },
      { type = "item", name = "angels-solid-mud", amount = 5 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-plastic", amount = 4 },
      { type = "item", name = "angels-solid-tree", amount = 2, ignored_by_productivity = 2 },
    },
    main_product = "angels-bio-plastic",
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-swamp-tree"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-a",
  },
  {
    type = "recipe",
    name = "angels-bio-plastic-2",
    localised_name = { "item-name.angels-bio-plastic" },
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-swamp-seed", amount = 2 },
      { type = "item", name = "angels-solid-mud", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-plastic", amount = 7 },
      { type = "item", name = "angels-solid-tree", amount = 3, ignored_by_productivity = 3 },
    },
    main_product = "angels-bio-plastic",
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-swamp-tree"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-b[tree-generation]-b",
  },
  -- SWAMP WOOD PROCESSING
  {
    type = "recipe",
    name = "angels-bio-plastic-tree",
    localised_name = { "item-name.angels-bio-plastic" },
    category = "angels-seed-extractor",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-swamp-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-plastic", amount = 10 },
    },
    main_product = "angels-bio-plastic",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "angels-liquid-plastic-bio",
    localised_name = { "fluid-name.angels-liquid-plastic" },
    category = "angels-liquifying",
    subgroup = "angels-bio-arboretum-swamp",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-gas-acetone", amount = 40 },
      { type = "item", name = "angels-bio-plastic", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-plastic", amount = 10 },
    },
    main_product = "angels-liquid-plastic",
    allow_productivity = true,
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      "angels-bio-plastic",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-plastic",
      "angels-gas-acetone",
      "angels-liquid-plastic",
      "angels-gas-acetone",
    }),
    order = "c[processing]",
  },
  -- DESERT WOOD GENERATOR
  {
    type = "recipe",
    name = "angels-tree-desert-seed",
    category = "angels-tree-desert",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-sand", amount = 5 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-desert-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-desert-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "angels-tree-desert-seed-2",
    localised_name = { "item-name.angels-tree-desert-seed" },
    category = "angels-tree-desert",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-sand", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-tree-desert-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-desert-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "angels-tree-desert-seed-3",
    localised_name = { "item-name.angels-tree-desert-seed" },
    category = "angels-tree-desert",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "angels-solid-sand", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
      { type = "fluid", name = "angels-gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-tree-desert-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-tree-desert-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "a[generator]-c",
  },
  -- DESERT WOOD ARBORETUM
  {
    type = "recipe",
    name = "angels-desert-tree",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-token-bio", amount = 16 },
      { type = "item", name = "angels-tree-desert-seed", amount = 2 },
      { type = "item", name = "angels-solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-desert-tree", amount = 1, probability = 0.5 },
    },
    main_product = "angels-desert-tree",
    allow_productivity = true,
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/tree-desert.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/token-bio.png",
        icon_size = 32,
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "angels-bio-rubber",
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-desert-seed", amount = 2 },
      { type = "item", name = "angels-solid-sand", amount = 5 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-rubber", amount = 4 },
      { type = "item", name = "angels-solid-tree", amount = 2, ignored_by_productivity = 2 },
    },
    main_product = "angels-bio-rubber",
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-desert-tree"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "angels-bio-rubber-2",
    localised_name = { "item-name.angels-bio-rubber" },
    category = "angels-arboretum",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-tree-desert-seed", amount = 2 },
      { type = "item", name = "angels-solid-sand", amount = 5 },
      { type = "item", name = "angels-solid-fertilizer", amount = 1 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-bio-rubber", amount = 7 },
      { type = "item", name = "angels-solid-tree", amount = 3, ignored_by_productivity = 3 },
    },
    allow_productivity = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-desert-tree"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-b",
  },
  -- DESERT WOOD PROCESSING
  {
    type = "recipe",
    name = "angels-bio-rubber-tree",
    localised_name = { "item-name.angels-bio-rubber" },
    category = "angels-seed-extractor",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "angels-desert-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-rubber", amount = 10 },
    },
    main_product = "angels-bio-rubber",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "angels-liquid-rubber-bio",
    localised_name = { "fluid-name.angels-liquid-rubber" },
    category = "angels-liquifying",
    subgroup = "angels-bio-arboretum-desert",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-gas-acetone", amount = 40 },
      { type = "item", name = "angels-bio-rubber", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-rubber", amount = 10 },
    },
    main_product = "angels-liquid-rubber",
    allow_productivity = true,
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 193, 197, 255 }, { 193, 197, 255 } }, {
      "angels-bio-rubber",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "angels-liquid-rubber",
      "angels-gas-acetone",
      "angels-liquid-rubber",
      "angels-gas-acetone",
    }),
    order = "c[processing]",
  },
})
