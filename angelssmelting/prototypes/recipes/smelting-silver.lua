local AF = angelsmods.functions

data:extend({
  --Silver
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-silver",
    category = "angels-ore-processing-2",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-silver-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-silver", amount = 2 },
    },
    order = "b[processed-silver]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-pellet-silver",
    category = "angels-pellet-pressing-2",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-silver", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-silver", amount = 4 },
    },
    order = "c[pellet-silver]",
  },
  {
    type = "recipe",
    name = "angels-solid-silver-nitrate",
    localised_name = { "item-name.angels-solid-silver-nitrate" },
    category = "angels-liquifying",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-silver", amount = 4 },
      { type = "fluid", name = "angels-liquid-nitric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-silver-nitrate", amount = 12 },
    },
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
    order = "d[solid-silver-nitrate]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-silver-cyanide",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-silver", amount = 8 },
      { type = "item", name = "angels-solid-sodium-cyanide", amount = 6 },
      { type = "fluid", name = "angels-water-purified", amount = 60 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-silver-cyanide", amount = 24 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 4 },
    },
    main_product = "angels-solid-sodium-silver-cyanide",
    order = "f[solid-sodium-silver-cyanide]",
  },
  {
    type = "recipe",
    name = "angels-cathode-silver",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-silver-cyanide", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-cathode-silver", amount = 12 },
    },
    order = "g[cathode-silver]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-silver",
    category = "angels-blast-smelting-2",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-silver-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-silver"), 1, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-silver-2",
    localised_name = { "item-name.angels-ingot-silver" },
    category = "angels-blast-smelting-3",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-silver-nitrate", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-silver"), 2, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-silver-3",
    localised_name = { "item-name.angels-ingot-silver" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-cathode-silver", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-silver", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-ingot-silver"), 3, angelsmods.smelting.number_tint),
    order = "h[ingot-silver]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-silver",
    category = "advanced-crafting",
    subgroup = "angels-silver",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-silver", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-silver", amount = 1 },
    },
    order = "i[powder-silver]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-silver",
    category = "angels-induction-smelting-2",
    subgroup = "angels-silver-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-silver", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 120 },
    },
    order = "j[liquid-molten-silver]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-roll-silver",
    category = "angels-strand-casting-2",
    subgroup = "angels-silver-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-silver", amount = 2 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-silver"), 1, angelsmods.smelting.number_tint),
    order = "k[angels-roll-silver]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-roll-silver-2",
    localised_name = { "item-name.angels-roll-silver" },
    category = "angels-strand-casting-3",
    subgroup = "angels-silver-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-silver", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-silver",
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-silver"), 2, angelsmods.smelting.number_tint),
    order = "k[angels-roll-silver]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver",
    category = "angels-strand-casting-2",
    subgroup = "angels-silver-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 40 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 40 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-silver", amount = 4 },
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-silver"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "l[angels-wire-coil-silver]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-2",
    localised_name = { "item-name.angels-wire-coil-silver" },
    category = "angels-strand-casting-3",
    subgroup = "angels-silver-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 70 },
      { type = "fluid", name = "angels-liquid-molten-copper", amount = 70 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-wire-coil-silver", amount = 8 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-wire-coil-silver",
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-silver"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "l[angels-wire-coil-silver]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("angels-liquid-molten-silver"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-silver",
    localised_name = { "item-name.angels-plate-silver" },
    category = "angels-casting-2",
    subgroup = "angels-silver-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-silver", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-silver", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-silver"),
      AF.get_object_icons("angels-liquid-molten-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-plate-silver]-b", -- m[angels-plate-silver]-a reserved for silver ore smelting (see silver overrides)
  },
  {
    type = "recipe",
    name = "angels-plate-silver-2",
    localised_name = { "item-name.angels-plate-silver" },
    category = "advanced-crafting",
    subgroup = "angels-silver-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-silver", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-silver", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-silver"),
      AF.get_object_icons("angels-roll-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-plate-silver]-c",
  },
  {
    type = "recipe",
    name = "angels-wire-silver",
    subgroup = "angels-silver-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-silver", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-silver", amount = 5 },
    },
    allow_decomposition = false,
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-silver"),
      AF.get_object_icons("angels-plate-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "n[angels-wire-silver]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-silver-2",
    localised_name = { "item-name.angels-wire-silver" },
    category = "advanced-crafting",
    subgroup = "angels-silver-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-silver", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-silver", amount = 16 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-silver"),
      AF.get_object_icons("angels-wire-coil-silver"),
      { -10, -10 },
      0.4375
    ),
    order = "n[angels-wire-silver]-b",
  },
  -- order n reserved for bob
})
