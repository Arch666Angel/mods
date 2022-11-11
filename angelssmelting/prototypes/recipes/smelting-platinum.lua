local intermediatemulti = angelsmods.marathon.intermediatemulti
local AF = angelsmods.functions

data:extend({
  --PLATINUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "platinum-ore-processing",
    category = "ore-processing-3",
    subgroup = "angels-platinum",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "platinum-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-platinum", amount = 2 },
    },
    order = "b[processed-platinum]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "platinum-processed-processing",
    category = "pellet-pressing-3",
    subgroup = "angels-platinum",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-platinum", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-platinum", amount = 4 },
    },
    order = "c[pellet-platinum]",
  },
  {
    type = "recipe",
    name = "pellet-platinum-smelting",
    category = "chemistry",
    subgroup = "angels-platinum",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-platinum", amount = 4 },
      { type = "fluid", name = "liquid-hydrochloric-acid", amount = 30 },
      { type = "fluid", name = "liquid-nitric-acid", amount = 30 },
    },
    results = {
      { type = "fluid", name = "liquid-hexachloroplatinic-acid", amount = 60 },
    },
    main_product = "liquid-hexachloroplatinic-acid",
    always_show_products = true,
    icons = AF.create_liquid_recipe_icon(nil, { { 230, 191, 163 }, { 092, 218, 079 }, { 086, 112, 192 } }),
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
    order = "d[liquid-hexachloroplatinic-acid]",
  },
  {
    type = "recipe",
    name = "liquid-hexachloroplatinic-acid-smelting",
    category = "chemical-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-hexachloroplatinic-acid", amount = 120 },
      { type = "fluid", name = "gas-ammonium-chloride", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-ammonium-chloroplatinate", amount = 24 },
    },
    order = "e[solid-ammonium-chloroplatinate]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "platinum-ore-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "platinum-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-platinum"), 1, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-a",
  },
  {
    type = "recipe",
    name = "processed-platinum-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-platinum", amount = 8 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-platinum"), 2, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-b",
  },
  {
    type = "recipe",
    name = "solid-ammonium-chloroplatinate-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-platinum",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-ammonium-chloroplatinate", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-platinum", amount = 24 },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("ingot-platinum"), 3, angelsmods.smelting.number_tint),
    order = "f[ingot-platinum]-c",
  },
  {
    type = "recipe",
    name = "powder-platinum",
    category = "advanced-crafting",
    subgroup = "angels-platinum",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-platinum", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-platinum", amount = 1 },
    },
    order = "g[powder-platinum]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-platinum-smelting",
    category = "induction-smelting-3",
    subgroup = "angels-platinum-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-platinum", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-platinum", amount = 120 },
    },
    order = "h[liquid-molten-platinum]",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "roll-platinum-casting",
    category = "strand-casting-3",
    subgroup = "angels-platinum-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-platinum", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-platinum", amount = 2 },
      },
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-platinum"), 1, angelsmods.smelting.number_tint),
    order = "i[angels-roll-platinum]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "roll-platinum-casting-fast",
    category = "strand-casting-4",
    subgroup = "angels-platinum-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-platinum", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-platinum",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-platinum", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-platinum",
    },
    icons = AF.add_number_icon_layer(AF.get_object_icons("angels-roll-platinum"), 2, angelsmods.smelting.number_tint),
    order = "i[angels-roll-platinum]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting",
    category = "strand-casting-3",
    subgroup = "angels-platinum-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 40 },
        { type = "fluid", name = "liquid-molten-copper", amount = 40 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-platinum", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 50 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-platinum", amount = 4 },
      },
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-platinum"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-wire-coil-platinum]-a",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting-fast",
    category = "strand-casting-4",
    subgroup = "angels-platinum-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 70 },
        { type = "fluid", name = "liquid-molten-copper", amount = 70 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-platinum", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-platinum",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-platinum", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-platinum",
    },
    icons = AF.add_number_icon_layer(
      AF.get_object_icons("angels-wire-coil-platinum"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "j[angels-wire-coil-platinum]-b",
    crafting_machine_tint = AF.get_fluid_recipe_tint("liquid-molten-platinum"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-platinum",
    category = "casting-3",
    subgroup = "angels-platinum-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-platinum", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-platinum", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-platinum", amount = 4 },
      },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-platinum"),
      AF.get_object_icons("liquid-molten-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-platinum]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-platinum-converting",
    category = "advanced-crafting",
    subgroup = "angels-platinum-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-platinum", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-platinum", amount = 4 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-plate-platinum"),
      AF.get_object_icons("angels-roll-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-plate-platinum]-b",
  },
  {
    type = "recipe",
    name = "basic-platinated-copper-wire",
    subgroup = "angels-platinum-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-platinum", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-platinum", amount = 5 },
    },
    allow_decomposition = false,
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-platinum"),
      AF.get_object_icons("angels-plate-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-wire-platinum]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-platinum-converting",
    category = "advanced-crafting",
    subgroup = "angels-platinum-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-platinum", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-platinum", amount = 16 },
    },
    icons = AF.add_icon_layer(
      AF.get_object_icons("angels-wire-platinum"),
      AF.get_object_icons("angels-wire-coil-platinum"),
      { -10, -10 },
      0.4375
    ),
    order = "l[angels-wire-platinum]-b",
  },
})
