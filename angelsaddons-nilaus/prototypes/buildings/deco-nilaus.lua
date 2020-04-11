require("util")

if not data.raw["equipment-category"]["equipment-void"] then
  data:extend(
    {
      {
        type = "equipment-category",
        name = "equipment-void"
      }
    }
  )
end

data:extend(
  {
    {
      type = "equipment-grid",
      name = "deco-nilaustruck",
      width = 10,
      height = 10,
      equipment_categories = {"equipment-void"}
    },
    {
      type = "item",
      name = "deco-nilaus-1",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
      icon_size = 32,
      subgroup = "storage",
      order = "za",
      place_result = "deco-nilaus-1",
      stack_size = 10
    },
    {
      type = "simple-entity-with-force",
      name = "deco-nilaus-1",
      render_layer = "object",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      order = "a",
      minable = {mining_time = 1, result = "deco-nilaus-1"},
      max_health = 100,
      corpse = "small-remnants",
      collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -2.5}, {1.5, 1.5}},
      random_animation_offset = false,
      animations = {
        {
          filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-1.png",
          priority = "extra-high",
          width = 320,
          height = 320,
          line_length = 6,
          frame_count = 36,
          animation_speed = 0.25,
          scale = 0.5,
          shift = {0.5, -0.5}
        }
      }
    },
    {
      type = "item",
      name = "deco-nilaus-2",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
      icon_size = 32,
      subgroup = "storage",
      order = "zb",
      place_result = "deco-nilaus-2",
      stack_size = 10
    },
    {
      type = "container",
      name = "deco-nilaus-2",
      render_layer = "object",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
      icon_size = 32,
      inventory_size = 64,
      flags = {"placeable-neutral", "player-creation"},
      order = "a",
      minable = {mining_time = 1, result = "deco-nilaus-2"},
      max_health = 100,
      corpse = "small-remnants",
      collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      random_animation_offset = false,
      picture = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-2.png",
        priority = "extra-high",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = {0.5, -0.5}
      },
      open_sound = {filename = "__base__/sound/wooden-chest-open.ogg"},
      close_sound = {filename = "__base__/sound/wooden-chest-close.ogg"},
      vehicle_impact_sound = {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
      circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
      circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    {
      type = "item",
      name = "deco-nilaus-lamp",
      icon = "__angelsaddons-nilaus__/graphics/icons/lamp-ico.png",
      icon_size = 64,
      subgroup = "storage",
      order = "zc",
      place_result = "deco-nilaus-lamp",
      stack_size = 10
    },
    {
      type = "lamp",
      name = "deco-nilaus-lamp",
      icon = "__angelsaddons-nilaus__/graphics/icons/lamp-ico.png",
      icon_size = 64,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.1, result = "deco-nilaus-lamp"},
      max_health = 100,
      corpse = "lamp-remnants",
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      energy_source = {
        type = "electric",
        usage_priority = "lamp"
      },
      energy_usage_per_tick = "5KW",
      darkness_for_all_lamps_on = 0.5,
      darkness_for_all_lamps_off = 0.3,
      light = {intensity = 0.9, size = 40, color = {r = 1.0, g = 1.0, b = 1.0}},
      light_when_colored = {intensity = 1, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
      glow_size = 6,
      glow_color_intensity = 0.135,
      picture_off = {
        filename = "__angelsaddons-nilaus__/graphics/entity/lamp.png",
        priority = "high",
        width = 128,
        height = 128,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        --shift = util.by_pixel(0,3),
        scale = 0.5
      },
      picture_on = {
        filename = "__angelsaddons-nilaus__/graphics/entity/lamp-patch.png",
        priority = "high",
        width = 128,
        height = 128,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        --shift = util.by_pixel(0,3),
        scale = 0.5
      },
      signal_to_color_mapping = {
        {type = "virtual", name = "signal-red", color = {r = 1, g = 0, b = 0}},
        {type = "virtual", name = "signal-green", color = {r = 0, g = 1, b = 0}},
        {type = "virtual", name = "signal-blue", color = {r = 0, g = 0, b = 1}},
        {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
        {type = "virtual", name = "signal-pink", color = {r = 1, g = 0, b = 1}},
        {type = "virtual", name = "signal-cyan", color = {r = 0, g = 1, b = 1}}
      },
      circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
      circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    -- {
    -- type = "equipment-grid",
    -- name = "nilaus-truck",
    -- width = 12,
    -- height = 12,
    -- equipment_categories = {}
    -- },
    {
      type = "item-with-entity-data",
      name = "nilaus-truck",
      icon = "__angelsaddons-nilaus__/graphics/icons/nilaus-truck-ico.png",
      icon_size = 64,
      subgroup = "transport",
      order = "b[nilaus-truck]",
      place_result = "nilaus-truck",
      stack_size = 1
    },
    {
      type = "car",
      name = "nilaus-truck",
      icon = "__angelsaddons-nilaus__/graphics/icons/nilaus-truck-ico.png",
      icon_size = 64,
      flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
      minable = {mining_time = 1, result = "nilaus-truck"},
      max_health = 600,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      energy_per_hit_point = 0.5,
      resistances = {
        {
          type = "fire",
          decrease = 10,
          percent = 30
        },
        {
          type = "physical",
          decrease = 15,
          percent = 40
        },
        {
          type = "impact",
          decrease = 40,
          percent = 40
        },
        {
          type = "explosion",
          decrease = 10,
          percent = 30
        },
        {
          type = "acid",
          decrease = 10,
          percent = 30
        }
      },
      collision_box = {{-1.5, -2.25}, {1.5, 2.25}},
      selection_box = {{-1.5, -2.25}, {1.5, 2.25}},
      effectivity = 3,
      braking_power = "160kW",
      burner = {
        effectivity = 2,
        fuel_inventory_size = 2,
        smoke = {
          {
            name = "tank-smoke",
            deviation = {0.25, 0.25},
            frequency = 50,
            position = {0.5, 2},
            starting_frame = 0,
            starting_frame_deviation = 60
          },
          {
            name = "tank-smoke",
            deviation = {0.25, 0.25},
            frequency = 50,
            position = {-0.5, 2},
            starting_frame = 0,
            starting_frame_deviation = 60
          }
        }
      },
      consumption = "40kW",
      terrain_friction_modifier = 1,
      friction = 0.003,
      light = {
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {-1, -14},
          size = 2,
          intensity = 0.6
        },
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {1, -14},
          size = 2,
          intensity = 0.6
        }
      },
      animation = {
        layers = {
          {
            width = 512,
            height = 512,
            frame_count = 2,
            direction_count = 64,
            shift = {0, 0},
            animation_speed = 4,
            max_advance = 1,
            scale = 0.5,
            stripes = {
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-1.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-2.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-3.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-4.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-5.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-6.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-7.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-8.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-9.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-10.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-11.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-12.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-13.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-14.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-15.png",
                width_in_frames = 2,
                height_in_frames = 4
              },
              {
                filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-16.png",
                width_in_frames = 2,
                height_in_frames = 4
              }
            }
          },
          {
            width = 256,
            height = 256,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = {0, 0},
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(
              2,
              {
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-1.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-2.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-3.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-4.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-5.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-6.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-7.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-mask-8.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                }
              }
            )
          },
          {
            width = 256,
            height = 256,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = {0, 0},
            max_advance = 1,
            stripes = util.multiplystripes(
              2,
              {
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-1.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-2.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-3.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-4.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-5.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-6.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-7.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                },
                {
                  filename = "__angelsaddons-nilaus__/graphics/entity/truck/base-shadow-8.png",
                  width_in_frames = 1,
                  height_in_frames = 8
                }
              }
            )
          }
        }
      },
      stop_trigger_speed = 0.2,
      sound_no_fuel = {
        {
          filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
          volume = 0.6
        }
      },
      stop_trigger = {
        {
          type = "play-sound",
          sound = {
            {
              filename = "__base__/sound/car-breaks.ogg",
              volume = 0.6
            }
          }
        }
      },
      sound_minimum_speed = 0.1,
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          filename = "__angelsaddons-nilaus__/sound/truck-run.ogg",
          volume = 1
        },
        activate_sound = {
          filename = "__angelsaddons-nilaus__/sound/truck-start.ogg",
          volume = 1
        },
        deactivate_sound = {
          filename = "__angelsaddons-nilaus__/sound/truck-off.ogg",
          volume = 1
        },
        match_speed_to_activity = false
      },
      open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
      close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
      rotation_speed = 0.005,
      tank_driving = false,
      weight = 2000,
      inventory_size = 120
      --guns = {},
      --equipment_grid = "nilaus-truck",
    },
    {
      type = "item",
      name = "deco-nilaus-start",
      icon = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
      icon_size = 416,
      --flags = {},
      subgroup = "storage",
      order = "zd",
      place_result = "deco-nilaus-start",
      stack_size = 10
    },
    {
      type = "lamp",
      name = "deco-nilaus-start",
      icon = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
      icon_size = 416,
      flags = {"placeable-neutral", "player-creation"},
      collision_mask = {"ghost-layer", "water-tile"},
      render_layer = "decals",
      tile_layer = 70,
      minable = {hardness = 2, mining_time = 10, result = "deco-nilaus-start"},
      max_health = 1000,
      corpse = "big-remnants",
      collision_box = {{-5.4, -0.4}, {5.4, 10.4}},
      selection_box = {{-5.5, -0.5}, {5.5, 10.5}},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      energy_source = {
        type = "electric",
        usage_priority = "lamp"
      },
      energy_usage_per_tick = "50KW",
      darkness_for_all_lamps_on = 0.5,
      darkness_for_all_lamps_off = 0.3,
      light = {intensity = 0.9, size = 40, color = {r = 1.0, g = 1.0, b = 1.0}},
      light_when_colored = {intensity = 1, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
      glow_size = 6,
      glow_color_intensity = 0.135,
      picture_off = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0, 5}
      },
      picture_on = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-on.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0, 5}
      },
      signal_to_color_mapping = {
        {type = "virtual", name = "signal-red", color = {r = 1, g = 0, b = 0}},
        {type = "virtual", name = "signal-green", color = {r = 0, g = 1, b = 0}},
        {type = "virtual", name = "signal-blue", color = {r = 0, g = 0, b = 1}},
        {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
        {type = "virtual", name = "signal-pink", color = {r = 1, g = 0, b = 1}},
        {type = "virtual", name = "signal-cyan", color = {r = 0, g = 1, b = 1}}
      },
      circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
      circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    }
  }
)
