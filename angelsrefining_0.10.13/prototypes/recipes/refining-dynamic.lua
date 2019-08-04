local rawmulti = angelsmods.marathon.rawmulti

data:extend(
{
--Tier 0
	{
    type = "recipe",
    name = "angelsore1-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    enabled = "true",
	allow_decomposition = false,
	normal =
    {
	  energy_required = 7,
	  ingredients ={{"angels-ore1-crushed", 3}},
	  results={{type="item", name="iron-plate", amount=2}},
    },
    expensive =
    {
	  energy_required = 3.5,
	  ingredients ={{"angels-ore1-crushed", 5 * rawmulti}},
	  results={{type="item", name="iron-plate", amount=1}},
    },
    icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
	icon_size = 32,
    order = "a-a [angelsore1-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
	enabled = "true",
	allow_decomposition = false,
	normal =
    {
	  energy_required = 7,
	  ingredients ={{"angels-ore3-crushed", 3}},
	  results={{type="item", name="copper-plate", amount=2}},
    },
    expensive =
    {
	  energy_required = 3.5,
	  ingredients ={{"angels-ore3-crushed", 5 * rawmulti}},
	  results={{type="item", name="copper-plate", amount=1}},
    },
    icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
	icon_size = 32,
    order = "a-a [angelsore3-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
	enabled = "true",
	allow_decomposition = false,
	normal =
    {
	  energy_required = 7,
	  ingredients ={{"angels-ore5-crushed", 3}},
    },
    expensive =
    {
	  energy_required = 3.5,
	  ingredients ={{"angels-ore5-crushed", 5 * rawmulti}},
    },
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "a-a [angelsore5-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
	enabled = "true",
	allow_decomposition = false,
	normal =
    {
	  energy_required = 7,
	  ingredients ={{"angels-ore6-crushed", 3}},
    },
    expensive =
    {
	  energy_required = 3.5,
	  ingredients ={{"angels-ore6-crushed", 5 * rawmulti}},
    },
    results=
    {
      {type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "a-a [angelsore6-crushed-smelting]",
	},
--STONE & SLAG
	{
    type = "recipe",
    name = "slag-processing-1",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "a",
	},
	{
    type = "recipe",
    name = "slag-processing-2",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "b",
	},
	{
    type = "recipe",
    name = "slag-processing-3",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "c",
	},
	{
    type = "recipe",
    name = "slag-processing-4",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "d",
	},
	{
    type = "recipe",
    name = "slag-processing-5",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "e",
	},
	{
    type = "recipe",
    name = "slag-processing-6",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "f",
	},
	{
    type = "recipe",
    name = "slag-processing-7",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "g",
	},
	{
    type = "recipe",
    name = "slag-processing-8",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "h",
	},
	{
    type = "recipe",
    name = "slag-processing-9",
    category = "crystallizing",
	subgroup = "slag-processing-1",
    energy_required = 8,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=50},
		},
    },
    expensive =
    {
	  ingredients ={
		{type="fluid", name="mineral-sludge", amount=75 * rawmulti},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "i",
	},
	{
    type = "recipe",
    name = "slag-processing-stone",
    category = "ore-sorting-t1",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
    ingredients ={{"slag", 1}},
    results=
    {
      {type="item", name="stone-crushed", amount=2},
    },
	main_product = "stone-crushed",
    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
	icon_size = 32,
    order = "d[slag-processing-stone]",
	},
	{
    type = "recipe",
    name = "stone-crushed",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 0.5,
	enabled = "true",
	normal =
    {
		ingredients ={
		{"stone-crushed", 2}
		},
		results= {
		{type="item", name="stone", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{"stone-crushed", 3 * rawmulti}
		},
		results= {
		{type="item", name="stone", amount=1},
		},
    },
	icon_size = 32,
    order = "c[stone-crushed]",
	},
--Tier 1
	{
    type = "recipe",
    name = "angelsore1-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore1-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore1-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore2-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore2-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed-sorting.png",
	icon_size = 32,
    order = "b[angelsore2-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore3-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore3-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed-sorting.png",
	icon_size = 32,
    order = "c[angelsore3-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore4-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore4-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed-sorting.png",
	icon_size = 32,
    order = "d[angelsore4-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore5-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore5-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed-sorting.png",
	icon_size = 32,
    order = "e[angelsore5-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore6-crushed", 4}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore6-crushed", 6 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed-sorting.png",
	icon_size = 32,
    order = "f[angelsore6-crushed-processing]",
	},
--TIER 1 MIX
	{
    type = "recipe",
    name = "angelsore-crushed-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-crushed", amount=2},
		{type="item", name="angels-ore2-crushed", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-crushed", amount=3 * rawmulti},
		{type="item", name="angels-ore2-crushed", amount=3 * rawmulti},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "a[angelsore-crushed-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore3-crushed", amount=2},
		{type="item", name="angels-ore4-crushed", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore3-crushed", amount=3 * rawmulti},
		{type="item", name="angels-ore4-crushed", amount=3 * rawmulti},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "b[angelsore-crushed-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore4-crushed", amount=2},
		{type="item", name="angels-ore5-crushed", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore4-crushed", amount=3 * rawmulti},
		{type="item", name="angels-ore5-crushed", amount=3 * rawmulti},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "c[angelsore-crushed-mix3-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-crushed-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore6-crushed", amount=2},
		{type="item", name="angels-ore3-crushed", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore6-crushed", amount=3 * rawmulti},
		{type="item", name="angels-ore3-crushed", amount=3 * rawmulti},
		{type="item", name="catalysator-brown", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "d[angelsore-crushed-mix4-processing]",
	},
--TIER 1.5
	{
    type = "recipe",
    name = "angelsore8-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore8-crushed", 4}
		}, 
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore8-crushed", 6 * rawmulti}
		},
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore8-crushed.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "g",
	},
	{
    type = "recipe",
    name = "angelsore8-powder-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore8-powder", 6}
		}, 
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore8-powder", 8 * rawmulti}
		},
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore8-powder.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "g",
	},
	{
    type = "recipe",
    name = "angelsore9-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore9-crushed", 4}
		}, 
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore9-crushed", 6 * rawmulti}
		},
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore9-crushed.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "h",
	},
	{
    type = "recipe",
    name = "angelsore9-powder-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore9-powder", 6}
		}, 
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients ={
			{"angels-ore9-powder", 8 * rawmulti}
		},
		results={
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore9-powder.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "h",
	},
