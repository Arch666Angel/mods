data:extend(
{
  {
    type = "recipe",
    name = "algae-blue",
    category = "bio-processing",
	subgroup = "bio-processing-blue",
	enabled = "false",
    energy_required = 20,
    ingredients ={
	  {type="fluid", name="water-yellow-waste", amount=100},
	  {type="fluid", name="gas-carbon-dioxide", amount=100}
	},
    results=
    {
      {type="item", name="algae-blue", amount=40},
    },
    icon = "__angelsbioprocessing__/graphics/icons/algae-blue.png",
    order = "a [algae-blue]",
  },
  {
    type = "recipe",
    name = "blue-fiber-algae",
    category = "chemistry",
	subgroup = "bio-processing-blue",
	enabled = "false",
    energy_required = 3,
    ingredients ={
      {type="item", name="algae-blue", amount=10},
	},
    results=
    {
      {type="item", name="blue-cellulose-fiber", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/blue-cellulose-fiber.png",
    order = "b [blue-fiber-algae]",
  },
  {
    type = "recipe",
    name = "gas-ammonia-from-blue-fiber",
    category = "liquifying",
	subgroup = "bio-processing-blue",
	enabled = "false",
    energy_required = 30,
    ingredients ={
		{type="item", name="blue-cellulose-fiber", amount=20},
	},
    results=
    {
      {type="fluid", name="gas-ammonia", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-ammonia.png",
    order = "c [gas-ammonia-from-blue-fiber]",
  },
}
)
