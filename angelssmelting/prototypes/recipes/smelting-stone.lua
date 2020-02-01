local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --STONE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "solid-lime",
    category = "blast-smelting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-limestone", amount=4},
    },
    results=
    {
      {type="item", name="solid-lime", amount=4},
      {type="fluid", name="gas-carbon-dioxide", amount=50},
    },
    main_product= "solid-lime",
    icon_size = 32,
    order = "b[solid-lime]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "cement-mixture-1",
    category = "powder-mixing",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-lime", amount=1},
      {type="item", name="quartz", amount=1},
    },
    results=
    {
      {type="item", name="solid-cement", amount=1},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-cement.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[solid-cement]-a",
  },
  {
    type = "recipe",
    name = "cement-mixture-2",
    category = "powder-mixing",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=1},
      {type="item", name="solid-lime", amount=1},
      {type="item", name="solid-aluminium-oxide", amount=1},
      {type="item", name="iron-ore", amount=1},
    },
    results=
    {
      {type="item", name="solid-cement", amount=2},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solid-cement.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c[solid-cement]-b",
  },
  {
    type = "recipe",
    name = "angels-clay-brick-raw",
    category = "crafting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-clay", amount=4},
      {type="item", name="solid-sand", amount=2},
      {type="item", name="solid-lime", amount=2},
    },
    results=
    {
      {type="item", name="clay-brick-raw", amount=4},
    },
    icon_size = 32,
    order = "d[clay-brick-raw]",
  },
  {
    type = "recipe",
    name = "angels-clay-brick",
    category = "smelting",
    subgroup = "angels-stone",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="clay-brick-raw", amount=4},
    },
    results=
    {
      {type="item", name="clay-brick", amount=4},
    },
    icon_size = 32,
    order = "e[clay-brick]",
  },
  -- CASTING INTERMEDIATE
  -- order f reserved for stone brick (see override)
  {
    type = "recipe",
    name = "concrete-mixture-1",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-cement", amount=8},
      {type="fluid", name="water", amount=100},
      {type="item", name="slag", amount=4},
    },
    results=
    {
      {type="fluid", name="liquid-concrete", amount=100},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-concrete.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-concrete]-a",
  },
  {
    type = "recipe",
    name = "concrete-mixture-2",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-cement", amount=6},
      {type="fluid", name="water", amount=100},
      {type="item", name="solid-sand", amount=3},
      {type="item", name="stone", amount=3},
    },
    results=
    {
      {type="fluid", name="liquid-concrete", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-concrete.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g[liquid-concrete]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-concrete",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-concrete", amount=40},
    },
    results=
    {
      {type="item", name="concrete", amount=4},
    },
    icons = {
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 1, g = 0.8, b = 0.0, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "h[concrete]-b", -- h[concrete]-a is reserved for base game recipe (see override)
  },
  {
    type = "recipe",
    name = "angels-concrete-brick",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-concrete", amount=40},
      {type="item", name="stone-brick", amount=4},
    },
    results=
    {
      {type="item", name="concrete-brick", amount=4},
    },
    icon_size = 32,
    order = "i[concrete-brick]",
  },
  {
    type = "recipe",
    name = "angels-reinforced-concrete-brick",
    category = "crafting-with-fluid",
    subgroup = "angels-stone-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-concrete", amount=40},
      {type="item", name="stone-brick", amount=4},
      {type="item", name="angels-plate-steel", amount=4},
    },
    results=
    {
      {type="item", name="reinforced-concrete-brick", amount=4},
    },
    icon_size = 32,
    order = "j[reinforced-concrete-brick]",
  },
}
)