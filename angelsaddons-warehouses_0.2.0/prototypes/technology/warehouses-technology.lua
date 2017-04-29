data:extend(
{
    {
    type = "technology",
    name = "angels-warehouses",
    icon = "__angelsaddons-warehouses__/graphics/technology/warehouses.png",
	icon_size = 128,
	prerequisites =
    {
	"steel-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-warehouse"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
    {
    type = "technology",
    name = "angels-logistic-warehouses",
    icon = "__angelsaddons-warehouses__/graphics/technology/warehouses-logistics.png",
	icon_size = 128,
	prerequisites =
    {
	"angels-warehouses",
	"logistic-robotics",
    },
    effects =
    {
  	  {
        type = "unlock-recipe",
        recipe = "angels-warehouse-passive-provider"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-warehouse-active-provider"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-warehouse-storage"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-warehouse-requester"
      },
    },
    unit =
    {
      count = 75,
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