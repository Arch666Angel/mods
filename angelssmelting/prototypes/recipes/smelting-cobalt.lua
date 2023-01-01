local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --COBALT
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "cobalt-ore-processing",
    category = "ore-processing-3",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-cobalt", amount = 2 },
    },
    order = "b[processed-cobalt]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "cobalt-processed-processing",
    category = "pellet-pressing-3",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-cobalt", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-cobalt", amount = 4 },
    },
    order = "c[pellet-cobalt]",
  },
  {
    type = "recipe",
    name = "pellet-cobalt-smelting",
    category = "liquifying",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-cobalt", amount = 2 },
      { type = "fluid", name = "liquid-sulfuric-acid", amount = 20 },
    },
    results = {
      { type = "item", name = "solid-cobalt-hydroxide", amount = 6 },
    },
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt"),
    order = "d[solid-cobalt-hydroxide]",
  },
  {
    type = "recipe",
    name = "cobalt-ore-processing-alt",
    category = "ore-processing-2",
    subgroup = "angels-cobalt",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-ore", amount = 8 },
      { type = "item", name = "solid-limestone", amount = 3 },
    },
    results = {
      { type = "item", name = "solid-cobalt-oxide", amount = 8 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-cobalt-oxide"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-a",
  },
  {
    type = "recipe",
    name = "processed-cobalt-smelting",
    category = "chemical-smelting-3",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-cobalt", amount = 8 },
      { type = "item", name = "solid-limestone", amount = 6 },
    },
    results = {
      { type = "item", name = "solid-cobalt-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-cobalt-oxide"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-b",
  },
  {
    type = "recipe",
    name = "solid-cobalt-hydroxide-smelting",
    category = "chemical-smelting-4",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-cobalt-hydroxide", amount = 24 },
      { type = "item", name = "solid-calcium-chloride", amount = 6 },
    },
    results = {
      { type = "item", name = "solid-cobalt-oxide", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("solid-cobalt-oxide"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "e[solid-cobalt-oxide]-c",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "cobalt-ore-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "cobalt-ore", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-cobalt", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-cobalt"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-cobalt]-a",
  },
  {
    type = "recipe",
    name = "solid-cobalt-oxide-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-cobalt",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "solid-cobalt-oxide", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-cobalt", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-cobalt"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-cobalt]-b",
  },
  {
    type = "recipe",
    name = "powder-cobalt",
    category = "advanced-crafting",
    subgroup = "angels-cobalt",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-cobalt", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-cobalt", amount = 1 },
    },
    order = "g[powder-cobalt]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-cobalt-smelting",
    category = "induction-smelting-3",
    subgroup = "angels-cobalt-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-cobalt", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-cobalt", amount = 120 },
    },
    order = "h[liquid-molten-cobalt]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "roll-cobalt-casting",
    category = "strand-casting-3",
    subgroup = "angels-cobalt-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-cobalt", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-cobalt", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-cobalt]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt"),
  },
  {
    type = "recipe",
    name = "roll-cobalt-casting-fast",
    category = "strand-casting-4",
    subgroup = "angels-cobalt-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-cobalt", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-cobalt",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-cobalt", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-cobalt",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-cobalt]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-cobalt"),
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-cobalt",
    category = "casting-3",
    subgroup = "angels-cobalt-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-cobalt", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-cobalt", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-cobalt", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-cobalt"),
      angelsmods.functions.get_object_icons("liquid-molten-cobalt"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-cobalt]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-cobalt-converting",
    category = "advanced-crafting",
    subgroup = "angels-cobalt-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients = {
      { type = "item", name = "angels-roll-cobalt", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-plate-cobalt", amount = 4 },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-cobalt"),
      angelsmods.functions.get_object_icons("angels-roll-cobalt"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-cobalt]-b",
  },
})
