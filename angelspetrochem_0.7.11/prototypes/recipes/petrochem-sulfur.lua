data:extend(
{
	--SULFUR
	{
		type = "recipe",
		name = "gas-acid-catalyst",
		category = "advanced-chemistry",
		subgroup = "petrochem-sulfur",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-acid", amount=100},
			{type="item", name="catalyst-metal-green", amount=1},		--Al
		},
		results=
		{
			--{type="item", name="sulfur", amount=1},
			{type="fluid", name="gas-hydrogen-sulfide", amount=60},
			{type="fluid", name="gas-carbon-dioxide", amount=20},
			{type="fluid", name="liquid-hydrofluoric-acid", amount=20},
			--{type="fluid", name="gas-hydrogen", amount=1},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-cracking-7.png",
		icon_size = 32,
		order = "a[gas-acid-catalyst]",
	},
	{
		type = "recipe",
		name = "solid-sulfur",
		category = "chemistry",
		subgroup = "petrochem-sulfur",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-hydrogen-sulfide", amount=60},
			{type="fluid", name="gas-oxygen", amount=40},
		},
		results=
		{
			{type="item", name="sulfur", amount=3},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-11.png",
		icon_size = 32,
		order = "b[solid-sulfur]",
	},
	{
		type = "recipe",
		name = "gas-sulfur-dioxide",
		category = "chemistry",
		subgroup = "petrochem-sulfur",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="sulfur", amount=1},
			{type="fluid", name="gas-oxygen", amount=60},
		},
		results=
		{
			{type="fluid", name="gas-sulfur-dioxide", amount=60},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-9.png",
		icon_size = 32,
		order = "ca[gas-sulfur-dioxide]",
	},
	{
		type = "recipe",
		name = "gas-sulfur-dioxide-calcium-sulfate",
		category = "liquifying",
		subgroup = "petrochem-sulfur",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-calcium-sulfate", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="fluid", name="gas-sulfur-dioxide", amount=50},
			{type="item", name="angels-void", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-9.png",
		icon_size = 32,
		order = "cb[gas-sulfur-dioxide-calcium-sulfate]",
	},
	{
		type = "recipe",
		name = "liquid-sulfuric-acid",
		category = "chemistry",
		subgroup = "petrochem-sulfur",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-sulfur-dioxide", amount=90},
			{type="fluid", name="water-purified", amount=40},
		},
		results=
		{
			{type="fluid", name="liquid-sulfuric-acid", amount=60},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
		icon_size = 32,
		order = "d[liquid-sulfuric-acid]",
	},
	{
		type = "recipe",
		name = "liquid-hydrofluoric-acid",
		category = "chemistry",
		subgroup = "petrochem-sulfur",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="fluorite-ore", amount=5},
			{type="fluid", name="sulfuric-acid", amount=50},
		},
		results=
		{
			{type="fluid", name="liquid-hydrofluoric-acid", amount=50},
			{type="item", name="solid-calcium-sulfate", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-7.png",
		icon_size = 32,
		order = "e[liquid-hydrofluoric-acid]",
	},
	{
    type = "recipe",
    name = "filter-lime",
    category = "crafting",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="filter-frame", amount=1},
      {type="item", name="stone-crushed", amount=5},
    },
    results=
    {
      {type="item", name="filter-lime", amount=1},
    },
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "f",
  },
  {
    type = "recipe",
    name = "filter-lime-used",
    category = "liquifying",
    subgroup = "petrochem-sulfur",
    energy_required = 2,
    enabled = "false",
    ingredients ={
      {type="item", name="filter-lime-used", amount=1},
    },
    results=
    {
      {type="fluid", name="gas-acid", amount=20},
      {type="item", name="filter-frame", amount=1},
    },
		main_product = "gas-acid",
    --icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    icon_size = 32,
    order = "g",
  },
  {
		type = "recipe",
		name = "angels-sulfur-scrubber",
		category = "petrochem-air-filtering",
		subgroup = "petrochem-sulfur",
		energy_required = 10,
		enabled = "false",
		ingredients ={
      {type="item", name="filter-lime", amount=1},
      {type="fluid", name="water", amount=20},
		},
		results=
		{
			{type="item", name="filter-lime-used", amount=1},
      {type="fluid", name="water-yellow-waste", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/inter-chemistry-11.png",
		icon_size = 32,
		order = "h",
	},
}
)
