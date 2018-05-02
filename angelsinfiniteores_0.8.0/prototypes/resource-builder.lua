local function make_resautoplace(input)
	if not angelsmods.ores.enablersomode then
		data:extend({
			{
				type = "noise-layer",
				name = input.name
			},
			{
				type = "autoplace-control",
				name = input.name,
				richness = true,
				order="a-b-"..input.order,
				category = "resource",
			},
		})
	end
end

local function make_peaks(input)
	if input.type == "item" then
		if input.infinite == true then
			input.noise_octaves_difference = -2.5
			input.noise_persistence = 0.3
		else
			input.noise_octaves_difference = -0.85
			input.noise_persistence = 0.4
		end
	else
		input.noise_octaves_difference = -1.5
		input.noise_persistence = 0.3
	end
	if input.starting_area == true then
		return
		{
			{
				noise_layer = input.name,
				noise_octaves_difference = input.noise_octaves_difference,
				noise_persistence = input.noise_persistence,
			},
		}
	else
		return
		{
			{
				noise_layer = input.name,
				noise_octaves_difference = input.noise_octaves_difference,
				noise_persistence = input.noise_persistence,
			},
			{
				noise_layer = input.name,
				noise_octaves_difference = input.noise_octaves_difference,
				noise_persistence = input.noise_persistence,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
		}
	end
end

local function make_autoplace_settings(input)
	if input.type == "item" then
		return
		{
			order = input.order,
			control = input.name,
			sharpness = 15/16,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 20,
			richness_base = 10,
			coverage = input.coverage,
			peaks = make_peaks(input),
			starting_area_size = input.starting_area_size,
			starting_area_amount = input.starting_area_amount,
		}
	else
		return
		{
			order = input.order,
			control = input.name,
			sharpness = 0.98,
			max_probability = 0.04,
			richness_base = 1000,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 50,
			coverage = input.coverage,
			peaks = make_peaks(input),
		}
	end
end

local function make_resgfx(input)
	if input.infinite == true then
		input.frame_count = 16
		input.variation_count = 4
	else
		input.frame_count = 8
		input.variation_count = 8
	end
	if input.get then
		stages_copy = table.deepcopy(data.raw.resource[input.get].stages)
		stages_copy.sheet.line_length = 8
		stages_copy.sheet.frame_count = input.frame_count
		stages_copy.sheet.variation_count = input.variation_count
		stages_copy.sheet.hr_version.line_length = 8
		stages_copy.sheet.hr_version.frame_count = input.frame_count
		stages_copy.sheet.hr_version.variation_count = input.variation_count
		--log(serpent.block(stages_copy))
		return stages_copy
	else
		if input.sheet == 1 then
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-lr.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-hr.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5
					}
				}
			}
		end
		if input.sheet == 2 then
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-lr.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-hr.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5
					}
				}
			}
		end
		if input.sheet == 3 then
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-lr.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-hr.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5
					}
				}
			}
		end
		if input.sheet == 4 then
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-lr.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-hr.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5
					}
				}
			}
		end
	end
end

