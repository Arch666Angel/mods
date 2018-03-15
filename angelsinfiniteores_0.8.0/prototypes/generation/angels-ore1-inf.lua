if angelsmods.ores.enableinfiniteangelsore1 then
	local angels_ore1_stage = 	{
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-lr.png",
			priority = "extra-high",
			tint = {r=0.26, g=0.30, b=0.39},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-hr.png",
			  priority = "extra-high",
			  tint = {r=0.26, g=0.30, b=0.39},
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5
			}
		  }
		}
		
	local angels_ore1_stage_effect =     {
		  sheet =
		  {
			filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-lr-glow.png",
			priority = "extra-high",
			tint = {r=0.26, g=0.30, b=0.39},
			width = 64,
			height = 64,
			line_length = 8,
			frame_count = 16,
			variation_count = 4,
			blend_mode = "additive",
			flags = {"light"},
			hr_version = {
			  filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-hr-glow.png",
			  priority = "extra-high",
			  tint = {r=0.26, g=0.30, b=0.39},
			  width = 128,
			  height = 128,
			  line_length = 8,
			  frame_count = 16,
			  variation_count = 4,
			  scale = 0.5,
			  blend_mode = "additive",
			  flags = {"light"},
			}
		  }
		}

	local ore1_ani_per = 5
	local ore1_ani_dev = 0.75
	local ore1_dark_mul = 3
	local ore1_alpha_min = 0.1
	local ore1_alpha_max = 0.4

	if not angelsmods.ores.enablersomode then
	data:extend(
	{
		{
		type = "autoplace-control",
		name = "infinite-angels-ore1",
		richness = true,
		order = "b-e"
		},
		{
		type = "noise-layer",
		name = "infinite-angels-ore1"
		},
		{
		type = "resource",
		name = "infinite-angels-ore1",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore1.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = {r=0.26, g=0.30, b=0.39},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1,
		  mining_particle = "angels-ore1-particle",
		  mining_time = 1.5,
		  results = {
				{
					type = "item",
					name = "angels-ore1",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "infinite-angels-ore1",
			sharpness = 1,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 30,
			richness_base = 500,
			coverage = 0.01,
			peaks = {
				{
					noise_layer = "infinite-angels-ore1",
					noise_octaves_difference = -2.5,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
			}
		},
		stage_counts = {1},
		stages = angels_ore1_stage,
		stages_effect = angels_ore1_stage_effect,
		effect_animation_period = ore1_ani_per,
		effect_animation_period_deviation = ore1_ani_dev,
		effect_darkness_multiplier = ore1_dark_mul,
		min_effect_alpha = ore1_alpha_min,
		max_effect_alpha = ore1_alpha_max,
	  },
	}
	)
	else
	data:extend(
	{
	  {
		type = "resource",
		name = "infinite-angels-ore1",
		icon = "__angelsinfiniteores__/graphics/icons/angels-ore1.png",
		flags = {"placeable-neutral"},
		order="a-b-a",
	--	map_color = {r=0.21, g=0.25, b=0.34},
		map_color = {r=0.26, g=0.30, b=0.39},
		infinite=true,
		minimum=angelsmods.ores.yield,
		normal=1500,
		maximum=6000,
		minable =
		{
		  hardness = 1,
		  mining_particle = "angels-ore1-particle",
		  mining_time = 1.5,
		  results = {
				{
					type = "item",
					name = "angels-ore1",
					amount_min = 1,
					amount_max = 1,
					probability = angelsmods.ores.loweryield
				}
			},
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		stage_counts = {1},
		stages = angels_ore1_stage,
		stages_effect = angels_ore1_stage_effect,
		effect_animation_period = ore1_ani_per,
		effect_animation_period_deviation = ore1_ani_dev,
		effect_darkness_multiplier = ore1_dark_mul,
		min_effect_alpha = ore1_alpha_min,
		max_effect_alpha = ore1_alpha_max,
	  },
	}
	)
	end
	if angelsmods.ores.enablefluidreq then
	data.raw.resource["infinite-angels-ore1"].minable.fluid_amount = 10
		if angelsmods.petrochem then
			if angelsmods.trigger.enableacids then
				data.raw.resource["infinite-angels-ore1"].minable.required_fluid = "liquid-sulfuric-acid"
			else
				data.raw.resource["infinite-angels-ore1"].minable.required_fluid = "liquid-sulfuric-acid"
			end
		else
			data.raw.resource["infinite-angels-ore1"].minable.required_fluid = "sulfuric-acid"
		end
	end
end
	