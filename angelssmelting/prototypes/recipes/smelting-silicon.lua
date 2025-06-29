data:extend({
  --SILICON
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "silica-ore-processing",
    localised_name = { "item-name.processed-silica" },
    category = "ore-processing-2",
    subgroup = "angels-silicon",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "quartz", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-silica", amount = 2 },
    },
    main_product = "processed-silica",
    order = "b[processed-silica]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-silicon"),
  },
  {
    type = "recipe",
    name = "silica-processed-processing",
    localised_name = { "item-name.pellet-silica" },
    category = "pellet-pressing-2",
    subgroup = "angels-silicon",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-silica", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-silica", amount = 4 },
    },
    main_product = "pellet-silica",
    order = "c[pellet-silica]",
  },
  {
    type = "recipe",
    name = "processed-silicon-smelting",
    localised_name = { "fluid-name.liquid-trichlorosilane" },
    category = "chemical-smelting-2",
    subgroup = "angels-silicon",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-silica", amount = 8 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 60 },
    },
    results = {
      { type = "fluid", name = "liquid-trichlorosilane", amount = 120 },
      { type = "fluid", name = "gas-hydrogen", amount = 30 },
    },
    main_product = "liquid-trichlorosilane",
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon({
      { "__angelssmeltinggraphics__/graphics/icons/molecule-trichlorosilane.png", 72 },
    }, "SiHCl"),
    order = "d[liquid-trichlorosilane]",
  },
  {
    type = "recipe",
    name = "pellet-silicon-smelting",
    localised_name = { "fluid-name.gas-silane" },
    category = "chemical-smelting-3",
    subgroup = "angels-silicon",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-silica", amount = 8 },
      { type = "item", name = "ingot-aluminium", amount = 6 },
      { type = "fluid", name = "gas-hydrogen", amount = 60 },
    },
    results = {
      { type = "fluid", name = "gas-silane", amount = 120 },
      { type = "item", name = "solid-aluminium-oxide", amount = 6 },
    },
    main_product = "gas-silane",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon({
      { "__angelssmeltinggraphics__/graphics/icons/molecule-silane.png", 72 },
    }, "SiHH"),
    order = "e[gas-silane]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "silicon-ore-smelting",
    localised_name = { "item-name.ingot-silicon" },
    category = "blast-smelting-2",
    subgroup = "angels-silicon",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "quartz", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-silicon", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-silicon"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-silicon]-a",
  },
  {
    type = "recipe",
    name = "liquid-trichlorosilane-smelting",
    localised_name = { "item-name.ingot-silicon" },
    category = "chemical-smelting-2",
    subgroup = "angels-silicon",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-trichlorosilane", amount = 90 },
      { type = "item", name = "ingot-silicon", amount = 6, ignored_by_stats = 6 },
    },
    results = {
      { type = "item", name = "ingot-silicon", amount = 24, ignored_by_productivity = 6, ignored_by_stats = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-silicon"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-silicon]-b",
  },
  {
    type = "recipe",
    name = "gas-silane-smelting",
    localised_name = { "item-name.ingot-silicon" },
    category = "chemical-smelting-3",
    subgroup = "angels-silicon",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-silane", amount = 90 },
      { type = "item", name = "ingot-silicon", amount = 6, ignored_by_stats = 6 },
    },
    results = {
      { type = "item", name = "ingot-silicon", amount = 24, ignored_by_productivity = 6, ignored_by_stats = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-silicon"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-silicon]-c",
  },
  {
    type = "recipe",
    name = "powder-silicon",
    localised_name = { "item-name.powder-silicon" },
    category = "advanced-crafting",
    subgroup = "angels-silicon",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-silicon", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-silicon", amount = 1 },
    },
    order = "g[powder-silicon]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-silicon-smelting",
    localised_name = { "fluid-name.liquid-molten-silicon" },
    category = "induction-smelting-2",
    subgroup = "angels-silicon-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-silicon", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-silicon", amount = 120 },
    },
    main_product = "liquid-molten-silicon",
    order = "h[liquid-molten-silicon]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-silicon"),
  },
  {
    type = "recipe",
    name = "angels-mono-silicon-seed",
    localised_name = { "item-name.angels-mono-silicon-seed" },
    category = "casting-2",
    subgroup = "angels-silicon-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-molten-silicon", amount = 5 },
      { type = "fluid", name = "gas-nitrogen", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-mono-silicon-seed", amount = 5 },
    },
    order = "i[angels-mono-silicon-seed]",
  },
  {
    type = "recipe",
    name = "angels-quartz-crucible",
    localised_name = { "item-name.angels-quartz-crucible" },
    category = "crafting",
    subgroup = "angels-silicon-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "quartz", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-quartz-crucible", amount = 1 },
    },
    order = "j[angels-quartz-crucible]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-mono-silicon-1",
    localised_name = { "item-name.angels-mono-silicon" },
    category = "casting-2",
    subgroup = "angels-silicon-casting",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "fluid", name = "liquid-molten-silicon", amount = 40 },
      { type = "item", name = "angels-mono-silicon-seed", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-mono-silicon", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-mono-silicon"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-mono-silicon]-a",
  },
  {
    type = "recipe",
    name = "angels-mono-silicon-2",
    localised_name = { "item-name.angels-mono-silicon" },
    category = "casting-3",
    subgroup = "angels-silicon-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-molten-silicon", amount = 40 },
      { type = "item", name = "angels-quartz-crucible", amount = 1, ignored_by_stats = 1 },
      { type = "item", name = "angels-mono-silicon-seed", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-mono-silicon", amount = 6 },
      {
        type = "item",
        name = "angels-quartz-crucible",
        amount = 1,
        ignored_by_productivity = 1,
        ignored_by_stats = 1,
        probability = 0.80,
      },
    },
    main_product = "angels-mono-silicon",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-mono-silicon"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-mono-silicon]-b",
  },
  {
    type = "recipe",
    name = "angels-silicon-wafer",
    localised_name = { "item-name.angels-silicon-wafer" },
    category = "crafting",
    subgroup = "angels-silicon-casting",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "angels-mono-silicon", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-silicon-wafer", amount_min = 1, amount_max = 5 },
    },
    order = "l[angels-silicon-wafer]",
  },
  -- order m reserved for bob silicon processing
})
