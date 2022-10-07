data:extend(
  {
    {
      type = "item",
      name = "advanced-chemical-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "b[advanced]-a",
      place_result = "advanced-chemical-plant",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "advanced-chemical-plant",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        1, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "advanced-chemical-plant"},
      fast_replaceable_group = "advanced-chemical-plant",
      next_upgrade = "advanced-chemical-plant-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"advanced-chemistry"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
            width = 224,
            height = 224,
            frame_count = 16,
            line_length = 4,
            animation_speed = 0.5,
            shift = {0, 0}
          }
          -- {
          -- filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- animation_speed = 0.5,
          -- shift = {0, 0},
          -- },
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
        --off_when_no_fluid_recipe = true
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "advanced-chemical-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-chemical-plant",
      order = "b[advanced]-b",
      place_result = "advanced-chemical-plant-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "advanced-chemical-plant-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/advanced-chemical-plant.png",
            icon_size = 32, icon_mipmaps = 1,
          }
        },
        2, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "advanced-chemical-plant-2"},
      fast_replaceable_group = "advanced-chemical-plant",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = { "advanced-chemistry"},
      crafting_speed = 2.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.08 * 60
      },
      energy_usage = "400kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
            width = 224,
            height = 224,
            frame_count = 16,
            line_length = 4,
            animation_speed = 0.5,
            shift = {0, 0}
          }
          -- {
          -- filename = "__angelspetrochem__/graphics/entity/advanced-chemical-plant/5x5-overlay.png",
          -- tint = {r = 0.8, g = 0, b = 0},
          -- width = 160,
          -- height = 160,
          -- frame_count = 1,
          -- line_length = 4,
          -- animation_speed = 0.5,
          -- shift = {0, 0},
          -- },
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {2, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "input",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-2, 3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          --pipe_picture = floatationpipepictures(),
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
        --off_when_no_fluid_recipe = true
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      }
    }
  }
)
