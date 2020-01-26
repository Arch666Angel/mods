data:extend(
{
    {
    type = "technology",
    name = "liquid-robots",
    icon = "__angelsaddons-liquidrobot__/graphics/technology/bot-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"cargo-robots"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "empty-liquid-bot"
      },
	  {
        type = "unlock-recipe",
        recipe = "create-dummy-a"
      },
	  {
        type = "unlock-recipe",
        recipe = "delete-dummy-a"
      },
	  {
        type = "unlock-recipe",
        recipe = "create-dummy-b"
      },
	  {
        type = "unlock-recipe",
        recipe = "delete-dummy-b"
      },
	  {
        type = "unlock-recipe",
        recipe = "create-dummy-c"
      },
	  {
        type = "unlock-recipe",
        recipe = "delete-dummy-c"
      },
	  {
        type = "unlock-recipe",
        recipe = "create-dummy-d"
      },
	  {
        type = "unlock-recipe",
        recipe = "delete-dummy-d"
      },
    },
    unit =
    {
      count = 50,
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


