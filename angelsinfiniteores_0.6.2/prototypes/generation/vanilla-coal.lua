local inf_coal_stage = 	{
      sheet =
      {
        filename = "__base__/graphics/entity/coal/coal.png",
        priority = "extra-high",
        width = 64,
        height = 64,
		line_length = 8,
        frame_count = 16,
        variation_count = 4,
        hr_version = {
          filename = "__base__/graphics/entity/coal/hr-coal.png",
          priority = "extra-high",
          width = 128,
          height = 128,
		  line_length = 8,
          frame_count = 16,
          variation_count = 4,
          scale = 0.5
        }
      }
    }
	
local inf_coal_stage_effect =     {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores/ore-12-lr-glow.png",
        priority = "extra-high",
        tint = {r = 0.2, g = 0.2, b = 0.2},
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
		  tint = {r = 0.2, g = 0.2, b = 0.2},
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

local inf_coal_ani_per = 3.5
local inf_coal_ani_dev = 0.7
local inf_coal_dark_mul = 3
local inf_coal_alpha_min = 0.3
local inf_coal_alpha_max = 0.8

if not angelsmods.ores.enablersomode then
data:extend(
{
 {
    type = "noise-layer",
    name = "infinite-coal"
 },
 {
    type = "autoplace-control",
    name = "infinite-coal",
    richness = true,
    order = "b-d"
 },
 {
    type = "resource",
    name = "infinite-coal",
    icon = "__base__/graphics/icons/coal.png",
    flags = {"placeable-neutral"},
    order="a-b-c",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.9,
      mining_particle = "coal-particle",
      mining_time = 2,
      result = "coal"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-coal",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.01,
		peaks = {
			{
				noise_layer = "infinite-coal",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				noise_layer = "infinite-coal",
				noise_octaves_difference = -2,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 1,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.15,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			}
		}
	},
    stage_counts = {1},
	stages = inf_coal_stage,
    stages_effect = inf_coal_stage_effect,
    effect_animation_period = inf_coal_ani_per,
    effect_animation_period_deviation = inf_coal_ani_dev,
    effect_darkness_multiplier = inf_coal_dark_mul,
    min_effect_alpha = inf_coal_alpha_min,
    max_effect_alpha = inf_coal_alpha_max,
    map_color = {r=0, g=0, b=0}
  },
}
)
else
data:extend(
{
  {
    type = "resource",
    name = "infinite-coal",
    icon = "__base__/graphics/icons/coal.png",
    flags = {"placeable-neutral"},
    order="a-b-c",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.9,
      mining_particle = "coal-particle",
      mining_time = 2,
      result = "coal"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1},
	stages = inf_coal_stage,
    stages_effect = inf_coal_stage_effect,
    effect_animation_period = inf_coal_ani_per,
    effect_animation_period_deviation = inf_coal_ani_dev,
    effect_darkness_multiplier = inf_coal_dark_mul,
    min_effect_alpha = inf_coal_alpha_min,
    max_effect_alpha = inf_coal_alpha_max,
    map_color = {r=0, g=0, b=0}
  },
}
)
end