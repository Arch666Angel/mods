data:extend({
  --COOLANT
  {
    type = "recipe",
    name = "coolant-cool-steam",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "steam", amount = 100 },
    },
    results = {
      { type = "fluid", name = "water-purified", amount = 100 },
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "water-purified",
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
    name = "coolant",
    category = "chemistry",
    subgroup = "coolant",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "water", amount = 80 },
      { type = "fluid", name = "liquid-mineral-oil", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant", amount = 100 },
    },
    icon_size = 32,
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-coolant"),
    order = "b",
  },
  {
    type = "recipe",
    name = "coolant-used-filtration-1",
    category = "filtering",
    subgroup = "coolant",
    energy_required = 5, --4
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-coolant-used", amount = 200, maximum_temperature = 50 },
      { type = "item", name = "filter-coal", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant", amount = 160 },
      { type = "item", name = "filter-frame", amount = 1 },
    },
    main_product = "liquid-coolant",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "coolant-used-filtration-2",
    category = "filtering-2",
    subgroup = "coolant",
    energy_required = 3.5, --4
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-coolant-used", amount = 200, maximum_temperature = 50 },
      { type = "item", name = "filter-ceramic", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant", amount = 160 },
      { type = "item", name = "filter-ceramic-used", amount = 1 },
    },
    main_product = "liquid-coolant",
    icon_size = 32,
    order = "d",
  },
  --COOLING TOWER
  {
    type = "recipe",
    name = "coolant-cool-300",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "liquid-coolant-used",
        amount = 200,
        minimum_temperature = 250,
        maximum_temperature = 350,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant-used", amount = 200, temperature = 200 },
      { type = "fluid", name = "steam", amount = 50, temperature = 175 },
    },
    --main_product= "liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-coolant-used"),
      3,
      angelsmods.refining.number_tint
    ),
    order = "h",
  },
  {
    type = "recipe",
    name = "coolant-cool-200",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "liquid-coolant-used",
        amount = 200,
        minimum_temperature = 150,
        maximum_temperature = 250,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant-used", amount = 200, temperature = 100 },
      { type = "fluid", name = "steam", amount = 50, temperature = 150 },
    },
    --main_product= "liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-coolant-used"),
      2,
      angelsmods.refining.number_tint
    ),
    order = "g",
  },
  {
    type = "recipe",
    name = "coolant-cool-100",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = false,
    ingredients = {
      {
        type = "fluid",
        name = "liquid-coolant-used",
        amount = 200,
        minimum_temperature = 50,
        maximum_temperature = 150,
      },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-coolant-used", amount = 200, temperature = 25 },
      { type = "fluid", name = "steam", amount = 50, temperature = 125 },
    },
    --main_product= "liquid-coolant-clean",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-coolant-used"),
      1,
      angelsmods.refining.number_tint
    ),
    order = "f",
  },
  --MOLDS
  {
    type = "recipe",
    name = "angels-casing-resin-mold",
    category = "crafting",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-resin", amount = 2 },
    },
    results = {
      { type = "item", name = "motor-casing-0", amount = 1 },
    },
    main_product = "motor-casing-0",
    --allow_decomposition = false,
    --icons = {
    --  {
    --    icon = "__angelsindustries__/graphics/icons/motor-casing-1.png"
    --  },
    --  {
    --    icon = "__angelssmelting__/graphics/icons/plate-iron.png",
    --    scale = 0.4375,
    --    shift = {-10, -10}
    --  }
    --},
    icon_size = 32,
    order = "a[positive-mold]",
  },
  {
    type = "recipe",
    name = "mold-expendable",
    category = "sintering",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sand", amount = 40 },
      { type = "item", name = "motor-casing-0", amount = 1 },
    },
    results = {
      { type = "item", name = "mold-expendable", amount = 1 },
      { type = "item", name = "slag", amount = 1 },
    },
    main_product = "mold-expendable",
    icon_size = 32,
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/expendable-mold.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/motor-casing-0.png",
        scale = 0.4375,
        shift = { 10, -10 },
      },
    },
    order = "b[mold-expendable]",
  },
  {
    type = "recipe",
    name = "mold-non-expendable",
    category = "sintering-3",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-clay", amount = 50 },
      { type = "item", name = "motor-casing-0", amount = 1 },
    },
    results = {
      { type = "item", name = "mold-non-expendable", amount = 1 },
      { type = "item", name = "slag", amount = 1 },
    },
    main_product = "mold-non-expendable",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
      {
        icon = "__angelssmelting__/graphics/icons/motor-casing-0.png",
        icon_size = 32,
        icon_mipmaps = 1,
        scale = 0.4375,
        shift = { 10, -10 },
      },
    }, 1, angelsmods.smelting.number_tint),
    order = "c[mold-non-expendable]-a[creation]",
  },
  {
    type = "recipe",
    name = "mold-non-expendable-wash",
    category = "crafting-with-fluid",
    subgroup = "angels-mold-casting",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "spent-mold-non-expendable", amount = 1 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "mold-non-expendable", amount = 1, probability = 0.90, catalyst_amount = 1 },
      { type = "fluid", name = "water-red-waste", amount = 20 },
    },
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelssmelting__/graphics/icons/non-expendable-mold.png",
        icon_size = 32,
        icon_mipmaps = 1,
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/nitric-acid.png",
        icon_size = 72,
        scale = 32 / 72 * 0.4375,
        shift = { 10, -10 },
      },
    }, 2, angelsmods.smelting.number_tint),
    order = "c[mold-non-expendable]-b[cleaning]",
  },
})
