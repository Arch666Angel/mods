data:extend({
  --ZINC
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-zinc",
    category = "angels-ore-processing-2",
    subgroup = "angels-zinc",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-zinc-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-zinc", amount = 2 },
    },
    main_product = "angels-processed-zinc",
    order = "b[processed-zinc]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-zinc"),
  },
  {
    type = "recipe",
    name = "angels-pellet-zinc",
    category = "angels-pellet-pressing-2",
    subgroup = "angels-zinc",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-processed-zinc", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-zinc", amount = 4 },
    },
    main_product = "angels-pellet-zinc",
    order = "c[pellet-zinc]",
  },
  {
    type = "recipe",
    name = "angels-solid-zinc-oxide",
    category = "angels-chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-zinc-ore", amount = 8 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-zinc-oxide", amount = 8 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 30 },
    },
    main_product = "angels-solid-zinc-oxide",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-zinc-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-zinc-oxide]-a",
  },
  {
    type = "recipe",
    name = "angels-solid-zinc-oxide-2",
    localised_name = { "item-name.angels-solid-zinc-oxide" },
    category = "angels-chemical-smelting-3",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-pellet-zinc", amount = 8 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-solid-zinc-oxide", amount = 24 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 30 },
    },
    main_product = "angels-solid-zinc-oxide",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-solid-zinc-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-zinc-oxide]-b",
  },
  {
    type = "recipe",
    name = "angels-cathode-zinc",
    category = "angels-chemical-smelting-3",
    subgroup = "angels-zinc",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-solid-zinc-oxide", amount = 12 },
      { type = "fluid", name = "angels-liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-cathode-zinc", amount = 12 },
    },
    order = "e[cathode-zinc]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-zinc",
    category = "angels-chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-zinc-ore", amount = 24 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
      { type = "fluid", name = "angels-liquid-molten-lead", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-zinc", amount = 24 },
      { type = "item", name = "angels-ingot-lead", amount = 6 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 30 },
    },
    main_product = "angels-ingot-zinc",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-zinc"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-zinc]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-zinc-2",
    localised_name = { "item-name.angels-ingot-zinc" },
    category = "angels-chemical-smelting-2",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-processed-zinc", amount = 8 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
      { type = "fluid", name = "angels-gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-ingot-zinc", amount = 24 },
      { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 30 },
    },
    main_product = "angels-ingot-zinc",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-zinc"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-zinc]-b",
  },
  {
    type = "recipe",
    name = "angels-ingot-zinc-3",
    localised_name = { "item-name.angels-ingot-zinc" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-cathode-zinc", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-zinc", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-zinc"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-zinc]-c",
  },
  {
    type = "recipe",
    name = "angels-powder-zinc",
    category = "advanced-crafting",
    subgroup = "angels-zinc",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ingot-zinc", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-zinc", amount = 1 },
    },
    order = "g[powder-zinc]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-zinc",
    category = "angels-induction-smelting-2",
    subgroup = "angels-zinc-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-ingot-zinc", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-zinc", amount = 120 },
    },
    order = "h[liquid-molten-zinc]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-zinc"),
  },
  {
    type = "recipe",
    name = "angels-roll-zinc",
    category = "angels-strand-casting-2",
    subgroup = "angels-zinc-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-zinc", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-zinc", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-zinc"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-zinc]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-zinc"),
  },
  {
    type = "recipe",
    name = "angels-roll-zinc-2",
    localised_name = { "item-name.angels-roll-zinc" },
    category = "angels-strand-casting-3",
    subgroup = "angels-zinc-casting",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-zinc", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-zinc", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-zinc",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-zinc"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-zinc]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-zinc"),
  },
  {
    type = "recipe",
    name = "angels-plate-zinc",
    localised_name = { "item-name.angels-plate-zinc" },
    category = "angels-casting-2",
    subgroup = "angels-zinc-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-zinc", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-zinc", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-zinc"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-zinc"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-zinc]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-zinc-2",
    localised_name = { "item-name.angels-plate-zinc" },
    category = "advanced-crafting",
    subgroup = "angels-zinc-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-zinc", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-zinc", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-zinc"),
      angelsmods.functions.get_object_icons("angels-roll-zinc"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-zinc]-b",
  },
})
