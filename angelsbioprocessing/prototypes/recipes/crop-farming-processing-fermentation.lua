local AF = angelsmods.functions
data:extend({
  {
    type = "recipe",
    name = "fermentation-corn",
    category = "liquifying",
    subgroup = "bio-processor-fermentation",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "solid-corn", amount = 10 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 75 },
    },
    always_show_products = true,
    order = "a",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-corn.png",
        scale = 0.4375,
        shift = { -10, -10 },
      },
    },
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-fermentation-raw",
      "water",
      "gas-acid",--[[for the yellow]]
      "gas-acid",--[[for the yellow]]
    }),
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "fermentation-fruit",
    category = "liquifying",
    subgroup = "bio-processor-fermentation",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "solid-fruit", amount = 10 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 100 },
    },
    always_show_products = true,
    order = "b",
    icons = {
      {
        icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png",
      },
      {
        icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
        scale = 0.4375,
        shift = { -10, -10 },
      },
    },
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-fermentation-raw",
      "water",
      AF.fluid_color("P"),--[[for the orange]]
      AF.fluid_color("P"),--[[for the orange]]
    }),
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "aerobic-fermentation",
    category = "chemistry",
    subgroup = "bio-processor-fermentation",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 100 },
    },
    results = {
      { type = "fluid", name = "liquid-acetic-acid", amount = 50 },
      { type = "item", name = "solid-compost", amount = 1, probability = 0.5 },
    },
    main_product = "liquid-acetic-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-acetic-acid.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-acetic-acid",
      "liquid-fermentation-raw",
      "liquid-acetic-acid",
      "liquid-fermentation-raw",
    }),
    order = "c",
  },
  -- PROCESSING
  {
    type = "recipe",
    name = "anaerobic-fermentation",
    category = "chemistry",
    subgroup = "bio-processor-fermentation",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-fermentation-raw", amount = 100 },
    },
    results = {
      { type = "fluid", name = "gas-ethanol", amount = 50 },
      { type = "item", name = "solid-compost", amount = 1, probability = 0.5 },
    },
    main_product = "gas-ethanol",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-ethanol.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-ethanol",
      "liquid-fermentation-raw",
      "liquid-ethanol",
      "liquid-fermentation-raw",
    }),
    order = "d",
  },
  {
    type = "recipe",
    name = "ethanol-to-ethylene-synthesis",
    category = "chemistry",
    subgroup = "bio-processor-fermentation",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-ethanol", amount = 50 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 50 },
    },
    results = {
      { type = "fluid", name = "gas-ethylene", amount = 50 },
      { type = "fluid", name = "water-yellow-waste", amount = 50 },
    },
    main_product = "gas-ethylene",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72 },
    }, "CHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "gas-ethylene",
      "liquid-sulfuric-acid",
      "water-yellow-waste",
      "gas-ethanol",
    }),
    order = "e",
  },
  --BIO PLASTICS
  {
    type = "recipe",
    name = "liquid-acetic-acid-catalyst",
    category = "advanced-chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-methanol", amount = 70 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 30 },
      { type = "fluid", name = "water-purified", amount = 50 },
      { type = "item", name = "catalyst-metal-red", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-acetic-acid", amount = 100 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1 },
    },
    main_product = "liquid-acetic-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-acetic-acid.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-acetic-acid",
      "gas-methanol",
      "water-purified",
      "gas-carbon-monoxide",
    }),
    order = "a",
  },
  {
    type = "recipe",
    name = "liquid-acetic-anhydride",
    category = "advanced-chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-acetic-acid", amount = 100 },
      { type = "fluid", name = "gas-methanol", amount = 50 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
    },
    results = {
      { type = "fluid", name = "liquid-acetic-anhydride", amount = 150 },
    },
    main_product = "liquid-acetic-anhydride",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-acetic-anhydride.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-acetic-anhydride",
      "liquid-acetic-acid",
      "gas-methanol",
      "gas-carbon-monoxide",
    }),
    order = "b",
  },
  {
    type = "recipe",
    name = "liquid-acetate-mixture",
    category = "advanced-chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "cellulose-fiber", amount = 10 },
      { type = "fluid", name = "liquid-acetic-acid", amount = 40 },
      { type = "fluid", name = "liquid-acetic-anhydride", amount = 40 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 100 },
    },
    main_product = "liquid-cellulose-acetate-mixture",
    always_show_products = true,
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-cellulose-acetate-mixture",
      "liquid-acetic-anhydride",
      "liquid-acetic-acid",
      "liquid-sulfuric-acid",
    }),
    order = "c",
  },
  {
    type = "recipe",
    name = "liquid-cellulose-acetate",
    category = "chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 50 },
      { type = "fluid", name = "water-purified", amount = 20 },
    },
    results = {
      { type = "fluid", name = "liquid-cellulose-acetate", amount = 50 },
      { type = "fluid", name = "water-yellow-waste", amount = 20 },
    },
    main_product = "liquid-cellulose-acetate",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-cellulose-acetate.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-cellulose-acetate",
      "liquid-cellulose-acetate-mixture",
      "water-yellow-waste",
      "water-purified",
    }),
    order = "d",
  },
  {
    type = "recipe",
    name = "bio-plastic-1",
    category = "chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-cellulose-acetate", amount = 25 },
      { type = "fluid", name = "gas-acetone", amount = 25 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 15 },
    },
    main_product = "liquid-plastic",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      AF.add_number_icon_layer({}, 1, angelsmods.bioprocessing.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-plastic",
      "liquid-cellulose-acetate",
      "gas-acetone",
      "liquid-plastic",
    }),
    order = "e",
  },
  {
    type = "recipe",
    name = "liquid-propionic-acid-catalyst",
    category = "advanced-chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "gas-ethylene", amount = 50 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 50 },
      { type = "fluid", name = "water-purified", amount = 50 },
      { type = "item", name = "catalyst-metal-green", amount = 1 },
    },
    results = {
      { type = "fluid", name = "liquid-propionic-acid", amount = 50 },
      { type = "item", name = "catalyst-metal-carrier", amount = 1 },
    },
    main_product = "liquid-propionic-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelsbioprocessing__/graphics/icons/molecule-propionic-acid.png", 72 },
    }, "COH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-propionic-acid",
      "gas-ethylene",
      "gas-carbon-monoxide",
      "water-purified",
    }),
    order = "f",
  },
  {
    type = "recipe",
    name = "bio-plastic-2",
    category = "advanced-chemistry",
    subgroup = "bio-plastic",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "cellulose-fiber", amount = 10 },
      { type = "fluid", name = "liquid-acetic-acid", amount = 25 },
      { type = "fluid", name = "liquid-propionic-acid", amount = 25 },
    },
    results = {
      { type = "fluid", name = "liquid-plastic", amount = 25 },
    },
    main_product = "liquid-plastic",
    always_show_products = true,
    icons = AF.create_viscous_liquid_recipe_icon(nil, { { 255, 255, 255 }, { 255, 255, 255 } }, {
      AF.add_number_icon_layer({}, 2, angelsmods.bioprocessing.number_tint),
    }),
    crafting_machine_tint = AF.get_recipe_tints({
      "liquid-plastic",
      "liquid-propionic-acid",
      "liquid-acetic-acid",
      "liquid-plastic",
    }),
    order = "g",
  },
})
