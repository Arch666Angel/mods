data:extend({
  --BAUXITE/ALUMINIUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-aluminium",
    category = "angels-ore-processing-2",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-bauxite-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-aluminium", amount = 2 },
    },
    order = "b[processed-aluminium]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "angels-pellet-aluminium",
    category = "angels-pellet-pressing-2",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-aluminium", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-aluminium", amount = 4 },
    },
    order = "c[pellet-aluminium]",
  },
  {
    type = "recipe",
    name = "angels-solid-sodium-aluminate",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-aluminium", amount = 6 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 3 },
      { type = "item", name = "angels-solid-coke", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-solid-sodium-aluminate", amount = 18 },
    },
    order = "d[solid-sodium-aluminate]",
  },
  {
    type = "recipe",
    name = "angels-solid-aluminium-hydroxide",
    category = "angels-powder-mixing",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-bauxite-ore", amount = 12 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-solid-aluminium-hydroxide", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-aluminium-hydroxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-aluminium-hydroxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-aluminium-hydroxide-2",
    localised_name = { "item-name.angels-solid-aluminium-hydroxide" },
    category = "angels-powder-mixing-2",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-aluminium", amount = 4 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-solid-aluminium-hydroxide", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-aluminium-hydroxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-aluminium-hydroxide]-b",
  },
  {
    type = "recipe",
    name = "angels-solid-aluminium-oxide",
    localised_name = { "item-name.angels-solid-aluminium-oxide" },
    category = "angels-blast-smelting-2",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-aluminium-hydroxide", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-solid-aluminium-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-aluminium-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[solid-aluminium-oxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-aluminium-oxide-2",
    localised_name = { "item-name.angels-solid-aluminium-oxide" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-sodium-aluminate", amount = 24 },
      { type = "item", name = "angels-solid-sodium-hydroxide", amount = 3 },
      { type = "fluid", name = "angels-gas-carbon-dioxide", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-aluminium-oxide", amount = 24 },
      { type = "item", name = "angels-solid-sodium-carbonate", amount = 2 },
    },
    main_product = "angels-solid-aluminium-oxide",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-aluminium-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[solid-aluminium-oxide]-b",
  },
  -- SMELTING RESULT
  {
    type = "recipe",
    name = "angels-ingot-aluminium",
    category = "angels-blast-smelting-2",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-solid-aluminium-oxide", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-ingot-aluminium", amount = 24 },
    },
    order = "g[ingot-aluminium]",
  },
  {
    type = "recipe",
    name = "angels-powder-aluminium",
    category = "angels-powderizing-1",
    subgroup = "angels-aluminium",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-aluminium", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-aluminium", amount = 1 },
    },
    order = "h[powder-aluminium]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-aluminium",
    category = "angels-induction-smelting-2",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = true,
    ingredients = {
      { type = "item", name = "angels-ingot-aluminium", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-aluminium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-aluminium-2",
    localised_name = { "fluid-name.angels-liquid-molten-aluminium" },
    category = "angels-induction-smelting-3",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-aluminium", amount = 12 },
      { type = "item", name = "angels-ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-aluminium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-aluminium-3",
    localised_name = { "fluid-name.angels-liquid-molten-aluminium" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-aluminium", amount = 12 },
      { type = "item", name = "angels-ingot-silicon", amount = 12 },
      { type = "item", name = "angels-ingot-copper", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-aluminium"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "i[liquid-molten-aluminium]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "angels-roll-aluminium",
    category = "angels-strand-casting-2",
    subgroup = "angels-aluminium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-aluminium", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-aluminium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  {
    type = "recipe",
    name = "angels-roll-aluminium-2",
    localised_name = { "item-name.angels-roll-aluminium" },
    category = "angels-strand-casting-3",
    subgroup = "angels-aluminium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-aluminium", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-aluminium",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-roll-aluminium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-aluminium"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-aluminium",
    localised_name = { "item-name.angels-plate-aluminium" },
    category = "angels-casting-2",
    subgroup = "angels-aluminium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-aluminium", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-aluminium", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-aluminium"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-aluminium"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-aluminium]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-aluminium-2",
    localised_name = { "item-name.angels-plate-aluminium" },
    category = "advanced-crafting",
    subgroup = "angels-aluminium-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-aluminium", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-aluminium", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-aluminium"),
      angelsmods.functions.get_object_icons("angels-roll-aluminium"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-aluminium]-b",
  },
  -- order l reserved for motor casting (see industries)
})
