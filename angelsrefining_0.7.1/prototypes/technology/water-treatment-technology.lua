data:extend(
{
    {
    type = "technology",
    name = "angels-fluid-barreling",
    icon = "__angelsrefining__/graphics/technology/barrel-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"automation-2",
	"water-treatment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "empty-barrel"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "water-treatment",
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
    {
	"ore-crushing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "hydro-plant"
      },
  	  {
        type = "unlock-recipe",
        recipe = "clarifier"
      },
  	  {
        type = "unlock-recipe",
        recipe = "water-purification"
      },
  	  {
        type = "unlock-recipe",
        recipe = "water-mineralized"
      },
	  {
        type = "unlock-recipe",
        recipe = "yellow-waste-water-purification"
      },
	  {
        type = "unlock-recipe",
        recipe = "green-waste-water-purification"
      },
	  {
        type = "unlock-recipe",
        recipe = "greenyellow-waste-water-purification"
      },
	  {
        type = "unlock-recipe",
        recipe = "red-waste-water-purification"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
	{
	type = "technology",
	name = "water-treatment-2",
	icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
	{
	"water-treatment",
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "hydro-plant-2"
	  },
	  {
		type = "unlock-recipe",
		recipe = "salination-plant"
	  },
	  {
		type = "unlock-recipe",
		recipe = "water-saline"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-lithium"
	  },
	},
	unit =
	{
	  count = 30,
	  ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "water-treatment-3",
	icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
	{
	"water-treatment-2",
	"thermal-water-extraction",
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "salination-plant-2"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-salt-from-saline"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-salt"
	  },
	},
	unit =
	{
	  count = 30,
	  ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "water-washing",
	icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
	icon_size = 128,
	prerequisites =
	{
	"water-treatment",
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "seafloor-pump"
	  },
	  {
		type = "unlock-recipe",
		recipe = "washing-plant"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-nodule"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-dissolution"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-mud-landfill"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-limestone"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-sand"
	  },
	},
	unit =
	{
	  count = 30,
	  ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "nodule-processing",
	icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
	icon_size = 128,
	prerequisites =
	{
	"water-washing",
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "washing-plant-2"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-crushed"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-crushed-washing"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-slurry-washing"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-concentrated-slurry-washing"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-pebbles-washing"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-crystallization-1"
	  },
	  {
		type = "unlock-recipe",
		recipe = "nodule-crystallization-2"
	  },
	},
	unit =
	{
	  count = 30,
	  ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
}
)