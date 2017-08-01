data:extend(
{
--COOLANT
{
    type = "fluid",
    name = "liquid-coolant",
    icon = "__angelssmelting__/graphics/icons/liquid-coolant.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 109/255, g = 136/255, b = 179/255},
    flow_color = {r = 109/255, g = 136/255, b = 179/255},
    max_temperature = 300,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "liquid-coolant-used",
    icon = "__angelssmelting__/graphics/icons/liquid-coolant-used.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 68/255, g = 85/255, b = 112/255},
    flow_color = {r = 68/255, g = 85/255, b = 112/255},
    max_temperature = 300,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
},
{
    type = "fluid",
    name = "liquid-coolant-clean",
    icon = "__angelssmelting__/graphics/icons/liquid-coolant-clean.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 129/255, g = 156/255, b = 199/255},
    flow_color = {r = 129/255, g = 156/255, b = 199/255},
    max_temperature = 300,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	auto_barrel = false
},
}
)