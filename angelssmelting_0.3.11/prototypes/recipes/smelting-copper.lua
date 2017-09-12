local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--COPPER
--INTERMEDIATE
    {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore", 4}},
    results=
    {
      {type="item", name="processed-copper", amount=2},
    },
    order = "aa",
    },
    {
    type = "recipe",
    name = "copper-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-copper", 3}},
    results=
    {
      {type="item", name="pellet-copper", amount=4},
    },
    order = "ab",
    },
--INGOT
    {
    type = "recipe",
    name = "copper-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="copper-ore", amount=24},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=24},
    },
    order = "ac",
    },
    {
    type = "recipe",
    name = "processed-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-copper", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=24},
    },
    order = "ad",
    },
    {
    type = "recipe",
    name = "pellet-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-copper", amount=8},
      {type="fluid", name="gas-oxygen", amount=60},
      --{type="item", name="solid-sodium-carbonate", amount=6},
	},
    results=
    {
      {type="item", name="anode-copper", amount=24},
    },
    order = "ae",
    },
    {
    type = "recipe",
    name = "anode-copper-smelting",
    category = "chemical-smelting",
	subgroup = "angels-copper",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="anode-copper", amount=12},
      {type="fluid", name="liquid-sulfuric-acid", amount=30},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=12},
    },
    order = "af",
    },
--SMELTING
    {
    type = "recipe",
    name = "molten-copper-smelting",
    category = "induction-smelting",
	subgroup = "angels-copper-casting",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=12},
	},
    results=
    {
      {type="fluid", name="liquid-molten-copper", amount=120},
    },
    order = "ba",
    },
--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-copper-casting",
    category = "strand-casting",
	subgroup = "angels-copper-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=80},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-wire-coil-copper", amount=4}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=100 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-wire-coil-copper", amount=4}},
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "cb",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-copper-casting-fast",
    category = "strand-casting",
	subgroup = "angels-copper-casting",
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=160},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-wire-coil-copper", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-copper",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=200 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-wire-coil-copper", amount=8},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-wire-coil-copper",
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
    order = "cc",
    },
    {
    type = "recipe",
    name = "roll-copper-casting",
    category = "strand-casting",
	subgroup = "angels-copper-casting",
	normal =
    {
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=80},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-copper", amount=2}},
	},
    expensive =
	{
		enabled = "false",
		energy_required = 4,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=100 * intermediatemulti},
			{type="fluid", name="water", amount=40},
		},
		results={{type="item", name="angels-roll-copper", amount=2}},
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-copper.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},	
    order = "ce",
    },
    {
    type = "recipe",
    name = "roll-copper-casting-fast",
    category = "strand-casting",
	subgroup = "angels-copper-casting",
    energy_required = 2,
	normal =
    {
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=160},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-copper", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-copper",
	},
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={
			{type="fluid", name="liquid-molten-copper", amount=200 * intermediatemulti},
			{type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
		},
		results={
			{type="item", name="angels-roll-copper", amount=4},
			{type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
		},
		main_product = "angels-roll-copper",
	},
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/roll-copper.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		},
	},	
    order = "cf",
    },
    {
    type = "recipe",
    name = "angels-plate-copper",
    category = "casting",
	subgroup = "angels-copper-casting",
    energy_required = 4,
	normal =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-copper", amount=40}},
	  results={{type="item", name="angels-plate-copper", amount=4}},
    },
    expensive =
    {
	  enabled = "false",
	  energy_required = 4,
	  ingredients ={{type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti}},
	  results={{type="item", name="angels-plate-copper", amount=4}},
    },
	icons = {
		{ 
			icon = "__angelssmelting__/graphics/icons/plate-copper.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/molten-copper.png",
			scale = 0.4375,
			shift = { -10, -10},
		},
	},
    order = "ch",
    },
--CRAFTING
    {
    type = "recipe",
    name = "angels-roll-copper-converting",
    category = "advanced-crafting",
	subgroup = "angels-copper-casting",
    energy_required = 0.5,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-roll-copper", amount=1},
	},
    results=
    {
      {type="item", name="angels-plate-copper", amount=4},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/plate-copper.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/roll-copper.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
    order = "cg",
    },
    {
    type = "recipe",
    name = "angels-wire-coil-copper-converting",
    category = "advanced-crafting",
	subgroup = "angels-copper-casting",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={
      {type="item", name="angels-wire-coil-copper", amount=4},
	},
    results=
    {
      {type="item", name="angels-wire-copper", amount=16},
    },
	icons = {
		{
			icon = "__angelssmelting__/graphics/icons/wire-copper.png",
		},
		{
			icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
			scale = 0.4375,
			shift = { -10, -10},
		}
	},	
    order = "cd",
    },
    {
    type = "recipe",
    name = "powder-copper",
    category = "advanced-crafting",
	subgroup = "angels-copper-casting",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=1},
	},
    results=
    {
      {type="item", name="powder-copper", amount=1},
    },
    order = "ca",
    },
}
)