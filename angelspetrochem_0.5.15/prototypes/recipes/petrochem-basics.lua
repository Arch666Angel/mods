data:extend(
{
--BASIC CHEMISTRY
	{
    type = "recipe",
    name = "dirt-water-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water", amount=100}
		--{type="item", name="angels-electrode", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=30},
		{type="fluid", name="gas-hydrogen", amount=40},
		{type="item", name="slag", amount=1}
		--{type="item", name="angels-electrode-used", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
    order = "a[water-separation]",
	},
	{
    type = "recipe",
    name = "water-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water-purified", amount=100}
		--{type="item", name="angels-electrode", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=40},
		{type="fluid", name="gas-hydrogen", amount=60},
		--{type="item", name="angels-electrode-used", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
    order = "a[water-separation]",
	},
	{
    type = "recipe",
    name = "water-synthesis",
    category = "chemistry",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-oxygen", amount=60},
		{type="fluid", name="gas-hydrogen", amount=90},
	},
    results=
    {
		{type="fluid", name="water-purified", amount=100}
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-27.png",
    order = "a[water-synthesis]",
	},
	{
    type = "recipe",
    name = "carbon-separation-1",
    category = "liquifying",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-carbon", amount=1},
		{type="fluid", name="water-purified", amount=50}
	},
    results=
    {
		{type="fluid", name="gas-carbon-monoxide", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-7.png",
    order = "b[carbon-separation-1]",
	},
	{
    type = "recipe",
    name = "carbon-separation-2",
    category = "liquifying",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-carbon-dioxide", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-6.png",
    order = "d[carbon-separation-2]",
	},
	{
    type = "recipe",
    name = "solid-calcium-chloride",
    category = "chemistry",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="stone-crushed", amount=6},
		{type="fluid", name="gas-hydrogen-chloride", amount=30},
	},
    results=
    {
        {type="item", name="solid-calcium-chloride", amount=3},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    order = "e[solid-calcium-chloride]",
	},
--COAL CRACKING
	{
    type = "recipe",
    name = "coal-cracking-1",	--Gasification
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
	},
    results=
    {
		{type="fluid", name="gas-hydrogen-sulfide", amount=50},
		{type="fluid", name="gas-benzene", amount=30},
		{type="fluid", name="gas-methane", amount=70},
		{type="item", name="solid-coke", amount=6},			--COKE
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-1.png",
    order = "f[coal-cracking-1]",
	},
	{
    type = "recipe",
    name = "coal-cracking-2",	--Bergius-Process
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
		{type="fluid", name="gas-hydrogen", amount=50},
        {type="item", name="catalyst-metal-red", amount=1},		--Fe
	},
    results=
    {
		{type="fluid", name="liquid-naphtha", amount=60},
		{type="fluid", name="liquid-ngl", amount=30},
		{type="fluid", name="liquid-mineral-oil", amount=20},
		{type="item", name="solid-coke", amount=6},			--COKE
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-2.png",
    order = "g[coal-cracking-2]",
	},
	{
    type = "recipe",
    name = "coal-cracking-3", --Fischer-Tropsch Ammonia and Methanol feed
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
		{type="fluid", name="steam", amount=50},
		{type="fluid", name="gas-oxygen", amount=50},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=100},
		{type="fluid", name="gas-carbon-dioxide", amount=20},
		{type="fluid", name="gas-hydrogen-sulfide", amount=30},
		-- {type="fluid", name="gas-hydrogen", amount=1},
		-- {type="fluid", name="gas-methane", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-3.png",
    order = "h[coal-cracking-3]",
	},
	{
    type = "recipe",
    name = "coke-purification",
    category = "liquifying",
	subgroup = "petrochem-coal",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=2},	
		{type="fluid", name="gas-carbon-dioxide", amount=35},
	},
    results=
    {
		{type="item", name="solid-carbon", amount=3},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
    order = "d[coke-purification]",
	},
	{
    type = "recipe",
    name = "coal-crushed",
    category = "ore-sorting-t1",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=1},	
	},
    results=
    {
		{type="item", name="coal-crushed", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    order = "a[coal-crushed]",
	},
	{
    type = "recipe",
    name = "solid-coke",
    category = "smelting",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="coal-crushed", amount=2},	
	},
    results=
    {
		{type="item", name="solid-coke", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    order = "b[coal-crushed]",
	},
	{
    type = "recipe",
    name = "solid-coke-sulfur",
    category = "liquifying",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal-crushed", amount=2},
		{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
		{type="item", name="solid-coke", amount=2},
		{type="fluid", name="water-yellow-waste", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    order = "c[solid-coke-sulfur]",
	},
	{
    type = "recipe",
    name = "pellet-coke",
    category = "crafting",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=5},	
	},
    results=
    {
		{type="item", name="pellet-coke", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    order = "e[pellet-coke]",
	},
}
)
