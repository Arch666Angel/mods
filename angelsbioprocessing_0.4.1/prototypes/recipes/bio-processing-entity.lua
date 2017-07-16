data:extend(
{
--BIO PROCESSING PLANT
   {
    type = "recipe",
    name = "algae-farm",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"iron-plate", 10},
	},
    result= "algae-farm",
    icon = "__angelsbioprocessing__/graphics/icons/algae-farm.png",
   },
   {
    type = "recipe",
    name = "algae-farm-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"algae-farm", 1},
	},
    result= "algae-farm-2",
    icon = "__angelsbioprocessing__/graphics/icons/algae-farm.png",
   },
  }
  )