data:extend(
{
  --ORE
  {
    type = "item",
    name = "bauxite-ore",
    icon = "__angelssmelting__/graphics/icons/ore-bauxite.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "a",
    stack_size = 200
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "processed-aluminium",
    icon = "__angelssmelting__/graphics/icons/processed-aluminium.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-aluminium",
    icon = "__angelssmelting__/graphics/icons/pellet-aluminium.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-sodium-aluminate",
    icon = "__angelssmelting__/graphics/icons/solid-sodium-aluminate.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-aluminium-hydroxide",
    icon = "__angelssmelting__/graphics/icons/solid-aluminium-hydroxide.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-aluminium-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "f",
    stack_size = 200
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "ingot-aluminium",
    icon = "__angelssmelting__/graphics/icons/ingot-aluminium.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-aluminium",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-aluminium",
    icon = "__angelssmelting__/graphics/icons/powder-aluminium.png",
    icon_size = 32,
    subgroup = "angels-aluminium",
    order = "h",
    stack_size = 200
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-aluminium",
    icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-aluminium-casting",
    order = "i",
    default_temperature = 660.3,
    heat_capacity = "0KJ",
    base_color = {r = 172/255, g = 161/255, b = 84/255},
    flow_color = {r = 172/255, g = 161/255, b = 84/255},
    max_temperature = 660.3,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-aluminium",
    icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-aluminium-casting",
    order = "j",
    stack_size = 200
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-aluminium",
    icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
    icon_size = 32,
    subgroup = "angels-aluminium-casting",
    order = "k",
    stack_size = 200
  },
  -- order l reserved for motor casting (see industries)
}
)