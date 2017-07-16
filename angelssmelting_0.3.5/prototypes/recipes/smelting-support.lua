data:extend(
{
--COOLANT
	{
    type = "recipe",
    name = "coolant",
    category = "chemistry",
	subgroup = "coolant",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="water", amount=40},
      {type="fluid", name="liquid-mineral-oil", amount=10},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant", amount=50},
    },
    order = "a",
	},
	{
    type = "recipe",
    name = "coolant-clean",
    category = "chemistry",
	subgroup = "coolant",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-clean", amount=90, maximum_temperature = 50},
	  {type="fluid", name="water", amount=10, maximum_temperature = 25},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant", amount=20, temperature = 25},
    },
	    order = "b",
	},
	{
    type = "recipe",
    name = "coolant-used-filtration-1",
    category = "filtering",
	subgroup = "coolant",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-used", amount=100, minimum_temperature = 290},
	  {type="item", name="filter-coal", amount=1},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant-clean", amount=90, temperature = 295},
	  {type="item", name="filter-frame", amount=1},
    },
	main_product= "liquid-coolant-clean",
    order = "c",
	},
	{
    type = "recipe",
    name = "coolant-used-filtration-2",
    category = "filtering",
	subgroup = "coolant",
    energy_required = 4,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-used", amount=100, minimum_temperature = 290},
	  {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant-clean", amount=90, temperature = 295},
	  {type="item", name="filter-ceramic-used", amount=1},
    },
	main_product= "liquid-coolant-clean",
    order = "d",
	},
	{
    type = "recipe",
    name = "coolant-cool-300",
    category = "cooling",
	subgroup = "coolant",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-clean", amount=100, minimum_temperature = 285},
	  {type="fluid", name="water", amount=50},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant-clean", amount=100, temperature = 200},
	  {type="fluid", name="steam", amount=50, temperature = 200},
    },
	--main_product= "liquid-coolant-clean",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/liquid-coolant-clean.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "g",
	},
	{
    type = "recipe",
    name = "coolant-cool-200",
    category = "cooling",
	subgroup = "coolant",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-clean", amount=100, minimum_temperature = 185},
	  {type="fluid", name="water", amount=50},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant-clean", amount=100, temperature = 100},
	  {type="fluid", name="steam", amount=50, temperature = 100},
    },
	--main_product= "liquid-coolant-clean",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/liquid-coolant-clean.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "f",
	},
	{
    type = "recipe",
    name = "coolant-cool-100",
    category = "cooling",
	subgroup = "coolant",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	  {type="fluid", name="liquid-coolant-clean", amount=100, minimum_temperature = 85},
	  {type="fluid", name="water", amount=50},
	},
    results=
    {
	  {type="fluid", name="liquid-coolant-clean", amount=100, temperature = 25},
	  {type="fluid", name="steam", amount=50, temperature = 50},
    },
	--main_product= "liquid-coolant-clean",
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/liquid-coolant-clean.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "e",
	},
}
)