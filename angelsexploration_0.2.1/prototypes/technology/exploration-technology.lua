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
  	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-rocket-defense-equipment-vequip"
      -- },
    },
    unit =
    {
      count = 60,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
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
	  {
        type = "unlock-recipe",
        recipe = "cannon-turret-shell-2"
      },
    },
    unit =
    {
      count = 60,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
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
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
}
)