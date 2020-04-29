data:extend(
  {
    {
      type = "technology",
      name = "pressure-tanks",
      icon = "__angelsaddons-pressuretanks__/graphics/technology/pressure-tank-tech.png",
      icon_size = 128,
      prerequisites = {
        "angels-fluid-control"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-pressure-tank-1"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
