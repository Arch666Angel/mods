data:extend({
  -- STEEL SMELTING INTERMEDIATE
  -- STEEL SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-steel",
    category = "angels-blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-iron", amount = 24 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-steel", amount = 6 },
    },
    order = "f[ingot-steel]",
  },
  {
    type = "recipe",
    name = "angels-powder-steel",
    category = "advanced-crafting",
    subgroup = "angels-iron",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-steel", amount = 1 },
    },
    order = "h[powder-steel]",
  },
  -- STEEL CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-steel",
    category = "angels-induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-steel]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-steel-2",
    localised_name = { "fluid-name.angels-liquid-molten-steel" },
    category = "angels-induction-smelting-2",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 12 },
      { type = "item", name = "angels-ingot-silicon", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-steel]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-steel-3",
    localised_name = { "fluid-name.angels-liquid-molten-steel" },
    category = "angels-induction-smelting-2",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 12 },
      { type = "item", name = "angels-ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-steel]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-steel-4",
    localised_name = { "fluid-name.angels-liquid-molten-steel" },
    category = "angels-induction-smelting-3",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 12 },
      { type = "item", name = "angels-ingot-cobalt", amount = 12 },
      { type = "item", name = "angels-ingot-nickel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-steel]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-steel-5",
    localised_name = { "fluid-name.angels-liquid-molten-steel" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-steel", amount = 12 },
      { type = "item", name = "angels-ingot-chrome", amount = 12 },
      { type = "item", name = "angels-powder-tungsten", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      5,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-steel]-e",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-roll-steel",
    category = "angels-strand-casting",
    subgroup = "angels-steel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-steel", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-steel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-steel]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-roll-steel-2",
    localised_name = { "item-name.angels-roll-steel" },
    category = "angels-strand-casting-2",
    subgroup = "angels-steel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-steel", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-steel",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-steel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-steel]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-rod-stack-steel",
    category = "angels-strand-casting",
    subgroup = "angels-steel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 60 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-rod-stack-steel", amount = 1 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-steel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-steel]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  {
    type = "recipe",
    name = "angels-rod-stack-steel-2",
    localised_name = { "item-name.angels-rod-stack-steel" },
    category = "angels-strand-casting-2",
    subgroup = "angels-steel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 110 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-rod-stack-steel", amount = 2 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-rod-stack-steel",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-stack-steel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "k[angels-rod-stack-steel]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-steel"),
  },
  -- STEEL CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-steel",
    localised_name = { "item-name.angels-plate-steel" },
    category = "angels-casting",
    subgroup = "angels-steel-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-steel", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-steel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-steel"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-steel]-b", -- l[angels-plate-steel]-a reserved for base game smelting recipe (see global overrides)
  },
  {
    type = "recipe",
    name = "angels-plate-steel-2",
    localised_name = { "item-name.angels-plate-steel" },
    category = "advanced-crafting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    allow_decomposition = false,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-steel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-steel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-steel"),
      angelsmods.functions.get_object_icons("angels-roll-steel"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-plate-steel]-c",
  },
  {
    type = "recipe",
    name = "angels-rod-steel",
    category = "crafting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-plate-steel", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-rod-steel", amount = 1 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-steel"),
      angelsmods.functions.get_object_icons("angels-plate-steel"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-rod-steel]-a",
  },
  {
    type = "recipe",
    name = "angels-rod-steel-2",
    localised_name = { "item-name.angels-rod-steel" },
    category = "advanced-crafting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-rod-stack-steel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-rod-steel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-rod-steel"),
      angelsmods.functions.get_object_icons("angels-rod-stack-steel"),
      { -10, -10 },
      0.4375
    ),
    order = "m[angels-rod-steel]-b",
  },
})
