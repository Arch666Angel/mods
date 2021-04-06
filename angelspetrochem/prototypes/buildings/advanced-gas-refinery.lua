data:extend(
{
  --ADVANCED REFINERY
  {
    type = "item",
    name = "gas-refinery",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      1, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-a",
    place_result = "gas-refinery",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      1, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery"},
    fast_replaceable_group = "gas-refinery",
    next_upgrade = "gas-refinery-2",
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
      emissions_per_minute = 0.06 * 60
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
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      2, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-b",
    place_result = "gas-refinery-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-2",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      2, angelsmods.petrochem.number_tint),
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gas-refinery-2"},
    fast_replaceable_group = "gas-refinery",
    next_upgrade = "gas-refinery-3",
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
      emissions_per_minute = 0.08 * 60
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
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      3, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-c",
    place_result = "gas-refinery-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-3",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      3, angelsmods.petrochem.number_tint),
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
      emissions_per_minute = 0.10 * 60
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
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      4, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-gas-refinery",
    order = "b[gas-refinery]-d",
    place_result = "gas-refinery-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "gas-refinery-4",
    icons = angelsmods.functions.add_number_icon_layer(
      {
        {
          icon = "__angelspetrochem__/graphics/icons/gas-refinery.png",
          icon_size = 32, icon_mipmaps = 1,
        }
      },
      4, angelsmods.petrochem.number_tint),
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
      emissions_per_minute = 0.12 * 60
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
