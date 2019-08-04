data:extend(
{
    {
    type = "technology",
    name = "water-treatment",
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
    {
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
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"automation-science-pack", 1},
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
	  {"automation-science-pack", 1},
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
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "hydro-plant-3"
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
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "water-treatment-4",
	icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
	{
	"water-treatment-3",
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
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  {"chemical-science-pack", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "water-washing-1",
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
		recipe = "washing-1"
	  },
	  {
		type = "unlock-recipe",
		recipe = "washing-2"
	  },
	  {
		type = "unlock-recipe",
		recipe = "washing-3"
	  },
	  {
		type = "unlock-recipe",
		recipe = "washing-4"
	  },
	  {
		type = "unlock-recipe",
		recipe = "washing-5"
	  },
	  {
		type = "unlock-recipe",
		recipe = "water-viscous-mud"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-mud-landfill"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-clay"
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
	  {"automation-science-pack", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
	{
	type = "technology",
	name = "water-washing-2",
	icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
	icon_size = 128,
	prerequisites =
	{
	"water-washing-1",
	"water-treatment",
	},
	effects =
	{
	  {
		type = "unlock-recipe",
		recipe = "washing-plant-2"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-limestone"
	  },
	  {
		type = "unlock-recipe",
		recipe = "solid-geodes"
	  },
	},
	unit =
	{
	  count = 30,
	  ingredients = {
	  {"automation-science-pack", 1},
	  {"logistic-science-pack", 1},
	  },
	  time = 15
	},
	order = "c-a"
	},
}
)