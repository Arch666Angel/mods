data:extend(
  {
    -- CANNON TURRET SHELL
    {
      type = "recipe",
      name = "cannon-turret-shell-1",
      energy_required = 2,
      enabled = "false",
      ingredients = {
        {"firearm-magazine", 1},
        {"coal", 2}
      },
      results = {
        {type = "item", name = "cannon-turret-shell-1", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "cannon-turret-shell-2",
      energy_required = 2,
      enabled = "false",
      ingredients = {
        {"piercing-rounds-magazine", 1},
        {"coal", 4}
      },
      results = {
        {type = "item", name = "cannon-turret-shell-2", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "cannon-turret-shell-3",
      energy_required = 2,
      enabled = "false",
      ingredients = {
        {"uranium-rounds-magazine", 1},
        {"coal", 8}
      },
      results = {
        {type = "item", name = "cannon-turret-shell-3", amount = 1}
      }
    },
    -- HEAVY CANNON SHELL
    {
      type = "recipe",
      name = "heavy-cannon-shell",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"cannon-shell", 3}
        --{"lead-plate", 3},
      },
      results = {
        {type = "item", name = "heavy-cannon-shell", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "heavy-explosive-cannon-shell",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"explosive-cannon-shell", 3}
        --{"lead-plate", 3},
      },
      results = {
        {type = "item", name = "heavy-explosive-cannon-shell", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "heavy-uranium-cannon-shell",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"uranium-cannon-shell", 3}
        --{"lead-plate", 3},
      },
      results = {
        {type = "item", name = "heavy-uranium-cannon-shell", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "heavy-explosive-uranium-cannon-shell",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"explosive-uranium-cannon-shell", 3}
        --{"lead-plate", 3},
      },
      results = {
        {type = "item", name = "heavy-explosive-uranium-cannon-shell", amount = 1}
      }
    }
  }
)
