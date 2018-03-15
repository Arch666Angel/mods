data:extend(
{
    {
    type = "technology",
    name = "angels-vequipment-1",
    icon = "__angelsindustries__/graphics/technology/vequip.png",
	icon_size = 64,
	prerequisites =
    {
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-burner-generator-vequip"
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
    name = "angels-vequipment-2",
    icon = "__angelsindustries__/graphics/technology/vequip.png",
	icon_size = 64,
	prerequisites =
    {
	"angels-vequipment-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-fusion-reactor-vequip"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-repair-roboport-vequip"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-heavy-energy-shield-vequip"
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