local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --LEAD
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "lead-ore-processing",
    category = "ore-processing",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"lead-ore", 4}
    },
    results =
    {
      {type="item", name="processed-lead", amount=2},
    },
    icon_size = 32,
    order = "b[processed-lead]",
  },
  {
    type = "recipe",
    name = "lead-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-lead", 3}
    },
    results =
    {
      {type="item", name="pellet-lead", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-lead]",
  },
  {
    type = "recipe",
    name = "processed-lead-smelting",
    category = "blast-smelting",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-lead", amount=8},
      {type="fluid", name="gas-oxygen", amount=120},
    },
    results =
    {
      {type="item", name="solid-lead-oxide", amount=24},
      {type="fluid", name="gas-sulfur-dioxide", amount=120},
    },
    main_product= "solid-lead-oxide",
    icon_size = 32,
    order = "d[solid-lead-oxide]",
  },
  {
    type = "recipe",
    name = "pellet-lead-smelting",
    category = "blast-smelting",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-lead", amount=8},
      {type="item", name="solid-limestone", amount=2},
      {type="item", name="solid-coke", amount=2},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="anode-lead", amount=24},
      {type="fluid", name="gas-sulfur-dioxide", amount=60},
    },
    main_product= "anode-lead",
    icon_size = 32,
    order = "e[anode-lead]",
  },
  {
    type = "recipe",
    name = "liquid-hexafluorosilicic-acid",
    category = "liquifying",
    subgroup = "angels-lead",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=3},
      {type="fluid", name="liquid-hydrofluoric-acid", amount=30},
    },
    results =
    {
      {type="fluid", name="liquid-hexafluorosilicic-acid", amount=60},
    },
    icon_size = 32,
    order = "f[liquid-hexafluorosilicic-acid]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "lead-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="lead-ore", amount=24},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="ingot-lead", amount=24},
      {type="fluid", name="gas-sulfur-dioxide", amount=60},
    },
    main_product= "ingot-lead",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-lead]-a",
  },
  {
    type = "recipe",
    name = "solid-lead-oxide-smelting",
    category = "blast-smelting",
    subgroup = "angels-lead",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-lead-oxide", amount=24},
      {type="item", name="solid-carbon", amount=2},
    },
    results =
    {
      {type="item", name="ingot-lead", amount=24},
    },
    main_product= "ingot-lead",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-lead]-b",
  },
  {
    type = "recipe",
    name = "anode-lead-smelting",
    category = "chemical-smelting",
    subgroup = "angels-lead",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="anode-lead", amount=12},
      {type="fluid", name="liquid-hexafluorosilicic-acid", amount=30},
    },
    results =
    {
      {type="item", name="ingot-lead", amount=12},
      {type="item", name="slag", amount=1},
    },
    main_product= "ingot-lead",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-lead]-c",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-lead-smelting",
    category = "induction-smelting",
    subgroup = "angels-lead-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-lead", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-lead", amount=120},
    },
    icon_size = 32,
    order = "h[liquid-molten-lead]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-lead",
    category = "casting",
    subgroup = "angels-lead-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-lead", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-lead", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-lead", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-lead", amount=4}
      },
    },
    icon_size = 32,
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-lead.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-lead.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    order = "i[angels-plate-lead]-b", -- i[angels-plate-lead]-a reserved for crushed saphirite smelting (see global overrides)
  },
}
)