local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --NICKEL
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "nickel-ore-processing",
    category = "ore-processing-2",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "nickel-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-nickel", amount = 2 },
    },
    order = "b[processed-nickel]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "nickel-processed-processing",
    category = "pellet-pressing-2",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-nickel", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-nickel", amount = 4 },
    },
    order = "c[pellet-nickel]",
  },
  {
    type = "recipe",
    name = "processed-nickel-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-nickel",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-nickel", amount = 4 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 60 },
    },
    results = {
      { type = "item", name = "cathode-nickel", amount = 12 },
    },
    order = "d[cathode-nickel]",
  },
  {
    type = "recipe",
    name = "pellet-nickel-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-nickel", amount = 8 },
      { type = "item", name = "sulfur", amount = 1 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-nickel-carbonyl", amount = 24 },
    },
    order = "e[solid-nickel-carbonyl]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "nickel-ore-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "nickel-ore", amount = 24 },
      { type = "fluid", name = "gas-carbon-monoxide", amount = 60 },
    },
    results = {
      { type = "item", name = "ingot-nickel", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-nickel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-a",
  },
  {
    type = "recipe",
    name = "cathode-nickel-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "cathode-nickel", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-nickel", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-nickel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-b",
  },
  {
    type = "recipe",
    name = "solid-nickel-carbonyl-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-nickel-carbonyl", amount = 18 },
      { type = "item", name = "ingot-nickel", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-nickel", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-nickel"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-nickel]-c",
  },
  {
    type = "recipe",
    name = "powder-nickel",
    category = "advanced-crafting",
    subgroup = "angels-nickel",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-nickel", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-nickel", amount = 1 },
    },
    order = "g[powder-nickel]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-nickel-smelting",
    category = "induction-smelting-2",
    subgroup = "angels-nickel-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-nickel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-nickel", amount = 120 },
    },
    order = "h[liquid-molten-nickel]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "roll-nickel-casting",
    category = "strand-casting-2",
    subgroup = "angels-nickel-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-nickel", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-nickel", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-nickel]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nickel"),
  },
  {
    type = "recipe",
    name = "roll-nickel-casting-fast",
    category = "strand-casting-3",
    subgroup = "angels-nickel-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-nickel", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-nickel",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-nickel", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-nickel",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-nickel]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-nickel"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-nickel",
    category = "casting-2",
    subgroup = "angels-nickel-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-nickel", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-nickel", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-nickel", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-nickel"),
      angelsmods.functions.get_object_icons("liquid-molten-nickel"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-nickel]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-nickel-converting",
    category = "advanced-crafting",
    subgroup = "angels-nickel-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-nickel", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-nickel", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-nickel"),
      angelsmods.functions.get_object_icons("angels-roll-nickel"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-nickel]-b",
  },
})
