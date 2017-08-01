local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "titanium-ore-processing",
    category = "ore-processing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"rutile-ore", 4}},
    results=
    {
      {type="item", name="processed-titanium", amount=2},
    },
    order = "aa",
    },
    {
    type = "recipe",
    name = "titanium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-titanium", 3}},
    results=
    {
      {type="item", name="pellet-titanium", amount=4},
    },
    order = "ab",
    },
	--INGOT
    {
    type = "recipe",
    name = "titanium-ore-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 8,
	enabled = "false",
    ingredients ={
      {type="item", name="rutile-ore", amount=24},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    order = "ac",
    },
    {
    type = "recipe",
    name = "processed-titanium-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 8,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-titanium", amount=8},
      {type="item", name="solid-carbon", amount=6},
      {type="fluid", name="gas-chlorine", amount=60},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
    },
    order = "ad",
    },
    {
    type = "recipe",
    name = "liquid-titanium-tetrachloride-smelting",
    category = "chemical-smelting",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-titanium-tetrachloride", amount=120},
      --{type="item", name="ingot-manganese", amount=6},
	},
    results=
    {
      {type="item", name="sponge-titanium", amount=24},
    },
    order = "af",
    },
    {
    type = "recipe",
    name = "sponge-titanium-smelting",
    category = "blast-smelting",
	subgroup = "angels-titanium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="sponge-titanium", amount=24},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=24},
    },
    order = "ag",
    },
    {
    type = "recipe",
    name = "pellet-titanium-smelting",
    category = "blast-smelting",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-titanium", amount=8},
      {type="item", name="solid-calcium-chloride", amount=6},
      {type="item", name="solid-carbon", amount=6},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=24},
      {type="item", name="solid-limestone", amount=6},
    },
    main_product= "ingot-titanium",
    order = "ah",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-titanium-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=120},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "ba",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "bb",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-nickel", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "bc",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-4",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-tin", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "bd",
    },
    {
    type = "recipe",
    name = "molten-titanium-smelting-5",
    category = "induction-smelting",
	subgroup = "angels-titanium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
      {type="item", name="ingot-chrome", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_5.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "be",
    },
--CASTING
    {
    type = "recipe",
    name = "roll-titanium-casting",
    category = "strand-casting",
	subgroup = "angels-titanium-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-titanium", amount=80},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-titanium", amount=2}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-titanium", amount=100 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-titanium", amount=2}},
	},
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},
    order = "ca",
    },
    {
    type = "recipe",
    name = "roll-titanium-casting-fast",
    category = "strand-casting",
	subgroup = "angels-titanium-casting",
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-titanium", amount=160},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-titanium", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-titanium",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-titanium", amount=200 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-titanium", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-titanium",
	},
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},
    order = "cb",
    },
    {
    type = "recipe",
    name = "angels-plate-titanium",
    category = "casting",
	subgroup = "angels-titanium-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-titanium", amount=40}},
	  results={{type="item", name="angels-plate-titanium", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-titanium", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-titanium", amount=4}},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-titanium.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
    order = "d",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-titanium-converting",
    category = "advanced-crafting",
	subgroup = "angels-titanium-casting",
    energy_required = 0.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-roll-titanium", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-titanium", amount=4},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-titanium.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
    order = "cc",
    },
}
)