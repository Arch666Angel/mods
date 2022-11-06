local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend({
  --CHROME
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "titanium-ore-processing",
    category = "ore-processing-3",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "rutile-ore", amount = 4 },
    },
    results = {
      { type = "item", name = "processed-titanium", amount = 2 },
    },
    order = "b[processed-titanium]",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "titanium-processed-processing",
    category = "pellet-pressing-3",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-titanium", amount = 3 },
    },
    results = {
      { type = "item", name = "pellet-titanium", amount = 4 },
    },
    order = "c[pellet-titanium]",
  },
  {
    type = "recipe",
    name = "titanium-ore-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = false,
    ingredients = {
      { type = "item", name = "rutile-ore", amount = 24 },
      { type = "item", name = "solid-carbon", amount = 6 },
      { type = "fluid", name = "gas-chlorine", amount = 60 },
    },
    results = {
      { type = "fluid", name = "liquid-titanium-tetrachloride", amount = 120 },
    },
    main_product = "liquid-titanium-tetrachloride",
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_liquid_recipe_icon({
        { "__angelssmelting__/graphics/icons/molecule-titanium-tetrachloride.png", 72 },
      }, "SiClCl"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "d[liquid-titanium-tetrachloride]-a",
  },
  {
    type = "recipe",
    name = "processed-titanium-smelting",
    category = "chemical-smelting-3",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = false,
    ingredients = {
      { type = "item", name = "processed-titanium", amount = 8 },
      { type = "item", name = "solid-carbon", amount = 6 },
      { type = "fluid", name = "gas-chlorine", amount = 60 },
    },
    results = {
      { type = "fluid", name = "liquid-titanium-tetrachloride", amount = 120 },
    },
    main_product = "liquid-titanium-tetrachloride",
    always_show_products = true,
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.create_liquid_recipe_icon({
        { "__angelssmelting__/graphics/icons/molecule-titanium-tetrachloride.png", 72 },
      }, "SiClCl"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "d[liquid-titanium-tetrachloride]-b",
  },
  {
    type = "recipe",
    name = "liquid-titanium-tetrachloride-smelting",
    category = "chemical-smelting-2",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "liquid-titanium-tetrachloride", amount = 120 },
      --{type="item", name="ingot-manganese", amount=6},
    },
    results = {
      { type = "item", name = "sponge-titanium", amount = 24 },
    },
    order = "e[sponge-titanium]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "sponge-titanium-smelting",
    category = "blast-smelting-3",
    subgroup = "angels-titanium",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "sponge-titanium", amount = 24 },
    },
    results = {
      { type = "item", name = "ingot-titanium", amount = 24 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-titanium]-a",
  },
  {
    type = "recipe",
    name = "pellet-titanium-smelting",
    category = "blast-smelting-4",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-titanium", amount = 8 },
      { type = "item", name = "solid-calcium-chloride", amount = 6 },
      { type = "item", name = "solid-carbon", amount = 6 },
    },
    results = {
      { type = "item", name = "ingot-titanium", amount = 24 },
      { type = "item", name = "solid-limestone", amount = 6 },
    },
    main_product = "ingot-titanium",
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("ingot-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "f[ingot-titanium]-b",
  },
  {
    type = "recipe",
    name = "powder-titanium",
    category = "advanced-crafting",
    subgroup = "angels-titanium",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 1 },
    },
    results = {
      { type = "item", name = "powder-titanium", amount = 1 },
    },
    order = "g[powder-titanium]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-titanium-smelting-1",
    category = "induction-smelting-3",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-titanium", amount = 120 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-2",
    category = "induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 12 },
      { type = "item", name = "ingot-manganese", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-titanium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-3",
    category = "induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 12 },
      { type = "item", name = "ingot-nickel", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-titanium", amount = 240 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      3,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-c",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-4",
    category = "induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 12 },
      { type = "item", name = "ingot-aluminium", amount = 12 },
      { type = "item", name = "ingot-tin", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-titanium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      4,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-d",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-5",
    category = "induction-smelting-4",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "ingot-titanium", amount = 12 },
      { type = "item", name = "ingot-cobalt", amount = 12 },
      { type = "item", name = "ingot-chrome", amount = 12 },
    },
    results = {
      { type = "fluid", name = "liquid-molten-titanium", amount = 360 },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      5,
      angelsmods.smelting.number_tint
    ),
    order = "h[liquid-molten-titanium]-e",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "roll-titanium-casting",
    category = "strand-casting-3",
    subgroup = "angels-titanium-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 80 },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-titanium", amount = 2 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 100 * intermediatemulti },
        { type = "fluid", name = "water", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-titanium", amount = 2 },
      },
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-titanium"),
      1,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-titanium]-a",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "roll-titanium-casting-fast",
    category = "strand-casting-4",
    subgroup = "angels-titanium-casting",
    normal = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 140 },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-titanium", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-titanium",
    },
    expensive = {
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 180 * intermediatemulti },
        { type = "fluid", name = "liquid-coolant", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-roll-titanium", amount = 4 },
        { type = "fluid", name = "liquid-coolant-used", amount = 40, temperature = 300 },
      },
      main_product = "angels-roll-titanium",
    },
    icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-roll-titanium"),
      2,
      angelsmods.smelting.number_tint
    ),
    order = "i[angels-roll-titanium]-b",
    crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("liquid-molten-titanium"),
  },
  {
    type = "recipe",
    name = "angels-plate-titanium",
    category = "casting-3",
    subgroup = "angels-titanium-casting",
    normal = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 40 },
      },
      results = {
        { type = "item", name = "angels-plate-titanium", amount = 4 },
      },
    },
    expensive = {
      enabled = false,
      energy_required = 4,
      ingredients = {
        { type = "fluid", name = "liquid-molten-titanium", amount = 50 * intermediatemulti },
      },
      results = {
        { type = "item", name = "angels-plate-titanium", amount = 4 },
      },
    },
    icons = angelsmods.functions.add_icon_layer(
      angelsmods.functions.get_object_icons("angels-plate-titanium"),
      angelsmods.functions.get_object_icons("liquid-molten-titanium"),
      { -10, -10 },
      0.4375
    ),
    order = "j[angels-plate-titanium]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-titanium-converting",
    category = "advanced-crafting",
    subgroup = "angels-titanium-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
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
