data:extend(
{
--TIER 1
    {
    type = "technology",
    name = "tech-red-packs",
    icon = "__angelsindustries__/graphics/technology/tech-red.png",
	icon_size = 128,
	prerequisites =
    {

    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-science-pack-red",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-war-1",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-processing-1",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-logistic-1",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-energy-1",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-enhance-1",
      },
	  {
        type = "unlock-recipe",
        recipe = "datacore-exploration-1",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"datacore-basic", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-red-circuit",
    icon = "__angelsindustries__/graphics/technology/red-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-red-packs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-resistor"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"datacore-basic", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-red-labs",
    icon = "__angelsindustries__/graphics/technology/tech-red.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-red-packs",
	"tech-red-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-exploration-lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-energy-lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-enhance-lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-processing-lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-war-lab-1"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
  	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
--TIER 2
    {
    type = "technology",
    name = "tech-green-packs",
    icon = "__angelsindustries__/graphics/technology/tech-green.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-red-labs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-science-pack-green",
      },
    },
    unit =
    {
      count = 128,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-green-labs",
    icon = "__angelsindustries__/graphics/technology/tech-green.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-green-packs",
    },
    effects =
    {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-exploration-lab-2"
      -- },
    },
    unit =
    {
      count = 128,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  },
      time = 60
    },
    order = "b-5"
    },
--TIER 2.5
    {
    type = "technology",
    name = "tech-orange-packs",
    icon = "__angelsindustries__/graphics/technology/tech-orange.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-green-labs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-science-pack-orange",
      },
    },
    unit =
    {
      count = 256,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-orange-labs",
    icon = "__angelsindustries__/graphics/technology/tech-orange.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-orange-packs",
    },
    effects =
    {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-alien-lab-2"
      -- },
    },
    unit =
    {
      count = 256,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  {"angels-science-pack-orange", 1},
	  },
      time = 60
    },
    order = "b-5"
    },
--TIER 3
    {
    type = "technology",
    name = "tech-blue-packs",
    icon = "__angelsindustries__/graphics/technology/tech-blue.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-orange-labs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-science-pack-blue",
      },
    },
    unit =
    {
      count = 512,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  {"angels-science-pack-orange", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-blue-labs",
    icon = "__angelsindustries__/graphics/technology/tech-blue.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-blue-packs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-exploration-lab-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-energy-lab-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-logistic-lab-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-enhance-lab-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-processing-lab-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-war-lab-2"
      },
    },
    unit =
    {
      count = 512,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  {"angels-science-pack-orange", 1},
	  {"angels-science-pack-blue", 1},
	  },
      time = 60
    },
    order = "b-5"
    },
--TIER 4
    {
    type = "technology",
    name = "tech-yellow-packs",
    icon = "__angelsindustries__/graphics/technology/tech-yellow.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-blue-labs",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-science-pack-yellow",
      },
    },
    unit =
    {
      count = 1024,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  {"angels-science-pack-orange", 1},
	  {"angels-science-pack-blue", 1},
	  },
      time = 60
    },
    order = "a-5"
    },
    {
    type = "technology",
    name = "tech-yellow-labs",
    icon = "__angelsindustries__/graphics/technology/tech-yellow.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-yellow-packs",
    },
    effects =
    {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-alien-lab-4"
      -- },
    },
    unit =
    {
      count = 1024,
      ingredients = {
	  {"angels-science-pack-grey", 1},
	  {"angels-science-pack-red", 1},
	  {"angels-science-pack-green", 1},
	  {"angels-science-pack-orange", 1},
	  {"angels-science-pack-blue", 1},
	  {"angels-science-pack-yellow", 1},
	  },
      time = 60
    },
    order = "b-5"
    },
}
)