data:extend(
{
--CIRCUIT COMPONENTS
	{
    type = "recipe",
    name = "circuit-resistor",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"solid-carbon", 1},
		{"wire-copper", 1},
	},
    result = "circuit-resistor",
    },
	{
    type = "recipe",
    name = "circuit-transistor",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 1},
		{"wire-tin", 1},
	},
    result = "circuit-transistor",
    },
	{
    type = "recipe",
    name = "circuit-microchip",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 1},
		{"wire-silver", 1},
	},
    result = "circuit-microchip",
    },
	{
    type = "recipe",
    name = "circuit-transformer",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 1},
		{"wire-gold", 1},
	},
    result = "circuit-transformer",
    },
	{
    type = "recipe",
    name = "circuit-cpu",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 1},
		{"wire-platinum", 1},
	},
    result = "circuit-cpu",
    },
--BOARDS
	{
    type = "recipe",
    name = "circuit-grey-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"wood", 1},
	},
    result = "circuit-grey-board",
    },
	{
    type = "recipe",
    name = "circuit-red-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-grey-board", 1},
		{"copper-plate", 2},
	},
    result = "circuit-red-board",
    },
	{
    type = "recipe",
    name = "circuit-green-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-wood-fiber-board", 1},
		{"copper-plate", 2},
	},
    result = "circuit-green-board",
    },
	{
    type = "recipe",
    name = "circuit-orange-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 2},
		{"copper-plate", 2},
	},
    result = "circuit-orange-board",
    },
	{
    type = "recipe",
    name = "circuit-blue-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 2},
		{"copper-plate", 2},
	},
    result = "circuit-blue-board",
    },
	{
    type = "recipe",
    name = "circuit-yellow-board",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 2},
		{"copper-plate", 2},
	},
    result = "circuit-yellow-board",
    },
--CIRCUIT BOARDS
	{
    type = "recipe",
    name = "circuit-grey",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-grey-board", 2},
		{"wire-copper", 2},
	},
    result = "circuit-grey",
    },
	{
    type = "recipe",
    name = "circuit-red",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-red-board", 1},
		{"wire-tin", 2},
	},
    result = "circuit-red",
    },
	{
    type = "recipe",
    name = "circuit-green",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-green-board", 1},
		{"wire-tin", 2},
	},
    result = "circuit-green",
    },
	{
    type = "recipe",
    name = "circuit-orange",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-orange-board", 1},
		{"wire-silver", 2},
	},
    result = "circuit-orange",
    },
	{
    type = "recipe",
    name = "circuit-blue",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-blue-board", 1},
		{"wire-gold", 2},
	},
    result = "circuit-blue",
    },
	{
    type = "recipe",
    name = "circuit-yellow",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-yellow-board", 1},
		{"wire-platinum", 2},
	},
    result = "circuit-yellow",
    },
--CIRCUIT LOADED
	{
    type = "recipe",
    name = "circuit-red-loaded",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-red", 1},
		{"circuit-resistor", 1},
		{"angels-solder", 1},
	},
    result = "circuit-red-loaded",
    },
	{
    type = "recipe",
    name = "circuit-green-loaded",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-green", 1},
		{"circuit-resistor", 1},
		{"circuit-transistor", 1},
		{"angels-solder", 1},
	},
    result = "circuit-green-loaded",
    },
	{
    type = "recipe",
    name = "circuit-orange-loaded",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-orange", 1},
		{"circuit-resistor", 1},
		{"circuit-transistor", 1},
		{"circuit-microchip", 1},
		{"angels-solder", 1},
	},
    result = "circuit-orange-loaded",
    },
	{
    type = "recipe",
    name = "circuit-blue-loaded",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-blue", 1},
		{"circuit-resistor", 1},
		{"circuit-transistor", 1},
		{"circuit-microchip", 1},
		{"circuit-transformer", 1},
		{"angels-solder", 1},
	},
    result = "circuit-blue-loaded",
    },
	{
    type = "recipe",
    name = "circuit-yellow-loaded",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"circuit-yellow", 1},
		{"circuit-resistor", 1},
		{"circuit-transistor", 1},
		{"circuit-microchip", 1},
		{"circuit-transformer", 1},
		{"circuit-cpu", 1},
		{"angels-solder", 1},
	},
    result = "circuit-yellow-loaded",
    },
  }
  )