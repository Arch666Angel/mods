data:extend(
{
  {
    type = "technology",
    name = "angels-blocks-1",
    icon = "__angelsindustries__/graphics/technology/components-tech.png",
    icon_size = 64,
    prerequisites =
    {
      "tech-red-packs",
      "tech-red-circuit",
    },
    effects =
    {
      --{
      --  type = "unlock-recipe",
      --  recipe = "angels-science-pack-red",
      --},
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
    name = "angels-blocks-2",
    icon = "__angelsindustries__/graphics/technology/components-tech.png",
    icon_size = 64,
    prerequisites =
    {
      "angels-blocks-1",
      "logistic-science-pack",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "block-construction-2",
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
        {"logistic-science-pack", 1},
      },
      time = 60
    },
    order = "a-5"
  },
}
)