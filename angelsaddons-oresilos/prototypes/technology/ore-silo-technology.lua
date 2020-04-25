data:extend(
  {
    {
      type = "technology",
      name = "ore-silos",
      icon = "__angelsaddons-oresilos__/graphics/technology/silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "steel-processing"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore1"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore2"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore3"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore4"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore5"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-ore6"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-coal"
        }
      },
      unit = {
        count = 30,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "logistic-silos",
      icon = "__angelsaddons-oresilos__/graphics/technology/logistic-silo-tech.png",
      icon_size = 128,
      prerequisites = {
        "logistic-system",
        "ore-silos"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "silo-passive-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-active-provider"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-requester"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-storage"
        },
        {
          type = "unlock-recipe",
          recipe = "silo-buffer"
        }
      },
      unit = {
        count = 50,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1},
          {type = "item", name = "chemical-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    }
  }
)
