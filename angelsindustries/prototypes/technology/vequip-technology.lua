data:extend(
  {
    {
      type = "technology",
      name = "angels-vequipment-1",
      icon = "__angelsindustries__/graphics/technology/vequip.png",
      icon_size = 128,
      prerequisites = {
        "logistic-science-pack"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-burner-generator-vequip"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-repair-roboport-vequip"
        }
      },
      unit = {
        count = 60,
        ingredients = {
          {type = "item", name = "automation-science-pack", amount = 1},
          {type = "item", name = "logistic-science-pack", amount = 1}
        },
        time = 15
      },
      order = "c-a"
    },
    {
      type = "technology",
      name = "angels-vequipment-2",
      icon = "__angelsindustries__/graphics/technology/vequip.png",
      icon_size = 128,
      prerequisites = {
        "angels-vequipment-1"
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "angels-fusion-reactor-vequip"
        },
        {
          type = "unlock-recipe",
          recipe = "angels-heavy-energy-shield-vequip"
        }
      },
      unit = {
        count = 60,
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
