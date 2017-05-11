data:extend(
{
    {
    type = "item",
    name = "steam-cracker",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "c[steam-cracker]",
    place_result = "steam-cracker",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "steam-cracker",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-cracker"},
	fast_replaceable_group = "steam-cracker",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"steam-cracking"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "200kW",
    ingredient_count = 3,
	animation ={
	layers={
	{
        filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5},
	},
	-- {
        -- filename = "__angelspetrochem__/graphics/entity/steam-cracker/5x5-overlay.png",
		-- tint = {r = 0.8, g = 0, b = 0},
        -- width = 160,
        -- height = 160,
        -- frame_count = 1,
		-- line_length = 4,
        -- shift = {0, 0},
		-- animation_speed = 0.5
	-- },
	}
	},
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          scale = 2,
          shift = {-2, -3.8},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {-2, -3.8},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	-- working_visualisations =
    -- {
      -- {
        -- animation =
        -- {
          -- filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          -- frame_count = 29,
          -- width = 16,
          -- height = 35,
          -- scale = 2,
          -- shift = {-2, -3.8},
          -- run_mode="backward"
        -- },
        -- light = {intensity = 0.8, size = 6}
      -- }
    -- },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/steam-cracker.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
   {
    type = "item",
    name = "steam-cracker-2",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "d[steam-cracker-2]",
    place_result = "steam-cracker-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "steam-cracker-2",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-cracker-2"},
	fast_replaceable_group = "steam-cracker",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"steam-cracking"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "225kW",
    ingredient_count = 3,
	animation ={
	layers={
	{
        filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5},
	},
	-- {
        -- filename = "__angelspetrochem__/graphics/entity/steam-cracker/5x5-overlay.png",
		-- tint = {r = 0.8, g = 0, b = 0},
        -- width = 160,
        -- height = 160,
        -- frame_count = 1,
		-- line_length = 4,
        -- shift = {0, 0},
		-- animation_speed = 0.5
	-- },
	}
	},
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          scale = 2,
          shift = {-2, -3.8},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {-2, -3.8},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/steam-cracker.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
  {
    type = "item",
    name = "steam-cracker-3",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "e[steam-cracker-3]",
    place_result = "steam-cracker-3",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "steam-cracker-3",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-cracker-3"},
	fast_replaceable_group = "steam-cracker",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"steam-cracking"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "250kW",
    ingredient_count = 3,
	animation ={
	layers={
	{
        filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5},
	},
	-- {
        -- filename = "__angelspetrochem__/graphics/entity/steam-cracker/5x5-overlay.png",
		-- tint = {r = 0.8, g = 0, b = 0},
        -- width = 160,
        -- height = 160,
        -- frame_count = 1,
		-- line_length = 4,
        -- shift = {0, 0},
		-- animation_speed = 0.5
	-- },
	}
	},
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          scale = 2,
          shift = {-2, -3.8},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {-2, -3.8},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/steam-cracker.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
 {
    type = "item",
    name = "steam-cracker-4",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "f[steam-cracker-4]",
    place_result = "steam-cracker-4",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "steam-cracker-4",
    icon = "__angelspetrochem__/graphics/icons/steam-cracker.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-cracker-4"},
	fast_replaceable_group = "steam-cracker",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"steam-cracking"},
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "275kW",
    ingredient_count = 3,
	animation ={
	layers={
	{
        filename = "__angelspetrochem__/graphics/entity/steam-cracker/steam-cracker.png",
		priority = "extra-high",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
        shift = {0.5, -0.5},
	},
	-- {
        -- filename = "__angelspetrochem__/graphics/entity/steam-cracker/5x5-overlay.png",
		-- tint = {r = 0.8, g = 0, b = 0},
        -- width = 160,
        -- height = 160,
        -- frame_count = 1,
		-- line_length = 4,
        -- shift = {0, 0},
		-- animation_speed = 0.5
	-- },
	}
	},
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          scale = 2,
          shift = {-2, -3.8},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {-2, -3.8},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/steam-cracker.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -3} }}
      },
      {
        production_type = "output",
		--pipe_picture = floatationpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
    },
  }
  )