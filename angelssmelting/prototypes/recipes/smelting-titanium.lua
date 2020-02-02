local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --CHROME
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "titanium-ore-processing",
    category = "ore-processing",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"rutile-ore", 4}
    },
    results =
    {
      {type="item", name="processed-titanium", amount=2},
    },
    icon_size = 32,
    order = "b[processed-titanium]",
  },
  {
    type = "recipe",
    name = "titanium-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-titanium",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-titanium", 3}
    },
    results =
    {
      {type="item", name="pellet-titanium", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-titanium]",
  },
  {
    type = "recipe",
    name = "titanium-ore-smelting",
    category = "chemical-smelting",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = "false",
    ingredients =
    {
      {type="item", name="rutile-ore", amount=24},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
    },
    results =
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/liquid-titanium-tetrachloride.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, 0}, --{-12, -12},
      }
    },
    icon_size = 32,
    order = "d[liquid-titanium-tetrachloride]-a",
  },
  {
    type = "recipe",
    name = "processed-titanium-smelting",
    category = "chemical-smelting",
    subgroup = "angels-titanium",
    energy_required = 8,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-titanium", amount=8},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
    },
    results =
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/liquid-titanium-tetrachloride.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, 0}, --{-12, -12},
      }
    },
    icon_size = 32,
    order = "d[liquid-titanium-tetrachloride]-b",
  },
  {
    type = "recipe",
    name = "liquid-titanium-tetrachloride-smelting",
    category = "chemical-smelting",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
      --{type="item", name="ingot-manganese", amount=6},
    },
    results =
    {
      {type="item", name="sponge-titanium", amount=24},
    },
    icon_size = 32,
    order = "e[sponge-titanium]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "sponge-titanium-smelting",
    category = "blast-smelting",
    subgroup = "angels-titanium",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="sponge-titanium", amount=24},
    },
    results =
    {
      {type="item", name="ingot-titanium", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f[ingot-titanium]-a",
  },
  {
    type = "recipe",
    name = "pellet-titanium-smelting",
    category = "blast-smelting",
    subgroup = "angels-titanium",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-titanium", amount=8},
      {type="item", name="solid-calcium-chloride", amount=6},
      {type="item", name="solid-carbon", amount=6},
    },
    results =
    {
      {type="item", name="ingot-titanium", amount=24},
      {type="item", name="solid-limestone", amount=6},
    },
    main_product= "ingot-titanium",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f[ingot-titanium]-b",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-titanium-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-titanium", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-titanium", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-molten-titanium]-a",
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-molten-titanium]-b",
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-3",
    category = "induction-smelting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-nickel", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-molten-titanium]-c",
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-4",
    category = "induction-smelting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-tin", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_4.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-molten-titanium]-d",
  },
  {
    type = "recipe",
    name = "molten-titanium-smelting-5",
    category = "induction-smelting",
    subgroup = "angels-titanium-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
      {type="item", name="ingot-chrome", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_5.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-molten-titanium]-e",
  },
  {
    type = "recipe",
    name = "roll-titanium-casting",
    category = "strand-casting",
    subgroup = "angels-titanium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-titanium", amount=2}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-roll-titanium", amount=2}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "h[angels-roll-titanium]-a",
  },
  {
    type = "recipe",
    name = "roll-titanium-casting-fast",
    category = "strand-casting",
    subgroup = "angels-titanium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-titanium", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-titanium",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-roll-titanium", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-titanium",
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "h[angels-roll-titanium]-b",
  },
  {
    type = "recipe",
    name = "angels-plate-titanium",
    category = "casting",
    subgroup = "angels-titanium-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-titanium", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-titanium", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-titanium", amount=4}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-titanium.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "i[angels-plate-titanium]-a",
  },
  {
    type = "recipe",
    name = "angels-roll-titanium-converting",
    category = "advanced-crafting",
    subgroup = "angels-titanium-casting",
    energy_required = 0.5,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-roll-titanium", amount=1},
    },
    results =
    {
      {type="item", name="angels-plate-titanium", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-titanium.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "i[angels-plate-titanium]-b",
  },
}
)