--TIER 2
	{
    type = "recipe",
    name = "angelsore1-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore1-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore1-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore2-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore2-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk-sorting.png",
	icon_size = 32,
    order = "b[angelsore2-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore3-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore3-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk-sorting.png",
	icon_size = 32,
    order = "c[angelsore3-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore4-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore4-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk-sorting.png",
	icon_size = 32,
    order = "d[angelsore4-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore5-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore5-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk-sorting.png",
	icon_size = 32,
    order = "e[angelsore5-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore6-chunk", 6}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore6-chunk", 9 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk-sorting.png",
	icon_size = 32,
    order = "f[angelsore6-chunk-processing]",
	},
--TIER 2 MIX
	{
    type = "recipe",
    name = "angelsore-chunk-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=2},
		{type="item", name="angels-ore6-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore6-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "e[angelsore-chunk-mix1-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=2},
		{type="item", name="angels-ore5-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore5-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "f[angelsore-chunk-mix2-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=2},
		{type="item", name="angels-ore5-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore5-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "g[angelsore-chunk-mix3-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=2},
		{type="item", name="angels-ore6-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore6-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
	},
	icon_size = 32,
    order = "h[angelsore-chunk-mix4-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix5-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore3-chunk", amount=2},
		{type="item", name="angels-ore5-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore3-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore5-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
	},
	icon_size = 32,
    order = "i[angelsore-chunk-mix5-processing]",
	},
	{
    type = "recipe",
    name = "angelsore-chunk-mix6-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=2},
		{type="item", name="angels-ore2-chunk", amount=2},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=3 * rawmulti},
		{type="item", name="angels-ore2-chunk", amount=3 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
	},
	icon_size = 32,
    order = "j",
	},
--TIER 2.5
	{
    type = "recipe",
    name = "angelsore8-dust-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 1.5,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore8-dust", 8}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore8-dust", 9 * rawmulti}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore8-dust.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "h",
	},
	{
    type = "recipe",
    name = "angelsore9-dust-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 1.5,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore9-dust", 8}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore9-dust", 9 * rawmulti}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore9-dust.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "j",
	},
