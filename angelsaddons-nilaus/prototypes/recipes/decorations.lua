data:extend(
  {
    {
      type = "recipe",
      name = "deco-nilaus-1",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {"iron-plate", 5},
        {"steel-plate", 5},
        {"stone-brick", 5}
      },
      result = "deco-nilaus-1"
    },
    {
      type = "recipe",
      name = "deco-nilaus-2",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {"iron-plate", 5},
        {"steel-plate", 5},
        {"stone-brick", 5}
      },
      result = "deco-nilaus-2"
    },
    {
      type = "recipe",
      name = "deco-nilaus-lamp",
      energy_required = 2,
      enabled = false,
      ingredients = {
        {"electronic-circuit", 1},
        {"copper-cable", 3},
        {"iron-plate", 1}
      },
      result = "deco-nilaus-lamp"
    },
    {
      type = "recipe",
      name = "nilaus-truck",
      normal = {
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"engine-unit", 20},
          {"steel-plate", 75},
          {"electronic-circuit", 20},
          {"iron-gear-wheel", 25}
        },
        results = {{type = "item", name = "nilaus-truck", amount = 1}}
      },
      expensive = {
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"engine-unit", 40},
          {"steel-plate", 125},
          {"electronic-circuit", 30},
          {"iron-gear-wheel", 35}
        },
        results = {{type = "item", name = "nilaus-truck", amount = 1}}
      }
    },
    {
      type = "recipe",
      name = "deco-nilaus-start",
      energy_required = 2,
      enabled = "false",
      ingredients ={
        {"iron-plate", 5},
        {"steel-plate", 5},
        {"stone-brick", 5},
      },
      result= "deco-nilaus-start",
    },
  }
)
