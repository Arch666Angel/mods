data:extend(
{
--EQUIPMENT
	{
    type = "recipe",
    name = "datacore-basic",
    energy_required = 3,
	enabled = "true",
    ingredients ={
		{"iron-plate", 2},
		{"copper-plate", 2},
	},
    result = "datacore-basic",
    },
	{
    type = "recipe",
    name = "datacore-exploration-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-exploration-1",
    },
	{
    type = "recipe",
    name = "datacore-exploration-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-exploration-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-exploration-2",
    },
	{
    type = "recipe",
    name = "datacore-enhance-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-enhance-1",
    },
	{
    type = "recipe",
    name = "datacore-enhance-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-enhance-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-enhance-2",
    },
	{
    type = "recipe",
    name = "datacore-energy-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-energy-1",
    },
	{
    type = "recipe",
    name = "datacore-energy-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-energy-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-energy-2",
    },
	{
    type = "recipe",
    name = "datacore-logistic-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-logistic-1",
    },
	{
    type = "recipe",
    name = "datacore-logistic-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-logistic-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-logistic-2",
    },
	{
    type = "recipe",
    name = "datacore-processing-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-processing-1",
    },
	{
    type = "recipe",
    name = "datacore-processing-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-processing-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-processing-2",
    },
	{
    type = "recipe",
    name = "datacore-war-1",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-basic", 1},
		{"electronic-circuit", 2},
	},
    result = "datacore-war-1",
    },
	{
    type = "recipe",
    name = "datacore-war-2",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"datacore-war-1", 1},
		{"advanced-circuit", 2},
	},
    result = "datacore-war-2",
    },
--SCIENCE PACKS
	{
    type = "recipe",
    name = "angels-science-pack-grey",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"iron-plate", 2},
		{"circuit-grey", 1},
	},
    result = "angels-science-pack-grey",
    },
	{
    type = "recipe",
    name = "angels-science-pack-red",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"angels-science-pack-grey", 1},
		{"circuit-red-loaded", 1},
	},
    result = "angels-science-pack-red",
    },
	{
    type = "recipe",
    name = "angels-science-pack-green",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"angels-science-pack-red", 1},
		{"circuit-green-loaded", 1},
	},
    result = "angels-science-pack-green",
    },
	{
    type = "recipe",
    name = "angels-science-pack-orange",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"angels-science-pack-green", 1},
		{"circuit-orange-loaded", 1},
	},
    result = "angels-science-pack-orange",
    },
	{
    type = "recipe",
    name = "angels-science-pack-blue",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"angels-science-pack-orange", 1},
		{"circuit-blue-loaded", 1},
	},
    result = "angels-science-pack-blue",
    },
	{
    type = "recipe",
    name = "angels-science-pack-yellow",
    energy_required = 10,
	enabled = "true",
    ingredients ={
		{"angels-science-pack-blue", 1},
		{"circuit-yellow-loaded", 1},
	},
    result = "angels-science-pack-yellow",
    },
  }
  )