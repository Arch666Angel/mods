data:extend(
{
  {
    type = "technology",
    name = "tech-red-circuit",
    icon = "__angelsindustries__/graphics/technology/red-circuit-tech.png",
    icon_size = 128,
    prerequisites =
    {
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
}
)