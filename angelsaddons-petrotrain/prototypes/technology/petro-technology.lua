data:extend(
{
    {
    type = "technology",
    name = "angels-petro-train",
    icon = "__angelsaddons-petrotrain__/graphics/technology/petro-loco-1-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"railway",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "petro-locomotive-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "petro-tank1"
      },
	  {
        type = "unlock-recipe",
        recipe = "petro-tank2"
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
}
)