--TIER 3
	{
    type = "recipe",
    name = "angelsore1-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore1-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore1-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore2-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore2-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal-sorting.png",
	icon_size = 32,
    order = "b[angelsore2-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore3-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore3-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal-sorting.png",
	icon_size = 32,
    order = "c[angelsore3-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore4-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore4-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal-sorting.png",
	icon_size = 32,
    order = "d[angelsore4-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore5-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore5-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal-sorting.png",
	icon_size = 32,
    order = "e[angelsore5-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore6-crystal", 8}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore6-crystal", 12 * rawmulti}},
    },
    results=
    {
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal-sorting.png",
	icon_size = 32,
    order = "f[angelsore6-crystal-processing]",
	},
--TIER 3 MIX
	{
    type = "recipe",
    name = "angelsore-crystal-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=2},
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore3-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore5-crystal", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "k",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore4-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore5-crystal", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "l",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="angels-ore6-crystal", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore5-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore6-crystal", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "m",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix4-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore2-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="angels-ore6-crystal", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore2-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore4-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore6-crystal", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "n",
	},
	{
    type = "recipe",
    name = "angelsore-crystal-mix5-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="angels-ore6-crystal", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore4-crystal", amount=3 * rawmulti},
		{type="item", name="angels-ore6-crystal", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "o",
	},
--TIER 3.5
	{
    type = "recipe",
    name = "angelsore8-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 1.5,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore8-crystal", 9}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore8-crystal", 10 * rawmulti}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore8-crystal.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "g",
	},
	{
    type = "recipe",
    name = "angelsore9-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 1.5,
	allow_decomposition = false,
	normal =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore9-crystal", 9}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		enabled = "false",
		ingredients = {
			{"angels-ore9-crystal", 10 * rawmulti}
		},
		results = {
			{type="item", name="angels-void", amount=1},
		},
    },
	icons = {
		{ icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
		{ icon = "__angelsrefining__/graphics/icons/angels-ore9-crystal.png", scale = 0.5, shift = { -10, 10}}
	},
	icon_size = 32,
    order = "h",
	},
--TIER 4
	{
    type = "recipe",
    name = "angelsore1-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore1-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore1-pure", 13 * rawmulti}},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore2-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore2-pure", 13 * rawmulti}},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-pure-sorting.png",
	icon_size = 32,
    order = "b[angelsore2-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore3-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore3-pure", 13 * rawmulti}},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-pure-sorting.png",
	icon_size = 32,
    order = "c[angelsore3-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore4-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore4-pure", 13 * rawmulti}},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-pure-sorting.png",
	icon_size = 32,
    order = "d[angelsore4-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore5-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore5-pure", 13 * rawmulti}},
    },
    results=
	{
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-pure-sorting.png",
	icon_size = 32,
    order = "e[angelsore5-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
	  ingredients ={{"angels-ore6-pure", 9}},
    },
    expensive =
    {
	  ingredients ={{"angels-ore6-pure", 13 * rawmulti}},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-pure-sorting.png",
	icon_size = 32,
    order = "f[angelsore6-pure-processing]",
	},
