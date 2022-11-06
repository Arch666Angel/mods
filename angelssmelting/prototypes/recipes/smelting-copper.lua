local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  -- COPPER
  -- ORE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-copper", amount = 2 },
    },
    order = "b[processed-copper]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "copper-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-copper", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-copper", amount = 4 },
    },
    order = "c[pellet-copper]",
  },
  {
    type = "recipe",
    name = "pellet-copper-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-copper", amount = 8 },
      { type = "fluid", name = "gas-oxygen", amount = 60 },
      --{type="item", name="solid-sodium-carbonate", amount=6},
    },
    results = {
      { type = "item", name = "anode-copper", amount = 24 },
    },
    order = "d[anode-copper]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "copper-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "copper-ore", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-copper", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-a",
  },
  {
    type = "recipe",
    name = "processed-copper-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-copper", amount = 8 },
      { type = "fluid", name = "gas-oxygen", amount = 60 },
    },
    results = {
      { type = "item", name = "ingot-copper", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-b",
  },
  {
    type = "recipe",
    name = "anode-copper-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-copper",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "anode-copper", amount = 12 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 30 },
    },
    results = {
      { type = "item", name = "ingot-copper", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-copper"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[ingot-copper]-c",
  },
  {
    type = "recipe",
    name = "powder-copper",
    category = "advanced-crafting",
    subgroup = "angels-copper",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-copper", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-copper", amount = 1 },
    },
    order = "f[powder-copper]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-copper-smelting",
    category = "induction-smelting",
    subgroup = "angels-copper-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-copper", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-copper", amount = 120 },
    },
    order = "g[liquid-molten-copper]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "roll-copper-casting",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-copper", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-copper", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-roll-copper]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "roll-copper-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-copper-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-copper", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-copper",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-copper", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-copper",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[angels-roll-copper]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-casting",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-copper", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-copper", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-wire-coil-copper]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-copper-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-copper", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-copper",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-wire-coil-copper", amount = 8 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-wire-coil-copper",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-wire-coil-copper]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-copper"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-copper",
    category = "casting",
    subgroup = "angels-copper-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-copper", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-copper", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-copper", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-copper"),
      angelsmods.functions.get_object_icons("liquid-molten-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-copper]-c", -- j[angels-plate-copper]-a reserved for crushed stiratite smelting (see global overrides)
  }, -- j[angels-plate-copper]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-roll-copper-converting",
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-copper", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-copper", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-copper"),
      angelsmods.functions.get_object_icons("angels-roll-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-copper]-d",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-converting",
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 1,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-wire-coil-copper", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-wire-copper", amount = 16 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-wire-copper"),
      angelsmods.functions.get_object_icons("angels-wire-coil-copper"),
      { -10, -10 },
      0.4375
    ),
    order = "k[angels-wire-copper]-e", -- k[angels-wire-copper]-a reserved for base game recipe (see global overrides)
  },
})
