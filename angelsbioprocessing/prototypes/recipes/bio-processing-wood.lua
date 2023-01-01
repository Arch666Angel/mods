data:extend({
  -- RAW WOOD GENERATOR
  {
    type = "recipe",
    name = "tree-generator-1",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "tree-generator-2",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "tree-generator-3",
    category = "angels-tree",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 20 },
    },
    results = {
      { type = "item", name = "tree-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-c",
  },
  -- SPECIAL TREE GENERATION
  {
    type = "recipe",
    name = "tree-arboretum-0",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "token-bio", amount = 16 },
      { type = "item", name = "tree-seed", amount = 2 },
      { type = "item", name = "solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "temperate-tree", amount = 1, probability = 0.25 },
      { type = "item", name = "swamp-tree", amount = 1, probability = 0.25 },
      { type = "item", name = "desert-tree", amount = 1, probability = 0.25 },
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-tree.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/token-bio.png",
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    icon_size = 32,
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  -- RAW WOOD ARBORETUM
  {
    type = "recipe",
    name = "tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-seed", amount = 2 },
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-tree", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-tree"),
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
    name = "tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-seed", amount = 2 },
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "solid-tree", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-tree"),
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
    name = "tree-arboretum-3",
    category = "angels-arboretum",
    subgroup = "bio-arboretum",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-seed", amount = 2 },
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 10 },
    },
    results = {
      { type = "item", name = "solid-tree", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-tree"),
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
    name = "solid-saw",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-saw", amount = 1 },
    },
    allow_decomposition = false,
    --icon_size = 32,
    order = "b[saw]-a[iron]",
  },
  {
    type = "recipe",
    name = "solid-crystal-tipped-saw",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-saw", amount = 1 },
      { type = "item", name = "crystal-splinter-harmonic", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-crystal-tipped-saw", amount = 1 },
    },
    allow_decomposition = false,
    --icon_size = 32,
    order = "b[saw]-b[crystal-tipped]",
  },
  {
    type = "recipe",
    name = "solid-crystal-full-saw",
    category = "crafting",
    subgroup = "bio-wood",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "solid-crystal-tipped-saw", amount = 1 },
      { type = "item", name = "crystal-shard-harmonic", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-crystal-full-saw", amount = 1 },
    },
    allow_decomposition = false,
    --icon_size = 32,
    order = "b[saw]-c[crystal-full]",
  },
  {
    type = "recipe",
    name = "wood-sawing-1",
    category = "advanced-crafting",
    subgroup = "bio-processing-wood",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-tree", amount = 1 },
      { type = "item", name = "solid-saw", amount = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      { type = "item", name = "solid-saw", amount = 1, catalyst_amount = 1, probability = 0.9 },
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
    name = "wood-sawing-2",
    category = "advanced-crafting",
    subgroup = "bio-processing-wood",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-tree", amount = 1 },
      { type = "item", name = "solid-crystal-tipped-saw", amount = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      { type = "item", name = "solid-crystal-tipped-saw", amount = 1, catalyst_amount = 1, probability = 0.95 },
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
    name = "wood-sawing-3",
    category = "advanced-crafting",
    subgroup = "bio-processing-wood",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "solid-tree", amount = 1 },
      { type = "item", name = "solid-crystal-full-saw", amount = 1 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 6, amount_max = 8 },
      { type = "item", name = "solid-crystal-full-saw", amount = 1, catalyst_amount = 1, probability = 0.99 },
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
    name = "temperate-tree-generator-1",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-temperate-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-temperate-seed"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-a",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-2",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-temperate-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-temperate-seed"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-b",
  },
  {
    type = "recipe",
    name = "temperate-tree-generator-3",
    category = "angels-tree-temperate",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "gas-carbon-dioxide", amount = 20 },
    },
    results = {
      { type = "item", name = "tree-temperate-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-temperate-seed"),
      3,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[generator]-c",
  },
  -- TEMPERATE WOOD ARBORETUM
  {
    type = "recipe",
    name = "temperate-tree-arboretum-0",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "token-bio", amount = 16 },
      { type = "item", name = "tree-temperate-seed", amount = 2 },
      { type = "item", name = "solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "temperate-tree", amount = 1, probability = 0.5 },
    },
    main_product = "temperate-tree",
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-temperate.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/token-bio.png",
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    icon_size = 32,
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  {
    type = "recipe",
    name = "temperate-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-temperate-seed", amount = 2 },
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-resin", amount = 4 },
      { type = "item", name = "solid-tree", amount = 2, catalyst_amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("temperate-tree"),
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
    name = "temperate-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-temperate-seed", amount = 2 },
      { type = "item", name = "solid-soil", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-resin", amount = 7 },
      { type = "item", name = "solid-tree", amount = 3, catalyst_amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("temperate-tree"),
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
    name = "bio-resin-tree",
    category = "seed-extractor",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "temperate-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-resin", amount = 10 },
    },
    main_product = "bio-resin",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "bio-resin",
    category = "liquifying",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-ethanol", amount = 40 },
      { type = "item", name = "bio-resin", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-resin", amount = 10 },
    },
    main_product = "liquid-resin",
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      "bio-resin",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "liquid-resin",
      "gas-ethanol",
      "liquid-resin",
      "gas-ethanol",
    }),
    order = "c[processing]-a[bio-resin]",
  },
  {
    type = "recipe",
    name = "bio-resin-resin-liquification",
    category = "liquifying",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "fluid", name = "gas-ethanol", amount = 100 }, -- 20 ethanol / 5 liquid resin
      { type = "item", name = "solid-resin", amount = 4 },
    },
    results = {
      { type = "fluid", name = "liquid-resin", amount_min = 10, amount_max = 40 }, -- average 25 liquid resin / 40 wood
    },
    main_product = "liquid-resin",
    always_show_products = true,
    show_amount_in_title = false,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 225, 155 }, { 255, 225, 155 } }, {
      mods["bobplates"] and { "__bobplates__/graphics/icons/resin.png", 32 } or "solid-resin",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "liquid-resin",
      "gas-ethanol",
      "liquid-resin",
      "gas-ethanol",
    }),
    order = "c[processing]-b[solid-resin]-a[liquification]",
  },
  {
    type = "recipe",
    name = "bio-resin-wood-reprocessing",
    category = "bio-processor",
    subgroup = "bio-arboretum-temperate",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "wood", amount = 10 },
    },
    results = {
      { type = "item", name = "solid-resin", amount = 1 },
    },
    main_product = "solid-resin",
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
    name = "swamp-tree-generator-1",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-mud", amount = 5 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-swamp-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-swamp-seed"),
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
    name = "swamp-tree-generator-2",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-mud", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-swamp-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-swamp-seed"),
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
    name = "swamp-tree-generator-3",
    category = "angels-tree-swamp",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-mud", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
      { type = "fluid", name = "gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "tree-swamp-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-swamp-seed"),
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
    name = "swamp-tree-arboretum-0",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "token-bio", amount = 16 },
      { type = "item", name = "tree-swamp-seed", amount = 2 },
      { type = "item", name = "solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "swamp-tree", amount = 1, probability = 0.5 },
    },
    main_product = "swamp-tree",
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-swamp.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/token-bio.png",
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    icon_size = 32,
    crafting_machine_tint = {
      primary = { r = 0 / 255, g = 0 / 255, b = 100 / 255, a = 1 },
    },
    order = "b[arboretum]-a[special-trees]",
  },
  {
    type = "recipe",
    name = "swamp-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-swamp-seed", amount = 2 },
      { type = "item", name = "solid-mud", amount = 5 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-plastic", amount = 4 },
      { type = "item", name = "solid-tree", amount = 2, catalyst_amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("swamp-tree"),
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
    name = "swamp-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-swamp-seed", amount = 2 },
      { type = "item", name = "solid-mud", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-light-mud", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-plastic", amount = 7 },
      { type = "item", name = "solid-tree", amount = 3, catalyst_amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("swamp-tree"),
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
    name = "bio-plastic-tree",
    category = "seed-extractor",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "swamp-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-plastic", amount = 10 },
    },
    main_product = "bio-plastic",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "bio-plastic",
    category = "liquifying",
    subgroup = "bio-arboretum-swamp",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-acetone", amount = 40 },
      { type = "item", name = "bio-plastic", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 10 },
    },
    main_product = "liquid-plastic",
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      "bio-plastic",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "liquid-plastic",
      "gas-acetone",
      "liquid-plastic",
      "gas-acetone",
    }),
    order = "c[processing]",
  },
  -- DESERT WOOD GENERATOR
  {
    type = "recipe",
    name = "desert-tree-generator-1",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-sand", amount = 5 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-desert-seed", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-desert-seed"),
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
    name = "desert-tree-generator-2",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-sand", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "tree-desert-seed", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-desert-seed"),
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
    name = "desert-tree-generator-3",
    category = "angels-tree-desert",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "solid-sand", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-saline", amount = 50 },
      { type = "fluid", name = "gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "tree-desert-seed", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("tree-desert-seed"),
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
    name = "desert-tree-arboretum-0",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "token-bio", amount = 16 },
      { type = "item", name = "tree-desert-seed", amount = 2 },
      { type = "item", name = "solid-alienated-fertilizer", amount = 2 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "desert-tree", amount = 1, probability = 0.5 },
    },
    main_product = "desert-tree",
    always_show_products = true,
    show_amount_in_title = false,
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/tree-desert.png",
        icon_size = 64,
        scale = 0.5,
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/token-bio.png",
        scale = 0.32,
        shift = { -12, -12 },
      },
    },
    icon_size = 32,
    crafting_machine_tint = {
      primary = { r = 100 / 255, g = 100 / 255, b = 0 / 255, a = 1 },
    },
    order = "b[arboretum]-a",
  },
  {
    type = "recipe",
    name = "desert-tree-arboretum-1",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-desert-seed", amount = 2 },
      { type = "item", name = "solid-sand", amount = 5 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-rubber", amount = 4 },
      { type = "item", name = "solid-tree", amount = 2, catalyst_amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("desert-tree"),
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
    name = "desert-tree-arboretum-2",
    category = "angels-arboretum",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "tree-desert-seed", amount = 2 },
      { type = "item", name = "solid-sand", amount = 5 },
      { type = "item", name = "solid-fertilizer", amount = 1 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "item", name = "bio-rubber", amount = 7 },
      { type = "item", name = "solid-tree", amount = 3, catalyst_amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("desert-tree"),
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
    name = "bio-rubber-tree",
    category = "seed-extractor",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "desert-tree", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-rubber", amount = 10 },
    },
    main_product = "bio-rubber",
    always_show_products = true,
    order = "b[arboretum]-c[tree-processing]",
  },
  {
    type = "recipe",
    name = "bio-rubber",
    category = "liquifying",
    subgroup = "bio-arboretum-desert",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-acetone", amount = 40 },
      { type = "item", name = "bio-rubber", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-rubber", amount = 10 },
    },
    main_product = "liquid-rubber",
    always_show_products = true,
    icons = angelsmods.functions.create_viscous_liquid_recipe_icon(nil, { { 193, 197, 255 }, { 193, 197, 255 } }, {
      "bio-rubber",
    }),
    crafting_machine_tint = angelsmods.functions.get_recipe_tints({
      "liquid-rubber",
      "gas-acetone",
      "liquid-rubber",
      "gas-acetone",
    }),
    order = "c[processing]",
  },
})
