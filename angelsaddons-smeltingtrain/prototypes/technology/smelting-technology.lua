data:extend(
  {
    {
      type = "technology",
      name = "angels-smelting-train",
      icon = "__angelsaddons-smeltingtrain__/graphics/technology/smelting-loco-1-tech.png",
      icon_size = 128,
      prerequisites = {
        "railway"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "smelting-locomotive-1"
        },
        {
          type = "unlock-recipe",
          recipe = "smelting-locomotive-tender"
        },
        {
          type = "unlock-recipe",
          recipe = "smelting-wagon-1"
        }
      },
      unit = {
        count = 60,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
