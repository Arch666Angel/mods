local AF = angelsmods.functions

data:extend({
  --SULFUR
  {
    type = "recipe",
    name = "angels-gas-acid-catalyst",
    category = "angels-advanced-chemistry",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-acid", amount = 100 },
      { type = "item", name = "angels-catalyst-metal-green", amount = 1 }, --Al
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 60 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 20 },
      { type = "fluid", name = "angels-gas-hydrogen-fluoride", amount = 20 },
      { type = "item", name = "angels-catalyst-metal-carrier", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
    }, "SHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-hydrogen-sulfide",
      "angels-gas-acid",
      "angels-gas-carbon-dioxide",
      "angels-gas-hydrogen-fluoride",
    }),
    order = "a[gas-acid-catalyst]",
  },
  {
    type = "recipe",
    name = "angels-solid-sulfur",
    category = "chemistry",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 60 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 40 },
    },
    results = {
      { type = "item", name = "sulfur", amount = 3 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/solid-sulfur.png", 32 },
    }, "SSS"),
    crafting_machine_tint = AF.get_recipe_tints({ AF.fluid_color("S"), "angels-gas-hydrogen-sulfide", "angels-gas-oxygen" }),
    order = "b[solid-sulfur]",
  },
  {
    type = "recipe",
    name = "angels-gas-sulfur-dioxide",
    localised_name = { "fluid-name.angels-gas-sulfur-dioxide" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "sulfur", amount = 1 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/sulfur-dioxide.png", 72 },
    }, "SOO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-gas-sulfur-dioxide", "angels-gas-oxygen", AF.fluid_color("S") }),
    order = "ca[gas-sulfur-dioxide]",
  },
  {
    type = "recipe",
    name = "angels-gas-sulfur-dioxide-calcium-sulfate",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-calcium-sulfate", amount = 2 },
      { type = "fluid", name = "angels-water-purified", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 50 },
      { type = "item", name = "angels-void", amount = 1 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/sulfur-dioxide.png", 72 },
    }, "SOO"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-sulfur-dioxide",
      "angels-water-purified",
      { r = 90 / 255, g = 92 / 255, b = 93 / 255 },
    }),
    order = "cb[gas-sulfur-dioxide-calcium-sulfate]",
  },
  {
    type = "recipe",
    name = "angels-liquid-sulfuric-acid",
    localised_name = { "fluid-name.angels-liquid-sulfuric-acid" },
    category = "chemistry",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 90 },
      { type = "fluid", name = "angels-water-purified", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 60 },
    },
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png", 72 },
    }, "SHO"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-liquid-sulfuric-acid", "angels-gas-sulfur-dioxide", "angels-water-purified" }),
    order = "d[liquid-sulfuric-acid]",
  },
  {
    type = "recipe",
    name = "angels-liquid-hydrofluoric-acid",
    localised_name = { "recipe-name.angels-liquid-hydrofluoric-acid" },
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-fluorite-ore", amount = 5 },
      { type = "fluid", name = "sulfuric-acid", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 50 },
      { type = "item", name = "angels-solid-calcium-sulfate", amount = 1 },
    },
    main_product = "angels-liquid-hydrofluoric-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
      },
      "FHH",
      {
        "angels-fluorite-ore",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-hydrofluoric-acid",
      AF.fluid_color("F"),
      "sulfuric-acid",
      { r = 90 / 255, g = 92 / 255, b = 93 / 255 },
    }),
    order = "e[liquid-hydrofluoric-acid]-a",
  },
  {
    type = "recipe",
    name = "angels-hydrogen-fluoride-dissolving",
    category = "chemistry",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-gas-hydrogen-fluoride", amount = 90 },
      { type = "fluid", name = "angels-water-purified", amount = 40 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 60 },
    },
    main_product = "angels-liquid-hydrofluoric-acid",
    always_show_products = true,
    show_amount_in_title = false,
    icons = AF.create_liquid_recipe_icon(
      {
        { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
      },
      "FHH",
      {
        "angels-water-purified",
      }
    ),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-liquid-hydrofluoric-acid",
      "angels-gas-hydrogen-fluoride",
      "angels-water-purified",
    }),
    order = "e[liquid-hydrofluoric-acid]-b",
  },
  {
    type = "recipe",
    name = "angels-gas-hydrogen-fluoride",
    category = "chemistry",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-hydrofluoric-acid", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-gas-hydrogen-fluoride", amount = 55 },
      { type = "fluid", name = "angels-water-greenyellow-waste", amount = 50 },
    },
    main_product = "angels-gas-hydrogen-fluoride",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrofluoric-acid.png", 72 },
    }, "FHH"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-hydrogen-fluoride",
      "angels-liquid-hydrofluoric-acid",
      "angels-water-greenyellow-waste",
    }),
    order = "e[liquid-hydrofluoric-acid]-c",
  },
  {
    type = "recipe",
    name = "angels-filter-lime",
    localised_name = { "item-name.angels-filter-lime" },
    category = "crafting",
    subgroup = "angels-petrochem-catalysts",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_stats = 1 },
      { type = "item", name = "angels-stone-crushed", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-filter-lime", amount = 1 },
    },
    --icon = "__angelspetrochemgraphics__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "b[filter-lime]",
  },
  {
    type = "recipe",
    name = "angels-sulfur-air-scrubbing",
    category = "angels-petrochem-air-filtering",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-filter-lime", amount = 1 },
      { type = "fluid", name = "water", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-filter-lime-used", amount = 1, ignored_by_productivity = 1 },
      { type = "fluid", name = "angels-water-yellow-waste", amount = 20 },
    },
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "angels-filter-lime",
    }, "SSS"),
    crafting_machine_tint = AF.get_recipe_tints({ "angels-water-yellow-waste", "water" }),
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-filter-lime-used-cleaning",
    category = "angels-liquifying",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-filter-lime-used", amount = 1 },
    },
    results = {
      { type = "fluid", name = "angels-gas-acid", amount = 20 },
      { type = "item", name = "angels-filter-frame", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1 },
    },
    main_product = "angels-gas-acid",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      "angels-gas-acid",
    }, "SSF"),
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-gas-acid"),
    order = "h",
  },
  {
    type = "recipe",
    name = "angels-gas-enriched-hydrogen-sulfide",
    category = "angels-steam-cracking",
    subgroup = "angels-petrochem-sulfur",
    energy_required = 2.5,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "steam", amount = 50, minimum_temperature = 125, maximum_temperature = 165 },
      { type = "fluid", name = "angels-gas-hydrogen-sulfide", amount = 50 },
    },
    results = {
      { type = "fluid", name = "angels-water-purified", amount = 50 },
      { type = "fluid", name = "angels-gas-enriched-hydrogen-sulfide", amount = 50, temperature = 100 },
    },
    main_product = "angels-gas-enriched-hydrogen-sulfide",
    always_show_products = true,
    icons = AF.create_gas_recipe_icon({
      { "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-sulfide.png", 72 },
    }, "SWsWs"),
    crafting_machine_tint = AF.get_recipe_tints({
      "angels-gas-enriched-hydrogen-sulfide",
      "angels-gas-hydrogen-sulfide",
      "angels-water-purified",
      "steam",
    }),
    order = "i[enriched-hydrogen-sulfide]-a[enrichment]",
  },
})
