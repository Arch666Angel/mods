local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  -- COPPER
  -- ORE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"copper-ore", 4}
    },
    results =
    {
      {type="item", name="processed-copper", amount=2},
    },
    icon_size = 32,
    order = "b[processed-copper]",
  },
  {
    type = "recipe",
    name = "copper-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-copper",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-copper", 3}
    },
    results =
    {
      {type="item", name="pellet-copper", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-copper]",
  },
  {
    type = "recipe",
    name = "pellet-copper-smelting",
    category = "blast-smelting",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-copper", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
      --{type="item", name="solid-sodium-carbonate", amount=6},
    },
    results =
    {
      {type="item", name="anode-copper", amount=24},
    },
    icon_size = 32,
    order = "d[anode-copper]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "copper-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="copper-ore", amount=24},
    },
    results =
    {
      {type="item", name="ingot-copper", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-copper]-a",
  },
  {
    type = "recipe",
    name = "processed-copper-smelting",
    category = "blast-smelting",
    subgroup = "angels-copper",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="processed-copper", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="ingot-copper", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-copper]-b",
  },
  {
    type = "recipe",
    name = "anode-copper-smelting",
    category = "chemical-smelting",
    subgroup = "angels-copper",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="anode-copper", amount=12},
      {type="fluid", name="liquid-sulfuric-acid", amount=30},
    },
    results =
    {
      {type="item", name="ingot-copper", amount=12},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-copper]-c",
  },
  {
    type = "recipe",
    name = "powder-copper",
    category = "advanced-crafting",
    subgroup = "angels-copper",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-copper", amount=1},
    },
    results =
    {
      {type="item", name="powder-copper", amount=1},
    },
    icon_size = 32,
    order = "f[powder-copper]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-copper-smelting",
    category = "induction-smelting",
    subgroup = "angels-copper-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-copper", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-copper", amount=120},
    },
    icon_size = 32,
    order = "g[liquid-molten-copper]",
  },
  {
    type = "recipe",
    name = "roll-copper-casting",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-copper", amount=2}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-copper", amount=2}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "h[angels-roll-copper]-a",
  },
  {
    type = "recipe",
    name = "roll-copper-casting-fast",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    energy_required = 2,
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-copper", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-copper",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-copper", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-copper",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "h[angels-roll-copper]-b",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-casting",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-copper", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-copper", amount=4}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[angels-wire-coil-copper]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-casting-fast",
    category = "strand-casting",
    subgroup = "angels-copper-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-wire-coil-copper", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-copper",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-wire-coil-copper", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-copper",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[angels-wire-coil-copper]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-copper",
    category = "casting",
    subgroup = "angels-copper-casting",
    energy_required = 4,
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-copper", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-copper", amount=4}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-copper.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-copper.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "j[angels-plate-copper]-c", -- j[angels-plate-copper]-a reserved for crushed stiratite smelting (see global overrides)
  },                                    -- j[angels-plate-copper]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-roll-copper-converting",
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 0.5,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-roll-copper", amount=1},
    },
    results =
    {
      {type="item", name="angels-plate-copper", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-copper.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-copper.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "j[angels-plate-copper]-d",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-copper-converting",
    category = "advanced-crafting",
    subgroup = "angels-copper-casting",
    energy_required = 1,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-wire-coil-copper", amount=4},
    },
    results =
    {
      {type="item", name="angels-wire-copper", amount=16},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-copper.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "k[angels-wire-copper]-e", -- k[angels-wire-copper]-a reserved for base game recipe (see global overrides)
  },
}
)