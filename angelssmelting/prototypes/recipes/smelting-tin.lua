local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --TIN
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "tin-ore-processing",
    category = "ore-processing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "tin-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-tin", amount = 2 },
    },
    order = "b[processed-tin]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "tin-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-tin", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-tin", amount = 4 },
    },
    order = "c[pellet-tin]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "tin-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "tin-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-a",
  },
  {
    type = "recipe",
    name = "processed-tin-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-tin", amount = 8 },
      { type = "item", name = "solid-coke", amount = 2 },
    },
    results = {
      { type = "item", name = "ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-b",
  },
  {
    type = "recipe",
    name = "pellet-tin-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-tin", amount = 8 },
      { type = "item", name = "solid-carbon", amount = 2 },
    },
    results = {
      { type = "item", name = "ingot-tin", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-tin"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "d[ingot-tin]-c",
  },
  {
    type = "recipe",
    name = "powder-tin",
    category = "advanced-crafting",
    subgroup = "angels-tin",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-tin", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-tin", amount = 1 },
    },
    order = "e[powder-tin]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-tin-smelting",
    category = "induction-smelting",
    subgroup = "angels-tin-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-tin", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-tin", amount = 120 },
    },
    main_product = "liquid-molten-tin",
    order = "f[liquid-molten-tin]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "roll-tin-casting",
    category = "strand-casting",
    subgroup = "angels-tin-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-tin", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-tin", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "g[angels-roll-tin]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "roll-tin-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-tin-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-tin", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-tin",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-tin", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-tin",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "g[angels-roll-tin]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-casting",
    category = "strand-casting",
    subgroup = "angels-tin-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 40 },
        { type = "fluid", name = "liquid-molten-copper", amount = 40 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-tin", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 50 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-tin", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-wire-coil-tin]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-tin-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 70 },
        { type = "fluid", name = "liquid-molten-copper", amount = 70 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-tin", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-tin",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-molten-copper", amount = 90 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-tin", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-tin",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-wire-coil-tin]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-tin"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-tin",
    category = "casting",
    subgroup = "angels-tin-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-tin", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-tin", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-tin", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      angelsmods.functions.get_object_icons("liquid-molten-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "i[angels-plate-tin]-c", -- i[angels-plate-tin]-a reserved for crushed bobmonium smelting (see tin overrides)
  }, -- i[angels-plate-tin]-b reserved for tin ore smelting (see tin overrides)
  {
    type = "recipe",
    name = "angels-roll-tin-converting",
    category = "advanced-crafting",
    subgroup = "angels-tin-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-tin", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-tin", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      angelsmods.functions.get_object_icons("angels-roll-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "i[angels-plate-tin]-d",
  },
  {
    type = "recipe",
    name = "basic-tinned-copper-wire",
    subgroup = "angels-tin-casting",
    order = "m",
    enabled = false,
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 10 },
      { type = "item", name = "angels-plate-tin", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-tin", amount = 5 },
    },
    allow_decomposition = false,
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-tin"),
      angelsmods.functions.get_object_icons("angels-plate-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-wire-tin]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-converting",
    category = "advanced-crafting",
    subgroup = "angels-tin-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-tin", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-tin", amount = 16 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-tin"),
      angelsmods.functions.get_object_icons("angels-wire-coil-tin"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-wire-tin]-b",
  },
})
