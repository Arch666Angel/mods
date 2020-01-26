data:extend(
  {
  {
    type = "item",
    name = "thermal-extractor",
    icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
	icon_size = 32,
    subgroup = "refining-buildings",
    order = "a[thermal-extractor]",
    place_result = "thermal-extractor",
    stack_size = 10,
  },
  {
    type = "mining-drill",
    name = "thermal-extractor",
    icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "thermal-extractor"},
    resource_categories = {"angels-fissure"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{ -4.5, -4.5}, {4.5, 4.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
	  pipe_connections =
      { 
		{
          position = {-3, 5},
        },
      },
    },
    energy_usage = "90kW",
    mining_speed = 2,
    mining_power = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
	base_picture =
    {
      sheet =
      {
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
        priority = "extra-high",
        width = 288,
        height = 288,
        shift = {0, 0}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 288,
        height = 288,
        line_length = 4,
        shift = {0, 0},
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
		frame_count = 16,
		animation_speed = 0.5
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/thermal-extractor.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "thermal-extractor",
  }
}
)