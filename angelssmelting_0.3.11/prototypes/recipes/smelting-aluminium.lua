local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--BAUXITE/ALUMINIUM
--INTERMEDIATE
    {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"bauxite-ore", 4}},
    results=
    {
      {type="item", name="processed-aluminium", amount=2},
    },
    main_product= "processed-aluminium",
    icon = "__angelssmelting__/graphics/icons/processed-aluminium.png",
    order = "aa",
    },
    {
    type = "recipe",
    name = "aluminium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-aluminium", 3}},
    results=
    {
      {type="item", name="pellet-aluminium", amount=4},
    },
    main_product= "pellet-aluminium",
    icon = "__angelssmelting__/graphics/icons/pellet-aluminium.png",
    order = "ab",
    },
--INGOT
    {
    type = "recipe",
    name = "bauxite-ore-smelting",
    category = "powder-mixing",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="bauxite-ore", amount=12},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    order = "ac",
    },
    {
    type = "recipe",
    name = "processed-aluminium-smelting",
    category = "powder-mixing",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-aluminium", amount=4},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-hydroxide", amount=12},
    },
    order = "ad",
    },
    {
    type = "recipe",
    name = "solid-aluminium-hydroxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-aluminium-hydroxide", amount=24},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
    },
    order = "ae",
    },
    {
    type = "recipe",
    name = "pellet-aluminium-smelting",
    category = "chemical-smelting",
	subgroup = "angels-aluminium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-aluminium", amount=6},
	  {type="item", name="solid-sodium-carbonate", amount=3},
	  {type="item", name="solid-coke", amount=3},
	},
    results=
    {
      {type="item", name="solid-sodium-aluminate", amount=18},
    },
    order = "af",
    },
    {
    type = "recipe",
    name = "solid-sodium-aluminate-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-sodium-aluminate", amount=24},
	  {type="item", name="solid-sodium-hydroxide", amount=3},
	  {type="fluid", name="gas-carbon-dioxide", amount=60},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=24},
	  {type="item", name="solid-sodium-carbonate", amount=2},
    },
    main_product= "solid-aluminium-oxide",
    order = "ag",
    },
    {
    type = "recipe",
    name = "solid-aluminium-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-aluminium-oxide", amount=24},
      {type="item", name="solid-carbon", amount=3},
	},
    results=
    {
      {type="item", name="ingot-aluminium", amount=24},
    },
    order = "ah",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-aluminium-smelting-1",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=120},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
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
    name = "molten-aluminium-smelting-2",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-manganese", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=240},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
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
    name = "molten-aluminium-smelting-3",
    category = "induction-smelting",
	subgroup = "angels-aluminium-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=12},
      {type="item", name="ingot-silicon", amount=12},
      {type="item", name="ingot-copper", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=360},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
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
--CASTING
    {
    type = "recipe",
    name = "roll-aluminium-casting",
    category = "strand-casting",
	subgroup = "angels-aluminium-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-aluminium", amount=80},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-aluminium", amount=2}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-aluminium", amount=100 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-aluminium", amount=2}},
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
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
    name = "roll-aluminium-casting-fast",
    category = "strand-casting",
	subgroup = "angels-aluminium-casting",
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-aluminium", amount=160},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-aluminium", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-aluminium",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-aluminium", amount=200 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-aluminium", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-aluminium",
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
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
    name = "angels-plate-aluminium",
    category = "casting",
	subgroup = "angels-aluminium-casting",
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-aluminium", amount=40}},
	  results={{type="item", name="angels-plate-aluminium", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-aluminium", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-aluminium", amount=4}},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
    order = "d",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-aluminium-converting",
    category = "advanced-crafting",
	subgroup = "angels-aluminium-casting",
    energy_required = 0.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-roll-aluminium", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-aluminium", amount=4},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
    order = "cc",
    },
}
)