local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
--SOLIDS
	{
    type = "recipe",
    name = "solid-plastic",
    category = "crafting-with-fluid",
	subgroup = "petrochem-solids",
	normal =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-plastic", amount=40}},
		results={{type="item", name="plastic-bar", amount=4}},
    },
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-plastic", amount=50 * intermediatemulti}},
		results={{type="item", name="plastic-bar", amount=4}},
    },
	icon_size = 32,
    order = "a",
	},
	{
    type = "recipe",
    name = "liquid-plastic-1",
    category = "liquifying",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-propene", amount=40},
	},
    results=
    {
        {type="fluid", name="liquid-plastic", amount=10},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,		
    order = "b",
	},
	{
    type = "recipe",
    name = "liquid-plastic-2",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-naphtha", amount=20},
		{type="fluid", name="gas-polyethylene", amount=20},
	},
    results=
    {
        {type="fluid", name="liquid-plastic", amount=20},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    order = "c",
	},
	{
    type = "recipe",
    name = "liquid-plastic-3",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-formaldehyde", amount=20},
		{type="fluid", name="gas-phenol", amount=20},
	},
    results=
    {
        {type="fluid", name="liquid-plastic", amount=30},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-plastic.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    order = "d",
	},
	--RESIN
	{
    type = "recipe",
    name = "solid-resin",
    category = "crafting-with-fluid",
	subgroup = "petrochem-solids",
	enabled = "false",
	normal =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-resin", amount=40}},
		results={{type="item", name="solid-resin", amount=4}},
    },
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-resin", amount=50 * intermediatemulti}},
		results={{type="item", name="solid-resin", amount=4}},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-resin.png",
	icon_size = 32,
    order = "e",
	},
	{
    type = "recipe",
    name = "liquid-resin-1",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-urea", amount=20},
		{type="fluid", name="gas-formaldehyde", amount=20},
	},
    results=
    {
		{type="fluid", name="liquid-resin", amount=10},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    order = "f",
	},
	{
    type = "recipe",
    name = "liquid-resin-2",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-melamine", amount=20},
		{type="fluid", name="gas-formaldehyde", amount=20},
	},
    results=
    {
		{type="fluid", name="liquid-resin", amount=20},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "g",
	},
	{
    type = "recipe",
    name = "liquid-resin-3",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-bisphenol-a", amount=20},
		{type="fluid", name="gas-epichlorhydrin", amount=20},
	},
    results=
    {
		{type="fluid", name="liquid-resin", amount=30},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-resin.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
    order = "h",
	},
	--RUBBER
	{
    type = "recipe",
    name = "solid-rubber",
    category = "crafting-with-fluid",
	subgroup = "petrochem-solids",
	enabled = "false",
	normal =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-rubber", amount=40}},
		results={{type="item", name="solid-rubber", amount=4}},
    },
    expensive =
	{
		enabled = "false",
		energy_required = 2,
		ingredients ={{type="fluid", name="liquid-rubber", amount=50 * intermediatemulti}},
		results={{type="item", name="solid-rubber", amount=4}},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
	icon_size = 32,
    order = "i",
	},
	{
    type = "recipe",
    name = "liquid-rubber-1",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
			{type="fluid", name="gas-styrene", amount=20},
			{type="fluid", name="gas-butadiene", amount=20},
	},
    results=
    {
		{type="fluid", name="liquid-rubber", amount=10},
    },
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/liquid-rubber.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    order = "j",
	},
	--GLASS
	-- {
    -- type = "recipe",
    -- name = "solid-glass",
    -- category = "chemistry",
	-- subgroup = "petrochem-solids",
	-- normal =
	-- {
		-- enabled = "false",
		-- energy_required = 2,
		-- ingredients ={
			-- {type="fluid", name="gas-bisphenol-a", amount=20},
			-- {type="fluid", name="gas-phosgene", amount=20},
			-- {type="item", name="solid-sodium-hydroxide", amount=1},
		-- },
		-- results={{type="item", name="solid-glas", amount=4}},
    -- },
    -- expensive =
	-- {
		-- enabled = "false",
		-- energy_required = 2,
		-- ingredients ={
			-- {type="fluid", name="gas-bisphenol-a", amount=25 * intermediatemulti},
			-- {type="fluid", name="gas-phosgene", amount=25 * intermediatemulti},
			-- {type="item", name="solid-sodium-hydroxide", amount=1 * intermediatemulti},
		-- },
		-- results={{type="item", name="solid-glas", amount=4}},
    -- },
    -- icon = "__angelspetrochem__/graphics/icons/solid-glas.png",
	-- icon_size = 32,
    -- order = "i",
	-- },
