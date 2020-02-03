local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --CHROME
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "chrome-ore-processing",
    category = "ore-processing",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"chrome-ore", 4}
    },
    results =
    {
      {type="item", name="processed-chrome", amount=2},
    },
    icon_size = 32,
    order = "b[processed-chrome]",
  },
  {
    type = "recipe",
    name = "chrome-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-chrome",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-chrome", 3}
    },
    results =
    {
      {type="item", name="pellet-chrome", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-chrome]",
  },
  {
    type = "recipe",
    name = "pellet-chrome-smelting",
    category = "blast-smelting",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-chrome", amount=8},
      {type="item", name="solid-sodium-carbonate", amount=6},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="solid-chromate", amount=24},
    },
    icon_size = 32,
    order = "d[solid-chromate]",
  },
  {
    type = "recipe",
    name = "solid-chromate-smelting",
    category = "liquifying",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-chromate", amount=12},
      {type="fluid", name="liquid-sulfuric-acid", amount=30},
    },
    results =
    {
      {type="item", name="solid-dichromate", amount=12},
      {type="item", name="solid-sodium-sulfate", amount=1},
      {type="fluid", name="water-purified", amount=30},
    },
    main_product= "solid-dichromate",
    icon_size = 32,
    order = "e[solid-dichromate]",
  },
  {
    type = "recipe",
    name = "solid-dichromate-smelting",
    category = "chemical-smelting",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-dichromate", amount=24},
      {type="item", name="solid-carbon", amount=3},
    },
    results =
    {
      {type="item", name="solid-chrome-oxide", amount=24},
      {type="item", name="solid-sodium-carbonate", amount=3},
      {type="fluid", name="gas-carbon-monoxide", amount=30},
    },
    main_product= "solid-chrome-oxide",
    icon_size = 32,
    order = "f[solid-chrome-oxide]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "chrome-ore-smelting",
    category = "chemical-smelting",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="chrome-ore", amount=24},
      {type="item", name="solid-carbon", amount=3},
    },
    results =
    {
      {type="item", name="ingot-chrome", amount=24},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
    },
    main_product= "ingot-chrome",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-chrome.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-chrome]-a",
  },
  {
    type = "recipe",
    name = "processed-chrome-smelting",
    category = "blast-smelting",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-chrome", amount=8},
      {type="item", name="solid-carbon", amount=3},
    },
    results =
    {
      {type="item", name="ingot-chrome", amount=24},
      {type="fluid", name="gas-carbon-monoxide", amount=60},
    },
    main_product= "ingot-chrome",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-chrome.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-chrome]-b",
  },
  {
    type = "recipe",
    name = "solid-chrome-oxide-smelting",
    category = "blast-smelting",
    subgroup = "angels-chrome",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-chrome-oxide", amount=24},
      {type="item", name="ingot-aluminium", amount=6},
    },
    results =
    {
      {type="item", name="ingot-chrome", amount=24},
      {type="item", name="solid-aluminium-oxide", amount=6},
    },
    main_product= "ingot-chrome",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-chrome.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-chrome]-c",
  },
  {
    type = "recipe",
    name = "powder-chrome",
    category = "advanced-crafting",
    subgroup = "angels-chrome",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-chrome", amount=1},
    },
    results =
    {
      {type="item", name="powder-chrome", amount=1},
    },
    icon_size = 32,
    order = "h[powder-chrome]",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-chrome-smelting",
    category = "induction-smelting",
    subgroup = "angels-chrome-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-chrome", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-chrome", amount=120},
    },
    icon_size = 32,
    order = "i[liquid-molten-chrome]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-chrome",
    category = "casting",
    subgroup = "angels-chrome-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-chrome", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-chrome", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-chrome", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-chrome", amount=4}
      },
    },
    icon_size = 32,
    order = "k[angels-plate-chrome]",
  },
}
)
