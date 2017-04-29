data:extend(
{
--SOLIDS
	{
    type = "recipe",
    name = "solid-plastic-1",
    category = "chemistry",
	subgroup = "petrochem-solids",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-propene", amount=40},
	},
    results=
    {
        {type="item", name="solid-plastic-1", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-1.png",
    order = "a[solid-plastic-1]",
	},
	{
    type = "recipe",
    name = "solid-plastic-2",
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
        {type="item", name="solid-plastic-2", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-2.png",
    order = "a[solid-plastic-2]",
	},
	{
    type = "recipe",
    name = "solid-plastic-3",
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
        {type="item", name="solid-plastic-3", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-plastic-3.png",
    order = "a[solid-plastic-3]",
	},
	{
    type = "recipe",
    name = "solid-resin-1",
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
		{type="item", name="solid-resin-1", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-resin-1.png",
    order = "g[solid-resin-1]",
	},
	{
    type = "recipe",
    name = "solid-resin-2",
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
		{type="item", name="solid-resin-2", amount=1},
		{type="fluid", name="gas-ammonia", amount=10},
		{type="fluid", name="gas-carbon-dioxide", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-resin-1.png",
    order = "g[solid-resin-2]",
	},
	{
    type = "recipe",
    name = "solid-rubber",
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
		{type="item", name="solid-rubber", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-rubber.png",
    order = "h[solid-rubber]",
	},
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
    order = "e[catalyst-metal-yellow]",
	},
}
)