--TIER 4 MIX
	{
    type = "recipe",
    name = "angelsore-pure-mix1-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore2-pure", amount=2},
		{type="item", name="angels-ore3-pure", amount=2},
		{type="item", name="angels-ore6-pure", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore2-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore3-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore6-pure", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "p",
	},
	{
    type = "recipe",
    name = "angelsore-pure-mix2-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore3-pure", amount=2},
		{type="item", name="angels-ore5-pure", amount=2},
		{type="item", name="angels-ore6-pure", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore3-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore5-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore6-pure", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "q",
	},
	{
    type = "recipe",
    name = "angelsore-pure-mix3-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-advanced",
    energy_required = 1.5,
	enabled = "false",
	allow_decomposition = false,
	normal =
    {
		ingredients ={
		{type="item", name="angels-ore2-pure", amount=2},
		{type="item", name="angels-ore3-pure", amount=2},
		{type="item", name="angels-ore5-pure", amount=2},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="item", name="angels-ore2-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore3-pure", amount=3 * rawmulti},
		{type="item", name="angels-ore5-pure", amount=3 * rawmulti},
		{type="item", name="catalysator-orange", amount=1},
		},
    },
    results=
    {
		{type="item", name="angels-void", amount=1},
    },
	icon_size = 32,
    order = "r",
	},
--GEODES
	{
    type = "recipe",
    name = "geode-blue-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-blue", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=1},
	  {type="item", name="stone-crushed", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-blue.png",
	icon_size = 32,
    order = "a[geode-blue-processing]",
	},
	{
    type = "recipe",
    name = "geode-purple-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-purple", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=2},
	  {type="item", name="stone-crushed", amount=3},
    },
    icon = "__angelsrefining__/graphics/icons/geode-purple.png",
	icon_size = 32,
    order = "b[geode-purple-processing]",
	},
	{
    type = "recipe",
    name = "geode-yellow-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-yellow", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=2},
	  {type="item", name="stone-crushed", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/geode-yellow.png",
	icon_size = 32,
    order = "c[geode-yellow-processing]",
	},
	{
    type = "recipe",
    name = "geode-lightgreen-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-lightgreen", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=3},
	  {type="item", name="stone-crushed", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-lightgreen.png",
	icon_size = 32,
    order = "d[geode-lightgreen-processing]",
	},
	{
    type = "recipe",
    name = "geode-cyan-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-cyan", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=3},
	  {type="item", name="stone-crushed", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-cyan.png",
	icon_size = 32,
    order = "e[geode-cyan-processing]",
	},
	{
    type = "recipe",
    name = "geode-red-processing",
    category = "ore-sorting-t1",
	subgroup = "geode-processing-1",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="geode-red", amount=2},
	},
    results=
    {
	  {type="item", name="crystal-dust", amount=1},
	  {type="item", name="stone-crushed", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/geode-red.png",
	icon_size = 32,
    order = "f[geode-red-processing]",
	},
--ADVANCED GEMs
	{
    type = "recipe",
    name = "angelsore7-crystallization-1",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "a[angelsore7-crystallization-1]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-2",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "b[angelsore7-crystallization-2]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-3",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "c[angelsore7-crystallization-3]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-4",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "d[angelsore7-crystallization-4]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-5",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "e[angelsore7-crystallization-5]",
	},
	{
    type = "recipe",
    name = "angelsore7-crystallization-6",
    category = "crystallizing",
	subgroup = "geode-crystallization",
    energy_required = 4,
	enabled = "false",
	normal =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=50},
		{type="item", name="catalysator-green", amount=1},
		},
	    results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
    expensive =
    {
		ingredients ={
		{type="fluid", name="crystal-seedling", amount=75 * rawmulti},
		{type="item", name="catalysator-green", amount=1},
		},
		results=
		{
		  {type="item", name="angels-void", amount=1},
		},
    },
	icon_size = 32,
    order = "f[angelsore7-crystallization-6]",
	},
}
)