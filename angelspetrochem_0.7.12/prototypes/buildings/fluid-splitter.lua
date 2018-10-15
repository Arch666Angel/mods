data:extend(
{
    {
    type = "item",
    name = "angels-fluid-splitter-2-way",
    icon = "__angelspetrochem__/graphics/icons/fluid-splitter-1.png",
	flags = {"goes-to-quickbar"},
	subgroup = "angels-fluid-control",
    order = "e[angels-fluid-splitter-2-way]",
    place_result = "angels-fluid-splitter-2-way",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "angels-fluid-splitter-2-way",
    icon = "__angelspetrochem__/graphics/icons/fluid-splitter-1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-fluid-splitter-2-way"},
    max_health = 100,
    fast_replaceable_group = "angels-fluid-splitter-2-way",
    corpse = "small-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	module_specification =
    {
      module_slots = 2
    },
	allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"angels-fluid-splitter"},
    result_inventory_size = 1,
    result_count = 2,
    crafting_speed = 4,
    source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
		base_area = 0.3,
		--base_area = 0.2,
        base_level = 1,
        pipe_connections = {{ position = {2, -1} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
		base_area = 0.3,
		--base_area = 0.2,
        base_level = 1,
        pipe_connections = {{ position = {-2, -1} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
	animation =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-1.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-1.png",
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-1.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-1.png",
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
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
    {
    type = "item",
    name = "angels-fluid-splitter-3-way",
    icon = "__angelspetrochem__/graphics/icons/fluid-splitter-2.png",
	flags = {"goes-to-quickbar"},
	subgroup = "angels-fluid-control",
    order = "e[angels-fluid-splitter-3-way]",
    place_result = "angels-fluid-splitter-3-way",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "angels-fluid-splitter-3-way",
    icon = "__angelspetrochem__/graphics/icons/fluid-splitter-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-fluid-splitter-3-way"},
    max_health = 100,
    fast_replaceable_group = "angels-fluid-splitter-3-way",
    corpse = "small-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    --crafting_categories = {"angels-fluid-splitter-3-way"},
	crafting_categories = {"angels-fluid-splitter"},
    result_inventory_size = 1,
    result_count = 3,
    crafting_speed = 4,
    source_inventory_size = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 0.2,
        base_level = 1,
        pipe_connections = {{ position = {0, -2} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
		base_area = 0.2,
        base_level = 1,
        pipe_connections = {{ position = {2, -1} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
		base_area = 0.2,
        base_level = 1,
        pipe_connections = {{ position = {-2, -1} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
	animation =
    {
      north =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-2.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      east =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-2.png",
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      south =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-2.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      west =
      {
        filename = "__angelspetrochem__/graphics/entity/fluid-splitter/fluid-splitter-2.png",
        x = 480,
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
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)