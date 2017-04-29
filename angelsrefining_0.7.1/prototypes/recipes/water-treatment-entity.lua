data:extend(
{
--HYDRO PLANT
	{
    type = "recipe",
    name = "hydro-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	},
    result= "hydro-plant",
    icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
    },
	{
    type = "recipe",
    name = "hydro-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"hydro-plant", 1},
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "hydro-plant-2",
    icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
    },
--SALINATION PLANT
	{
    type = "recipe",
    name = "salination-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"aluminium-plate", 10},
	{"stone-brick", 10},
	{"advanced-circuit", 5},
	},
    result= "salination-plant",
    icon = "__angelsrefining__/graphics/icons/salination-plant.png",
    },
	{
    type = "recipe",
    name = "salination-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"salination-plant", 1},
	{"titanium-plate", 10},
	{"stone-brick", 10},
	{"processing-unit", 5},
	},
    result= "salination-plant-2",
    icon = "__angelsrefining__/graphics/icons/salination-plant.png",
    },
--CLARIFIER
	{
    type = "recipe",
    name = "clarifier",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
	{"stone-brick", 10},
	{"electronic-circuit", 5},
	},
    result= "clarifier",
    icon = "__angelsrefining__/graphics/icons/clarifier.png",
    },
  }
  )