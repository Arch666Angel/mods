data:extend(
{
  {
    type = "item",
    name = "silo",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "a",
    place_result = "silo",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore1",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore1.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "b",
    place_result = "silo-ore1",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore1",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore1.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore1.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore2",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore2.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "c",
    place_result = "silo-ore2",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore2",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore2.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore3",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore3.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "d",
    place_result = "silo-ore3",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore3",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore3.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore4",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore4.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "e",
    place_result = "silo-ore4",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore4",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore4.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore5",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore5.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "f",
    place_result = "silo-ore5",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore5",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore5.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-ore6",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore6.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "g",
    place_result = "silo-ore6",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-ore6",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-ore6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-ore6.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
  {
    type = "item",
    name = "silo-coal",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-coal.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "h",
    place_result = "silo-coal",
    stack_size = 10,
   },
   {
    type = "container",
    name = "silo-coal",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-coal.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-coal.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = 7.5
  },
--LOGISTICS
  {
    type = "item",
    name = "silo-passive-provider",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-pprovider.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "i",
    place_result = "silo-passive-provider",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "silo-passive-provider",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-pprovider.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "silo-passive-provider"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-log-pprovider.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
  {
    type = "item",
    name = "silo-active-provider",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-aprovider.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "j",
    place_result = "silo-active-provider",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "silo-active-provider",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-aprovider.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "silo-active-provider"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
	scale_info_icons = true,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-log-aprovider.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
  {
    type = "item",
    name = "silo-storage",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-storage.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "k",
    place_result = "silo-storage",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "silo-storage",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-storage.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "silo-storage"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 320,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-log-storage.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
  {
    type = "item",
    name = "silo-requester",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-requester.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-silos",
    order = "l",
    place_result = "silo-requester",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "silo-requester",
    icon = "__angelsaddons-oresilos__/graphics/icons/silo-log-requester.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "silo-requester"},
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "silo",
    inventory_size = 256,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-oresilos__/graphics/entity/silo-log-requester.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      shift = {0, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_wire_max_distance = 7.5,
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
  },
}
)