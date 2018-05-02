local rawmulti = angelsmods.marathon.rawmulti

data:extend(
{
	--CARBON
	--GAS FEED
	{
		type = "recipe",
		name = "gas-separation",
		category = "petrochem-separation",
		subgroup = "petrochem-carbon-gas-feed",
		normal =
		{
			enabled = "false",
			energy_required = 2,
			ingredients ={
				{type="fluid", name="gas-natural-1", amount=100}
			},
			results=
			{
				{type="fluid", name="gas-raw-1", amount=60},
				{type="fluid", name="liquid-condensates", amount=30},
				{type="fluid", name="water-yellow-waste", amount=10},
			},
		},
		expensive =
		{
			enabled = "false",
			energy_required = 2,
			ingredients ={
				{type="fluid", name="gas-natural-1", amount=120 * rawmulti}
			},
			results=
			{
				{type="fluid", name="gas-raw-1", amount=60},
				{type="fluid", name="liquid-condensates", amount=30},
				{type="fluid", name="water-yellow-waste", amount=10},
			},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-01.png",
		icon_size = 32,
		order = "a[gas-separation]",
	},
	{
		type = "recipe",
		name = "gas-refining",
		category = "gas-refining",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-raw-1", amount=100},
			--{type="item", name="membrane", amount=1}
		},
		results=
		{
			{type="fluid", name="gas-acid", amount=20},
			{type="fluid", name="liquid-ngl", amount=80},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-02.png",
		icon_size = 32,
		order = "b[gas-refining]",
	},
	{
		type = "recipe",
		name = "gas-fractioning",
		category = "gas-refining",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-ngl", amount=100}
		},
		results=
		{
			{type="fluid", name="gas-methane", amount=50},
			{type="fluid", name="gas-ethane", amount=30},
			{type="fluid", name="gas-butane", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-03.png",
		icon_size = 32,
		order = "c[gas-fractioning]",
	},
	{
		type = "recipe",
		name = "gas-fractioning-synthesis",
		category = "gas-refining",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-ngl", amount=100},
			{type="fluid", name="gas-synthesis", amount=50}
		},
		results=
		{
			{type="fluid", name="gas-methane", amount=90},
			{type="fluid", name="gas-ethane", amount=30},
			{type="fluid", name="gas-butane", amount=20},
			{type="fluid", name="gas-carbon-monoxide", amount=10},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-04.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "gas-fractioning-condensates",
		category = "gas-refining",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-ngl", amount=100},
			{type="fluid", name="liquid-condensates", amount=50}
		},
		results=
		{
			{type="fluid", name="gas-methane", amount=30},
			{type="fluid", name="gas-ethane", amount=30},
			{type="fluid", name="gas-butane", amount=70},
			{type="fluid", name="liquid-naphtha", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-05.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "gas-fractioning-residual",
		category = "gas-refining",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-ngl", amount=100},
			{type="fluid", name="gas-residual", amount=50}
		},
		results=
		{
			{type="fluid", name="gas-methane", amount=40},
			{type="fluid", name="gas-ethane", amount=40},
			{type="fluid", name="gas-butane", amount=50},
			{type="fluid", name="liquid-toluene", amount=20},
		},
		icons = {
			{
				icon = "__angelspetrochem__/graphics/icons/carbon-05.png",
			},
			{
				icon = "__angelspetrochem__/graphics/icons/gas-residual.png",
				scale = 0.32,
				shift = {-12, -12},
			}
		},
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "condensates-refining",
		category = "advanced-chemistry",
		subgroup = "petrochem-carbon-gas-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-condensates", amount=60},
			{type="fluid", name="thermal-water", amount=20},
			{type="fluid", name="gas-carbon-monoxide", amount=20},
		},
		results=
		{
			{type="item", name="solid-coke", amount=2},
			{type="fluid", name="liquid-naphtha", amount=50},
			{type="fluid", name="gas-methane", amount=30},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-06.png",
		icon_size = 32,
		order = "g",
	},
	--OIL FEED
	{
		type = "recipe",
		name = "oil-separation",
		category = "petrochem-separation",
		subgroup = "petrochem-carbon-oil-feed",
		normal =
		{
			enabled = "false",
			energy_required = 2,
			ingredients ={
				{type="fluid", name="liquid-multi-phase-oil", amount=100}
			},
			results=
			{
				{type="fluid", name="gas-raw-1", amount=20},
				{type="fluid", name="crude-oil", amount=70},
				{type="fluid", name="water-yellow-waste", amount=10},
			},
		},
		expensive =
		{
			enabled = "false",
			energy_required = 2,
			ingredients ={
				{type="fluid", name="liquid-multi-phase-oil", amount=120 * rawmulti}
			},
			results=
			{
				{type="fluid", name="gas-raw-1", amount=20},
				{type="fluid", name="crude-oil", amount=70},
				{type="fluid", name="water-yellow-waste", amount=10},
			},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-08.png",
		icon_size = 32,
		order = "a[oil-separation]",
	},
	{
		type = "recipe",
		name = "oil-refining",
		category = "oil-processing",
		subgroup = "petrochem-carbon-oil-feed",
		enabled = "false",
		energy_required = 6,
		ingredients =
		{
			{type="fluid", name="crude-oil", amount=100}
		},
		results=
		{
			{type="fluid", name="liquid-mineral-oil", amount=20},
			{type="fluid", name="liquid-fuel-oil", amount=30},
			{type="fluid", name="liquid-naphtha", amount=50},
			{type="item", name="solid-oil-residual", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-09.png",
		icon_size = 32,
		order = "b[oil-refining]"
	},
	{
		type = "recipe",
		name = "advanced-oil-refining",
		category = "oil-processing",
		subgroup = "petrochem-carbon-oil-feed",
		enabled = "false",
		energy_required = 6,
		ingredients =
		{
			{type="fluid", name="crude-oil", amount=90},
			{type="fluid", name="gas-hydrogen", amount=20}
		},
		results=
		{
			{type="fluid", name="liquid-mineral-oil", amount=20},
			{type="fluid", name="liquid-fuel-oil", amount=20},
			{type="fluid", name="liquid-naphtha", amount=70},
			{type="item", name="solid-oil-residual", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-10.png",
		icon_size = 32,
		order = "c[advanced-oil-refining]"
	},
	{
		type = "recipe",
		name = "condensates-oil-refining",
		category = "oil-processing",
		subgroup = "petrochem-carbon-oil-feed",
		enabled = "false",
		energy_required = 6,
		ingredients =
		{
			{type="fluid", name="crude-oil", amount=40},
			{type="fluid", name="liquid-condensates", amount=60}
		},
		results=
		{
			{type="fluid", name="liquid-mineral-oil", amount=40},
			{type="fluid", name="liquid-fuel-oil", amount=30},
			{type="fluid", name="liquid-naphtha", amount=30},
			{type="item", name="solid-oil-residual", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-11.png",
		icon_size = 32,
		order = "d[condensates-oil-refining]"
	},
	{
		type = "recipe",
		name = "residual-oil-refining",
		category = "oil-processing",
		subgroup = "petrochem-carbon-oil-feed",
		enabled = "false",
		energy_required = 6,
		ingredients =
		{
			{type="fluid", name="crude-oil", amount=60},
			{type="fluid", name="gas-residual", amount=40}
		},
		results=
		{
			{type="fluid", name="liquid-mineral-oil", amount=60},
			{type="fluid", name="liquid-fuel-oil", amount=30},
			{type="fluid", name="liquid-naphtha", amount=10},
			{type="item", name="solid-oil-residual", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-12.png",
		icon_size = 32,
		order = "e"
	},
	{
		type = "recipe",
		name = "steam-cracking-naphtha",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-naphtha", amount=100},
			{type="fluid", name="steam", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-synthesis", amount=150},
			{type="fluid", name="gas-residual", amount=10},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-07.png",
		icon_size = 32,
		order = "e[steam-cracking-naphtha]",
	},
	{
		type = "recipe",
		name = "liquid-mineral-oil-catalyst",
		category = "chemistry",
		subgroup = "petrochem-carbon-oil-feed",
		energy_required = 6,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-naphtha", amount=60},
			{type="fluid", name="thermal-water", amount=20},
			{type="fluid", name="gas-carbon-monoxide", amount=20},
		},
		results=
		{
			{type="fluid", name="liquid-mineral-oil", amount=100},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-13.png",
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "steam-cracking-mineral-oil",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-mineral-oil", amount=100},
			{type="fluid", name="steam", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-synthesis", amount=100},
			{type="fluid", name="gas-residual", amount=10},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-14.png",
		icon_size = 32,
		order = "f[catalyst-steam-cracking-mineral-oil]",
	},
	{
		type = "recipe",
		name = "steam-cracking-fuel-oil",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-fuel-oil", amount=100},
			{type="fluid", name="steam", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-synthesis", amount=100},
			{type="fluid", name="gas-residual", amount=10},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-15.png",
		icon_size = 32,
		order = "g[catalyst-steam-cracking-fuel-oil]",
	},
	{
		type = "recipe",
		name = "mineral-oil-lubricant",
		category = "chemistry",
		subgroup = "petrochem-carbon-oil-feed",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-mineral-oil", amount=40},
			{type="fluid", name="gas-residual", amount=10},
		},
		results=
		{
			{type="fluid", name="lubricant", amount=50},
		},
		icon = "__base__/graphics/icons/fluid/lubricant.png",
		icon_size = 32,
		order = "g",
	},
	--SYNTHESIS
	{
		type = "recipe",
		name = "gas-synthesis-separation",
		category = "chemistry",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-synthesis", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-carbon-monoxide", amount=40},
			{type="fluid", name="gas-hydrogen", amount=60},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-16.png",
		icon_size = 32,
		order = "a[gas-synthesis-separation]",
	},
	{
		type = "recipe",
		name = "gas-synthesis-reforming",
		category = "chemistry",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-carbon-monoxide", amount=60},
			{type="fluid", name="gas-hydrogen", amount=90},
		},
		results=
		{
			{type="fluid", name="gas-synthesis", amount=100},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-17.png",
		icon_size = 32,
		order = "b[gas-synthesis-reforming]",
	},
	{
		type = "recipe",
		name = "gas-synthesis-methanation",
		category = "advanced-chemistry",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-synthesis", amount=100},
			{type="fluid", name="gas-hydrogen", amount=40},
			{type="item", name="catalyst-metal-blue", amount=1},	--Co
		},
		results=
		{
			{type="fluid", name="gas-methane", amount=60},
			{type="fluid", name="gas-ethane", amount=20},
			{type="fluid", name="gas-butane", amount=20},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-18.png",
		icon_size = 32,
		order = "c[gas-synthesis-methanation]",
	},
	{
		type = "recipe",
		name = "liquid-naphtha-catalyst",
		category = "chemistry",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-synthesis", amount=150},
			{type="fluid", name="gas-carbon-monoxide", amount=50},
			{type="item", name="catalyst-metal-red", amount=1},		--Fe
		},
		results=
		{
			{type="fluid", name="liquid-naphtha", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-19.png",
		icon_size = 32,
		order = "d[liquid-mineral-oil-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-synthesis-methanol",
		category = "chemistry",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-synthesis", amount=100},
			{type="fluid", name="gas-carbon-dioxide", amount=40},
			{type="item", name="catalyst-metal-green", amount=1},			--Zn and Al
		},
		results=
		{
			{type="fluid", name="water-purified", amount=20},
			{type="fluid", name="gas-methanol", amount=80},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-20.png",
		icon_size = 32,
		order = "e[gas-synthesis-methanol]",
	},
	{
		type = "recipe",
		name = "steam-cracking-gas-residual",
		category = "steam-cracking",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-residual", amount=100},
			{type="fluid", name="steam", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-synthesis", amount=150},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-21.png",
		icon_size = 32,
		order = "f[steam-cracking-gas-residual]",
	},
	{
		type = "recipe",
		name = "steam-cracking-oil-residual",
		category = "steam-cracking",
		subgroup = "petrochem-carbon-synthesis",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="item", name="solid-oil-residual", amount=10},
			{type="fluid", name="steam", amount=100},
		},
		results=
		{
			{type="fluid", name="gas-residual", amount=100},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-22.png",
		icon_size = 32,
		order = "g[steam-cracking-oil-residual]",
	},
	--STEAM CRACKING
	{
		type = "recipe",
		name = "steam-cracking-methane",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-methane", amount=60},
			{type="fluid", name="steam", amount=60},
		},
		results=
		{
			{type="fluid", name="gas-methanol", amount=80},
			{type="fluid", name="gas-residual", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-23.png",
		icon_size = 32,
		order = "a[steam-cracking-methane]",
	},
	{
		type = "recipe",
		name = "steam-cracking-ethane",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-ethane", amount=60},
			{type="fluid", name="steam", amount=60},
		},
		results=
		{
			{type="fluid", name="gas-ethylene", amount=80},
			{type="fluid", name="gas-residual", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-24.png",
		icon_size = 32,
		order = "b[steam-cracking-ethane]",
	},
	{
		type = "recipe",
		name = "steam-cracking-butane",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-butane", amount=60},
			{type="fluid", name="steam", amount=60},
		},
		results=
		{
			{type="fluid", name="gas-benzene", amount=80},
			{type="fluid", name="gas-residual", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-25.png",
		icon_size = 32,
		order = "c[steam-cracking-butane]",
	},
	{
		type = "recipe",
		name = "catalyst-steam-cracking-butane",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-naphtha", amount=60},
			{type="fluid", name="steam", amount=60},
			{type="item", name="catalyst-metal-green", amount=1},	--Ag
		},
		results=
		{
			{type="fluid", name="gas-butadiene", amount=80},
			{type="fluid", name="gas-residual", amount=20},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-26.png",
		icon_size = 32,
		order = "d[catalyst-steam-cracking-butane]",
	},
	{
		type = "recipe",
		name = "catalyst-steam-cracking-naphtha",
		category = "steam-cracking",
		subgroup = "petrochem-cracking",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-naphtha", amount=100},
			{type="fluid", name="steam", amount=100},
			{type="item", name="catalyst-metal-red", amount=1},	--Fe
		},
		results=
		{
			{type="fluid", name="gas-propene", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-27.png",
		icon_size = 32,
		order = "e[catalyst-steam-cracking-naphtha]",
	},
	--CHEMISTRY
	{
		type = "recipe",
		name = "gas-benzene-catalyst",
		category = "chemistry",
		subgroup = "petrochem-feedstock",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-methane", amount=100},
			{type="item", name="catalyst-metal-green", amount=1},
		},
		results=
		{
			{type="fluid", name="gas-benzene", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-28.png",
		icon_size = 32,
		order = "c[gas-benzene-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-polyehtylene-catalyst",
		category = "chemistry",
		subgroup = "petrochem-feedstock",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-ethylene", amount=100},
			{type="item", name="catalyst-metal-blue", amount=1}, --Ti OR Cr
		},
		results=
		{
			{type="fluid", name="gas-polyethylene", amount=50},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-29.png",
		icon_size = 32,
		order = "b[gas-polyehtylene-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-methanol-catalyst",
		category = "chemistry",
		subgroup = "petrochem-feedstock",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-carbon-dioxide", amount=100},
			{type="fluid", name="gas-hydrogen", amount=100},
			{type="item", name="catalyst-metal-green", amount=1},	--Zinc, Copper, Aluminium
		},
		results=
		{
			{type="fluid", name="gas-methanol", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-30.png",
		icon_size = 32,
		order = "a[gas-methanol-catalyst]",
	},
	{
		type = "recipe",
		name = "liquid-toluene-from-naphtha",
		category = "chemistry",
		subgroup = "petrochem-feedstock",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="liquid-naphtha", amount=100},
			{type="fluid", name="gas-hydrogen", amount=100},
			{type="item", name="catalyst-metal-green", amount=1},	--Aluminium
		},
		results=
		{
			{type="fluid", name="liquid-toluene", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-31.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "liquid-toluene-from-benzene",
		category = "chemistry",
		subgroup = "petrochem-feedstock",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-benzene", amount=100},
			{type="fluid", name="gas-chlor-methane", amount=50},
			{type="item", name="catalyst-metal-green", amount=1},	--Aluminium
		},
		results=
		{
			{type="fluid", name="liquid-toluene", amount=100},
			{type="fluid", name="gas-hydrogen-chloride", amount=50},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-32.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "gas-formaldehyde-catalyst",
		category = "chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-methanol", amount=100},
			{type="item", name="catalyst-metal-green", amount=1}, --Ag, Or FeO & Mo and/or V
		},
		results=
		{
			{type="fluid", name="gas-formaldehyde", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-33.png",
		icon_size = 32,
		order = "a[gas-formaldehyde-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-styrene-catalyst",
		category = "chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-ethylbenzene", amount=100},
			{type="item", name="catalyst-metal-green", amount=1},		--Fe
		},
		results=
		{
			{type="fluid", name="gas-styrene", amount=50},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-34.png",
		icon_size = 32,
		order = "a[gas-styrene-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-phenol-catalyst",
		category = "chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-benzene", amount=100},
			{type="fluid", name="gas-oxygen", amount=100},
			{type="item", name="catalyst-metal-yellow", amount=1},		--Fe
		},
		results=
		{
			{type="fluid", name="gas-phenol", amount=100},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-35.png",
		icon_size = 32,
		order = "c[gas-phenol-catalyst]",
	},
	{
		type = "recipe",
		name = "gas-propene-synthesis",
		category = "steam-cracking",
		subgroup = "petrochem-chemistry",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-methanol", amount=100},
			{type="fluid", name="steam", amount=50},
		},
		results=
		{
			{type="fluid", name="gas-propene", amount=80},
			{type="fluid", name="gas-residual", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-36.png",
		icon_size = 32,
		order = "d[gas-propene-synthesis]",
	},
	--ADVANCED CHEMISTRY
	{
		type = "recipe",
		name = "gas-ethylbenzene-catalyst",
		category = "advanced-chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-benzene", amount=50},
			{type="fluid", name="gas-ethylene", amount=50},
			{type="fluid", name="liquid-hydrofluoric-acid", amount=20},
		},
		results=
		{
			{type="fluid", name="gas-ethylbenzene", amount=80},
			{type="fluid", name="gas-hydrogen", amount=20},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-37.png",
		icon_size = 32,
		order = "b[gas-ethylbenzene-catalyst]",
	},
	{
		type = "recipe",
		name = "cumene-process",
		category = "advanced-chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-benzene", amount=50},
			{type="fluid", name="gas-propene", amount=50},
			{type="fluid", name="gas-oxygen", amount=20},
			{type="item", name="catalyst-metal-blue", amount=1},
		},
		results=
		{
			{type="fluid", name="gas-phenol", amount=60},
			{type="fluid", name="gas-acetone", amount=60},
			{type="item", name="catalyst-metal-carrier", amount=1},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-38.png",
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "gas-bisphenol-a",
		category = "advanced-chemistry",
		subgroup = "petrochem-chemistry",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="gas-phenol", amount=60},
			{type="fluid", name="gas-acetone", amount=40},
			{type="fluid", name="liquid-hydrochloric-acid", amount=20},
		},
		results=
		{
			{type="fluid", name="gas-bisphenol-a", amount=100},
		},
		icon = "__angelspetrochem__/graphics/icons/carbon-39.png",
		icon_size = 32,
		order = "d",
	},
}
)
