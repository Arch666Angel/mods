local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --BAUXITE/ALUMINIUM
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"bauxite-ore", 4}
    },
    results =
    {
      {type="item", name="processed-aluminium", amount=2},
    },
    main_product= "processed-aluminium",
    icon = "__angelssmelting__/graphics/icons/processed-aluminium.png",
    icon_size = 32,
    order = "b[processed-aluminium]",
  },
  {
    type = "recipe",
    name = "aluminium-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-aluminium",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-aluminium", 3}
    },
    results =
    {
      {type="item", name="pellet-aluminium", amount=4},
    },
    main_product= "pellet-aluminium",
    icon = "__angelssmelting__/graphics/icons/pellet-aluminium.png",
    icon_size = 32,
    order = "c[pellet-aluminium]",
  },
  {
    type = "recipe",
    name = "pellet-aluminium-smelting",
    category = "chemical-smelting",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-aluminium", amount=6},
      {type="item", name="solid-sodium-carbonate", amount=3},
      {type="item", name="solid-coke", amount=3},
    },
    results =
    {
      {type="item", name="solid-sodium-aluminate", amount=18},
    },
    icon_size = 32,
    order = "d[solid-sodium-aluminate]",
  },
  {
    type = "recipe",
    name = "bauxite-ore-smelting",
    category = "powder-mixing",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="bauxite-ore", amount=12},
      {type="item", name="solid-sodium-hydroxide", amount=3},
    },
    results =
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-aluminium-hydroxide.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[solid-aluminium-hydroxide]-a",
  },
  {
    type = "recipe",
    name = "processed-aluminium-smelting",
    category = "powder-mixing",
    subgroup = "angels-aluminium",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-aluminium", amount=4},
      {type="item", name="solid-sodium-hydroxide", amount=3},
    },
    results =
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-aluminium-hydroxide.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[solid-aluminium-hydroxide]-b",
  },
  {
    type = "recipe",
    name = "solid-aluminium-hydroxide-smelting",
    category = "blast-smelting",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-aluminium-hydroxide", amount=24},
    },
    results =
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[solid-aluminium-oxide]-a",
  },
  {
    type = "recipe",
    name = "solid-sodium-aluminate-smelting",
    category = "blast-smelting",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-sodium-aluminate", amount=24},
      {type="item", name="solid-sodium-hydroxide", amount=3},
      {type="fluid", name="gas-carbon-dioxide", amount=60},
    },
    results =
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
      {type="item", name="solid-sodium-carbonate", amount=2},
    },
    main_product= "solid-aluminium-oxide",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[solid-aluminium-oxide]-b",
  },
  -- SMELTING RESULT  
  {
    type = "recipe",
    name = "solid-aluminium-oxide-smelting",
    category = "blast-smelting",
    subgroup = "angels-aluminium",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
      {type="item", name="solid-carbon", amount=3},
    },
    results =
    {
      {type="item", name="ingot-aluminium", amount=24},
    },
    icon_size = 32,
    order = "g[ingot-aluminium]",
  },
  {
    type = "recipe",
    name = "powder-aluminium",
    category = "advanced-crafting",
    subgroup = "angels-aluminium",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-aluminium", amount=1},
    },
    results =
    {
      {type="item", name="powder-aluminium", amount=1},
    },
    icon_size = 32,
    order = "h[powder-aluminium]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-aluminium-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-aluminium", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-aluminium", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-aluminium]-a",
  },
  {
    type = "recipe",
    name = "molten-aluminium-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-aluminium", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-aluminium]-b",
  },
  {
    type = "recipe",
    name = "molten-aluminium-smelting-3",
    category = "induction-smelting",
    subgroup = "angels-aluminium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-silicon", amount=12},
      {type="item", name="ingot-copper", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-aluminium", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-aluminium]-c",
  },
  {
    type = "recipe",
    name = "roll-aluminium-casting",
    category = "strand-casting",
    subgroup = "angels-aluminium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-aluminium", amount=2}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-aluminium", amount=2}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "j[angels-roll-aluminium]-a",
  },
  {
    type = "recipe",
    name = "roll-aluminium-casting-fast",
    category = "strand-casting",
    subgroup = "angels-aluminium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-aluminium", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-aluminium",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-aluminium", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-aluminium",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1.0, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "j[angels-roll-aluminium]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-aluminium",
    category = "casting",
    subgroup = "angels-aluminium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-aluminium", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-aluminium", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-aluminium", amount=4}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "k[angels-plate-aluminium]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-aluminium-converting",
    category = "advanced-crafting",
    subgroup = "angels-aluminium-casting",
    energy_required = 0.5,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-roll-aluminium", amount=1},
    },
    results =
    {
      {type="item", name="angels-plate-aluminium", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "k[angels-plate-aluminium]-b",
  },
  -- order l reserved for motor casting (see industries)
}
)
