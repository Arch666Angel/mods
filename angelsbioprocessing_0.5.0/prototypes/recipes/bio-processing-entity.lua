data:extend(
{
--ALGAE FARM
   {
    type = "recipe",
    name = "algae-farm",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"iron-plate", 1},
	},
    result= "algae-farm",
   },
   {
    type = "recipe",
    name = "algae-farm-2",
    energy_required = 5,
	enabled = "false",
    ingredients ={
	{"algae-farm", 1},
	},
    result= "algae-farm-2",
   },
--CROP FARM
   {
    type = "recipe",
    name = "crop-farm",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"iron-plate", 1},
	},
    result= "crop-farm",
   },
--COMPOSTER
   {
    type = "recipe",
    name = "composter",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"iron-plate", 1},
	},
    result= "composter",
   },
--SEED EXTRACTOR
   {
    type = "recipe",
    name = "seed-extractor",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"iron-plate", 1},
	},
    result= "seed-extractor",
   },
--PRESS
   {
    type = "recipe",
    name = "bio-press",
    energy_required = 5,
	enabled = "true",
    ingredients ={
	{"iron-plate", 1},
	},
    result= "bio-press",
   },
}
)