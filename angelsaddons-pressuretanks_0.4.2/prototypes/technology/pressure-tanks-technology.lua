data:extend(
{
    {
    type = "technology",
    name = "pressure-tanks",
    icon = "__angelsaddons-pressuretanks__/graphics/technology/pressure-tank-tech.png",
	icon_size = 128,
	prerequisites =
    {
	  (mods['angelspetrochem'] and 'angels-fluid-control' or 'fluid-handling'),
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-pressure-tank-1"
      },
    },
    unit =
    {
      count = 50,
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