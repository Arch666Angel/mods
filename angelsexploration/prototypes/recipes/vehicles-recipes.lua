data:extend(
  {
    --VEHICLES
    {
      type = "recipe",
      name = "angels-heavy-tank",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"steel-plate", 50},
        --{"titanium-plate", 20},
        {"advanced-circuit", 10},
        {"engine-unit", 20}
      },
      result = "angels-heavy-tank"
    },
    {
      type = "recipe",
      name = "heavy-cannon-shell",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"cannon-shell", 10}
        --{"lead-plate", 10},
      },
      results = {
        {"heavy-cannon-shell", 10}
      },
      --icon = "__base__/graphics/icons/cannon-shell.png",
      --icon_size = 64,
    },
    --TURRET
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
      result = "angels-cannon-turret",
      order = "a"
    },
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
      result = "angels-rocket-turret",
      order = "b"
    },
    {
      type = "recipe",
      name = "cannon-turret-shell-1",
      energy_required = 2,
      enabled = "false",
      ingredients = {
        {"iron-plate", 4},
        {"coal", 2}
      },
      results = {
        {"cannon-turret-shell-1", 1}
      },
      order = "a"
    },
    {
      type = "recipe",
      name = "cannon-turret-shell-2",
      energy_required = 2,
      enabled = "false",
      ingredients = {
        {"cannon-turret-shell-1", 1},
        {"steel-plate", 2},
        {"copper-plate", 2},
        {"coal", 2}
      },
      results = {
        {"cannon-turret-shell-2", 1}
      },
      order = "a"
    }
  }
)
