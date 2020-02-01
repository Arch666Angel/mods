local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --NICKEL
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "nickel-ore-processing",
    category = "ore-processing",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"nickel-ore", 4}
    },
    results =
    {
      {type="item", name="processed-nickel", amount=2},
    },
    icon_size = 32,
    order = "b[processed-nickel]",
  },
  {
    type = "recipe",
    name = "nickel-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-nickel",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-nickel", 3}
    },
    results =
    {
      {type="item", name="pellet-nickel", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-nickel]",
  },
  {
    type = "recipe",
    name = "processed-nickel-smelting",
    category = "chemical-smelting",
    subgroup = "angels-nickel",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-nickel", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=60},
    },
    results =
    {
      {type="item", name="cathode-nickel", amount=12},
    },
    icon_size = 32,
    order = "d[cathode-nickel]",
  },
  {
    type = "recipe",
    name = "pellet-nickel-smelting",
    category = "blast-smelting",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-nickel", amount=8},
      {type="item", name="sulfur", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
    },
    results =
    {
      {type="item", name="solid-nickel-carbonyl", amount=24},
    },
    icon_size = 32,
    order = "e[solid-nickel-carbonyl]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "nickel-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="nickel-ore", amount=24},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
    },
    results =
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-nickel]-a",
  },
  {
    type = "recipe",
    name = "cathode-nickel-smelting",
    category = "blast-smelting",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cathode-nickel", amount=24},
    },
    results =
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-nickel]-b",
  },
  {
    type = "recipe",
    name = "solid-nickel-carbonyl-smelting",
    category = "blast-smelting",
    subgroup = "angels-nickel",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-nickel-carbonyl", amount=18},
      {type="item", name="ingot-nickel", amount=6},
    },
    results =
    {
      {type="item", name="ingot-nickel", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-nickel]-c",
  },
  {
    type = "recipe",
    name = "powder-nickel",
    category = "advanced-crafting",
    subgroup = "angels-nickel",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-nickel", amount=1},
    },
    results =
    {
      {type="item", name="powder-nickel", amount=1},
    },
    icon_size = 32,
    order = "g[powder-nickel]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-nickel-smelting",
    category = "induction-smelting",
    subgroup = "angels-nickel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-nickel", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-nickel", amount=120},
    },
    icon_size = 32,
    order = "h[liquid-molten-nickel]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-nickel",
    category = "casting",
    subgroup = "angels-nickel-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-nickel", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-nickel", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-nickel", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-nickel", amount=4}
      },
    },
    icon_size = 32,
    order = "j[angels-plate-nickel]",
  },
}
)