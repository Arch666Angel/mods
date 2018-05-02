data:extend(
{
	--GRATES
	{
		type = "recipe",
		name = "grate-iron",
		enabled = true,
		category = "crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "iron-plate", amount = 2},
		},
		results=
		{
			{type="item", name="grate-iron", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "grate-steel",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "steel-plate", amount = 2},
		},
		results=
		{
			{type="item", name="grate-steel", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "grate-aluminium",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-plate-aluminium", amount = 2},
		},
		results=
		{
			{type="item", name="grate-aluminium", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "grate-titanium",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-plate-titanium", amount = 2},
		},
		results=
		{
			{type="item", name="grate-titanium", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "grate-tungsten",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-plate-tungsten", amount = 2},
		},
		results=
		{
			{type="item", name="grate-tungsten", amount=1},
		},
		icon_size = 32,
	},
	--CONSTRUCTION FRAMES
	{
		type = "recipe",
		name = "construction-frame-1",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "grate-iron", amount = 1},
			{type="item", name = "angels-girder", amount = 1},
		},
		results=
		{
			{type="item", name="construction-frame-1", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-frame-2",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "grate-steel", amount = 1},
			{type="item", name = "angels-girder", amount = 1},
			{type="item", name = "angels-rivet", amount = 1},
		},
		results=
		{
			{type="item", name="construction-frame-2", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-frame-3",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "grate-aluminium", amount = 1},
			{type="item", name = "angels-girder", amount = 1},
			{type="item", name = "angels-rivet", amount = 1},
		},
		results=
		{
			{type="item", name="construction-frame-3", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-frame-4",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "grate-titanium", amount = 1},
			{type="item", name = "angels-girder", amount = 1},
			{type="item", name = "angels-rivet", amount = 1},
		},
		results=
		{
			{type="item", name="construction-frame-4", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-frame-5",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "grate-tungsten", amount = 1},
			{type="item", name = "angels-girder", amount = 1},
			{type="item", name = "angels-rivet", amount = 1},
		},
		results=
		{
			{type="item", name="construction-frame-5", amount=1},
		},
		icon_size = 32,
	},
	--CONSTRUCTION PARTS
	{
		type = "recipe",
		name = "angels-girder",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "iron-plate", amount = 1},
		},
		results=
		{
			{type="item", name="angels-girder", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-rivet",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "steel-plate", amount = 1},
		},
		results=
		{
			{type="item", name="angels-rivet", amount=1},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-plating",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-plate-aluminium", amount = 1},
		},
		results=
		{
			{type="item", name="angels-plating", amount=1},
		},
		icon_size = 32,
	},
	--CONSTRUCTION COMPONENTS
	{
		type = "recipe",
		name = "construction-components-girder",
		subgroup = "angels-construction-components",
    order = "f",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-girder", amount = 5},
		},
		results=
		{
			{type="item", name="construction-components", amount=1},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/construction-components.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/girder.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-components-rivet",
		subgroup = "angels-construction-components",
    order = "g",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-rivet", amount = 5},
		},
		results=
		{
			{type="item", name="construction-components", amount=2},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/construction-components.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/rivet.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "construction-components-plating",
		subgroup = "angels-construction-components",
    order = "h",
		enabled = true,
		category = "advanced-crafting",
		energy_required = 5,
		ingredients ={
			{type="item", name = "angels-plating", amount = 5},
		},
		results=
		{
			{type="item", name="construction-components", amount=2},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/construction-components.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/plating.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
}
)
