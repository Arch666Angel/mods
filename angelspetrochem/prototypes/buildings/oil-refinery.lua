-- mark default oil ref to be upgradeable to oil-refinery-2
local oilrefinery = data.raw["assembling-machine"]["oil-refinery"]
if not oilrefinery.fast_replaceable_group then
  oilrefinery.fast_replaceable_group = "oil-refinery"
end
if not oilrefinery.next_upgrade then
  oilrefinery.next_upgrade = "oil-refinery-2"
end

data:extend(
  {
    {
      type = "item",
      name = "oil-refinery-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-oil-refinery",
      order = "b[oil-refinery]-b",
      place_result = "oil-refinery-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "oil-refinery-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        2, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "oil-refinery-2"},
      fast_replaceable_group = "oil-refinery",
      next_upgrade = "oil-refinery-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"oil-processing"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.12 * 60
      },
      energy_usage = "500kW",
      ingredient_count = 4,
      animation = make_4way_animation_from_spritesheet(
        {
          layers = {
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
              width = 337,
              height = 255,
              frame_count = 1,
              shift = {2.515625, 0.484375},
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
                width = 386,
                height = 430,
                frame_count = 1,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
              width = 337,
              height = 213,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                width = 674,
                height = 426,
                frame_count = 1,
                shift = util.by_pixel(82.5, 26.5),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        }
      ),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version = {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, -3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    },
    {
      type = "item",
      name = "oil-refinery-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-oil-refinery",
      order = "b[oil-refinery]-c",
      place_result = "oil-refinery-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "oil-refinery-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        3, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "oil-refinery-3"},
      fast_replaceable_group = "oil-refinery",
      next_upgrade = "oil-refinery-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"oil-processing"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.14 * 60
      },
      energy_usage = "600kW",
      ingredient_count = 4,
      animation = make_4way_animation_from_spritesheet(
        {
          layers = {
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
              width = 337,
              height = 255,
              frame_count = 1,
              shift = {2.515625, 0.484375},
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
                width = 386,
                height = 430,
                frame_count = 1,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
              width = 337,
              height = 213,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                width = 674,
                height = 426,
                frame_count = 1,
                shift = util.by_pixel(82.5, 26.5),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        }
      ),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version = {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, -3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    },
    {
      type = "item",
      name = "oil-refinery-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-oil-refinery",
      order = "b[oil-refinery]-d",
      place_result = "oil-refinery-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "oil-refinery-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__base__/graphics/icons/oil-refinery.png",
            icon_size = 64, icon_mipmaps = 4,
            scale = 0.5
          }
        },
        4, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "oil-refinery-4"},
      fast_replaceable_group = "oil-refinery",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"oil-processing"},
      crafting_speed = 2.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.18 * 60
      },
      energy_usage = "700kW",
      ingredient_count = 4,
      animation = make_4way_animation_from_spritesheet(
        {
          layers = {
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
              width = 337,
              height = 255,
              frame_count = 1,
              shift = {2.515625, 0.484375},
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
                width = 386,
                height = 430,
                frame_count = 1,
                shift = util.by_pixel(0, -7.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
              width = 337,
              height = 213,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              hr_version = {
                filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
                width = 674,
                height = 426,
                frame_count = 1,
                shift = util.by_pixel(82.5, 26.5),
                draw_as_shadow = true,
                scale = 0.5
              }
            }
          }
        }
      ),
      working_visualisations = {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version = {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {-1, 3}}}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {1, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{position = {2, -3}}}
        }
      },
      pipe_covers = pipecoverspictures()
    }
  }
)
