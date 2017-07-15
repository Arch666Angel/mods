data:extend(
{
--VEHICLES
	{
    type = "recipe",
    name = "angels-heavy-tank",
    energy_required = 10,
	enabled = "false",
    ingredients ={
		{"steel-plate", 50},
		{"titanium-plate", 20},
		{"advanced-circuit", 10},
		{"engine-unit", 20},
	},
    result = "angels-heavy-tank",
	order = "a"
    },
	{
    type = "recipe",
    name = "heavy-cannon-shell",
    energy_required = 10,
	enabled = "false",
    ingredients ={
		{"cannon-shell", 10},
		{"lead-plate", 10},
	},
    results = {
		{"heavy-cannon-shell", 10},
	},
	order = "a"
    },
}
)