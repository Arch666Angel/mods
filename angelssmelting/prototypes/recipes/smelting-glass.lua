data:extend({
  --GLAS
  -- SMELTING INTERMEDIATE
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-solid-glass-mixture",
    category = "angels-powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-powder-silicon", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solid-glass-mixture", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-glass-mixture"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-glass-mixture-2",
    localised_name = { "item-name.angels-solid-glass-mixture" },
    category = "angels-powder-mixing-2",
    subgroup = "angels-glass",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-powder-silicon", amount = 2 },
      { type = "item", name = "angels-solid-lime", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-glass-mixture", amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-glass-mixture"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-glass-mixture-3",
    localised_name = { "item-name.angels-solid-glass-mixture" },
    category = "angels-powder-mixing-3",
    subgroup = "angels-glass",
    energy_required = 8,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-powder-silicon", amount = 1 },
      { type = "item", name = "angels-solid-aluminium-oxide", amount = 1 },
      { type = "item", name = "angels-solid-lime", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-solid-glass-mixture", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-glass-mixture"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-c",
  },
  {
    type = "recipe",
    name = "angels-solid-glass-mixture-4",
    localised_name = { "item-name.angels-solid-glass-mixture" },
    category = "angels-powder-mixing-3",
    subgroup = "angels-glass",
    energy_required = 8,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-sand", amount = 1 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 1 },
      { type = "item", name = "angels-solid-lime", amount = 1 },
      { type = "item", name = "angels-solid-sodium-sulfate", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-solid-glass-mixture", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-glass-mixture"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-d",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-glass",
    category = "angels-induction-smelting-2",
    subgroup = "angels-glass-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-glass-mixture", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 120 },
    },
    order = "b[liquid-molten-glass]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-glass"),
  },
  {
    type = "recipe",
    name = "angels-coil-glass-fiber",
    category = "angels-strand-casting-2",
    subgroup = "angels-glass-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-coil-glass-fiber", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-coil-glass-fiber"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-coil-glass-fiber]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-glass"),
  },
  {
    type = "recipe",
    name = "angels-coil-glass-fiber-2",
    localised_name = { "item-name.angels-coil-glass-fiber" },
    category = "angels-strand-casting-3",
    subgroup = "angels-glass-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-coil-glass-fiber", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-coil-glass-fiber",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-coil-glass-fiber"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-coil-glass-fiber]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-glass"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-glass",
    localised_name = { "item-name.angels-plate-glass" },
    category = "angels-casting-2",
    subgroup = "angels-glass-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-glass", amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-glass"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[angels-plate-glass]-b", -- d[angels-plate-glass]-a reserved for quartz (ore) smelting (see bob overrides)
  },
  {
    type = "recipe",
    name = "angels-plate-glass-2",
    localised_name = { "item-name.angels-plate-glass" },
    category = "angels-casting-3",
    subgroup = "angels-glass-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 3,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-plate-glass", amount = 4 },
      { type = "item", name = "angels-solid-lead-oxide", amount = 2, ignored_by_productivity = 2 },
    },
    main_product = "angels-plate-glass",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-glass"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[angels-plate-glass]-c",
  },
  {
    type = "recipe",
    name = "angels-plate-glass-3",
    localised_name = { "item-name.angels-plate-glass" },
    category = "angels-casting-4",
    subgroup = "angels-glass-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-glass", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-tin", amount = 20 },
      { type = "fluid", name = "angels-gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-plate-glass", amount = 5 },
      { type = "item", name = "angels-ingot-tin", amount = 2, ignored_by_productivity = 2 },
    },
    main_product = "angels-plate-glass",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-glass"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "d[angels-plate-glass]-d",
  },
  {
    type = "recipe",
    name = "angels-glass-fiber-board",
    localised_name = { "item-name.angels-void" },
    category = "crafting-with-fluid",
    subgroup = "angels-glass-casting",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-coil-glass-fiber", amount = 1 },
      { type = "fluid", name = "angels-liquid-resin", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-void", amount = 1 }, -- see glass overrides
    },
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelsrefininggraphics__/graphics/icons/void.png",
        icon_size = 32,
      },
    }, 1, angelsmods.smelting.number_tint),
    order = "e[angels-glass-fiber-board]",
  },
})
