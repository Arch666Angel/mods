local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --ZINC
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "zinc-ore-processing",
    category = "ore-processing",
    subgroup = "angels-zinc",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"zinc-ore", 4}
    },
    results =
    {
      {type="item", name="processed-zinc", amount=2},
    },
    main_product= "processed-zinc",
    icon = "__angelssmelting__/graphics/icons/processed-zinc.png",
    icon_size = 32,
    order = "b[processed-zinc]",
  },
  {
    type = "recipe",
    name = "zinc-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-zinc",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-zinc", 3}
    },
    results =
    {
      {type="item", name="pellet-zinc", amount=4},
    },
    main_product= "pellet-zinc",
    icon = "__angelssmelting__/graphics/icons/pellet-zinc.png",
    icon_size = 32,
    order = "c[pellet-zinc]",
  },
  {
    type = "recipe",
    name = "pellet-zinc-smelting",
    category = "chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-zinc", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="solid-zinc-oxide", amount=24},
      {type="fluid", name="gas-sulfur-dioxide", amount=30},
    },
    main_product= "solid-zinc-oxide",
    icon_size = 32,
    order = "d[solid-zinc-oxide]",
  },
  {
    type = "recipe",
    name = "solid-zinc-oxide-smelting",
    category = "chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-zinc-oxide", amount=12},
      {type="fluid", name="liquid-sulfuric-acid", amount=40},
    },
    results =
    {
      {type="item", name="cathode-zinc", amount=12},
    },
    icon_size = 32,
    order = "e[cathode-zinc]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "zinc-ore-smelting",
    category = "chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="zinc-ore", amount=24},
      {type="fluid", name="gas-oxygen", amount=60},
      {type="fluid", name="liquid-molten-lead", amount=60},
    },
    results =
    {
      {type="item", name="ingot-zinc", amount=24},
      {type="item", name="ingot-lead", amount=6},
      {type="fluid", name="gas-sulfur-dioxide", amount=30},
    },
    main_product= "ingot-zinc",
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-zinc]-a",
  },
  {
    type = "recipe",
    name = "processed-zinc-smelting",
    category = "chemical-smelting",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-zinc", amount=8},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="ingot-zinc", amount=24},
      {type="fluid", name="gas-sulfur-dioxide", amount=30},
    },
    main_product= "ingot-zinc",
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-zinc]-b",
  },
  {
    type = "recipe",
    name = "cathode-zinc-smelting",
    category = "blast-smelting",
    subgroup = "angels-zinc",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cathode-zinc", amount=24},
    },
    results =
    {
      {type="item", name="ingot-zinc", amount=24},
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-zinc]-c",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-zinc-smelting",
    category = "induction-smelting",
    subgroup = "angels-zinc-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-zinc", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-zinc", amount=120},
    },
    icon_size = 32,
    order = "g[liquid-molten-zinc]",
  },
  -- order h reserved for angel-roll-zinc
  {
    type = "recipe",
    name = "angels-plate-zinc",
    category = "casting",
    subgroup = "angels-zinc-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-zinc", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-zinc", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-zinc", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-zinc", amount=4}
      },
    },
    icon_size = 32,
    order = "i[angels-plate-zinc]",
  },
}
)