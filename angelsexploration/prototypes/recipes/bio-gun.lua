data:extend(
{
	--Personal Weapons
	{
		type = "recipe",
		name = "bio-gun",
		energy_required = 10,
		enabled = "false",
		ingredients ={
			{"steel-plate", 5},
			--{"titanium-plate", 20},
			{"iron-gear-wheel", 10},
			{"copper-plate", 5},
		},
		result = "bio-gun",
		icon= "__base__/graphics/icons/flamethrower.png",
		icon_size=64,
		order = "a"
	},
	{
		type = "recipe",
		name = "bio-ammo",
		category="crafting-with-fluid",
		energy_required = 10,
		enabled = "false",
		ingredients ={
			{"copper-plate", 10},
			--{"titanium-plate", 20},
			{"sulfur", 5},
			{type="fluid",name="crude-oil", amount=60},
		},
		result = "bio-ammo",
		icon= "__base__/graphics/icons/flamethrower-ammo.png",
		icon_size=64,
		order = "a"
	},
})
