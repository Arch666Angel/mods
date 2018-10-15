local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--IRON
--INTERMEDIATE
    {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore", 4}},
    results=
    {
      {type="item", name="processed-iron", amount=2},
    },
	icon_size = 32,
    order = "aa",
    },
    {
    type = "recipe",
    name = "iron-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-iron", 3}},
    results=
    {
      {type="item", name="pellet-iron", amount=4},
    },
	icon_size = 32,
    order = "ab",
    },
--INGOT
    {
    type = "recipe",
    name = "iron-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="iron-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
	icon_size = 32,
    order = "ac",
    },
    {
    type = "recipe",
    name = "processed-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-iron", amount=8},
      {type="item", name="solid-coke", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
	icon_size = 32,
    order = "ad",
    },
    {
    type = "recipe",
    name = "pellet-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-iron", amount=8},
      {type="item", name="solid-coke", amount=2},
      {type="item", name="solid-limestone", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
	icon_size = 32,
    order = "ae",
    },
    {
    type = "recipe",
    name = "ingot-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=24},
      {type="fluid", name="gas-oxygen", amount=60},
	},
    results=
    {
      {type="item", name="ingot-steel", amount=6},
    },
	icon_size = 32,
    order = "af",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-iron-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=120},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "ba",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "bb",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-silicon", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "bc",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-4",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-cobalt", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "bd",
    },
    {
    type = "recipe",
    name = "molten-iron-smelting-5",
    category = "induction-smelting",
	subgroup = "angels-iron-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=12},
      {type="item", name="ingot-nickel", amount=12},
      {type="item", name="ingot-chrome", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_5.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "be",
    },
--CASTING
    {
    type = "recipe",
    name = "roll-iron-casting",
    category = "strand-casting",
	subgroup = "angels-iron-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-iron", amount=80},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-iron", amount=2}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-iron", amount=100 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-iron", amount=2}},
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},	
	icon_size = 32,
    order = "cb",
    },
    {
    type = "recipe",
    name = "roll-iron-casting-fast",
    category = "strand-casting",
	subgroup = "angels-iron-casting",
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-iron", amount=140},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-iron", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-iron",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-iron", amount=180 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-iron", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-iron",
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-iron.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},	
	icon_size = 32,
    order = "cc",
    },
    {
    type = "recipe",
    name = "angels-plate-iron",
    category = "casting",
	subgroup = "angels-iron-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-iron", amount=40}},
	  results={{type="item", name="angels-plate-iron", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-iron", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-iron", amount=4}},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-iron.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-iron.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
	icon_size = 32,
    order = "d",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-iron-converting",
    category = "advanced-crafting",
	subgroup = "angels-iron-casting",
    energy_required = 0.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-roll-iron", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-iron", amount=4},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-iron.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/roll-iron.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
	icon_size = 32,
    order = "cd",
    },
    {
    type = "recipe",
    name = "powder-iron",
    category = "advanced-crafting",
	subgroup = "angels-iron-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=1},
	},
    results=
    {
      {type="item", name="powder-iron", amount=1},
    },
	icon_size = 32,
    order = "ca",
    },
}
)