data:extend(
{
--SULFUR
{
    type = "fluid",
    name = "gas-hydrogen-sulfide",
    icon = "__angelspetrochem__/graphics/icons/gas-hydrogen-sulfide.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 1, b = 0.3},
    flow_color = {r = 1, g = 1, b = 0.3},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "gas-sulfur-dioxide",
    icon = "__angelspetrochem__/graphics/icons/gas-sulfur-dioxide.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.9, g = 0.9, b = 0.2},
    flow_color = {r = 0.9, g = 0.9, b = 0.2},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "liquid-sulfuric-acid",
    icon = "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png",
	default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 0.1},
    flow_color = {r = 0.8, g = 0.8, b = 0.1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "item",
    name = "solid-calcium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-sulfate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-calcium-sulfate]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-sulfate]",
    stack_size = 200
},
}
)