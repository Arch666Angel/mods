data:extend(
  {
  {
    type = "item",
    name = "heavy-pump",
    icon = "__angelspetrochem__/graphics/icons/heavy-pump.png",
	icon_size = 32,
	subgroup = "petrochem-well-head",
    order = "g[heavy-pump]",
    place_result = "heavy-pump",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "heavy-pump",
    icon = "__angelspetrochem__/graphics/icons/heavy-pump.png",
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "heavy-pump"},
	fast_replaceable_group = "heavy-pump",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"heavy-pump"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "60kW",
    ingredient_count = 4,
	animation =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/heavy-pump.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/heavy-pump.png",
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/heavy-pump.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/heavy-pump.png",
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      }
    },
    working_visualisations =
    {
      {
        north_position = {0, 0},
        east_position = {0, -0.1},
        south_position = {0, -0.25},
        west_position = {0, -0.15},
        animation =
        {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-animation.png",
          frame_count = 36,
		  line_length = 6,
          width = 64,
          height = 64,
          shift = {0, 0},
		  animation_speed = 0.25,
          run_mode="forward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
     vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -2} }}
      }
    },
    pipe_covers = pipecoverspictures(),
    },
 }
)