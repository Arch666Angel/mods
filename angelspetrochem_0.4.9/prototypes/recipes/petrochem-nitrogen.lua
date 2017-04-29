data:extend(
{
--NITROGEN
	{
    type = "recipe",
    name = "angels-air-filtering",
    category = "petrochem-air-filtering",
	subgroup = "petrochem-nitrogen",
    energy_required = 6,
	enabled = "false",
    ingredients ={
	},
    results=
    {
		{type="fluid", name="gas-compressed-air", amount=200},
    },
    icon = "__angelspetrochem__/graphics/icons/air-filtering.png",
    order = "a[angels-air-filtering]",
	},
	{
    type = "recipe",
    name = "air-separation",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-compressed-air", amount=100}
	},
    results=
    {
		{type="fluid", name="gas-nitrogen", amount=50},
		{type="fluid", name="gas-oxygen", amount=50},
		--{type="fluid", name="gas-inert", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-8.png",
    order = "b[air-separation]",
	},
	{
    type = "recipe",
    name = "gas-ammonia",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-hydrogen", amount=50},
		{type="fluid", name="gas-nitrogen", amount=50},
        {type="item", name="catalyst-metal-red", amount=1},		--Fe
	},
    results=
    {
		{type="fluid", name="gas-ammonia", amount=100},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/catalystic-reforming-1.png",
    order = "d[gas-ammonia]",
	},
	{
    type = "recipe",
    name = "gas-nitrogen-dioxide",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-oxygen", amount=60},
		{type="fluid", name="gas-nitrogen", amount=40},				--(NO)
	},
    results=
    {
		{type="fluid", name="gas-nitrogen-dioxide", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-19.png",
    order = "c[gas-nitrogen-dioxide]",
	},
	{
    type = "recipe",
    name = "gas-ammonium-chloride",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-ammonia", amount=50},
		{type="fluid", name="gas-hydrogen-chloride", amount=50},
	},
    results=
    {
		{type="fluid", name="gas-ammonium-chloride", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-14.png",
    order = "e[gas-ammonium-chloride]",
	},
	{
    type = "recipe",
    name = "gas-urea",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-ammonia", amount=60},
		{type="fluid", name="gas-carbon-dioxide", amount=40},
	},
    results=
    {
		{type="fluid", name="gas-urea", amount=80},
		{type="fluid", name="water-purified", amount=20},
    },
    icon = "__angelspetrochem__/graphics/icons/catalystic-reforming-2.png",
    order = "f[gas-urea]",
	},
	{
    type = "recipe",
    name = "gas-melamine",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-urea", amount=100},
        {type="item", name="catalyst-metal-blue", amount=1},		--Pl
	},
    results=
    {
		{type="fluid", name="gas-melamine", amount=100},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-8.png",
    order = "h[gas-melamine]",
	},
	{
    type = "recipe",
    name = "liquid-nitric-acid",
    category = "chemistry",
	subgroup = "petrochem-nitrogen",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-nitrogen-dioxide", amount=100},
		{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
		{type="fluid", name="liquid-nitric-acid", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-20.png",
    order = "g[liquid-nitric-acid]",
	},
--ROCKET FUEL	
	{
    type = "recipe",
    name = "gas-monochloramine",
    category = "chemistry",
	subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-sodium-hypochlorite", amount=5},
		{type="fluid", name="gas-ammonia", amount=300},
	},
    results=
    {
		{type="fluid", name="gas-monochloramine", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-28.png",
    order = "b[gas-monochloramine]",
	},
	{
    type = "recipe",
    name = "gas-hydrazine",
    category = "chemistry",
	subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-monochloramine", amount=50},
		{type="fluid", name="gas-ammonia", amount=250},
        {type="item", name="catalyst-metal-green", amount=1},		--Al
	},
    results=
    {
		{type="fluid", name="gas-hydrazine", amount=100},
		{type="fluid", name="gas-hydrogen-chloride", amount=200},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-29.png",
    order = "c[gas-hydrazine]",
	},
	{
    type = "recipe",
    name = "gas-methylamine",
    category = "chemistry",
	subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-methanol", amount=50},
		{type="fluid", name="gas-ammonia", amount=250},
	},
    results=
    {
		{type="fluid", name="gas-methylamine", amount=200},
		{type="fluid", name="water-purified", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-30.png",
    order = "e[gas-methylamine]",
	},
	{
    type = "recipe",
    name = "gas-dimethylamine",
    category = "chemistry",
	subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-methylamine", amount=200},
		{type="fluid", name="gas-methanol", amount=50},
	},
    results=
    {
		{type="fluid", name="gas-dimethylamine", amount=200},
		{type="fluid", name="water-purified", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-31.png",
    order = "f[gas-dimethylamine]",
	},
	{
    type = "recipe",
    name = "gas-dimethylhydrazine",
    category = "chemistry",
	subgroup = "petrochem-rocket",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-dimethylamine", amount=200},
		{type="fluid", name="gas-monochloramine", amount=50},
	},
    results=
    {
		{type="fluid", name="gas-dimethylhydrazine", amount=200},
		{type="fluid", name="water-purified", amount=50},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-32.png",
    order = "g[gas-dimethylamine]",
	},
}
)
