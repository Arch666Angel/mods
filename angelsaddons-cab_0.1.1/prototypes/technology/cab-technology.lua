data:extend(
{
  {
    type = "technology",
    name = "angels-cab",
    icon = "__angelsaddons-cab__/graphics/technology/cab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "automobilism",
      "electric-energy-distribution-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-cab",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cab-deploy-charge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cab-undeploy-charge",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cab-energy-interface-vequip",
      },
    },
    unit =
    {
      count = 60,
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