local function make_resglow(input)
	if input.glow == true then
		if input.infinite == true then
			input.frame_count = 16
			input.variation_count = 4
		else
			input.frame_count = 8
			input.variation_count = 8
		end
		if input.sheet == 1 then
			if input.glow_var == 1 then
				input.gfx_ani_per = 3.5
				input.gfx_ani_dev = 0.7
				input.gfx_dark_mul = 3
				input.gfx_alpha_min = 0.3
				input.gfx_alpha_max = 0.8
			else
				input.gfx_ani_per = 4
				input.gfx_ani_dev = 0.8
				input.gfx_dark_mul = 3
				input.gfx_alpha_min = 0.3
				input.gfx_alpha_max = 0.7
			end
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-lr-glow.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					blend_mode = "additive",
					flags = {"light"},
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-11-hr-glow.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"},
					}
				}
			}
		end
		if input.sheet == 2 then
			input.gfx_ani_per = 5
			input.gfx_ani_dev = 0.75
			input.gfx_dark_mul = 3
			input.gfx_alpha_min = 0.1
			input.gfx_alpha_max = 0.4
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-lr-glow.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					blend_mode = "additive",
					flags = {"light"},
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-hr-glow.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"},
					}
				}
			}
		end
		if input.sheet == 3 then
			input.gfx_ani_per = 3.5
			input.gfx_ani_dev = 0.7
			input.gfx_dark_mul = 3
			input.gfx_alpha_min = 0.3
			input.gfx_alpha_max = 0.8
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-lr-glow.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					blend_mode = "additive",
					flags = {"light"},
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-13-hr-glow.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"},
					}
				}
			}

		end
		if input.sheet == 4 then
			input.gfx_ani_per = 5
			input.gfx_ani_dev = 1
			input.gfx_dark_mul = 3.6
			input.gfx_alpha_min = 0.2
			input.gfx_alpha_max = 0.3
			return
			{
				sheet =
				{
					filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-lr-glow.png",
					priority = "extra-high",
					tint = input.tint,
					width = 64,
					height = 64,
					line_length = 8,
					frame_count = input.frame_count,
					variation_count = input.variation_count,
					blend_mode = "additive",
					flags = {"light"},
					hr_version = {
						filename = "__angelsinfiniteores__/graphics/entity/ores/ore-14-hr-glow.png",
						priority = "extra-high",
						tint = input.tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = input.frame_count,
						variation_count = input.variation_count,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"},
					}
				}
			}

		end
	else
		input.gfx_ani_per = nil
		input.gfx_ani_dev = nil
		input.gfx_dark_mul = nil
		input.gfx_alpha_min = nil
		input.gfx_alpha_max = nil
	end
end

function make_resource(input)
	make_resautoplace(input)
	if input.hardness == nil then input.hardness = 0.9 end
	if input.coverage == nil then input.coverage = 0.02 end
	if input.type == "item" then
		if input.infinite == true then
			stages_count = {1}
		else
			stages_count = {15000, 8000, 4000, 2000, 1000, 500, 200, 80}
		end
	else
		stages_count = {0}
	end
	if input.type == "item" then input.map_grid = true else input.map_grid = false end
	if input.name == "fissure" then input.category = "basic-fluid" else input.category = nil end
	if input.name == "fissure" then input.collision_box = {{ -4.4, -4.4}, {4.4, 4.4}} input.selection_box = {{ -2.5, -2.5}, {2.5, 2.5}} else input.collision_box = {{ -0.1, -0.1}, {0.1, 0.1}} input.selection_box = {{ -0.5, -0.5}, {0.5, 0.5}} end
	if input.acid_to_mine and angelsmods.ores.enablefluidreq then
		input.acid_amount = 10
		if angelsmods.petrochem then
			if angelsmods.trigger.enableacids then
				input.acid_req = input.acid_to_mine
			else
				input.acid_req = "liquid-sulfuric-acid"
			end
		else
			input.acid_req = "sulfuric-acid"
		end
	end
	-- log(serpent.block(input.acid_req))
	-- log(serpent.block(input.acid_amount))
	data:extend({
		{
			type = "resource",
			name = input.name,
			icon = input.icon,
			icon_size = 32,
			flags = {"placeable-neutral"},
			category = input.category,
			order="a-b-"..input.order,
			tree_removal_probability = 0.8,
			tree_removal_max_distance = 32 * 32,
			infinite_depletion_amount = 10,
			resource_patch_search_radius = 12,
			highlight = true,
			infinite = input.infinite,
			minimum = input.minimum,
			normal = input.normal,
			maximum = input.maximum,
			minable =
			{
				hardness = input.hardness,
				mining_particle = "iron-ore-particle", --input.name .. "-particle",
				mining_time = input.mining_time,
				fluid_amount = input.acid_amount,
				required_fluid = input.acid_req,
				results = {
					{
						type = input.type,
						name = input.output_name,
						amount_min = input.output_min,
						amount_max = input.output_max,
						probability = input.output_probability,
						temperature = input.temperature,
					}
				},
			},
			collision_box = input.collision_box,
			selection_box = input.selection_box,
			autoplace = make_autoplace_settings(input),
			stage_counts = stages_count,
			stages = make_resgfx(input),
			stages_effect = make_resglow(input),
			effect_animation_period = input.gfx_ani_per,
			effect_animation_period_deviation = input.gfx_ani_dev,
			effect_darkness_multiplier = input.gfx_dark_mul,
			min_effect_alpha = input.gfx_alpha_min,
			max_effect_alpha = input.gfx_alpha_max,
			map_color = input.map_color,
			map_grid = input.map_grid
		}
	})
	-- log(serpent.block(data.raw.resource[input.name]))
