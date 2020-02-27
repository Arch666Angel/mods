data:extend(
{
  {
    type = "technology",
    name = "tech-red-circuit",
    icon = "__angelsindustries__/graphics/technology/red-circuit-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-solder-smelting-basic",
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
      {
        type = "unlock-recipe",
        recipe = "block-electronics-1"
      }
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 60
    },
    order = "a-5"
  },
  {
    type = "technology",
    name = "tech-green-circuit",
    icon = "__angelsindustries__/graphics/technology/green-circuit-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tech-red-circuit",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "circuit-transistor"
      },
      {
        type = "unlock-recipe",
        recipe = "circuit-green-board"
      },
      {
        type = "unlock-recipe",
        recipe = "circuit-green"
      },
      {
        type = "unlock-recipe",
        recipe = "circuit-green-loaded"
      },
      {
        type = "unlock-recipe",
        recipe = "block-electronics-2"
      }
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"automation-science-pack", 1},
      },
      time = 60
    },
    order = "a-5"
  },
}
)