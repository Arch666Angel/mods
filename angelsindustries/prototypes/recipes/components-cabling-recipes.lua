data:extend(
{
	--CABLE HARNESS
	{
		type = "recipe",
		name = "cable-harness-1",
		energy_required = 3,
		category = "crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "copper-cable", amount = 2},
			{type = "item", name = "cellulose-fiber", amount = 1},
		},
		result = "cable-harness-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cable-harness-2",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-wire-tin", amount = 2},
			{type = "item", name = "cellulose-fiber", amount = 1},
		},
		result = "cable-harness-2",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cable-harness-3",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-wire-silver", amount = 2},
			{type = "item", name = "solid-rubber", amount = 1},
		},
		result = "cable-harness-3",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cable-harness-4",
		energy_required = 3,
		category = "crafting-with-fluid",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-wire-gold", amount = 2},
			{type = "fluid", name = "liquid-plastic", amount = 1},
		},
		result = "cable-harness-4",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cable-harness-5",
		energy_required = 3,
		category = "crafting-with-fluid",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-wire-platinum", amount = 2},
			{type = "fluid", name = "liquid-plastic", amount = 1},
		},
		result = "cable-harness-5",
		icon_size = 32,
	},
	--CONSTRUCTION COMPONENTS
	{
		type = "recipe",
		name = "cabling-cable-harness-1",
		subgroup = "angels-cable-harness",
		order = "f",
		enabled = true,
		category = "crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "cable-harness-1", amount = 5},
		},
		results=
		{
			{type="item", name="angels-cabling", amount=1},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/cabling.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/cable-harness-1.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cabling-cable-harness-2",
		subgroup = "angels-cable-harness",
		order = "g",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "cable-harness-2", amount = 5},
		},
		results=
		{
			{type="item", name="angels-cabling", amount=2},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/cabling.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/cable-harness-2.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cabling-cable-harness-3",
		subgroup = "angels-cable-harness",
		order = "h",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "cable-harness-3", amount = 5},
		},
		results=
		{
			{type="item", name="angels-cabling", amount=3},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/cabling.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/cable-harness-3.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cabling-cable-harness-4",
		subgroup = "angels-cable-harness",
		order = "h",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "cable-harness-4", amount = 5},
		},
		results=
		{
			{type="item", name="angels-cabling", amount=4},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/cabling.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/cable-harness-4.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "cabling-cable-harness-5",
		subgroup = "angels-cable-harness",
		order = "h",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "cable-harness-5", amount = 5},
		},
		results=
		{
			{type="item", name="angels-cabling", amount=5},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/cabling.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/cable-harness-5.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
}
)
