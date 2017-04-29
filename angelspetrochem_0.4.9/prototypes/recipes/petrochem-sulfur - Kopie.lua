data:extend(
{
{
    type = "item",
    name = "solid-sodium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-sulfate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-sulfate]",
    stack_size = 200
},
{
    type = "item",
    name = "solid-sodium-sulfide",
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-sulfate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[solid-sodium-sulfate]",
    stack_size = 200
},
  {
    type = "item",
    name = "solid-calcium-carbonate",
    icon = "__angelsbioprocessing__/graphics/icons/solid-calcium-carbonate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-processing-red",
    order = "c[solid-calcium-carbonate]",
    stack_size = 200
  },
	{
    type = "recipe",
    name = "solid-salt-gas-hydrogen-chloride",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-salt", amount=6},
		{type="fluid", name="liquid-sulfuric-acid", amount=4},
	},
    results=
    {
        {type="fluid", name="gas-hydrogen-chloride", amount=7},
		{type="item", name="solid-sodium-sulfate", amount=3},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-15.png",
    order = "b[solid-salt-gas-hydrogen-chloride]",
	},
	{
    type = "recipe",
    name = "solid-sodium-hydroxide-solid-sodium-sulfate",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-sodium-hydroxide", amount=6},
		{type="fluid", name="liquid-sulfuric-acid", amount=6},
	},
    results=
    {
		{type="item", name="solid-sodium-sulfate", amount=6},
        {type="fluid", name="water-purified", amount=6},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    order = "b[solid-sodium-hydroxide-solid-sodium-sulfate]",
	},
	{
    type = "recipe",
    name = "solid-sodium-sulfate-solid-sodium-sulfide",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-sodium-sulfate", amount=6},
		{type="item", name="coal", amount=4},
	},
    results=
    {
		{type="item", name="solid-sodium-sulfide", amount=6},
        {type="fluid", name="gas-carbon-dioxide", amount=4},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    order = "b[solid-sodium-hydroxide-solid-sodium-sulfate]",
	},
		{
    type = "recipe",
    name = "solid-sodium-sulfate-solid-sodium-sulfide",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-hydrogen-chloride", amount=6},
		{type="fluid", name="gas-oxygen", amount=4},
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=6},
        {type="fluid", name="water-purified", amount=4},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-10.png",
    order = "b[solid-sodium-hydroxide-solid-sodium-sulfate]",
	},
}
)
