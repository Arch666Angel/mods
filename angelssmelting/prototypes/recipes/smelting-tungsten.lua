data:extend({
  --TUNGSTEN
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "tungsten-ore-processing",
    localised_name = { "item-name.processed-tungsten" },
    category = "ore-processing-4",
    subgroup = "angels-tungsten",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "tungsten-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-tungsten", amount = 2 },
    },
    order = "b[processed-tungsten]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tungsten"),
  },
  {
    type = "recipe",
    name = "tungsten-processed-processing",
    localised_name = { "item-name.pellet-tungsten" },
    category = "pellet-pressing-4",
    subgroup = "angels-tungsten",
    energy_required = 2,
    enabled = false,
    ingredients = { { type = "item", name = "processed-tungsten", amount = 3 } },
    results = {
      { type = "item", name = "pellet-tungsten", amount = 4 },
    },
    order = "c[pellet-tungsten]",
  },
  {
    type = "recipe",
    name = "tungsten-ore-smelting",
    localised_name = { "item-name.solid-tungsten-oxide" },
    category = "blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "tungsten-ore", amount = 12 },
      { type = "fluid", name = "gas-hydrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "solid-tungsten-oxide", amount = 12 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-tungsten-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-tungsten-oxide]-a",
  },
  {
    type = "recipe",
    name = "liquid-tungstic-acid-smelting",
    localised_name = { "item-name.solid-ammonium-paratungstate" },
    category = "chemical-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-tungstic-acid", amount = 120 },
      { type = "fluid", name = "gas-ammonia", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-ammonium-paratungstate", amount = 24 },
      { type = "fluid", name = "water-purified", amount = 60 },
    },
    main_product = "solid-ammonium-paratungstate",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-ammonium-paratungstate"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-ammonium-paratungstate]-b",
  },
  {
    type = "recipe",
    name = "pellet-tungsten-smelting",
    localised_name = { "fluid-name.liquid-tungstic-acid" },
    category = "liquifying",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-tungsten", amount = 4 },
      { type = "fluid", name = "gas-hydrogen-chloride", amount = 30 },
    },
    results = {
      { type = "fluid", name = "liquid-tungstic-acid", amount = 60 },
      { type = "item", name = "solid-calcium-chloride", amount = 2 },
    },
    main_product = "liquid-tungstic-acid",
    icons = angelsmods.functions.create_liquid_recipe_icon(
      nil,
      { { 135, 090, 023 }, { 170, 170, 180 }, { 170, 170, 180 } }
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-tungstic-acid"),
    order = "f[liquid-tungstic-acid]",
  },
  {
    type = "recipe",
    name = "solid-tungsten-oxide-smelting",
    localised_name = { "fluid-name.gas-tungsten-hexafluoride" },
    category = "liquifying",
    subgroup = "angels-tungsten",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-tungsten-oxide", amount = 12 },
      { type = "fluid", name = "gas-hydrogen-fluoride", amount = 30 },
    },
    results = {
      { type = "fluid", name = "gas-tungsten-hexafluoride", amount = 60 },
    },
    main_product = "gas-tungsten-hexafluoride",
    always_show_products = true,
    icons = angelsmods.functions.create_gas_recipe_icon(
      { { "__angelssmeltinggraphics__/graphics/icons/molecule-tungsten-hexafluoride.png", 72 } },
      "WFF"
    ),
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("gas-tungsten-hexafluoride"),
    order = "g[gas-tungsten-hexafluoride]",
  },
  {
    type = "recipe",
    name = "processed-tungsten-smelting",
    localised_name = { "item-name.solid-ammonium-paratungstate" },
    category = "chemical-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-tungsten", amount = 8 },
      { type = "fluid", name = "gas-ammonia", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-ammonium-paratungstate", amount = 24 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-ammonium-paratungstate"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-ammonium-paratungstate]-a",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "gas-tungsten-hexafluoride-smelting",
    localised_name = { "item-name.powder-tungsten" },
    category = "blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "gas-tungsten-hexafluoride", amount = 120 },
    },
    results = {
      { type = "item", name = "powder-tungsten", amount = 24 },
      { type = "item", name = "fluorite-ore", amount = 3 },
    },
    main_product = "powder-tungsten",
    order = "h[powder-tungsten]-a",
  },
  {
    type = "recipe",
    name = "solid-ammonium-paratungstate-smelting",
    localised_name = { "item-name.solid-tungsten-oxide" },
    category = "blast-smelting-4",
    subgroup = "angels-tungsten",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-ammonium-paratungstate", amount = 12 },
      { type = "fluid", name = "gas-hydrogen", amount = 30 },
    },
    results = {
      { type = "item", name = "solid-tungsten-oxide", amount = 12 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-tungsten-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-tungsten-oxide]-b",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "casting-powder-tungsten-1",
    localised_name = { "item-name.casting-powder-tungsten" },
    category = "powder-mixing-3",
    subgroup = "angels-tungsten-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "powder-tungsten", amount = 12 },
      { type = "item", name = "powder-cobalt", amount = 12 },
    },
    results = {
      { type = "item", name = "casting-powder-tungsten", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("casting-powder-tungsten"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[casting-powder-tungsten]-a",
  },
  {
    type = "recipe",
    name = "casting-powder-tungsten-2",
    localised_name = { "item-name.casting-powder-tungsten" },
    category = "powder-mixing-4",
    subgroup = "angels-tungsten-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "powder-tungsten", amount = 12 },
      { type = "item", name = "powder-nickel", amount = 12 },
    },
    results = {
      { type = "item", name = "casting-powder-tungsten", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("casting-powder-tungsten"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[casting-powder-tungsten]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-tungsten",
    localised_name = { "item-name.angels-plate-tungsten" },
    category = "sintering-4",
    subgroup = "angels-tungsten-casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "casting-powder-tungsten", amount = 12 },
    },
    results = {
      { type = "item", name = "angels-plate-tungsten", amount = 12 },
    },
    order = "j[angels-plate-tungsten]",
  },
})
