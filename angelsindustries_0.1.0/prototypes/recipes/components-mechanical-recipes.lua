data:extend(
{
	--MECHANICAL PARTS
	{
		type = "recipe",
		name = "motor-1",
		energy_required = 3,
		category = "crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 1},
		},
		result = "motor-1",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "motor-2",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 1},
			{type = "item", name = "angels-axle", amount = 1},
		},
		result = "motor-2",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "motor-3",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 1},
			{type = "item", name = "angels-axle", amount = 1},
			{type = "item", name = "angels-roller-chain", amount = 1},
		},
		result = "motor-3",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "motor-4",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 1},
			{type = "item", name = "angels-axle", amount = 1},
			{type = "item", name = "angels-roller-chain", amount = 1},
			{type = "item", name = "angels-spring", amount = 1},
		},
		result = "motor-4",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "motor-5",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 1},
			{type = "item", name = "angels-axle", amount = 1},
			{type = "item", name = "angels-roller-chain", amount = 1},
			{type = "item", name = "angels-spring", amount = 1},
			{type = "item", name = "angels-bearing", amount = 1},
		},
		result = "motor-5",
		icon_size = 32,
	},
	--MECHANICAL SUBCOMPONENTS
	{
		type = "recipe",
		name = "angels-gear",
		energy_required = 3,
		category = "crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "iron-plate", amount = 1},
		},
		result = "angels-gear",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-axle",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "steel-plate", amount = 1},
		},
		result = "angels-axle",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-roller-chain",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-plate-aluminium", amount = 1},
		},
		result = "angels-roller-chain",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-spring",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-plate-titanium", amount = 1},
		},
		result = "angels-spring",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "angels-bearing",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-plate-tungsten", amount = 1},
			{type = "item", name = "steel-plate", amount = 1},
			{type = "fluid", name = "lubricant", amount = 1},
		},
		result = "angels-bearing",
		icon_size = 32,
	},
	--MECHANICAL SUBCOMPONENTS
	{
		type = "recipe",
		name = "mechanical-parts-gear",
		subgroup = "angels-mechanical-parts",
		order = "f",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-gear", amount = 5},
		},
		results = {
			{type = "item", name = "mechanical-parts", amount = 1},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/gear.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "mechanical-parts-axle",
		subgroup = "angels-mechanical-parts",
		order = "g",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-axle", amount = 5},
		},
		results = {
			{type = "item", name = "mechanical-parts", amount = 2},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/axle.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "mechanical-parts-roller-chain",
		subgroup = "angels-mechanical-parts",
		order = "h",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-roller-chain", amount = 5},
		},
		results = {
			{type = "item", name = "mechanical-parts", amount = 3},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/roller-chain.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "mechanical-parts-spring",
		subgroup = "angels-mechanical-parts",
		order = "i",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-spring", amount = 5},
		},
		results = {
			{type = "item", name = "mechanical-parts", amount = 4},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/spring.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "mechanical-parts-bearing",
		subgroup = "angels-mechanical-parts",
		order = "j",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = "true",
		ingredients ={
			{type = "item", name = "angels-bearing", amount = 5},
		},
		results = {
			{type = "item", name = "mechanical-parts", amount = 5},
		},
		icons = {
			{
				icon = "__angelsindustries__/graphics/icons/mechanical-parts.png"
			},
			{
				icon = "__angelsindustries__/graphics/icons/bearing.png",
				scale = 0.4375,
				shift = { -10, -10},
			},
		},
		icon_size = 32,
	},
}
)
