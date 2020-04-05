circuit_connector_definitions["extender-1"] =
  circuit_connector_definitions.create(
  universal_connector_template,
  {
    {variation = 26, main_offset = util.by_pixel(0, 0), shadow_offset = util.by_pixel(2, 12), show_shadow = false}
  }
)

circuit_connector_definitions["extender-2"] =
  circuit_connector_definitions.create(
  universal_connector_template,
  {
    {variation = 26, main_offset = util.by_pixel(8, 0), shadow_offset = util.by_pixel(10, 12), show_shadow = false}
  }
)

circuit_connector_definitions["charger"] =
  circuit_connector_definitions.create(
  universal_connector_template,
  {
    {variation = 26, main_offset = util.by_pixel(28, 36), shadow_offset = util.by_pixel(30, 48), show_shadow = false}
  }
)

data:extend(
  {
    {
      type = "item",
      name = "angels-relay-station",
      icon = "__angelsindustries__/graphics/icons/small-relay-station-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-a",
      place_result = "angels-relay-station",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-relay-station",
      icon = "__angelsindustries__/graphics/icons/small-relay-station-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-relay-station"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      --collision_mask = {"ghost-layer"},
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      drawing_box = {{-0.5, -1.5}, {0.5, 0.5}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "0.25MW",
        buffer_capacity = "6MJ"
      },
      charging_energy = "50kW",
      recharge_minimum = "5MJ",
      energy_usage = "50kW",
      logistics_radius = 4.5,
      construction_radius = 0,
      charge_approach_distance = 10,
      robot_slots_count = 0,
      material_slots_count = 0,
      stationing_offset = {0, 0},
      charging_offsets = {{0, 0}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-base-lr.png",
        width = 64,
        height = 112,
        shift = {0.25, -1}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-relay-station-lr.png",
        priority = "medium",
        width = 64,
        height = 112,
        frame_count = 16,
        line_length = 4,
        shift = {0.25, -1},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-1"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-1"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
    {
      type = "item",
      name = "angels-relay-station-2",
      icon = "__angelsindustries__/graphics/icons/medium-relay-station-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-b",
      place_result = "angels-relay-station-2",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-relay-station-2",
      icon = "__angelsindustries__/graphics/icons/medium-relay-station-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-relay-station-2"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      --collision_mask = {"ghost-layer"},
      collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -3}, {1, 1}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "0.5MW",
        buffer_capacity = "12MJ"
      },
      charging_energy = "100kW",
      recharge_minimum = "10MJ",
      energy_usage = "100kW",
      logistics_radius = 10,
      construction_radius = 0,
      charge_approach_distance = 10,
      robot_slots_count = 0,
      material_slots_count = 0,
      stationing_offset = {2, -3.5},
      charging_offsets = {{-1, -3.5}, {1, -3.5}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-base-lr.png",
        width = 128,
        height = 224,
        shift = {0.5, -1.75}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-relay-station-lr.png",
        priority = "medium",
        width = 128,
        height = 224,
        frame_count = 16,
        line_length = 4,
        shift = {0.5, -1.75},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-2"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-2"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
    {
      type = "item",
      name = "angels-zone-expander",
      icon = "__angelsindustries__/graphics/icons/small-logistic-zone-expander-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-c",
      place_result = "angels-zone-expander",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-zone-expander",
      icon = "__angelsindustries__/graphics/icons/small-logistic-zone-expander-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-zone-expander"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      drawing_box = {{-0.5, -1.5}, {0.5, 0.5}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "1kW",
        buffer_capacity = "1kW"
      },
      charging_energy = "0kW",
      recharge_minimum = "0MJ",
      energy_usage = "0kW",
      logistics_radius = 4.5,
      construction_radius = 0,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      -- stationing_offset = {0, 0},
      -- charging_offsets = {{0, 0}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-base-lr.png",
        width = 64,
        height = 112,
        shift = {0.25, -1}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-logistic-zone-expander-lr.png",
        priority = "medium",
        width = 64,
        height = 112,
        frame_count = 16,
        line_length = 4,
        shift = {0.25, -1},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-1"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-1"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
    {
      type = "item",
      name = "angels-zone-expander-2",
      icon = "__angelsindustries__/graphics/icons/medium-logistic-zone-expander-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-d",
      place_result = "angels-zone-expander-2",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-zone-expander-2",
      icon = "__angelsindustries__/graphics/icons/medium-logistic-zone-expander-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-zone-expander-2"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -3}, {1, 1}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "1kW",
        buffer_capacity = "1kW"
      },
      charging_energy = "0kW",
      recharge_minimum = "0MJ",
      energy_usage = "0kW",
      logistics_radius = 10,
      construction_radius = 0,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      -- stationing_offset = {0, 0},
      -- charging_offsets = {{0, 0}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-base-lr.png",
        width = 128,
        height = 224,
        shift = {0.5, -1.75}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-logistic-zone-expander-lr.png",
        priority = "medium",
        width = 128,
        height = 224,
        frame_count = 16,
        line_length = 4,
        shift = {0.5, -1.75},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-2"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-2"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
    {
      type = "item",
      name = "angels-construction-zone-expander",
      icon = "__angelsindustries__/graphics/icons/small-construction-zone-expander-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-e",
      place_result = "angels-construction-zone-expander",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-construction-zone-expander",
      icon = "__angelsindustries__/graphics/icons/small-construction-zone-expander-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-construction-zone-expander"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      drawing_box = {{-0.5, -1.5}, {0.5, 0.5}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "1kW",
        buffer_capacity = "1kW"
      },
      charging_energy = "0kW",
      recharge_minimum = "0MJ",
      energy_usage = "0kW",
      logistics_radius = 4.5,
      construction_radius = 18,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      -- stationing_offset = {0, 0},
      -- charging_offsets = {{0, 0}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-base-lr.png",
        width = 64,
        height = 112,
        shift = {0.25, -1}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/small-construction-zone-expander-lr.png",
        priority = "medium",
        width = 64,
        height = 112,
        frame_count = 16,
        line_length = 4,
        shift = {0.25, -1},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-1"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-1"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
    {
      type = "item",
      name = "angels-construction-zone-expander-2",
      icon = "__angelsindustries__/graphics/icons/medium-construction-zone-expander-icon.png",
      icon_size = 32,
      subgroup = "angels-cargo-expander",
      order = "b[expander]-f",
      place_result = "angels-construction-zone-expander-2",
      stack_size = 50
    },
    {
      type = "roboport",
      name = "angels-construction-zone-expander-2",
      icon = "__angelsindustries__/graphics/icons/medium-construction-zone-expander-icon.png",
      icon_size = 32,
      flags = {"placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "angels-construction-zone-expander-2"},
      fast_replaceable_group = "roboport",
      max_health = 500,
      corpse = "small-remnants",
      collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -3}, {1, 1}},
      dying_explosion = "medium-explosion",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        input_flow_limit = "1kW",
        buffer_capacity = "1kW"
      },
      charging_energy = "0kW",
      recharge_minimum = "0MJ",
      energy_usage = "0kW",
      logistics_radius = 10,
      construction_radius = 36,
      charge_approach_distance = 0,
      robot_slots_count = 0,
      material_slots_count = 0,
      -- stationing_offset = {0, 0},
      -- charging_offsets = {{0, 0}},
      base = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-base-lr.png",
        width = 128,
        height = 224,
        shift = {0.5, -1.75}
      },
      base_animation = {
        filename = "__angelsindustries__/graphics/entity/zone-expander/medium-construction-zone-expander-lr.png",
        priority = "medium",
        width = 128,
        height = 224,
        frame_count = 16,
        line_length = 4,
        shift = {0.5, -1.75},
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
      circuit_wire_connection_point = circuit_connector_definitions["extender-2"].points,
      circuit_connector_sprites = circuit_connector_definitions["extender-2"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    },
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
        input_flow_limit = "1MW",
        buffer_capacity = "24MJ"
      },
      charging_energy = "200kW",
      recharge_minimum = "20MJ",
      energy_usage = "200kW",
      logistics_radius = 9.5,
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
      circuit_wire_connection_point = circuit_connector_definitions["charger"].points,
      circuit_connector_sprites = circuit_connector_definitions["charger"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance,
      default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
      default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
      default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
      default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
    }
  }
)
