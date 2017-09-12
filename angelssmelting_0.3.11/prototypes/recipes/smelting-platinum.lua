local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--PLATINUM
--INTERMEDIATE
    {
    type = "recipe",
    name = "platinum-ore-processing",
    category = "ore-processing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"platinum-ore", 4}},
    results=
    {
      {type="item", name="processed-platinum", amount=2},
    },
    order = "a",
    },
    {
    type = "recipe",
    name = "platinum-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-platinum", 3}},
    results=
    {
      {type="item", name="pellet-platinum", amount=4},
    },
    order = "b",
    },
--INGOT
    {
    type = "recipe",
    name = "platinum-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="platinum-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "c",
    },
    {
    type = "recipe",
    name = "processed-platinum-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-platinum", amount=8},
      {type="fluid", name="liquid-sulfuric-acid", amount=60},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "d",
    },
    {
    type = "recipe",
    name = "pellet-platinum-smelting",
    category = "chemistry",
	subgroup = "angels-platinum",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-platinum", amount=4},
	  {type="fluid", name="liquid-hydrochloric-acid", amount=30},
	  {type="fluid", name="liquid-nitric-acid", amount=30},
	},
    results=
    {
      {type="fluid", name="liquid-hexachloroplatinic-acid", amount=60},
    },
    order = "e",
    },
    {
    type = "recipe",
    name = "liquid-hexachloroplatinic-acid-smelting",
    category = "chemical-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-hexachloroplatinic-acid", amount=120},
	  {type="fluid", name="gas-ammonium-chloride", amount=60},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=24},
    },
    order = "f",
    },
    {
    type = "recipe",
    name = "solid-ammonium-chloroplatinate-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-ammonium-chloroplatinate", amount=24},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=24},
    },
    order = "g",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-platinum-smelting",
    category = "induction-smelting",
	subgroup = "angels-platinum-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-platinum", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-platinum", amount=120},
    },
    order = "h",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting",
    category = "strand-casting",
	subgroup = "angels-platinum-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-platinum", amount=40},
			{type="fluid", name="liquid-molten-copper", amount=40},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-wire-coil-platinum", amount=4}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-platinum", amount=50 * intermediatemulti},
			{type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-wire-coil-platinum", amount=4}},
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "za",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting-fast",
    category = "strand-casting",
	subgroup = "angels-platinum-casting",
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-platinum", amount=80},
			{type="fluid", name="liquid-molten-copper", amount=80},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-wire-coil-platinum", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-platinum",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-platinum", amount=100 * intermediatemulti},
			{type="fluid", name="liquid-molten-copper", amount=100 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-wire-coil-platinum", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-platinum",
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "zb",
    },
    {
    type = "recipe",
    name = "angels-plate-platinum",
    category = "casting",
	subgroup = "angels-platinum-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-platinum", amount=40}},
	  results={{type="item", name="angels-plate-platinum", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-platinum", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-platinum", amount=4}},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-platinum.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-platinum.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
    order = "zz",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-converting",
    category = "advanced-crafting",
	subgroup = "angels-platinum-casting",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-wire-coil-platinum", amount=4},
	},
    results=
    {
      {type="item", name="angels-wire-platinum", amount=16},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-platinum.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},
    order = "zy",
    },
}
)