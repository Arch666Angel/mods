circuit_connector_definitions["angels-charging-station"] = circuit_connector_definitions.create(
  universal_connector_template,
  {
    {variation = 26, main_offset = util.by_pixel(28, 36), shadow_offset = util.by_pixel(30, 48), show_shadow = false}
  }
)

data:extend(
  {
    {
      type = "item",
      name = "angels-charging-station",
      icon = "__angelsindustries__/graphics/icons/charging-station-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-ports",
      order = "a[roboport]-d",
      place_result = "angels-charging-station",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-charging-station",
      icon = "__angelsindustries__/graphics/icons/charging-station-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-charging-station"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -2}, {1.5, 1.5}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "1.5MW", -- 200kW drain + 4 * 200kW recharging bots + 500kW buffer filling
        buffer_capacity = "30MJ",
        --drain = "200kW"
      },
      charging_energy = "200kW",
      recharge_minimum = "20MJ",
      energy_usage = "200kW",
      logistics_radius = 0,
      logistics_connection_distance = 9.5,
      construction_radius = 0,
      charge_approach_distance = 10,
      robot_slots_count = 0,
      material_slots_count = 0,
      stationing_offset = {2, -3.5},
      charging_offsets = {
        {-0.75, -1},
        {-0.75, -2},
        {0.75, -1},
        {0.75, -2}
      },
      base = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        shift = {0, 0}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/charging-station.png",
        priority = "medium",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = {0, -0},
        animation_speed = 0.25
      },
      base_patch = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        frame_count = 1
      },
      door_animation = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        frame_count = 1
      },
      door_animation_up = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        frame_count = 1
      },
      door_animation_down = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        frame_count = 1
      },
      recharging_animation = {
        filename = "__angelsindustries__/graphics/entity/empty.png",
        width = 1,
        height = 1,
        frame_count = 1
      },
      recharging_light = {intensity = 0, size = 0},
      request_to_open_door_timeout = 0,
      spawn_and_station_height = 0,
      draw_logistic_radius_visualization = true,
      draw_construction_radius_visualization = true,
      circuit_wire_connection_point = circuit_connector_definitions["angels-charging-station"].points,
      circuit_connector_sprites = circuit_connector_definitions["angels-charging-station"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    }
  }
)
