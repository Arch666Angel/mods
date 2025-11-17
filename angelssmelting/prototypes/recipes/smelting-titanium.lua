data:extend({
  --TITANIUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-processed-titanium",
    category = "angels-ore-processing-3",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-rutile-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-processed-titanium", amount = 2 },
    },
    order = "b[processed-titanium]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-pellet-titanium",
    category = "angels-pellet-pressing-3",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-titanium", amount = 3 },
    },
    results = {
      { type = "item", name = "angels-pellet-titanium", amount = 4 },
    },
    order = "c[pellet-titanium]",
  },
  {
    type = "recipe",
    name = "angels-liquid-titanium-tetrachloride",
    category = "angels-chemical-smelting-2",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-rutile-ore", amount = 24 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
      { type = "fluid", name = "angels-gas-chlorine", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-titanium-tetrachloride", amount = 120 },
    },
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_liquid_recipe_icon({
        { "__angelssmeltinggraphics__/graphics/icons/molecule-titanium-tetrachloride.png", 72 },
      }, "SiClCl"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[liquid-titanium-tetrachloride]-a",
  },
  {
    type = "recipe",
    name = "angels-liquid-titanium-tetrachloride-2",
    localised_name = { "fluid-name.angels-liquid-titanium-tetrachloride" },
    category = "angels-chemical-smelting-3",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-processed-titanium", amount = 8 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
      { type = "fluid", name = "angels-gas-chlorine", amount = 60 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-titanium-tetrachloride", amount = 120 },
    },
    main_product = "angels-liquid-titanium-tetrachloride",
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_liquid_recipe_icon({
        { "__angelssmeltinggraphics__/graphics/icons/molecule-titanium-tetrachloride.png", 72 },
      }, "SiClCl"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[liquid-titanium-tetrachloride]-b",
  },
  {
    type = "recipe",
    name = "angels-sponge-titanium",
    category = "angels-chemical-smelting-2",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "fluid", name = "angels-liquid-titanium-tetrachloride", amount = 120 },
      --{type="item", name="angels-ingot-manganese", amount=6},
    },
    results = {
      { type = "item", name = "angels-sponge-titanium", amount = 24 },
    },
    order = "e[sponge-titanium]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "angels-ingot-titanium",
    category = "angels-blast-smelting-3",
    subgroup = "angels-titanium",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-sponge-titanium", amount = 24 },
    },
    results = {
      { type = "item", name = "angels-ingot-titanium", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-titanium]-a",
  },
  {
    type = "recipe",
    name = "angels-ingot-titanium-2",
    localised_name = { "item-name.angels-ingot-titanium" },
    category = "angels-blast-smelting-4",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-pellet-titanium", amount = 8 },
      { type = "item", name = "angels-solid-calcium-chloride", amount = 6 },
      { type = "item", name = "angels-solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "angels-ingot-titanium", amount = 24 },
      { type = "item", name = "angels-solid-limestone", amount = 6 },
    },
    main_product = "angels-ingot-titanium",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-ingot-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-titanium]-b",
  },
  {
    type = "recipe",
    name = "angels-powder-titanium",
    category = "advanced-crafting",
    subgroup = "angels-titanium",
    energy_required = 0.5,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-powder-titanium", amount = 1 },
    },
    order = "g[powder-titanium]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "angels-liquid-molten-titanium",
    category = "angels-induction-smelting-3",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-titanium-2",
    localised_name = { "fluid-name.angels-liquid-molten-titanium" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 12 },
      { type = "item", name = "angels-ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-titanium-3",
    localised_name = { "fluid-name.angels-liquid-molten-titanium" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 12 },
      { type = "item", name = "angels-ingot-nickel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-titanium-4",
    localised_name = { "fluid-name.angels-liquid-molten-titanium" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 12 },
      { type = "item", name = "angels-ingot-aluminium", amount = 12 },
      { type = "item", name = "angels-ingot-tin", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-liquid-molten-titanium-5",
    localised_name = { "fluid-name.angels-liquid-molten-titanium" },
    category = "angels-induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    auto_recycle = false,
    hide_from_signal_gui = false,
    ingredients = {
      { type = "item", name = "angels-ingot-titanium", amount = 12 },
      { type = "item", name = "angels-ingot-cobalt", amount = 12 },
      { type = "item", name = "angels-ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      5,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-e",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-roll-titanium",
    category = "angels-strand-casting-3",
    subgroup = "angels-titanium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 80 },
      { type = "fluid", name = "water", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-roll-titanium", amount = 2 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-titanium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-roll-titanium-2",
    localised_name = { "item-name.angels-roll-titanium" },
    category = "angels-strand-casting-4",
    subgroup = "angels-titanium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 140 },
      { type = "fluid", name = "angels-liquid-coolant", amount = 40, ignored_by_stats = 32 },
    },
    results = {
      { type = "item", name = "angels-roll-titanium", amount = 4 },
      { type = "fluid", name = "angels-liquid-coolant-used", amount = 40, temperature = 300 },
    },
    main_product = "angels-roll-titanium",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-titanium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("angels-liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-plate-titanium",
    localised_name = { "item-name.angels-plate-titanium" },
    category = "angels-casting-3",
    subgroup = "angels-titanium-casting",
    enabled = false,
    auto_recycle = false,
    energy_required = 4,
    ingredients = {
      { type = "fluid", name = "angels-liquid-molten-titanium", amount = 40 },
    },
    results = {
      { type = "item", name = "angels-plate-titanium", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-titanium"),
      angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-titanium]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-titanium-2",
    localised_name = { "item-name.angels-plate-titanium" },
    category = "advanced-crafting",
    subgroup = "angels-titanium-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "angels-roll-titanium", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-titanium", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-titanium"),
      angelsmods.functions.get_object_icons("angels-roll-titanium"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-titanium]-b",
  },
})
