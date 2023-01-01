local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --MANGANESE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "manganese-ore-processing",
    category = "ore-processing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "manganese-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-manganese", amount = 2 },
    },
    order = "b[processed-manganese]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "manganese-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-manganese", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-manganese", amount = 4 },
    },
    order = "c[pellet-manganese]",
  },
  {
    type = "recipe",
    name = "manganese-processed-processing-alt",
    category = "chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-manganese", amount = 4 },
      { type = "fluid", name = "gas-synthesis", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-manganese-oxide", amount = 6 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-manganese-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-manganese-oxide]-a",
  },
  {
    type = "recipe",
    name = "pellet-manganese-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-manganese", amount = 8 },
      { type = "fluid", name = "gas-natural-1", amount = 60 },
    },
    results = {
      { type = "item", name = "solid-manganese-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-manganese-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[solid-manganese-oxide]-b",
  },
  {
    type = "recipe",
    name = "processed-manganese-smelting",
    category = "chemical-smelting",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-manganese", amount = 4 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "cathode-manganese", amount = 12 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("cathode-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[cathode-manganese]-a",
  },
  {
    type = "recipe",
    name = "solid-manganese-oxide-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-manganese-oxide", amount = 12 },
      { type = "item", name = "ingot-iron", amount = 4 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 40 },
    },
    results = {
      { type = "item", name = "cathode-manganese", amount = 12 },
      { type = "item", name = "solid-iron-hydroxide", amount = 4 },
    },
    main_product = "cathode-manganese",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("cathode-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[cathode-manganese]-b",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "manganese-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "manganese-ore", amount = 24 },
      { type = "item", name = "solid-coke", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-manganese", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-manganese]-a",
  },
  {
    type = "recipe",
    name = "cathode-manganese-smelting",
    category = "blast-smelting-2",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "cathode-manganese", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-manganese", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-manganese]-b",
  },
  {
    type = "recipe",
    name = "powder-manganese",
    category = "advanced-crafting",
    subgroup = "angels-manganese",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-manganese", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-manganese", amount = 1 },
    },
    order = "g[powder-manganese]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-manganese-smelting",
    category = "induction-smelting",
    subgroup = "angels-manganese-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-manganese", amount = 120 },
    },
    order = "h[liquid-molten-manganese]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "roll-manganese-casting",
    category = "strand-casting",
    subgroup = "angels-manganese-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-manganese", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-manganese", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-manganese]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-manganese"),
  },
  {
    type = "recipe",
    name = "roll-manganese-casting-fast",
    category = "strand-casting-2",
    subgroup = "angels-manganese-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-manganese", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-manganese",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-manganese", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-manganese",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-manganese]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-manganese"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-manganese",
    category = "casting",
    subgroup = "angels-manganese-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-manganese", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-manganese", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-manganese", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-manganese"),
      angelsmods.functions.get_object_icons("liquid-molten-manganese"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-manganese]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-manganese-converting",
    category = "advanced-crafting",
    subgroup = "angels-manganese-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-manganese", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-manganese", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-manganese"),
      angelsmods.functions.get_object_icons("angels-roll-manganese"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-manganese]-b",
  },
})
