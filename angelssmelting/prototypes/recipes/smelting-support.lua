data:extend({
  --COOLANT
  {
    type = "recipe",
    name = "angels-coolant-cool-steam",
    localised_name = { "fluid-name.angels-water-purified" },
    category = "angels-cooling",
    subgroup = "angels-coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "angels-water-purified", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "angels-water-purified",
      },
      "WsWsWs",
      {
        "steam",
      }
    ),
    order = "a",
  },
  {
    type = "recipe",
    name = "angels-liquid-coolant",
    category = "chemistry",
    subgroup = "angels-coolant",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 80 },
      { type = "fluid", name = "angels-liquid-mineral-oil", amount = 20 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant", amount = 100 },
    },
    icon_size = 32,
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-coolant"),
    order = "b",
  },
  {
    type = "recipe",
    name = "angels-coolant-used-filtration-1",
    category = "angels-filtering-2",
    subgroup = "angels-coolant",
    energy_required = 5, --4
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 200, maximum_temperature = 50 },
      { type = "item", name = "angels-filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant", amount = 160, ignored_by_stats = 160 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-liquid-coolant",
    icons = angelsmods.functions.create_solid_recipe_icon(
        nil,
        "angels-liquid-coolant",
        { "angels-filter-coal" }
    ),
    order = "d",
  },
  {
    type = "recipe",
    name = "angels-coolant-used-filtration-2",
    category = "angels-filtering-3",
    subgroup = "angels-coolant",
    energy_required = 3.5, --4
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 200, maximum_temperature = 50 },
      { type = "item", name = "angels-filter-ceramic", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant", amount = 160, ignored_by_stats = 160 },
      { type = "item", name = "angels-filter-ceramic-used", amount = 1 },
    },
    main_product = "angels-liquid-coolant",
    icons = angelsmods.functions.create_solid_recipe_icon(
        nil,
        "angels-liquid-coolant",
        { "angels-filter-ceramic" }
    ),
    order = "d",
  },
  --COOLING TOWER
  {
    type = "recipe",
    name = "angels-coolant-cool-300",
    category = "angels-cooling",
    subgroup = "angels-coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-coolant-used",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 250,
        maximum_temperature = 350,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 200, ignored_by_stats = 200, temperature = 200 },
      { type = "fluid", name = "steam", amount = 50, temperature = 175 },
    },
    --main_product= "angels-liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-coolant-used"),
      3,
      angelsmods.refining.number_tint
    ),
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-coolant-cool-200",
    category = "angels-cooling",
    subgroup = "angels-coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-coolant-used",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 150,
        maximum_temperature = 250,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 200, ignored_by_stats = 200, temperature = 100 },
      { type = "fluid", name = "steam", amount = 50, temperature = 150 },
    },
    --main_product= "angels-liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-coolant-used"),
      2,
      angelsmods.refining.number_tint
    ),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-coolant-cool-100",
    category = "angels-cooling",
    subgroup = "angels-coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "angels-liquid-coolant-used",
        amount = 200,
        ignored_by_stats = 200,
        minimum_temperature = 50,
        maximum_temperature = 150,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 200, ignored_by_stats = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    --main_product= "angels-liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-coolant-used"),
      1,
      angelsmods.refining.number_tint
    ),
    order = "f",
  },
  --MOLDS
  {
    type = "recipe",
    name = "angels-casing-resin-mold",
    localised_name = { "item-name.motor-casing-0" },
    category = "crafting",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-resin", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-motor-casing-0", amount = 1 },
    },
    main_product = "angels-motor-casing-0",
    --allow_decomposition = false,
    --icons = {
    --  {
    --    icon = "__angelsindustriesgraphics__/graphics/icons/motor-casing-1.png"
    --  },
    --  {
    --    icon = "__angelssmeltinggraphics__/graphics/icons/plate-iron.png",
    --    scale = 0.4375,
    --    shift = {-10, -10}
    --  }
    --},
    icon_size = 32,
    order = "a[positive-mold]",
  },
  {
    type = "recipe",
    name = "angels-mold-expendable",
    localised_name = { "item-name.mold-expendable" },
    category = "angels-sintering",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-sand", amount = 40 },
      { type = "item", name = "angels-motor-casing-0", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-mold-expendable", amount = 1 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    main_product = "angels-mold-expendable",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/expendable-mold.png",
        icon_size = 32,
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/motor-casing-0.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { 10, -10 },
      },
    },
    order = "b[mold-expendable]",
  },
  {
    type = "recipe",
    name = "angels-mold-non-expendable",
    localised_name = { "item-name.mold-non-expendable" },
    category = "angels-sintering-3",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-clay", amount = 50 },
      { type = "item", name = "angels-motor-casing-0", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-mold-non-expendable", amount = 1 },
      { type = "item", name = "angels-slag", amount = 1 },
    },
    main_product = "angels-mold-non-expendable",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/motor-casing-0.png",
        icon_size = 32,
        scale = 0.4375,
        shift = { 10, -10 },
      },
    }, 1, angelsmods.smelting.number_tint),
    order = "c[mold-non-expendable]-a[creation]",
  },
  {
    type = "recipe",
    name = "angels-mold-non-expendable-wash",
    category = "crafting-with-fluid",
    subgroup = "angels-mold-casting",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-spent-mold-non-expendable", amount = 1 },
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-mold-non-expendable", amount = 1, probability = 0.975 },
      { type = "fluid", name = "angels-water-red-waste", amount = 20 },
    },
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/nitric-acid.png",
        icon_size = 72,
        scale = 32 / 72 * 0.4375,
        shift = { 10, -10 },
      },
    }, 2, angelsmods.smelting.number_tint),
    order = "c[mold-non-expendable]-b[cleaning]",
  },
})
