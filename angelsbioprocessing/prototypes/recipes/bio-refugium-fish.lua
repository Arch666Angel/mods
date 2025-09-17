local AF = angelsmods.functions
data:extend({
  {
    type = "recipe",
    name = "angels-liquid-fish-atmosphere",
    category = "chemistry",
    subgroup = "angels-bio-fish",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "angels-water-saline", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    main_product = "angels-liquid-fish-atmosphere",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 194, 227, 091 }, { 184, 239, 000 }, { 156, 207, 000 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-fish-atmosphere",
      "water",
      "angels-water-saline",
      "angels-liquid-fish-atmosphere",
    }),
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-liquid-polluted-fish-atmosphere-raw-meat",
    localised_name = { "fluid-name.angels-liquid-polluted-fish-atmosphere" },
    category = "angels-liquifying",
    subgroup = "angels-bio-fish-breeding",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
      { type = "item", name = "angels-bio-raw-meat", amount = 25 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "angels-liquid-polluted-fish-atmosphere",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 194, 227, 091 }, { 241, 050, 238 }, { 241, 050, 238 } }),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-polluted-fish-atmosphere"),
    order = "b",
  },
  ---------------------------------------------------------------------------
  -- KEEPING ----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-fish-keeping-0",
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 4, ignored_by_stats = 4 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "raw-fish", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
      {
        type = "item",
        name = "raw-fish",
        amount = 1,
        probability = 0.75,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        show_details_in_recipe_tooltip = false,
      },
      {
        type = "item",
        name = "raw-fish",
        amount = 1,
        probability = 0.50,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64,
    order = "aa",
  },
  {
    type = "recipe",
    name = "angels-fish-keeping-1",
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-alien-fish-1-raw", amount = 4, ignored_by_stats = 4 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-alien-fish-1-raw", amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3 },
      {
        type = "item",
        name = "angels-alien-fish-1-raw",
        amount = 1,
        probability = 0.85,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    order = "ab",
  },
  {
    type = "recipe",
    name = "angels-fish-keeping-2",
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-alien-fish-2-raw", amount = 4, ignored_by_stats = 4 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-alien-fish-2-raw", amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3 },
      {
        type = "item",
        name = "angels-alien-fish-2-raw",
        amount = 1,
        probability = 0.85,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    order = "ac",
  },
  {
    type = "recipe",
    name = "angels-fish-keeping-3",
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "angels-alien-fish-3-raw", amount = 4, ignored_by_stats = 4 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "angels-alien-fish-3-raw", amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3 },
      {
        type = "item",
        name = "angels-alien-fish-3-raw",
        amount = 1,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- BREEDING ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-alien-fish-0-raw",
    localised_name = { "recipe-name.angels-alien-fish-0-raw" },
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 2, ignored_by_stats = 2 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      {
        type = "item",
        name = "raw-fish",
        amount_min = 2,
        amount_max = 4,
        ignored_by_productivity = 2,
        ignored_by_stats = 2,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "raw-fish",
    allow_productivity = true,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32,
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
      },
    },
    order = "aa",
  },
  {
    type = "recipe",
    name = "angels-alien-fish-1-raw",
    localised_name = { "recipe-name.angels-alien-fish-1-raw" },
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-algae-brown", amount = 2 },
      { type = "item", name = "angels-alien-fish-1-raw", amount = 2, ignored_by_stats = 2 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      {
        type = "item",
        name = "angels-alien-fish-1-raw",
        amount_min = 5,
        amount_max = 10,
        ignored_by_productivity = 2,
        ignored_by_stats = 2,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "angels-alien-fish-1-raw",
    allow_productivity = true,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-1.png",
        icon_size = 32,
      },
    },
    order = "ab",
  },
  {
    type = "recipe",
    name = "angels-alien-fish-2-raw",
    localised_name = { "recipe-name.angels-alien-fish-2-raw" },
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-algae-green", amount = 2 },
      { type = "item", name = "angels-alien-fish-2-raw", amount = 2, ignored_by_stats = 2 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      {
        type = "item",
        name = "angels-alien-fish-2-raw",
        amount_min = 5,
        amount_max = 10,
        ignored_by_productivity = 2,
        ignored_by_stats = 2,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "angels-alien-fish-2-raw",
    allow_productivity = true,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-2.png",
        icon_size = 32,
      },
    },
    order = "ac",
  },
  {
    type = "recipe",
    name = "angels-alien-fish-3-raw",
    localised_name = { "recipe-name.angels-alien-fish-3-raw" },
    category = "angels-bio-refugium-fish",
    subgroup = "angels-bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "angels-bio-raw-meat", amount = 2 },
      { type = "item", name = "angels-alien-fish-3-raw", amount = 2, ignored_by_stats = 2 },
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "angels-liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      {
        type = "item",
        name = "angels-alien-fish-3-raw",
        amount_min = 5,
        amount_max = 10,
        ignored_by_productivity = 2,
        ignored_by_stats = 2,
      },
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "angels-alien-fish-3-raw",
    allow_productivity = true,
    icons = {
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png",
        icon_size = 32,
      },
      {
        icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-fish-3.png",
        icon_size = 32,
      },
    },
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- BUTCHERY ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-fish-butchery-0",
    localised_name = { "recipe-name.angels-butchering", { "item-name.raw-fish" }  },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1, probability = 0.5 },
    },
    show_amount_in_title = false,
    icons = angelsmods.functions.create_solid_recipe_icon(
      { "raw-fish" },
      "angels-bio-raw-meat"
    ),
    order = "aa",
  },
  {
    type = "recipe",
    name = "angels-fish-butchery-1",
    localised_name = { "recipe-name.angels-butchering", { "item-name.angels-alien-fish-1-raw" }  },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "angels-alien-fish-1-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    show_amount_in_title = false,
    icons = angelsmods.functions.create_solid_recipe_icon(
      { "angels-alien-fish-1-raw" },
      "angels-bio-raw-meat"
    ),
    order = "ab",
  },
  {
    type = "recipe",
    name = "angels-fish-butchery-2",
    localised_name = { "recipe-name.angels-butchering", { "item-name.angels-alien-fish-2-raw" }  },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "angels-alien-fish-2-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 1 },
    },
    show_amount_in_title = false,
    icons = angelsmods.functions.create_solid_recipe_icon(
      { "angels-alien-fish-2-raw" },
      "angels-bio-raw-meat"
    ),
    order = "ac",
  },
  {
    type = "recipe",
    name = "angels-fish-butchery-3",
    localised_name = { "recipe-name.angels-butchering", { "item-name.angels-alien-fish-3-raw" }  },
    category = "angels-bio-butchery",
    subgroup = "angels-bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "angels-alien-fish-3-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-bio-raw-meat", amount = 2 },
    },
    show_amount_in_title = false,
    icons = angelsmods.functions.create_solid_recipe_icon(
      { "angels-alien-fish-3-raw" },
      "angels-bio-raw-meat"
    ),
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- FISH OIL ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-fish-pressing-0",
    localised_name = { "fluid-name.angels-liquid-raw-fish-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 200 },
      { type = "item", name = "angels-fish-pulp", amount = 5 },
    },
    main_product = "angels-liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "raw-fish",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-a[fish-0]",
  },
  {
    type = "recipe",
    name = "angels-fish-pressing-1",
    localised_name = { "fluid-name.angels-liquid-raw-fish-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "angels-alien-fish-1-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 200 },
      { type = "item", name = "angels-fish-pulp", amount = 1 },
    },
    main_product = "angels-liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "angels-alien-fish-1-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-b[fish-1]",
  },
  {
    type = "recipe",
    name = "angels-fish-pressing-2",
    localised_name = { "fluid-name.angels-liquid-raw-fish-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "angels-alien-fish-2-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 100 },
      { type = "item", name = "angels-fish-pulp", amount = 2 },
    },
    main_product = "angels-liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "angels-alien-fish-2-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-c[fish-2]",
  },
  {
    type = "recipe",
    name = "angels-fish-pressing-3",
    localised_name = { "fluid-name.angels-liquid-raw-fish-oil" },
    category = "angels-bio-pressing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "item", name = "angels-alien-fish-3-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 50 },
      { type = "item", name = "angels-fish-pulp", amount = 1 },
    },
    main_product = "angels-liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "angels-alien-fish-3-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-d[fish-3]",
  },
  {
    type = "recipe",
    name = "angels-fish-pulp-nutrients",
    localised_name = { "fluid-name.angels-liquid-nutrient-pulp" },
    category = "angels-nutrient-extractor",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-fish-pulp", amount = 5 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-nutrient-pulp", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 214, 135, 010 }, nil, { 239, 168, 044 } }, {
      "angels-fish-pulp",
    }),
    order = "c[nutrient-extraction]",
  },
  {
    type = "recipe",
    name = "angels-liquid-raw-fish-oil-filtering-1",
    category = "angels-filtering",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 150 },
      { type = "fluid", name = "angels-thermal-water", amount = 50 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fish-oil", amount = 100 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 100 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_filtering_recipe_icon(
      "coal",
      { { 200, 113, 048 }, { 191, 155, 037 }, { 241, 155, 057, 0.8 }, { 244, 191, 015, 0.8 } }
    ),
    icon_size = 32,
    order = "b[oil-processing]-b",
  },
  {
    type = "recipe",
    name = "angels-liquid-raw-fish-oil-filtering-2",
    category = "angels-filtering-2",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "angels-liquid-raw-fish-oil", amount = 150 },
      { type = "fluid", name = "angels-thermal-water", amount = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1, ignored_by_stats = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fish-oil", amount = 125 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 75 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1, ignored_by_productivity = 1 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_filtering_recipe_icon(
      "ceramic",
      { { 200, 113, 048 }, { 191, 155, 037 }, { 241, 155, 057, 0.8 }, { 244, 191, 015, 0.8 } }
    ),
    icon_size = 32,
    order = "b[oil-processing]-c",
  },
  {
    type = "recipe",
    name = "angels-liquid-fish-oil-refining",
    category = "oil-processing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-fish-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fermentation-raw", amount = 40 },
      { type = "fluid", name = "lubricant", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "angels-liquid-fermentation-raw",
      "lubricant",
    }, { { 244, 191, 015 }, { 214, 168, 029 }, { 191, 155, 037 } }),
    order = "b[oil-processing]-d",
  },
  {
    type = "recipe",
    name = "angels-advanced-liquid-fish-oil-refining",
    category = "oil-processing",
    subgroup = "angels-bio-processor-press-fish",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-fish-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-fermentation-raw", amount = 75 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 25 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "angels-liquid-fermentation-raw",
      "angels-liquid-mineral-oil",
    }, { { 244, 191, 015 }, { 214, 168, 029 }, { 191, 155, 037 } }),
    order = "b[oil-processing]-e",
  },
  ---------------------------------------------------------------------------
  -- CRYSTALIZATION ---------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "angels-crystal-splinter-crystalization-1",
    localised_name = { "item-name.angels-crystal-splinter-raw" },
    category = "angels-crystallizing",
    subgroup = "angels-bio-biter-processing-crystal-splinter",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 50 },
    },
    results = {
      { type = "item", name = "angels-crystal-splinter-raw", amount = 1, probability = 0.4 },
    },
    always_show_products = true,
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-crystal-splinter-raw"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[crystalization]-a",
  },
  {
    type = "recipe",
    name = "angels-crystal-splinter-crystalization-2",
    localised_name = { "item-name.angels-crystal-splinter-raw" },
    category = "angels-crystallizing",
    subgroup = "angels-bio-biter-processing-crystal-splinter",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "angels-liquid-polluted-fish-atmosphere", amount = 50 },
      { type = "item", name = "angels-crystal-seed", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-crystal-splinter-raw", amount = 1 },
    },
    always_show_products = true,
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-crystal-splinter-raw"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[crystalization]-b",
  },
})
