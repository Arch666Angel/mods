data:extend(
{
  {
    type = "item",
    name = "quartz",
    icon = "__angelssmelting__/graphics/icons/ore-silica.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "processed-silica",
    icon = "__angelssmelting__/graphics/icons/processed-silica.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-silica",
    icon = "__angelssmelting__/graphics/icons/pellet-silica.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-silicon",
    icon = "__angelssmelting__/graphics/icons/ingot-silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon",
    order = "d",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "gas-silane",
    icon = "__angelssmelting__/graphics/icons/gas-silane.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 209/255, g = 209/255, b = 209/255},
    flow_color = {r = 209/255, g = 209/255, b = 209/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-trichlorosilane",
    icon = "__angelssmelting__/graphics/icons/liquid-trichlorosilane.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 209/255, g = 209/255, b = 209/255},
    flow_color = {r = 209/255, g = 209/255, b = 209/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-molten-silicon",
    icon = "__angelssmelting__/graphics/icons/molten-silicon.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 209/255, g = 209/255, b = 209/255},
    flow_color = {r = 209/255, g = 209/255, b = 209/255},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
  },
  {
    type = "item",
    name = "angels-plate-silicon",
    icon = "__angelssmelting__/graphics/icons/plate-silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon-casting",
    order = "e",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-roll-silicon",
    icon = "__angelssmelting__/graphics/icons/roll-silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "angels-silicon-casting",
    order = "f",
    stack_size = 200
  },
}
)