end

infinite_iron_ore = {
	name = "infinite-iron-ore",
	order = "a",
	sheet = 1,
	get = "iron-ore",
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.26, g=0.30, b=0.39},
	tint = {r=0.26, g=0.30, b=0.39},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.002,
	acid_to_mine = "liquid-sulfuric-acid",
	hardness = 1,
	mining_time = 1.5,
	type = "item",
	output_name = "iron-ore",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__base__/graphics/icons/iron-ore.png",
}

infinite_copper_ore = {
	name = "infinite-copper-ore",
	order = "a",
	sheet = 1,
	get = "copper-ore",
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.803, g=0.388, b=0.215},
	tint = {r= 0.8, g= 0.39, b= 0.22},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.002,
	acid_to_mine = "liquid-sulfuric-acid",
	hardness = 0.9,
	mining_time = 2,
	type = "item",
	output_name = "copper-ore",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__base__/graphics/icons/iron-ore.png",
}

infinite_coal = {
	name = "infinite-coal",
	order = "a",
	sheet = 2,
	get = "coal",
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0, g=0, b=0},
	tint = {r = 0.2, g = 0.2, b = 0.2},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.002,
	hardness = 1,
	mining_time = 1.5,
	type = "item",
	output_name = "coal",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__base__/graphics/icons/coal.png",
}

infinite_angels_ore1 = {
	name = "infinite-angels-ore1",
	order = "a",
	sheet = 2,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.26, g=0.30, b=0.39},
	tint = {r=0.26, g=0.30, b=0.39},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-sulfuric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore1",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore1.png",
}

infinite_angels_ore2 = {
	name = "infinite-angels-ore2",
	order = "a",
	sheet = 4,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.55, g=0.51, b=0.30},
	tint = {r=0.55, g=0.51, b=0.30},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-hydrofluoric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore2",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore2.png",
}

infinite_angels_ore3 = {
	name = "infinite-angels-ore3",
	order = "a",
	sheet = 1,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.42, g=0.71, b=0.86},
	tint = {r=0.42, g=0.71, b=0.86},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-sulfuric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore3",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore3.png",
}

infinite_angels_ore4 = {
	name = "infinite-angels-ore4",
	order = "a",
	sheet = 3,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.75, g=0.75, b=0.75},
	tint = {r=0.75, g=0.75, b=0.75},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-hydrochloric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore4",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore4.png",
}

infinite_angels_ore5 = {
	name = "infinite-angels-ore5",
	order = "a",
	sheet = 1,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r=0.68, g=0.18, b=0.16},
	tint = {r=0.68, g=0.18, b=0.16},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-nitric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore5",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore5.png",
}

infinite_angels_ore6 = {
	name = "infinite-angels-ore6",
	order = "a",
	sheet = 3,
	infinite = true,
	starting_area = false,
	minimum = angelsmods.ores.yield,
	normal = 1500,
	maximum = 6000,
	glow = true,
	var = 1,
	map_color = {r = 0.75, g = 0.5, b = 0.25},
	tint = {r = 0.75, g = 0.5, b = 0.25},
	starting_area_size = 11,
	starting_area_amount = 1600,
	coverage = 0.0005,
	hardness = 1,
	acid_to_mine = "liquid-sulfuric-acid",
	mining_time = 1.5,
	type = "item",
	output_name = "angels-ore6",
	output_min = 1,
	output_max = 1,
	output_probability = angelsmods.ores.loweryield,
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore6.png",
}
