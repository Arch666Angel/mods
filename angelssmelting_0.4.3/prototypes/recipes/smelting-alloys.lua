local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --STEEL
  --SMELTING
  {
    type = "recipe",
    name = "molten-steel-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=120},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "a",
  },
  {
    type = "recipe",
    name = "molten-steel-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-silicon", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "b",
  },
  {
    type = "recipe",
    name = "molten-steel-smelting-3",
    category = "induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-manganese", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "c",
  },
  {
    type = "recipe",
    name = "molten-steel-smelting-4",
    category = "induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
      {type="item", name="ingot-nickel", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_4.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d",
  },
  {
    type = "recipe",
    name = "molten-steel-smelting-5",
    category = "induction-smelting",
    subgroup = "angels-steel-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=12},
      {type="item", name="ingot-chrome", amount=12},
      {type="item", name="powder-tungsten", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_5.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "e",
  },
  --CASTING
  {
    type = "recipe",
    name = "angels-plate-steel",
    category = "casting",
    subgroup = "angels-steel-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={{type="fluid", name="liquid-molten-steel", amount=40}},
      results={{type="item", name="angels-plate-steel", amount=4}},
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={{type="fluid", name="liquid-molten-steel", amount=50 * intermediatemulti}},
      results={{type="item", name="angels-plate-steel", amount=4}},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-steel.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-steel.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "i",
  },
  {
    type = "recipe",
    name = "angels-roll-steel-casting",
    category = "strand-casting",
    subgroup = "angels-steel-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={
        {type="fluid", name="liquid-molten-steel", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results={{type="item", name="angels-roll-steel", amount=2}},
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={
        {type="fluid", name="liquid-molten-steel", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results={{type="item", name="angels-roll-steel", amount=2}},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "g",
  },
  {
    type = "recipe",
    name = "angels-roll-steel-casting-fast",
    category = "strand-casting",
    subgroup = "angels-steel-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients ={
        {type="fluid", name="liquid-molten-steel", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results={
        {type="item", name="angels-roll-steel", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-steel",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients ={
        {type="fluid", name="liquid-molten-steel", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results={
        {type="item", name="angels-roll-steel", amount=4},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-steel",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-steel.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "h",
  },
  --CRAFTING
  {
    type = "recipe",
    name = "powder-steel",
    category = "advanced-crafting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=1},
    },
    results=
    {
      {type="item", name="powder-steel", amount=1},
    },
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "angels-roll-steel-converting",
    category = "advanced-crafting",
    subgroup = "angels-steel-casting",
    energy_required = 0.5,
    allow_decomposition = false,
    enabled = "false",
    ingredients ={
      {type="item", name="angels-roll-steel", amount=1},
    },
    results=
    {
      {type="item", name="angels-plate-steel", amount=4},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/plate-steel.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-steel.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "j",
  },
  --SOLDER
  --SMELTING
  {
    type = "recipe",
    name = "angels-solder-smelting-1",
    category = "induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-lead", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-solder.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "aa",
  },
  {
    type = "recipe",
    name = "angels-solder-smelting-2",
    category = "induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-zinc", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=240},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-solder.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "ab",
  },
  {
    type = "recipe",
    name = "angels-solder-smelting-3",
    category = "induction-smelting",
    subgroup = "angels-solder-casting",
    energy_required = 4,
    enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=12},
      {type="item", name="ingot-copper", amount=12},
      {type="item", name="ingot-silver", amount=12},
    },
    results=
    {
      {type="fluid", name="liquid-molten-solder", amount=360},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/molten-solder.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "ac",
  },
  --CASTING
  {
    type = "recipe",
    name = "roll-solder-casting",
    category = "strand-casting",
    subgroup = "angels-solder-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={
        {type="fluid", name="liquid-molten-solder", amount=80},
        {type="fluid", name="water", amount=40},
      },
      results={{type="item", name="angels-roll-solder", amount=4}},
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={
        {type="fluid", name="liquid-molten-solder", amount=100 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results={{type="item", name="angels-roll-solder", amount=4}},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-solder.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "ba",
  },
  {
    type = "recipe",
    name = "roll-solder-casting-fast",
    category = "strand-casting",
    subgroup = "angels-solder-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients ={
        {type="fluid", name="liquid-molten-solder", amount=140},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results={
        {type="item", name="angels-roll-solder", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-solder",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients ={
        {type="fluid", name="liquid-molten-solder", amount=180 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results={
        {type="item", name="angels-roll-solder", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-roll-solder",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/roll-solder.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "bb",
  },
  {
    type = "recipe",
    name = "angels-solder",
    category = "casting",
    subgroup = "angels-solder-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={{type="fluid", name="liquid-molten-solder", amount=40}},
      results={{type="item", name="angels-solder", amount=6}},
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients ={{type="fluid", name="liquid-molten-solder", amount=50 * intermediatemulti}},
      results={{type="item", name="angels-solder", amount=6}},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solder.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-solder.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "bc",
  },
  --CRAFTING
  {
    type = "recipe",
    name = "angels-roll-solder-converting",
    category = "advanced-crafting",
    subgroup = "angels-solder-casting",
    energy_required = 0.5,
    enabled = "false",
    allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-roll-solder", amount=4},
    },
    results=
    {
      {type="item", name="angels-solder", amount=12},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/solder.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/roll-solder.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "c",
  },
}
)