--FUEL
	{
    type = "recipe",
    name = "solid-fuel-methane",
    category = "liquifying",
	subgroup = "petrochem-fuel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=1},
		{type="fluid", name="gas-methane", amount=100},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-fuel-methane.png",
	icon_size = 32,
    order = "a[solid-fuel-methane]",
	},
	{
    type = "recipe",
    name = "solid-fuel-naphtha",
    category = "liquifying",
	subgroup = "petrochem-fuel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=1},
		{type="fluid", name="liquid-naphtha", amount=100},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-fuel-naphtha.png",
	icon_size = 32,
    order = "b[solid-fuel-naphtha]",
	},
	{
    type = "recipe",
    name = "solid-fuel-fuel-oil",
    category = "liquifying",
	subgroup = "petrochem-fuel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=1},
		{type="fluid", name="liquid-fuel-oil", amount=50},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-fuel-fuel-oil.png",
	icon_size = 32,
    order = "c[solid-fuel-fuel-oil]",
	},
	{
    type = "recipe",
    name = "solid-fuel-synthesis",
    category = "liquifying",
	subgroup = "petrochem-fuel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=1},
		{type="fluid", name="gas-synthesis", amount=100},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-fuel-synthesis.png",
	icon_size = 32,
    order = "d[solid-fuel-synthesis]",
	},
	{
    type = "recipe",
    name = "solid-fuel-hydrazine",
    category = "chemistry",
	subgroup = "petrochem-fuel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-hydrazine", amount=50},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-fuel-hydrazine.png",
	icon_size = 32,
    order = "e[solid-fuel-hydrazine]",
	},
--CATALYSTS
	{
    type = "recipe",
    name = "catalyst-metal-carrier",
    category = "crafting",
	subgroup = "petrochem-catalysts",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="iron-plate", amount=5},
	},
    results=
    {
		{type="item", name="catalyst-metal-carrier", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-carrier.png",
	icon_size = 32,
    order = "a[catalyst-metal-carrier]",
	},
	{
    type = "recipe",
    name = "catalyst-metal-red",
    category = "crafting",
	subgroup = "petrochem-catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
        -- {type="item", name="iron-ore", amount=1},
        -- {type="item", name="copper-ore", amount=1},
	},
    results=
    {
		{type="item", name="catalyst-metal-red", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-red.png",
	icon_size = 32,
    order = "b[catalyst-metal-red]",
	},
	{
    type = "recipe",
    name = "catalyst-metal-green",
    category = "crafting",
	subgroup = "petrochem-catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
        -- {type="item", name="bauxite-ore", amount=1},
        -- {type="item", name="silver-ore", amount=1},
	},
    results=
    {
		{type="item", name="catalyst-metal-green", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-green.png",
	icon_size = 32,
    order = "c[catalyst-metal-green]",
	},
	{
    type = "recipe",
    name = "catalyst-metal-blue",
    category = "crafting",
	subgroup = "petrochem-catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
        -- {type="item", name="rutile-ore", amount=1},
        -- {type="item", name="cobalt-ore", amount=1},
	},
    results=
    {
		{type="item", name="catalyst-metal-blue", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-blue.png",
	icon_size = 32,
    order = "d[catalyst-metal-blue]",
	},
	{
    type = "recipe",
    name = "catalyst-metal-yellow",
    category = "crafting",
	subgroup = "petrochem-catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="catalyst-metal-carrier", amount=10},
        -- {type="item", name="tungsten-ore", amount=1},
        -- {type="item", name="nickel-ore", amount=1},
	},
    results=
    {
		{type="item", name="catalyst-metal-yellow", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/catalyst-metal-yellow.png",
	icon_size = 32,
    order = "e[catalyst-metal-yellow]",
	},
--SPECIAL CATALYSTS
	{
	type = "recipe",
	name = "angels-electrode",
	category = "crafting",
	subgroup = "petrochem-catalysts",
	energy_required = 1,
	enabled = "false",
	ingredients ={
		{type="item", name="steel-plate", amount=1},
		{type="item", name="solid-carbon", amount=1}
	},
	results=
	{
		{type="item", name="angels-electrode", amount=1}
	},
	icon_size = 32,
	order = "a",
	},
	{
	type = "recipe",
	name = "angels-electrode-used",
	category = "crafting",
	subgroup = "petrochem-catalysts",
	energy_required = 1,
	enabled = "false",
	ingredients ={
		{type="item", name="angels-electrode-used", amount=1}
	},
	results=
	{
		{type="item", name="steel-plate", amount=1, probability=0.95},
		{type="item", name="solid-carbon", amount=1, probability=0.7}
	},
    icon = "__angelspetrochem__/graphics/icons/solid-electrode-used.png",
	icon_size = 32,
	order = "a",
	},
--EXPLOSIVES
	{
    type = "recipe",
    name = "solid-nitroglycerin",
    category = "chemistry",
	subgroup = "petrochem-solids-2",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-glycerol", amount=50},
		{type="fluid", name="liquid-sulfuric-acid", amount=25},
        {type="fluid", name="liquid-nitric-acid", amount=25},
		{type="item", name="coal", amount=1},
	},
    results=
    {
		{type="item", name="explosives", amount=2},
    },
    icons = {
		{
			icon = "__base__/graphics/icons/explosives.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
	main_product = "explosives",
    order = "b",
	},
	{
    type = "recipe",
    name = "solid-trinitrotoluene",
    category = "chemistry",
	subgroup = "petrochem-solids-2",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-toluene", amount=50},
		{type="fluid", name="liquid-sulfuric-acid", amount=25},
        {type="fluid", name="liquid-nitric-acid", amount=25},
	},
    results=
    {
        --{type="item", name="solid-trinitrotoluene", amount=1},
		{type="item", name="explosives", amount=3},
		{type="fluid", name="water-yellow-waste", amount=25},
    },
    icons = {
		{
			icon = "__base__/graphics/icons/explosives.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},	
	icon_size = 32,
	main_product = "explosives",
    order = "c",
	},
}
)
