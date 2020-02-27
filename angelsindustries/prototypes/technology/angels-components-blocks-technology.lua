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
        {"angels-science-pack-grey", 1},
        {"datacore-basic", 1},
      },
      time = 60
    },
    order = "a-5"
  },
}
)