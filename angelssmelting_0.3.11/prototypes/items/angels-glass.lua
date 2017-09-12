data:extend(
{
  {
    type = "item",
    name = "solid-glass-mixture",
    icon = "__angelssmelting__/graphics/icons/glass-mixture.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-glass",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-plate-glass",
    icon = "__angelssmelting__/graphics/icons/plate-glass.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-glass",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-coil-glass-fiber",
    icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-glass",
    order = "c",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-glass",
    icon = "__angelssmelting__/graphics/icons/molten-glass.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 130/255, g = 127/255, b = 127/255},
    flow_color = {r = 130/255, g = 127/255, b = 127/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
}
)