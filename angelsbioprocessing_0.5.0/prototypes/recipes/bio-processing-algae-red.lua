data:extend(
{
  {
    type = "recipe",
    name = "algae-red",
    category = "bio-processing",
	subgroup = "bio-processing-red",
	enabled = "false",
    energy_required = 20,
    ingredients ={
	  {type="fluid", name="thermal-water", amount=100},
	  {type="fluid", name="gas-ammonia", amount=100}
	},
    results=
    {
      {type="item", name="algae-red", amount=40},
    },
    icon = "__angelsbioprocessing__/graphics/icons/algae-red.png",
    order = "a [algae-red]",
  },
  {
    type = "recipe",
    name = "red-fiber-algae",
    category = "bio-processing",
	subgroup = "bio-processing-red",
	enabled = "false",
    energy_required = 3,
    ingredients ={
      {type="item", name="algae-red", amount=10},
	},
    results=
    {
      {type="item", name="red-cellulose-fiber", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/red-cellulose-fiber.png",
    order = "b [red-fiber-algae]",
  },
  {
    type = "recipe",
    name = "solid-calcium-carbonate",
    category = "liquifying",
	subgroup = "bio-processing-red",
	enabled = "false",
    energy_required = 30,
    ingredients ={
		{type="item", name="red-cellulose-fiber", amount=20},
	},
    results=
    {
      {type="item", name="solid-calcium-carbonate", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/solid-calcium-carbonate.png",
    order = "c [solid-calcium-carbonate]",
  },
}
)