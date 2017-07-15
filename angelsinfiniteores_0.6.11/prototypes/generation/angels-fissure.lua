data:extend(
{
  {
    type = "noise-layer",
    name = "angels-fissure"
  },
  {
    type = "autoplace-control",
    name = "angels-fissure",
    richness = true,
    order = "b-e"
  },
  {
    type = "resource",
    name = "angels-fissure",
    icon = "__base__/graphics/icons/crude-oil.png",
    flags = {"placeable-neutral"},
    category = "angels-fissure",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = angelsmods.ores.fissureyield,
    normal = 100000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "thermal-water",
          amount_min = 20,
          amount_max = 20,
          probability = 1
        },
      }
    },
    collision_box = {{ -4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},
    autoplace =
    {
      control = "angels-fissure",
      sharpness = 0.98,
      max_probability = 0.04,
      richness_base = 75000,
      richness_multiplier = 100000,
      richness_multiplier_distance_bonus = 1000,
      coverage = 0.01,
      peaks =
      {
        {
		noise_layer = "angels-fissure",
		noise_octaves_difference = -1.5,
		noise_persistence = 0.3,
		starting_area_weight_optimal = 0,
		starting_area_weight_range = 0,
		starting_area_weight_max_range = 2,
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/patches/fissure.png",
		tint = {r = 0.65, g = 0.4, b = 0.15},
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 4,
        variation_count = 1,
      }
    },
    stages_effect =
    {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/patches/fissure-glow.png",
		tint = {r = 1, g = 0.3, b = 0.1},
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 4,
        variation_count = 1,
        blend_mode = "additive-soft",
        flags = {"light"},
       }
    },
    effect_animation_period = 6,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3,
    min_effect_alpha = 0.3,
    max_effect_alpha = 0.6,
    map_color = {r=1, g=0.5, b=0},
    map_grid = false
  }
})