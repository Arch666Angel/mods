if not angelsmods.ores.enablersomode then
data:extend(
{
  {
    type = "autoplace-control",
    name = "infinite-copper-ore",
    richness = true,
    order = "b-b"
  },
  {
    type = "noise-layer",
    name = "infinite-copper-ore"
  },
  {
    type = "resource",
    name = "infinite-copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "copper-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-copper-ore",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.01,
		peaks = {
			{
				noise_layer = "infinite-copper-ore",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				noise_layer = "infinite-copper-ore",
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
    stages =
    {
      sheet =
      {
    	filename = "__angelsinfiniteores__/graphics/entity/ores-inf/copper-ore-inf.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
}
)
else
data:extend(
{
  {
    type = "resource",
    name = "infinite-copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.9,
      mining_particle = "copper-ore-particle",
      mining_time = 2,
      result = "copper-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1},
    stages =
    {
      sheet =
      {
    	filename = "__angelsinfiniteores__/graphics/entity/ores-inf/copper-ore-inf.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
    map_color = {r=0.803, g=0.388, b=0.215}
  },
}
)
end