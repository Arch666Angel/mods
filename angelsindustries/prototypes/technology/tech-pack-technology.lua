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
      "tech-red-circuit",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-science-pack-red",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"angels-science-pack-grey", 1},
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
      "tech-red-packs",
      "tech-green-circuit",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-science-pack-green",
      },
      {
        type = "unlock-recipe",
        recipe = "science-force-analyzer",
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
  --TIER 2.5
  {
    type = "technology",
    name = "tech-orange-packs",
    icon = "__angelsindustries__/graphics/technology/tech-orange.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-green-packs",
      "tech-orange-circuit",
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
  --TIER 3
  {
    type = "technology",
    name = "tech-blue-packs",
    icon = "__angelsindustries__/graphics/technology/tech-blue.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-orange-packs",
      "tech-blue-circuit",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-science-pack-blue",
      },
      {
        type = "unlock-recipe",
        recipe = "science-harmonics-analyzer",
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
  --TIER 4
  {
    type = "technology",
    name = "tech-yellow-packs",
    icon = "__angelsindustries__/graphics/technology/tech-yellow.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-blue-packs",
      "tech-yellow-circuit",
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
}
)
