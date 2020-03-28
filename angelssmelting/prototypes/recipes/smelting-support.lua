data:extend(
{
  --COOLANT
  {
    type = "recipe",
    name = "coolant-cool-steam",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="steam", amount=100},
    },
    results =
    {
      {type="fluid", name="water-purified", amount=100},
    },
    always_show_products = true,
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {
        "water-purified"
      },
      "www",
      {
        "steam"
      }
    ),
    order = "a",
  },
  {
    type = "recipe",
    name = "coolant",
    category = "chemistry",
    subgroup = "coolant",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=80},
      {type="fluid", name="liquid-mineral-oil", amount=20},
    },
    results =
    {
      {type="fluid", name="liquid-coolant", amount=100},
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "coolant-used-filtration-1",
    category = "filtering",
    subgroup = "coolant",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, maximum_temperature = 50},
      {type="item", name="filter-coal", amount=1},
    },
    results =
    {
      {type="fluid", name="liquid-coolant", amount=160, temperature = 25},
      {type="item", name="filter-frame", amount=1},
    },
    main_product= "liquid-coolant",
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "coolant-used-filtration-2",
    category = "filtering",
    subgroup = "coolant",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, maximum_temperature = 50},
      {type="item", name="filter-ceramic", amount=1},
    },
    results =
    {
      {type="fluid", name="liquid-coolant", amount=160, temperature = 25},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    main_product= "liquid-coolant",
    icon_size = 32,
    order = "d",
  },
  --COOLING TOWER
  {
    type = "recipe",
    name = "coolant-cool-300",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, minimum_temperature = 285, maximum_temperature = 315},
      {type="fluid", name="water", amount=50},
    },
    results =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, temperature = 200},
      {type="fluid", name="steam", amount=50, temperature = 175},
    },
    --main_product= "liquid-coolant-clean",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant-used.png",
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_3.png",
        tint = angelsmods.refining.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "h",
  },
  {
    type = "recipe",
    name = "coolant-cool-200",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, minimum_temperature = 185, maximum_temperature = 215},
      {type="fluid", name="water", amount=50},
    },
    results =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, temperature = 100},
      {type="fluid", name="steam", amount=50, temperature = 150},
    },
    --main_product= "liquid-coolant-clean",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant-used.png",
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_2.png",
        tint = angelsmods.refining.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "coolant-cool-100",
    category = "cooling",
    subgroup = "coolant",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, minimum_temperature = 85, maximum_temperature = 115},
      {type="fluid", name="water", amount=50},
    },
    results =
    {
      {type="fluid", name="liquid-coolant-used", amount=200, temperature = 25},
      {type="fluid", name="steam", amount=50, temperature = 125},
    },
    --main_product= "liquid-coolant-clean",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/liquid-coolant-used.png",
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_1.png",
        tint = angelsmods.refining.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f",
  },
  --MOLDS
  {
    type = "recipe",
    name = "mold-expendable",
    category = "smelting",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="clay-brick", amount=8},
    },
    results =
    {
      {type="item", name="mold-expendable", amount=2},
    },
    icon_size = 32,
    order = "a[mold-expendable]",
  },
  {
    type = "recipe",
    name = "mold-non-expendable",
    category = "blast-smelting",
    subgroup = "angels-mold-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="concrete-brick", amount=8},
    },
    results =
    {
      {type="item", name="mold-non-expendable", amount=2},
    },
    icon_size = 32,
    order = "b[mold-non-expendable]",
    stack_size = 200
  },
}
)