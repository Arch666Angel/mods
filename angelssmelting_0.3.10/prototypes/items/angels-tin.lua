data:extend(
{
  {
    type = "item",
    name = "tin-ore",
    icon = "__angelssmelting__/graphics/icons/ore-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-tin",
    icon = "__angelssmelting__/graphics/icons/processed-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-tin",
    icon = "__angelssmelting__/graphics/icons/pellet-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-tin",
    icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin",
    order = "d",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-tin",
    icon = "__angelssmelting__/graphics/icons/molten-tin.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 87/255, g = 130/255, b = 96/255},
    flow_color = {r = 87/255, g = 130/255, b = 96/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-tin",
    icon = "__angelssmelting__/graphics/icons/plate-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin-casting",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-tin",
    icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin-casting",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-tin",
    icon = "__angelssmelting__/graphics/icons/wire-tin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-tin-casting",
    order = "g",
    stack_size = 200
  },
}
)