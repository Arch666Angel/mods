data:extend(
  {
    --CANNON TURRET
    {
      type = "recipe",
      name = "angels-cannon-turret",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"steel-plate", 20},
        {"iron-plate", 10},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 10}
      },
      results = {
        {type = "item", name = "angels-cannon-turret", amount = 1}
      }
    },
    --ROCKET TURRET
    {
      type = "recipe",
      name = "angels-rocket-turret",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"steel-plate", 20},
        {"iron-plate", 10},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 10}
      },
      results = {
        {type = "item", name = "angels-rocket-turret", amount = 1}
      }
    },
    --BIO TURRET
    {
      type = "recipe",
      name = "angels-bio-turret",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"engine-unit", 5},
        {"iron-gear-wheel", 15},
        {"pipe", 10},
        {"steel-plate", 30}
      },
      results = {
        {type = "item", name = "angels-bio-turret", amount = 1}
      }
    }
  }
)
