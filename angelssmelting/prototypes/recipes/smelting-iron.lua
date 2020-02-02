local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --IRON
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"iron-ore", 4}
    },
    results =
    {
      {type="item", name="processed-iron", amount=2},
    },
    icon_size = 32,
    order = "b[processed-iron]",
  },
  {
    type = "recipe",
    name = "iron-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-iron",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-iron", 3}
    },
    results =
    {
      {type="item", name="pellet-iron", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-iron]",
  },
  -- order d reserved for solid-iron-hydroxide
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "iron-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="iron-ore", amount=24},
    },
    results =
    {
      {type="item", name="ingot-iron", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-iron]-a",
  },
  {
    type = "recipe",
    name = "processed-iron-smelting",
    category = "blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-iron", amount=8},
      {type="item", name="solid-coke", amount=2},
    },
    results =
    {
      {type="item", name="ingot-iron", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-iron]-b",
  },
  {
    type = "recipe",
    name = "pellet-iron-smelting",
    category = "blast-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-iron", amount=8},
      {type="item", name="solid-coke", amount=2},
      {type="item", name="solid-limestone", amount=2},
    },
    results =
    {
      {type="item", name="ingot-iron", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-iron]-c",
  },
  {
    type = "recipe",
    name = "solid-iron-hydroxide-smelting",
    category = "chemical-smelting",
    subgroup = "angels-iron",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-iron-hydroxide", amount=6},
      {type="item", name="solid-coke", amount=2},
    },
    results =
    {
      {type="item", name="ingot-iron", amount=6},
      {type="fluid", name="gas-carbon-dioxide", amount=20},
    },
    main_product= "ingot-iron",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_4.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[ingot-iron]-d",
  },
  -- order f reserved for ingot-steel (see alloys)
  {
    type = "recipe",
    name = "powder-iron",
    category = "advanced-crafting",
    subgroup = "angels-iron",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
      {type="item", name="ingot-iron", amount=1},
    },
    results =
    {
      {type="item", name="powder-iron", amount=1},
    },
    icon_size = 32,
    order = "g[powder-iron]",
  },
  -- order h reserved for powder-steel (see alloys)
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-iron-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-iron", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-iron", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-iron]-a",
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-manganese", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-iron]-b",
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-3",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-silicon", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-iron]-c",
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-4",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_4.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-iron]-d",
  },
  {
    type = "recipe",
    name = "molten-iron-smelting-5",
    category = "induction-smelting",
    subgroup = "angels-iron-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-chrome", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_5.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "i[liquid-molten-iron]-e",
  },
  {
    type = "recipe",
    name = "roll-iron-casting",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-iron", amount=2}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-iron", amount=2}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "j[angels-roll-iron]-a",
  },
  {
    type = "recipe",
    name = "roll-iron-casting-fast",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-iron", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-iron",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-iron", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-iron",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "j[angels-roll-iron]-b",
  },
  {
    type = "recipe",
    name = "rod-stack-iron-casting",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal =
    {
      enabled = false,
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=60},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-rod-stack-iron", amount=1}
      },
    },
    expensive =
    {
      enabled = false,
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=80 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-rod-stack-iron", amount=1}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/rod-stack-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "k[angels-rod-stack-iron]-a",
  },
  {
    type = "recipe",
    name = "rod-stack-iron-casting-fast",
    category = "strand-casting",
    subgroup = "angels-iron-casting",
    normal =
    {
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=110},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-rod-stack-iron", amount=2},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-rod-stack-iron",
    },
    expensive =
    {
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=150 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-rod-stack-iron", amount=2},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-rod-stack-iron",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/rod-stack-iron.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "k[angels-rod-stack-iron]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-iron",
    category = "casting",
    subgroup = "angels-iron-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-iron", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-iron", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-iron", amount=4}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-iron.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "l[angels-plate-iron]-c", -- k[angels-plate-iron]-a reserved for crushed saphirite smelting (see global overrides)
  },                                  -- k[angels-plate-iron]-b reserved for base game smelting recipe (see global overrides)
  {
    type = "recipe",
    name = "angels-roll-iron-converting",
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-roll-iron", amount=1},
    },
    results =
    {
      {type="item", name="angels-plate-iron", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-iron.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "l[angels-plate-iron]-d",
  },
  {
    type = "recipe",
    name = "angels-rod-iron-plate",
    category = "crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = true,
    allow_decomposition = true,
    ingredients ={
      {type="item", name="angels-plate-iron", amount=2},
    },
    results =
    {
      {type="item", name="angels-rod-iron", amount=1},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/rod-iron.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/plate-iron.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "m[angels-rod-iron]-a",
  },
  {
    type = "recipe",
    name = "angels-rod-stack-iron-converting",
    category = "advanced-crafting",
    subgroup = "angels-iron-casting",
    energy_required = 0.5,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-rod-stack-iron", amount=1},
    },
    results =
    {
      {type="item", name="angels-rod-iron", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/rod-iron.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/rod-stack-iron.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "m[angels-rod-iron]-b",
  },
}
)