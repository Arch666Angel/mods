angelsmods.functions.add_resource("update", {
	name = "coal",
	order = "b-aa",
	autoplace = {
		starting_area = true,
		--resource_index = 0,
		base_density = 8,
		regular_rq_factor_multiplier = 1.0,
		starting_rq_factor_multiplier = 1.1
	}
})

angelsmods.functions.add_resource("make", {
	name = "infinite-coal",
	get = "coal",
	order = "b",
	sheet = 2,
	infinite = true,
	glow = true,
	var = 2,
	map_color = {r = 0, g = 0, b = 0},
	tint = {r = 0.2, g = 0.2, b = 0.2},
	mining_time = 1,
	type = "item",
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	acid_to_mine = "water",
	output_name = "coal",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	--icon = "__base__/graphics/icons/coal.png",
	autoplace = {
		starting_area = false,
		--resource_index = 0,
		base_density = 5,
		regular_rq_factor_multiplier = 0.3,
		starting_rq_factor_multiplier = 0.5,
	}
})

if angelsmods.ores.disable_ore_override or (not angelsmods.refining) then
	angelsmods.functions.add_resource("update", {
		name = "iron-ore",
		order = "b-ab",
		autoplace = {
			starting_area = true,
			--resource_index = 1,
			base_density = 10,
			regular_rq_factor_multiplier = 1.10,
			starting_rq_factor_multiplier = 1.5
		}
	})

	angelsmods.functions.add_resource("make", {
		name = "infinite-iron-ore",
		get = "iron-ore",
		order = "b",
		sheet = 2,
		infinite = true,
		glow = true,
		var = 2,
		map_color = {r=0.415, g=0.525, b=0.580},
		tint = {r= 0.34, g= 0.42, b= 0.43},
		mining_time = 1,
		type = "item",
		minimum = angelsmods.ores.yield,
		normal = 1500,
		maximum = 6000,
		acid_to_mine = "liquid-sulfuric-acid",
		output_name = "iron-ore",
		output_min = 1,
		output_max = 1,
		output_probability = angelsmods.ores.loweryield,
		--icon = "__base__/graphics/icons/iron-ore.png",
		autoplace = {
			starting_area = false,
			--resource_index = 1,
			base_density = 5,
			regular_rq_factor_multiplier = 0.3,
			starting_rq_factor_multiplier = 0.5,
		}
	})

	angelsmods.functions.add_resource("update", {
		name = "copper-ore",
		order = "b-ac",
		autoplace = {
			starting_area = true,
			--resource_index = 2,
			base_density = 8,
			regular_rq_factor_multiplier = 1.10,
			starting_rq_factor_multiplier = 1.2
		}
	})

	angelsmods.functions.add_resource("make", {
		name = "infinite-copper-ore",
		get = "copper-ore",
		order = "b",
		sheet = 2,
		infinite = true,
		glow = true,
		var = 2,
		map_color = {r=0.803, g=0.388, b=0.215},
		tint = {r= 0.8, g= 0.39, b= 0.22},
		mining_time = 1,
		type = "item",
		minimum = angelsmods.ores.yield,
		normal = 1500,
		maximum = 6000,
		acid_to_mine = "liquid-sulfuric-acid",
		output_name = "copper-ore",
		output_min = 1,
		output_max = 1,
		output_probability = angelsmods.ores.loweryield,
		--icon = "__base__/graphics/icons/copper-ore.png",
		autoplace = {
			starting_area = false,
			--resource_index = 2,
			base_density = 4,
			regular_rq_factor_multiplier = 0.3,
			starting_rq_factor_multiplier = 0.5,
		}
	})

	angelsmods.functions.add_resource("update", {
		name = "stone",
		order = "b-ad",
		autoplace = {
			starting_area = true,
			--resource_index = 3,
			base_density = 8,
			regular_rq_factor_multiplier = 1.10,
			starting_rq_factor_multiplier = 1.2
		}
	})

	angelsmods.functions.add_resource("make", {
		name = "infinite-stone",
		get = "stone",
		order = "b",
		sheet = 3,
		infinite = true,
		glow = true,
		var = 3,
		map_color = {r=0.478, g=0.450, b=0.317},
		tint = {r= 0.48, g=0.45, b=0.32},
		mining_time = 1,
		type = "item",
		minimum = angelsmods.ores.yield,
		normal = 1500,
		maximum = 6000,
		acid_to_mine = "liquid-sulfuric-acid",
		output_name = "stone",
		output_min = 1,
		output_max = 1,
		output_probability = angelsmods.ores.loweryield,
		--icon = "__base__/graphics/icons/stone.png",
		autoplace = {
			starting_area = false,
			--resource_index = 3,
			base_density = 4,
			regular_rq_factor_multiplier = 0.3,
			starting_rq_factor_multiplier = 0.5,
		}
	})

	angelsmods.functions.add_resource("update", {
		name = "uranium-ore",
		order = "b-ae",
		autoplace = {
			starting_area = false,
			--resource_index = 4,
			base_density = 8,
			regular_rq_factor_multiplier = 1.10,
			starting_rq_factor_multiplier = 1.2
		}
	})

	angelsmods.functions.add_resource("make", {
		name = "infinite-uranium-ore",
		get = "uranium-ore",
		order = "b",
		sheet = 4,
		infinite = true,
		glow = true,
		var = 4,
		map_color = {r=0, g=0.7, b=0},
		tint = {r=0, g=0.7, b=0},
		mining_time = 1,
		type = "item",
		minimum = angelsmods.ores.yield,
		normal = 1500,
		maximum = 6000,
		acid_to_mine = "liquid-sulfuric-acid",
		output_name = "uranium-ore",
		output_min = 1,
		output_max = 1,
		output_probability = angelsmods.ores.loweryield,
		--icon = "__base__/graphics/icons/uranium-ore.png",
		autoplace = {
			starting_area = false,
			--resource_index = 4,
			base_density = 4,
			regular_rq_factor_multiplier = 0.3,
			starting_rq_factor_multiplier = 0.5,
		}
	})
end