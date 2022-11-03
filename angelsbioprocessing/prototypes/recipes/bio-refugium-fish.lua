local AF = angelsmods.functions
data:extend({
  {
    type = "recipe",
    name = "liquid-fish-atmosphere",
    category = "chemistry",
    subgroup = "bio-fish",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "water", amount = 50 },
      { type = "fluid", name = "water-saline", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    main_product = "liquid-fish-atmosphere",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 194, 227, 091 }, { 184, 239, 000 }, { 156, 207, 000 } }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-fish-atmosphere",
      "water",
      "water-saline",
      "liquid-fish-atmosphere",
    }),
    order = "b",
  },
  {
    type = "recipe",
    name = "liquid-polluted-fish-atmosphere",
    category = "liquifying",
    subgroup = "bio-fish-breeding",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
      { type = "item", name = "bio-raw-meat", amount = 25 },
    },
    results = {
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    main_product = "liquid-polluted-fish-atmosphere",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 194, 227, 091 }, { 241, 050, 238 }, { 241, 050, 238 } }),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-polluted-fish-atmosphere"),
    order = "b",
  },
  ---------------------------------------------------------------------------
  -- KEEPING ----------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "fish-keeping-0",
    category = "bio-refugium-fish",
    subgroup = "bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 4 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "raw-fish", amount = 2, catalyst_amount = 2 },
      {
        type = "item",
        name = "raw-fish",
        amount = 1,
        probability = 0.75,
        catalyst_amount = 1,
        show_details_in_recipe_tooltip = false,
      },
      {
        type = "item",
        name = "raw-fish",
        amount = 1,
        probability = 0.50,
        catalyst_amount = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64,
    order = "aa",
  },
  {
    type = "recipe",
    name = "fish-keeping-1",
    category = "bio-refugium-fish",
    subgroup = "bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "alien-fish-1-raw", amount = 4 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-1-raw", amount = 3, catalyst_amount = 3 },
      {
        type = "item",
        name = "alien-fish-1-raw",
        amount = 1,
        probability = 0.85,
        catalyst_amount = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    order = "ab",
  },
  {
    type = "recipe",
    name = "fish-keeping-2",
    category = "bio-refugium-fish",
    subgroup = "bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "alien-fish-2-raw", amount = 4 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-2-raw", amount = 3, catalyst_amount = 3 },
      {
        type = "item",
        name = "alien-fish-2-raw",
        amount = 1,
        probability = 0.85,
        catalyst_amount = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    order = "ac",
  },
  {
    type = "recipe",
    name = "fish-keeping-3",
    category = "bio-refugium-fish",
    subgroup = "bio-fish",
    enabled = false,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "alien-fish-3-raw", amount = 4 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-3-raw", amount = 3, catalyst_amount = 3 },
      {
        type = "item",
        name = "alien-fish-3-raw",
        amount = 1,
        probability = 0.85,
        catalyst_amount = 1,
        show_details_in_recipe_tooltip = false,
      },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- BREEDING ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "fish-breeding-0",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 2 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "raw-fish", amount_min = 2, amount_max = 4, catalyst_amount = 2 },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
      --{type="fluid", name="water-yellow-waste", amount=20},
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
        icon_size = 32,
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
      },
    },
    --icon_size = 32,
    order = "aa",
  },
  {
    type = "recipe",
    name = "fish-breeding-1",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "algae-brown", amount = 2 },
      { type = "item", name = "alien-fish-1-raw", amount = 2 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-1-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2 },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
      },
    },
    icon_size = 32,
    order = "ab",
  },
  {
    type = "recipe",
    name = "fish-breeding-2",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "algae-green", amount = 2 },
      { type = "item", name = "alien-fish-2-raw", amount = 2 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-2-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2 },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
      },
    },
    icon_size = 32,
    order = "ac",
  },
  {
    type = "recipe",
    name = "fish-breeding-3",
    category = "bio-refugium-fish",
    subgroup = "bio-fish-breeding",
    enabled = false,
    energy_required = 60,
    ingredients = {
      { type = "item", name = "bio-raw-meat", amount = 2 },
      { type = "item", name = "alien-fish-3-raw", amount = 2 },
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
      { type = "fluid", name = "liquid-fish-atmosphere", amount = 100 },
    },
    results = {
      { type = "item", name = "alien-fish-3-raw", amount_min = 5, amount_max = 10, catalyst_amount = 2 },
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100 },
    },
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
      },
    },
    icon_size = 32,
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- BUTCHERY ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "fish-butchery-0",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-raw-meat", amount = 1, probability = 0.5 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "aa",
  },
  {
    type = "recipe",
    name = "fish-butchery-1",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "alien-fish-1-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "ab",
  },
  {
    type = "recipe",
    name = "fish-butchery-2",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "alien-fish-2-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-raw-meat", amount = 1 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "ac",
  },
  {
    type = "recipe",
    name = "fish-butchery-3",
    category = "bio-butchery",
    subgroup = "bio-fish-butchery",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
      { type = "item", name = "alien-fish-3-raw", amount = 1 },
    },
    results = {
      { type = "item", name = "bio-raw-meat", amount = 2 },
    },
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    order = "ad",
  },
  ---------------------------------------------------------------------------
  -- FISH OIL ---------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "fish-pressing-0",
    category = "bio-pressing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "item", name = "raw-fish", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 200 },
      { type = "item", name = "fish-pulp", amount = 5 },
    },
    main_product = "liquid-raw-fish-oil",
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
    name = "fish-pressing-1",
    category = "bio-pressing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "alien-fish-1-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 200 },
      { type = "item", name = "fish-pulp", amount = 1 },
    },
    main_product = "liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "alien-fish-1-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-b[fish-1]",
  },
  {
    type = "recipe",
    name = "fish-pressing-2",
    category = "bio-pressing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "alien-fish-2-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 100 },
      { type = "item", name = "fish-pulp", amount = 2 },
    },
    main_product = "liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "alien-fish-2-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-c[fish-2]",
  },
  {
    type = "recipe",
    name = "fish-pressing-3",
    category = "bio-pressing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "item", name = "alien-fish-3-raw", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 50 },
      { type = "item", name = "fish-pulp", amount = 1 },
    },
    main_product = "liquid-raw-fish-oil",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } },
      {
        "alien-fish-3-raw",
      }
    ),
    icon_size = 32,
    order = "a[oil-extraction]-d[fish-3]",
  },
  {
    type = "recipe",
    name = "fish-pulp-nutrients",
    category = "nutrient-extractor",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "fish-pulp", amount = 5 },
    },
    results = {
      { type = "fluid", name = "liquid-nutrient-pulp", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 214, 135, 010 }, nil, { 239, 168, 044 } }, {
      "fish-pulp",
    }),
    order = "c[nutrient-extraction]",
  },
  {
    type = "recipe",
    name = "liquid-raw-fish-oil-filtering-1",
    category = "filtering",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 150 },
      { type = "fluid", name = "thermal-water", amount = 50 },
      { type = "item", name = "filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-fish-oil", amount = 100 },
      { type = "fluid", name = "liquid-mineral-oil", amount = 100 },
      { type = "item", name = "filter-frame", amount = 1, catalyst_amount = 1 },
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
    name = "liquid-raw-fish-oil-filtering-2",
    category = "filtering-2",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "liquid-raw-fish-oil", amount = 150 },
      { type = "fluid", name = "thermal-water", amount = 50 },
      { type = "item", name = "filter-ceramic", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-fish-oil", amount = 125 },
      { type = "fluid", name = "liquid-mineral-oil", amount = 75 },
      { type = "item", name = "filter-ceramic-used", amount = 1, catalyst_amount = 1 },
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
    name = "liquid-fish-oil-refining",
    category = "oil-processing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-fish-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 40 },
      { type = "fluid", name = "lubricant", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "liquid-fermentation-raw",
      "lubricant",
    }, { { 244, 191, 015 }, { 214, 168, 029 }, { 191, 155, 037 } }),
    order = "b[oil-processing]-d",
  },
  {
    type = "recipe",
    name = "advanced-liquid-fish-oil-refining",
    category = "oil-processing",
    subgroup = "bio-processor-press-fish",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-fish-oil", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 75 },
      { type = "fluid", name = "liquid-mineral-oil", amount = 25 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      "liquid-fermentation-raw",
      "liquid-mineral-oil",
    }, { { 244, 191, 015 }, { 214, 168, 029 }, { 191, 155, 037 } }),
    order = "b[oil-processing]-e",
  },
  ---------------------------------------------------------------------------
  -- CRYSTALIZATION ---------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "recipe",
    name = "crystal-splinter-crystalization-1",
    category = "crystallizing",
    subgroup = "bio-biter-processing-crystal-splinter",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 50 },
    },
    results = {
      { type = "item", name = "crystal-splinter-raw", amount = 1, probability = 0.4 },
    },
    always_show_products = true,
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("crystal-splinter-raw"),
      1,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[crystalization]-a",
  },
  {
    type = "recipe",
    name = "crystal-splinter-crystalization-2",
    category = "crystallizing",
    subgroup = "bio-biter-processing-crystal-splinter",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 50 },
      { type = "item", name = "crystal-seed", amount = 1 },
    },
    results = {
      { type = "item", name = "crystal-splinter-raw", amount = 1 },
    },
    always_show_products = true,
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("crystal-splinter-raw"),
      2,
      angelsmods.bioprocessing.number_tint
    ),
    order = "a[crystalization]-b",
  },
})
