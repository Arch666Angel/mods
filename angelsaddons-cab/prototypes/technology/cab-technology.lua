local energyInterfaceName = "angels-cab-energy-interface%s"

data:extend({
  {
    type = "technology",
    name = "angels-cab",
    icon = "__angelsaddons-cab__/graphics/technology/cab-tech.png",
    icon_size = 128,
    prerequisites = {
      "angels-crawler",
      "electric-energy-distribution-1",
      "circuit-network",
      "chemical-science-pack",
    },
    effects = {
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
        recipe = string.format(energyInterfaceName, "-mk1"),
      },
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15,
    },
    order = "c-a",
  },
  --[[{
    type = "technology",
    name = "angels-cab-energy-transfer",
    icon = "__angelsaddons-cab__/graphics/technology/cab-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-cab",
      "electric-energy-distribution-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = string.format(energyInterfaceName, "-mk2"),
      },
    },
    unit =
    {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 15
    },
    order = "c-a"
  },]]
})
