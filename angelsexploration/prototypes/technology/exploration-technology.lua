data:extend(
{
  --VEHICLES
  {
    type = "technology",
    name = "angels-heavy-tank",
    icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "tanks",
      --"angels-vequipment-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-heavy-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-cannon-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-explosive-cannon-shell"
      },
      -- {
      -- type = "unlock-recipe",
      -- recipe = "angels-rocket-defense-equipment-vequip"
      -- },
    },
    unit =
    {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --TURRETS
  {
    type = "technology",
    name = "angels-cannon-turret",
    icon = "__angelsexploration__/graphics/technology/cannon-turret-tech.png",
    icon_size = 128,
    prerequisites =
    {
      "military-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-cannon-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "cannon-turret-shell-1"
      },
      --{
      --  type = "unlock-recipe",
      --  recipe = "cannon-turret-shell-2"     -- moved to military 3 (see overrides)
      --},
    },
    unit =
    {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-rocket-turret",
    icon = "__angelsexploration__/graphics/technology/rocket-turret-tech.png",
    icon_size = 128,
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "angels-rocket-turret"
      },
    },
    unit =
    {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "c-a"
  },
  --GUNS
  {
    type = "technology",
    name = "angels-bio-gun",
    icon = "__base__/graphics/technology/flamethrower.png",
    icon_size = 128,
    prerequisites =
    {
      "flammables",
      "military-science-pack",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bio-gun"
      },
      {
        type = "unlock-recipe",
        recipe = "bio-ammo"
      },
    },
    unit =
    {
      count = 80,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 2},
      },
      time = 15
    },
    order = "c-a"
  },
  --MOAR AMMO
  {
    type = "technology",
    name = "angels-heavy-uranium-ammo",
    icon_size = 128,
    icon = "__base__/graphics/technology/uranium-ammo.png",
    prerequisites =
    {
      "uranium-ammo",
      "angels-heavy-tank",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cannon-turret-shell-3"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-uranium-cannon-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-explosive-uranium-cannon-shell"
      },
    },
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    },
    order = "e-a-b"
  },
})
