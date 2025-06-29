data:extend({
  --GLAS
  -- SMELTING INTERMEDIATE
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "glass-mixture-1",
    localised_name = { "item-name.solid-glass-mixture" },
    category = "powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "quartz", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-glass-mixture", amount = 1 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-glass-mixture"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-a",
  },
  {
    type = "recipe",
    name = "glass-mixture-2",
    localised_name = { "item-name.solid-glass-mixture" },
    category = "powder-mixing-2",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "quartz", amount = 1 },
      { type = "item", name = "solid-lime", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-glass-mixture", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-glass-mixture"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-b",
  },
  {
    type = "recipe",
    name = "glass-mixture-3",
    localised_name = { "item-name.solid-glass-mixture" },
    category = "powder-mixing-3",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "quartz", amount = 1 },
      { type = "item", name = "solid-aluminium-oxide", amount = 1 },
      { type = "item", name = "solid-lime", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-glass-mixture", amount = 3 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-glass-mixture"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-c",
  },
  {
    type = "recipe",
    name = "glass-mixture-4",
    localised_name = { "item-name.solid-glass-mixture" },
    category = "powder-mixing-3",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-sand", amount = 1 },
      { type = "item", name = "solid-sodium-carbonate", amount = 1 },
      { type = "item", name = "solid-lime", amount = 1 },
      { type = "item", name = "solid-sodium-sulfate", amount = 1 },
    },
    results = {
      { type = "item", name = "solid-glass-mixture", amount = 4 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-glass-mixture"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "a[solid-glass-mixture]-d",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-glass-smelting",
    localised_name = { "fluid-name.liquid-molten-glass" },
    category = "induction-smelting-2",
    subgroup = "angels-glass-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-glass-mixture", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-glass", amount = 120 },
    },
    order = "b[liquid-molten-glass]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-glass"),
  },
  {
    type = "recipe",
    name = "angels-coil-glass-fiber",
    localised_name = { "item-name.angels-coil-glass-fiber" },
    category = "strand-casting-2",
    subgroup = "angels-glass-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-molten-glass", amount = 80 },
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
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-glass"),
  },
  {
    type = "recipe",
    name = "angels-coil-glass-fiber-fast",
    localised_name = { "item-name.angels-coil-glass-fiber" },
    category = "strand-casting-3",
    subgroup = "angels-glass-casting",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "liquid-molten-glass", amount = 140 },
      { type = "fluid", name = "liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-coil-glass-fiber", amount = 8 },
      { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-coil-glass-fiber",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-coil-glass-fiber"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "c[angels-coil-glass-fiber]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-glass"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-glass-1",
    localised_name = { "item-name.angels-plate-glass" },
    category = "casting-2",
    subgroup = "angels-glass-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "liquid-molten-glass", amount = 40 },
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
    category = "casting-3",
    subgroup = "angels-glass-casting",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "fluid", name = "liquid-molten-glass", amount = 40 },
      { type = "fluid", name = "liquid-molten-lead", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-plate-glass", amount = 4 },
      { type = "item", name = "solid-lead-oxide", amount = 2, ignored_by_productivity = 2 },
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
    category = "casting-4",
    subgroup = "angels-glass-casting",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "liquid-molten-glass", amount = 40 },
      { type = "fluid", name = "liquid-molten-tin", amount = 20 },
      { type = "fluid", name = "gas-nitrogen", amount = 20 },
    },
    results = {
      { type = "item", name = "angels-plate-glass", amount = 5 },
      { type = "item", name = "ingot-tin", amount = 2, ignored_by_productivity = 2 },
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
    ingredients = {
      { type = "item", name = "angels-coil-glass-fiber", amount = 1 },
      { type = "fluid", name = "liquid-resin", amount = 40 },
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
