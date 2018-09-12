data:extend(
{
    {
    type = "technology",
    name = "angels-cab",
    icon = "__angelsaddons-cab__/graphics/technology/cab-tech.png",
	icon_size = 128,
	prerequisites =
    {
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-cab"
      },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "smelting-locomotive-tender"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "smelting-wagon-1"
      -- },
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


