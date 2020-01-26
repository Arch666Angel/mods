data:extend(
  {
--SMALL REFINERY
  {
    type = "item",
    name = "gas-refinery-small",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    subgroup = "petrochem-separator-gas-refinery",
    order = "e[gas-refinery]",
    place_result = "gas-refinery-small",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-small",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-small"},
	fast_replaceable_group = "gas-refinery-small",
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
    crafting_categories = {"gas-refining"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "300kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5},
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
          shift = {2, -2.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2, -2.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-small-2",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    subgroup = "petrochem-separator-gas-refinery",
    order = "f[gas-refinery-2]",
    place_result = "gas-refinery-small-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-small-2",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-small-2"},
	fast_replaceable_group = "gas-refinery-small",
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
    crafting_categories = {"gas-refining"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "350kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5},
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
          shift = {2, -2.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2, -2.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-small-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,	
    subgroup = "petrochem-separator-gas-refinery",
    order = "g[gas-refinery-3]",
    place_result = "gas-refinery-small-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-small-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-small-3"},
	fast_replaceable_group = "gas-refinery-small",
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
    crafting_categories = {"gas-refining"},
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "400kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5},
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
          shift = {2, -2.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2, -2.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
	},
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-small-4",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "petrochem-separator-gas-refinery",
    order = "h[gas-refinery-4]",
    place_result = "gas-refinery-small-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-small-4",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-small-4"},
	fast_replaceable_group = "gas-refinery-small",
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
    crafting_categories = {"gas-refining"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "425kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-small.png",
        width = 512,
        height = 512,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {0.5, -0.5},
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
          shift = {2, -2.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2, -2.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
--ADVANCED REFINERY
  {
    type = "item",
    name = "gas-refinery",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "e[gas-refinery]",
    place_result = "gas-refinery",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_1.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery"},
	fast_replaceable_group = "gas-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "400kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
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
          shift = {2.9, -3.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2.9, -3.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-2",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "f[gas-refinery-2]",
    place_result = "gas-refinery-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-2",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_2.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-2"},
	fast_replaceable_group = "gas-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "450kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
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
          shift = {2.9, -3.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2.9, -3.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "g[gas-refinery-3]",
    place_result = "gas-refinery-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-3",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_3.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-3"},
	fast_replaceable_group = "gas-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "500kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
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
          shift = {2.9, -3.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2.9, -3.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
  {
    type = "item",
    name = "gas-refinery-4",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    subgroup = "petrochem-steam-cracker-advanced-chemical-plant",
    order = "h[gas-refinery-4]",
    place_result = "gas-refinery-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-4",
    icons = {
		{
			icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
		},
		{
			icon = "__angelspetrochem__/graphics/icons/num_4.png",
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12},
		}
	},
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-4"},
	fast_replaceable_group = "gas-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-refining"},
    crafting_speed = 2.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "600kW",
    ingredient_count = 4,
    animation =
    {
        filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery.png",
        width = 704,
        height = 704,
		scale = 0.5,
        frame_count = 1,
		line_length = 1,
        shift = {1, -1},
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
          shift = {2.9, -3.5},
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 1,
			shift = {2.9, -3.5},
          },
        },
        light = {intensity = 0.8, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 0.50,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 4} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-3, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, -4} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {3, -4} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelspetrochem__/sound/gas-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
}
)