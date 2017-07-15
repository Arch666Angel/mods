data:extend(
{
--EQUIPMENT
    {
    type = "technology",
    name = "angels-heavy-tank",
    icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-vequipment-1",
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
        recipe = "angels-rocket-defense-equipment-vequip"
      },
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
}
)