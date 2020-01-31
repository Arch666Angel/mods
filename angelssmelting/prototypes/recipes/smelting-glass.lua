local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --GLAS
  -- SMELTING INTERMEDIATE
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "glass-mixture-1",
    category = "powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=1},
    },
    results =
    {
      {type="item", name="solid-glass-mixture", amount=1},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "a[solid-glass-mixture]-a",
  },
  {
    type = "recipe",
    name = "glass-mixture-2",
    category = "powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-lime", amount=1},
    },
    results =
    {
      {type="item", name="solid-glass-mixture", amount=2},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "a[solid-glass-mixture]-b",
  },
  {
    type = "recipe",
    name = "glass-mixture-3",
    category = "powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-aluminium-oxide", amount=1},
      {type="item", name="solid-lime", amount=1},
    },
    results =
    {
      {type="item", name="solid-glass-mixture", amount=3},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "a[solid-glass-mixture]-c",
  },
  {
    type = "recipe",
    name = "glass-mixture-4",
    category = "powder-mixing",
    subgroup = "angels-glass",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-sand", amount=1},
      {type="item", name="solid-sodium-carbonate", amount=1},
      {type="item", name="solid-lime", amount=1},
      {type="item", name="solid-sodium-sulfate", amount=1},
    },
    results =
    {
      {type="item", name="solid-glass-mixture", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_4.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "a[solid-glass-mixture]-d",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-glass-smelting",
    category = "induction-smelting",
    subgroup = "angels-glass-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-glass-mixture", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-glass", amount=120},
    },
    icon_size = 32,
    order = "b[liquid-molten-glass]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-glass-1",
    category = "casting",
    subgroup = "angels-glass-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=40},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=3},
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=50 * intermediatemulti},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=3},
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-glass.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[angels-plate-glass]-a",
  },
  {
    type = "recipe",
    name = "angels-plate-glass-2",
    category = "casting",
    subgroup = "angels-glass-casting",
    normal =
    {
      enabled = "false",
      energy_required = 3,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=40},
        {type="fluid", name="liquid-molten-lead", amount=20},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=4},
        {type="item", name="solid-lead-oxide", amount=2},
      },
      main_product= "angels-plate-glass",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 3,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=50 * intermediatemulti},
        {type="fluid", name="liquid-molten-lead", amount=20},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=4},
        {type="item", name="solid-lead-oxide", amount=2},
      },
      main_product= "angels-plate-glass",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-glass.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[angels-plate-glass]-b",
  },
  {
    type = "recipe",
    name = "angels-plate-glass-3",
    category = "casting",
    subgroup = "angels-glass-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=40},
        {type="fluid", name="liquid-molten-tin", amount=20},
        {type="fluid", name="gas-nitrogen", amount=20},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=5},
        {type="item", name="ingot-tin", amount=2},
      },
      main_product = "angels-plate-glass",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=50 * intermediatemulti},
        {type="fluid", name="liquid-molten-tin", amount=20},
        {type="fluid", name="gas-nitrogen", amount=20},
      },
      results =
      {
        {type="item", name="angels-plate-glass", amount=5},
        {type="item", name="ingot-tin", amount=2},
      },
      main_product = "angels-plate-glass",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-glass.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[angels-plate-glass]-c",
  },
  {
    type = "recipe",
    name = "angels-coil-glass-fiber",
    category = "strand-casting",
    subgroup = "angels-glass-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=80},
      },
      results =
      {
        {type="item", name="angels-coil-glass-fiber", amount=4},
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-glass", amount=100 * intermediatemulti},
      },
      results =
      {
        {type="item", name="angels-coil-glass-fiber", amount=4},
      },
    },
    icon_size = 32,
    order = "d[angels-coil-glass-fiber]",
  },
  --CRAFTING
  {
    type = "recipe",
    name = "angels-glass-fiber-board",
    category = "advanced-crafting",
    subgroup = "angels-glass-casting",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="angels-coil-glass-fiber", amount=1},
      {type="fluid", name="liquid-resin", amount=40},
    },
    results =
    {
      {type="item", name="angels-void", amount=1},
    },
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "e[angels-glass-fiber-board]",
  },
}
)