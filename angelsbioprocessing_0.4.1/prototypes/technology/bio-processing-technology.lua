  
data:extend(
{
	{
    type = "technology",
    name = "bio-processing-green",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "algae-farm"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-sodium-hydroxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-gas-chlor-methane"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-raw-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-from-cellulose"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-pellets"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-bricks"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-carbon-dioxide-from-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-methanol-from-wood"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 30
    },
    },
	{
    type = "technology",
    name = "bio-processing-brown",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "algae-brown"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-brown-burning"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-brown-burning-wash"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-alginic-acid"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-wood-fiber-board"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 30
    },
    },
    {
    type = "technology",
    name = "bio-processing-blue",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	"bio-processing-green",
	"bio-processing-brown",
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "algae-farm-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "blue-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-ammonia-from-blue-fiber"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1}
	  },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-red",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	"bio-processing-blue",
    },
    effects =
	{
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "algae-farm-3"
      -- },
	  {
        type = "unlock-recipe",
        recipe = "algae-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "red-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-calcium-carbonate"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-paste",
    icon = "__angelsbioprocessing__/graphics/technology/paste.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	"bio-processing-blue",
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "paste-cobalt"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-copper"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-gold"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-iron"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-silver"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-titanium"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-tungsten"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-zinc"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1}
	  },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-alien",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	  "bio-processing-red",
	  "bio-processing-paste",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "alien-air-filtering"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-bacteria"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-goo"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-goo-artifact"
      },
	  {
        type = "unlock-recipe",
        recipe = "petri-dish"
      },
	  {
        type = "unlock-recipe",
        recipe = "substrate-dish"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-base"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-purple"
      },
 	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-orange"
      },
  	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-orange"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-purple"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 30
    },
  },
  {
    type = "technology",
    name = "big-alien-artifacts",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	  "bio-processing-alien",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-orange"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-purple"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-artifact"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 30
    },
  },
}
)