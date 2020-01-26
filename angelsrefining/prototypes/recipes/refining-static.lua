data:extend(
{
	--TIER 1
	{
		type = "recipe",
		name = "angelsore1-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"angels-ore1", 2}},
		results=
		{
			{type="item", name="angels-ore1-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
		icon_size = 32,
		order = "a[angelsore1-crushed]",
	},
	{
		type = "recipe",
		name = "angelsore1-crushed-hand",
		category = "crafting",
		subgroup = "processing-crafting",
		energy_required = 4,
		enabled = "true",
		ingredients ={{"angels-ore1", 2}},
		results=
		{
			{type="item", name="angels-ore1-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed.png",
		icon_size = 32,
		order = "a[angelsore1-crushed-hand]",
	},
	{
		type = "recipe",
		name = "angelsore2-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "false",
		ingredients ={{"angels-ore2", 2}},
		results=
		{
			{type="item", name="angels-ore2-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed.png",
		icon_size = 32,
		order = "b[angelsore2-crushed]",
	},
	{
		type = "recipe",
		name = "angelsore3-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"angels-ore3", 2}},
		results=
		{
			{type="item", name="angels-ore3-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
		icon_size = 32,
		order = "c[angelsore3-crushed]",
	},
	{
		type = "recipe",
		name = "angelsore3-crushed-hand",
		category = "crafting",
		subgroup = "processing-crafting",
		energy_required = 4,
		enabled = "true",
		ingredients ={{"angels-ore3", 2}},
		results=
		{
			{type="item", name="angels-ore3-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed.png",
		icon_size = 32,
		order = "b[angelsore3-crushed-hand]",
	},
	{
		type = "recipe",
		name = "angelsore4-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "false",
		ingredients ={{"angels-ore4", 2}},
		results=
		{
			{type="item", name="angels-ore4-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed.png",
		icon_size = 32,
		order = "d[angelsore4-crushed]",
	},
	{
		type = "recipe",
		name = "angelsore5-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"angels-ore5", 2}},
		results=
		{
			{type="item", name="angels-ore5-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed.png",
		icon_size = 32,
		order = "e[angelsore5-crushed]",
	},
	{
		type = "recipe",
		name = "angelsore6-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"angels-ore6", 2}},
		results=
		{
			{type="item", name="angels-ore6-crushed", amount=2},
			{type="item", name="stone-crushed", amount=1}
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "f[angelsore6-crushed]",
	},
	--TIER 1.5
	{
		type = "recipe",
		name = "angelsore8-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore1-crushed", amount=2},
			{type="item", name="angels-ore2-crushed", amount=2},
			{type="item", name="angels-ore5-crushed", amount=2},
		},
		results=
		{
			{type="item", name="angels-ore8-crushed", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "g",
	},
	{
		type = "recipe",
		name = "angelsore8-powder",
		category = "ore-sorting-t1-5",
		subgroup = "ore-processing-a",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore8-crushed", amount=3},
			{type="item", name="milling-drum", amount=1},
		},
		results=
		{
			{type="item", name="angels-ore8-powder", amount=3},
			{type="item", name="milling-drum-used", amount=1},
		},
		main_product = "angels-ore8-powder",
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "h",
	},
	{
		type = "recipe",
		name = "angelsore9-crushed",
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore3-crushed", amount=2},
			{type="item", name="angels-ore4-crushed", amount=2},
			{type="item", name="angels-ore6-crushed", amount=2},
		},
		results=
		{
			{type="item", name="angels-ore9-crushed", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "i",
	},
	{
		type = "recipe",
		name = "angelsore9-powder",
		category = "ore-sorting-t1-5",
		subgroup = "ore-processing-a",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore9-crushed", amount=3},
			{type="item", name="milling-drum", amount=1},
		},
		results=
		{
			{type="item", name="angels-ore9-powder", amount=3},
			{type="item", name="milling-drum-used", amount=1},
		},
		main_product = "angels-ore9-powder",
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "j",
	},
	--TIER 2
	{
		type = "recipe",
		name = "angelsore1-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore1-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore1-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-blue", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk.png",
		icon_size = 32,
		order = "a[angelsore1-chunk]",
	},
	{
		type = "recipe",
		name = "angelsore2-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore2-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore2-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-purple", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk.png",
		icon_size = 32,
		order = "b[angelsore2-chunk]",
	},
	{
		type = "recipe",
		name = "angelsore3-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore3-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore3-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-yellow", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk.png",
		icon_size = 32,
		order = "c[angelsore3-chunk]",
	},
	{
		type = "recipe",
		name = "angelsore4-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore4-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore4-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-lightgreen", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk.png",
		icon_size = 32,
		order = "d[angelsore4-chunk]",
	},
	{
		type = "recipe",
		name = "angelsore5-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore5-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore5-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-cyan", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk.png",
		icon_size = 32,
		order = "e[angelsore5-chunk]",
	},
	{
		type = "recipe",
		name = "angelsore6-chunk",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore6-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="angels-ore6-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-red", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk.png",
		icon_size = 32,
		order = "f[angelsore6-chunk]",
	},
	--TIER 2.5
	{
		type = "recipe",
		name = "angelsore8-sludge",
		category = "chemistry",
		subgroup = "ore-processing-b",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore8-powder", amount=3},
			{type="item", name="angels-ore1-chunk", amount=1},
			{type="item", name="angels-ore2-chunk", amount=1},
			{type="item", name="angels-ore5-chunk", amount=1},
			{type="fluid", name="thermal-water", amount=20},
			{type="fluid", name="sulfuric-acid", amount=20},
		},
		results=
		{
			{type="fluid", name="angels-ore8-sludge", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "g",
	},
	{
		type = "recipe",
		name = "angelsore8-dust",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore8-sludge", amount=4},
			--{type="item", name="solid-sodium-hydroxide", amount=2},
		},
		results=
		{
			{type="item", name="angels-ore8-dust", amount=4},
			{type="fluid", name="water-yellow-waste", amount=20},
		},
		main_product = "angels-ore8-dust",
		icon = "__angelsrefining__/graphics/icons/angels-ore8-dust.png",
		icon_size = 32,
		order = "h",
	},
	{
		type = "recipe",
		name = "angelsore9-sludge",
		category = "chemistry",
		subgroup = "ore-processing-b",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore9-powder", amount=3},
			{type="item", name="angels-ore3-chunk", amount=1},
			{type="item", name="angels-ore4-chunk", amount=1},
			{type="item", name="angels-ore6-chunk", amount=1},
			{type="fluid", name="thermal-water", amount=20},
			{type="fluid", name="sulfuric-acid", amount=20},
		},
		results=
		{
			{type="fluid", name="angels-ore9-sludge", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
		icon_size = 32,
		order = "i",
	},
	{
		type = "recipe",
		name = "angelsore9-dust",
		category = "ore-sorting-t2",
		subgroup = "ore-processing-b",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore9-sludge", amount=4},
			--{type="item", name="solid-sodium-hydroxide", amount=2},
		},
		results=
		{
			{type="item", name="angels-ore9-dust", amount=4},
			{type="fluid", name="water-yellow-waste", amount=20},
		},
		main_product = "angels-ore9-dust",
		icon = "__angelsrefining__/graphics/icons/angels-ore9-dust.png",
		icon_size = 32,
		order = "j",
	},
	--TIER 3
	{
		type = "recipe",
		name = "angelsore1-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore1-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore1-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal.png",
		icon_size = 32,
		order = "a[angelsore1-crystal]",
	},
	{
		type = "recipe",
		name = "angelsore2-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore2-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore2-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal.png",
		icon_size = 32,
		order = "b[angelsore2-crystal]",
	},
	{
		type = "recipe",
		name = "angelsore3-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore3-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore3-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal.png",
		icon_size = 32,
		order = "c[angelsore3-crystal]",
	},
	{
		type = "recipe",
		name = "angelsore4-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore4-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore4-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal.png",
		icon_size = 32,
		order = "d[angelsore4-crystal]",
	},
	{
		type = "recipe",
		name = "angelsore5-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore5-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore5-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal.png",
		icon_size = 32,
		order = "e[angelsore5-crystal]",
	},
	{
		type = "recipe",
		name = "angelsore6-crystal",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore6-chunk", amount=2},
			{type="fluid", name="sulfuric-acid", amount=10}
		},
		results=
		{
			{type="item", name="angels-ore6-crystal", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "f[angelsore6-crystal]",
	},
	--TIER 3.5
	{
		type = "recipe",
		name = "angelsore8-solution",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore8-dust", amount=3},
			{type="item", name="angels-ore1-crystal", amount=1},
			{type="item", name="angels-ore2-crystal", amount=1},
			{type="item", name="angels-ore5-crystal", amount=1},
			{type="fluid", name="sulfuric-acid", amount=20}
		},
		results=
		{
			{type="fluid", name="angels-ore8-solution", amount=60},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "g",
	},
	{
		type = "recipe",
		name = "angelsore8-anode-sludge-filtering",
		category = "filtering",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore8-solution", amount=60},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="angels-ore8-slime", amount=60},
			{type="fluid", name="water-yellow-waste", amount=10},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		main_product = "angels-ore8-slime",
		icon = "__angelsrefining__/graphics/icons/angels-ore8-slime-filtering.png",
		icon_size = 32,
		order = "h",
	},
	{
		type = "recipe",
		name = "angelsore8-anode-sludge",
		category = "ore-sorting-t3-5",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore8-slime", amount=60},
			--{type="fluid", name="liquid-ferric-chloride-solution", amount=2},
		},
		results=
		{
			{type="fluid", name="angels-ore8-anode-sludge", amount=60},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="slag", amount=1},
		},
		main_product = "angels-ore8-anode-sludge",
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "g",
	},
	{
		type = "recipe",
		name = "angelsore8-crystal",
		category = "liquifying",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore8-anode-sludge", amount=60},
		},
		results=
		{
			{type="item", name="angels-ore8-crystal", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "h",
	},
	{
		type = "recipe",
		name = "angelsore9-solution",
		category = "ore-sorting-t3",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore9-dust", amount=3},
			{type="item", name="angels-ore3-crystal", amount=1},
			{type="item", name="angels-ore4-crystal", amount=1},
			{type="item", name="angels-ore6-crystal", amount=1},
			{type="fluid", name="sulfuric-acid", amount=20}
		},
		results=
		{
			{type="fluid", name="angels-ore9-solution", amount=60},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "i",
	},
	{
		type = "recipe",
		name = "angelsore9-anode-sludge-filtering",
		category = "filtering",
		subgroup = "ore-processing-c",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore9-solution", amount=60},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="angels-ore9-slime", amount=60},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		main_product = "angels-ore9-slime",
		icon = "__angelsrefining__/graphics/icons/angels-ore9-slime-filtering.png",
		icon_size = 32,
		order = "j",
	},
	{
		type = "recipe",
		name = "angelsore9-anode-sludge",
		category = "ore-sorting-t3-5",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore9-slime", amount=60},
			--{type="fluid", name="liquid-cupric-chloride-solution", amount=2},
		},
		results=
		{
			{type="fluid", name="angels-ore9-anode-sludge", amount=60},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="slag", amount=1},
		},
		main_product = "angels-ore9-anode-sludge",
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "i",
	},
	{
		type = "recipe",
		name = "angelsore9-crystal",
		category = "liquifying",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="angels-ore9-anode-sludge", amount=60},
		},
		results=
		{
			{type="item", name="angels-ore9-crystal", amount=6},
		},
		--icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal.png",
		icon_size = 32,
		order = "j",
	},
	--TIER 4
	{
		type = "recipe",
		name = "angelsore1-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore1-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore1-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore1-pure.png",
		icon_size = 32,
		order = "a[angelsore1-pure]",
	},
	{
		type = "recipe",
		name = "angelsore2-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore2-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore2-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore2-pure.png",
		icon_size = 32,
		order = "b[angelsore2-pure]",
	},
	{
		type = "recipe",
		name = "angelsore3-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore3-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore3-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore3-pure.png",
		icon_size = 32,
		order = "c[angelsore3-pure]",
	},
	{
		type = "recipe",
		name = "angelsore4-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore4-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore4-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore4-pure.png",
		icon_size = 32,
		order = "d[angelsore4-pure]",
	},
	{
		type = "recipe",
		name = "angelsore5-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore5-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore5-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore5-pure.png",
		icon_size = 32,
		order = "e[angelsore5-pure]",
	},
	{
		type = "recipe",
		name = "angelsore6-pure",
		category = "ore-sorting-t4",
		subgroup = "ore-processing-d",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="item", name="angels-ore6-crystal", amount=4},
		},
		results=
		{
			{type="item", name="angels-ore6-pure", amount=4},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore6-pure.png",
		icon_size = 32,
		order = "f[angelsore6-pure]",
	},
	--SLAG PROCESSING
	{
		type = "recipe",
		name = "filter-frame",
		category = "crafting",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="steel-plate", amount=1},
			{type="item", name="iron-plate", amount=1},
		},
		results=
		{
			{type="item", name="filter-frame", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/filter-frame.png",
		icon_size = 32,
		order = "e [filter-frame]",
	},
	{
		type = "recipe",
		name = "filter-coal",
		category = "crafting",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="coal", amount=1},
			{type="item", name="filter-frame", amount=5},
		},
		results=
		{
			{type="item", name="filter-coal", amount=5},
		},
		icon = "__angelsrefining__/graphics/icons/filter-coal.png",
		icon_size = 32,
		order = "f [filter-coal]",
	},
	{
		type = "recipe",
		name = "filter-ceramic",
		category = "crafting",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="filter-frame", amount=1},
		},
		results=
		{
			{type="item", name="filter-ceramic", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
		icon_size = 32,
		order = "g [filter-ceramic]",
	},
	{
		type = "recipe",
		name = "filter-ceramic-refurbish",
		category = "crafting-with-fluid",
		subgroup = "processing-crafting",
		energy_required = 0.5,
		enabled = "false",
		ingredients ={
			{type="item", name="filter-ceramic-used", amount=1},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="filter-ceramic", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
		icon_size = 32,
		order = "h [filter-ceramic-refurbish]",
	},
	{
		type = "recipe",
		name = "milling-drum",
		category = "crafting-with-fluid",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="steel-plate", amount=1},
			{type="fluid", name="lubricant", amount=10},
		},
		results=
		{
			{type="item", name="milling-drum", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/milling-drum.png",
		icon_size = 32,
		order = "i",
	},
	{
		type = "recipe",
		name = "milling-drum-used",
		category = "crafting-with-fluid",
		subgroup = "processing-crafting",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="item", name="milling-drum-used", amount=1},
			{type="fluid", name="lubricant", amount=10},
		},
		results=
		{
			{type="item", name="milling-drum", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/milling-drum-used.png",
		icon_size = 32,
		order = "j",
	},
	{
		type = "recipe",
		name = "slag-processing-dissolution",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="slag", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="slag-slurry", amount=50},
		},
		icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
		icon_size = 32,
		order = "i [slag-processing-dissolution]",
	},
	{
		type = "recipe",
		name = "stone-crushed-dissolution",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="stone-crushed", amount=25},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="slag-slurry", amount=50},
		},
		icon = "__angelsrefining__/graphics/icons/stone-slurry.png",
		icon_size = 32,
		order = "j [stone-crushed-dissolution]",
	},
	--FILTERING
	{
		type = "recipe",
		name = "slag-processing-filtering-1",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="slag-slurry", amount=50},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-coal", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=50},
			{type="fluid", name="water-yellow-waste", amount=40},
			{type="item", name="filter-frame", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/slag-filtering-1.png",
		icon_size = 32,
		order = "a [slag-processing-filtering-1]",
	},
	{
		type = "recipe",
		name = "slag-processing-filtering-2",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="slag-slurry", amount=35},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=35},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/slag-filtering-2.png",
		icon_size = 32,
		order = "b [slag-processing-filtering-2]",
	},
	{
		type = "recipe",
		name = "thermal-water-filtering-1",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 4,
		enabled = "false",
		ingredients ={
			{type="fluid", name="thermal-water", amount=50},
			{type="item", name="filter-coal", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=50},
			{type="item", name="filter-frame", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/thermal-filtering-1.png",
		icon_size = 32,
		order = "c [thermal-water-filtering-1]",
	},
	{
		type = "recipe",
		name = "thermal-water-filtering-2",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 2,
		enabled = "false",
		ingredients ={
			{type="fluid", name="thermal-water", amount=35},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=35},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/thermal-filtering-2.png",
		icon_size = 32,
		order = "d [thermal-water-filtering-2]",
	},
	--CRYSTAL SLURRY
	--GEODES LIQUIFY
	{
		type = "recipe",
		name = "geode-blue-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-blue", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=20},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-blue.png",
		icon_size = 32,
		order = "a [geode-blue-liquify]",
	},
	{
		type = "recipe",
		name = "geode-cyan-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-cyan", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=50},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-cyan.png",
		icon_size = 32,
		order = "b [geode-cyan-liquify]",
	},
	{
		type = "recipe",
		name = "geode-lightgreen-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-lightgreen", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=50},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-lightgreen.png",
		icon_size = 32,
		order = "c [geode-lightgreen-liquify]",
	},
	{
		type = "recipe",
		name = "geode-purple-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-purple", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=40},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-purple.png",
		icon_size = 32,
		order = "d [geode-purple-liquify]",
	},
	{
		type = "recipe",
		name = "geode-red-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-red", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=20},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-red.png",
		icon_size = 32,
		order = "e [geode-red-liquify]",
	},
	{
		type = "recipe",
		name = "geode-yellow-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="geode-yellow", amount=5},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=30},
		},
		icon = "__angelsrefining__/graphics/icons/liquify-yellow.png",
		icon_size = 32,
		order = "f [geode-yellow-liquify]",
	},
	{
		type = "recipe",
		name = "crystal-dust-liquify",
		category = "liquifying",
		subgroup = "liquifying",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="item", name="crystal-dust", amount=10},
			{type="fluid", name="sulfuric-acid", amount=15},
		},
		results=
		{
			{type="fluid", name="crystal-slurry", amount=50},
		},
		icons = {
			{
				icon = "__angelsrefining__/graphics/icons/liquify-blank.png",
			},
			{
				icon = "__angelsrefining__/graphics/icons/crystal-dust.png",
				scale = 0.4375,
				shift = { -10, -10},
			}
		},
		icon_size = 32,
		order = "g",
	},
	--FILTERING
	{
		type = "recipe",
		name = "crystal-slurry-filtering-1",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="fluid", name="crystal-slurry", amount=50},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-coal", amount=1},
		},
		results=
		{
			{type="fluid", name="crystal-seedling", amount=50},
			{type="fluid", name="water-yellow-waste", amount=40},
			{type="item", name="filter-frame", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/crystal-filtering-1.png",
		icon_size = 32,
		order = "e [crystal-slurry-filtering-1]",
	},
	{
		type = "recipe",
		name = "crystal-slurry-filtering-2",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
			{type="fluid", name="crystal-slurry", amount=35},
			{type="fluid", name="water-purified", amount=50},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="crystal-seedling", amount=35},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/crystal-filtering-2.png",
		icon_size = 32,
		order = "f [crystal-slurry-filtering-2]",
	},
	{
		type = "recipe",
		name = "crystal-slurry-filtering-conversion-1",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="fluid", name="crystal-slurry", amount=50},
			{type="fluid", name="water-mineralized", amount=100},
			{type="item", name="filter-coal", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=50},
			{type="fluid", name="water-yellow-waste", amount=40},
			{type="item", name="filter-frame", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/crystal-filtering-conversion-1.png",
		icon_size = 32,
		order = "g [crystal-slurry-filtering-1]",
	},
	{
		type = "recipe",
		name = "crystal-slurry-filtering-conversion-2",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
			{type="fluid", name="crystal-slurry", amount=35},
			{type="fluid", name="water-mineralized", amount=100},
			{type="item", name="filter-ceramic", amount=1},
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=35},
			{type="fluid", name="water-yellow-waste", amount=20},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/crystal-filtering-conversion-2.png",
		icon_size = 32,
		order = "h [crystal-slurry-filtering-2]",
	},
	--CATALYSTS
	{
		type = "recipe",
		name = "catalysator-brown",
		category = "crystallizing",
		subgroup = "slag-processing-1",
		energy_required = 0.5,
		enabled = "false",
		ingredients ={
			{type="fluid", name="mineral-sludge", amount=25},
		},
		results=
		{
			{type="item", name="catalysator-brown", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
		icon_size = 32,
		order = "i [catalysator-brown]",
	},
	{
		type = "recipe",
		name = "catalysator-green",
		category = "crystallizing",
		subgroup = "geode-crystallization",
		energy_required = 0.5,
		enabled = "false",
		ingredients ={
			{type="fluid", name="crystal-seedling", amount=25},
		},
		results=
		{
			{type="item", name="catalysator-green", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/catalysator-green.png",
		icon_size = 32,
		order = "h [catalysator-green]",
	},
	{
		type = "recipe",
		name = "catalysator-orange",
		category = "crystallizing",
		subgroup = "geode-crystallization",
		energy_required = 0.5,
		enabled = "false",
		ingredients ={
			{type="item", name="catalysator-brown", amount=2},
			{type="item", name="catalysator-green", amount=2},
		},
		results=
		{
			{type="item", name="catalysator-orange", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/catalysator-orange.png",
		icon_size = 32,
		order = "i",
	},
	--VANILLA
	--IRON
	{
		type = "recipe",
		name = "angels-iron-pebbles-smelting",
		category = "smelting",
		subgroup = "raw-material",
		energy_required = 7,
		enabled = "true",
		ingredients ={{"angels-iron-pebbles", 4}},
		results=
		{
			{type="item", name="iron-plate", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
		icon_size = 32,
		order = "aa [angels-iron-pebbles-smelting]",
	},
	{
		type = "recipe",
		name = "angels-iron-nugget-smelting",
		category = "smelting",
		subgroup = "raw-material",
		energy_required = 7,
		enabled = "true",
		ingredients ={{"angels-iron-nugget", 2}},
		results=
		{
			{type="item", name="iron-plate", amount=3},
		},
		icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
		icon_size = 32,
		order = "ab [angels-iron-nugget-smelting]",
	},
	{
		type = "recipe",
		name = "angels-iron-pebbles",
		category = "ore-sorting-t1",
		subgroup = "ore-sorting-advanced",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"iron-ore", 2}},
		results=
		{
			{type="item", name="angels-iron-pebbles", amount=4},
		},
		--icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
		icon_size = 32,
		order = "aa [angels-iron-pebbles]",
	},
	--COPPER
	{
		type = "recipe",
		name = "angels-copper-pebbles-smelting",
		category = "smelting",
		subgroup = "raw-material",
		energy_required = 7,
		enabled = "true",
		ingredients ={{"angels-copper-pebbles", 4}},
		results=
		{
			{type="item", name="copper-plate", amount=2},
		},
		icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
		icon_size = 32,
		order = "ba [angels-copper-pebbles-smelting]",
	},
	{
		type = "recipe",
		name = "angels-copper-nugget-smelting",
		category = "smelting",
		subgroup = "raw-material",
		energy_required = 7,
		enabled = "true",
		ingredients ={{"angels-copper-nugget", 2}},
		results=
		{
			{type="item", name="copper-plate", amount=3},
		},
		icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
		icon_size = 32,
		order = "bb [angels-copper-nugget-smelting]",
	},
	{
		type = "recipe",
		name = "angels-copper-pebbles",
		category = "ore-sorting-t1",
		subgroup = "ore-sorting-advanced",
		energy_required = 1,
		enabled = "true",
		ingredients ={{"copper-ore", 2}},
		results=
		{
			{type="item", name="angels-copper-pebbles", amount=4},
		},
		--icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
		icon_size = 32,
		order = "ab [angels-copper-pebbles]",
	},
}
)
