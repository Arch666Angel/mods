data:extend(
{
	--SODIUM
	{
		type = "recipe",
		name = "solid-salt-separation",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-salt", amount=10},
			{type="item", name="angels-electrode", amount=1}
		},
		results=
		{
			{type="fluid", name="gas-chlorine", amount=200},
			{type="item", name="solid-sodium", amount=5},
			{type="item", name="angels-electrode-used", amount=1, catalyst_amount=1}
		},
		icon = "__angelspetrochem__/graphics/icons/raw-separation-10.png",
		icon_size = 32,
		order = "a[solid-salt-separation]",
	},
	{
		type = "recipe",
		name = "solid-sodium",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-hydroxide", amount=5},
			{type="item", name="angels-electrode", amount=1}
		},
		results=
		{
			{type="item", name="solid-sodium", amount=5},
			{type="item", name="angels-electrode-used", amount=1, catalyst_amount=1},
			{type="fluid", name="water-purified", amount=50},
			{type="fluid", name="gas-oxygen", amount=50},
		},
		main_product= "solid-sodium",
		icon_size = 32,
		order = "b[solid-sodium]",
	},
	{
		type = "recipe",
		name = "solid-sodium-hydroxide",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium", amount=5},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="solid-sodium-hydroxide", amount=5},
		},
		icon_size = 32,
		order = "c[solid-sodium-hydroxide]",
	},
	{
		type = "recipe",
		name = "solid-sodium-carbonate",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium", amount=5},
			{type="fluid", name="gas-carbon-dioxide", amount=50},
		},
		results=
		{
			{type="item", name="solid-sodium-carbonate", amount=5},
		},
		icon_size = 32,
		order = "d[solid-sodium-carbonate]",
	},
	{
		type = "recipe",
		name = "solid-sodium-carbonate-electrolysis",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-carbonate", amount=5},
			{type="item", name="angels-electrode", amount=1},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="fluid", name="liquid-aqueous-sodium-hydroxide", amount=50},
			{type="item", name="angels-electrode-used", amount=1, catalyst_amount=1},
			{type="fluid", name="gas-carbon-dioxide", amount=50},
		},
		main_product= "liquid-aqueous-sodium-hydroxide",
		icon_size = 32,
		order = "d[solid-sodium-carbonate]",
	},
	{
		type = "recipe",
		name = "solid-sodium-cyanide",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium", amount=5},
			{type="item", name="solid-carbon", amount=1},
			{type="fluid", name="gas-ammonia", amount=30},
			{type="item", name="catalyst-metal-green", amount=1},
		},
		results=
		{
			{type="item", name="solid-sodium-cyanide", amount=5},
			{type="fluid", name="gas-hydrogen", amount=30},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		main_product= "solid-sodium-cyanide",
		icon_size = 32,
		order = "e[solid-sodium-cyanide]",
	},
	{
		type = "recipe",
		name = "solid-sodium-sulfate-separation",
		category = "petrochem-electrolyser",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-sulfate", amount=2}
		},
		results=
		{
			{type="item", name="solid-sodium", amount=4},
			{type="item", name="sulfur", amount=2},
		},
		main_product= "solid-sodium",
		icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
		icon_size = 32,
		order = "f[solid-sodium-sulfate-separation]",
	},
	{
		type = "recipe",
		name = "solid-sodium-chlorate",
		category = "chemistry",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-aqueous-sodium-hydroxide", amount=50},
			{type="fluid", name="gas-hydrogen-chloride", amount=50},
		},
		results=
		{
			{type="item", name="solid-sodium-chlorate", amount=5},
		},
		icon = "__angelspetrochem__/graphics/icons/solid-sodium-chlorate.png",
		icon_size = 32,
		order = "g[solid-sodium-chlorate]",
	},
	{
		type = "recipe",
		name = "solid-sodium-perchlorate",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-chlorate", amount=5},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="catalyst-metal-blue", amount=1},
		},
		results=
		{
			{type="item", name="solid-sodium-perchlorate", amount=5},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/solid-sodium-perchlorate.png",
		icon_size = 32,
		order = "h[solid-sodium-perchlorate]",
	},
	{
		type = "recipe",
		name = "solid-sodium-hypochlorite",
		category = "chemistry",
		subgroup = "petrochem-sodium",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-aqueous-sodium-hydroxide", amount=50},
			{type="fluid", name="gas-chlorine", amount=200},
		},
		results=
		{
			{type="item", name="solid-sodium-hypochlorite", amount=5},
		},
		icon = "__angelspetrochem__/graphics/icons/solid-sodium-hypochlorite.png",
		icon_size = 32,
		order = "i[solid-sodium-hypochlorite]",
	},
	{
		type = "recipe",
		name = "solid-sodium-hydroxide-solid-sodium-sulfate",
		category = "chemistry",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-hydroxide", amount=4},
			{type="fluid", name="liquid-sulfuric-acid", amount=80},
		},
		results=
		{
			{type="item", name="solid-sodium-sulfate", amount=2},
			{type="fluid", name="water-purified", amount=60},
		},
		icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
		icon_size = 32,
		order = "j",
	},
	{
		type = "recipe",
		name = "liquid-aqueous-sodium-hydroxide",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-sodium-hydroxide", amount=5},
			{type="fluid", name="water-purified", amount=50}
		},
		results=
		{
			{type="fluid", name="liquid-aqueous-sodium-hydroxide", amount=50},
		},
		main_product = "liquid-aqueous-sodium-hydroxide",
		icon_size = 32,
		order = "k",
	},
	{
		type = "recipe",
		name = "liquid-aqueous-sodium-hydroxide-reverse",
		category = "liquifying",
		subgroup = "petrochem-sodium",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-aqueous-sodium-hydroxide", amount=50},
		},
		results=
		{
			{type="item", name="solid-sodium-hydroxide", amount=5},
			{type="fluid", name="water-purified", amount=50}
		},
		main_product = "solid-sodium-hydroxide",
		icon_size = 32,
		order = "l",
	},
}
)
