data:extend(
{
--CARBON
	--GAS FEED
	{
    type = "recipe",
    name = "gas-separation",
    category = "petrochem-separation",
	subgroup = "petrochem-carbon-gas-feed",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-natural-1", amount=100}
	},
    results=
    {
		{type="fluid", name="gas-raw-1", amount=60},
		{type="fluid", name="liquid-condensates", amount=30},
		{type="fluid", name="water-yellow-waste", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-1.png",
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
    icon = "__angelspetrochem__/graphics/icons/raw-separation-3.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-1.png",
    order = "c[gas-fractioning]",
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
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-2.png",
    order = "d[condesates-refining]",
	},
	{
    type = "recipe",
    name = "steam-cracking-naphtha",
    category = "steam-cracking",
	subgroup = "petrochem-carbon-gas-feed",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-naphtha", amount=70},
        {type="fluid", name="water-purified", amount=30},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=100},
		-- {type="fluid", name="gas-methane", amount=1},
		-- {type="fluid", name="gas-ethane", amount=1},
		-- {type="fluid", name="gas-butane", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-8.png",
    order = "e[steam-cracking-naphtha]",
	},
	--OIL FEED
	{
    type = "recipe",
    name = "oil-separation",
    category = "petrochem-separation",
	subgroup = "petrochem-carbon-oil-feed",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-multi-phase-oil", amount=100}
	},
    results=
    {
		{type="fluid", name="gas-raw-1", amount=20},
		{type="fluid", name="crude-oil", amount=70},
        {type="fluid", name="water-yellow-waste", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-2.png",
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
    icon = "__angelspetrochem__/graphics/icons/oil-refining-1.png",
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
    icon = "__angelspetrochem__/graphics/icons/oil-refining-2.png",
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
    icon = "__angelspetrochem__/graphics/icons/oil-refining-3.png",
    order = "d[condensates-oil-refining]"
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
        {type="fluid", name="water-purified", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=150},
		{type="fluid", name="gas-residual", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-8.png",
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
    icon = "__angelspetrochem__/graphics/icons/catalystic-reforming-3.png",
    order = "f[liquid-mineral-oil-catalyst]",
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
        {type="fluid", name="water-purified", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=100},
		{type="fluid", name="gas-residual", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-11.png",
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
        {type="fluid", name="water-purified", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=100},
		{type="fluid", name="gas-residual", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-12.png",
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
    order = "f[mineral-oil-lubricant]",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-13.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-26.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-12.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-22.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-17.png",
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
        {type="fluid", name="water-purified", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=150},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-10.png",
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
        {type="fluid", name="water-purified", amount=100},
	},
    results=
    {
		{type="fluid", name="gas-residual", amount=100},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-10.png",
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
        {type="fluid", name="water-purified", amount=60},
	},
    results=
    {
		{type="fluid", name="gas-methanol", amount=80},
		{type="fluid", name="gas-residual", amount=20},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-3.png",
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
        {type="fluid", name="water-purified", amount=60},
	},
    results=
    {
		{type="fluid", name="gas-ethylene", amount=80},
		{type="fluid", name="gas-residual", amount=20},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-4.png",
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
        {type="fluid", name="water-purified", amount=60},
	},
    results=
    {
		{type="fluid", name="gas-benzene", amount=80},
		{type="fluid", name="gas-residual", amount=20},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-5.png",
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
        {type="fluid", name="water-purified", amount=60},
        {type="item", name="catalyst-metal-green", amount=1},	--Ag
	},
    results=
    {
		{type="fluid", name="gas-butadiene", amount=80},
		{type="fluid", name="gas-residual", amount=20},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-6.png",
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
        {type="fluid", name="water-purified", amount=100},
        {type="item", name="catalyst-metal-red", amount=1},	--Fe
	},
    results=
    {
		{type="fluid", name="gas-propene", amount=100},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-cracking-9.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-1.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-3.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-2.png",
    order = "a[gas-methanol-catalyst]",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-2.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-5.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-6.png",
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
		{type="fluid", name="water-purified", amount=50},
	},
    results=
    {
		{type="fluid", name="gas-propene", amount=80},
		{type="fluid", name="gas-residual", amount=20},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-18.png",
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
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-4.png",
    order = "b[gas-ethylbenzene-catalyst]",
	},
}
)
