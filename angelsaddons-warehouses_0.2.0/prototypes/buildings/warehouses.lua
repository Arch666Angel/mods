data:extend(
{
  {
    type = "item",
    name = "angels-warehouse",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "a[angels-warehouse]",
    place_result = "angels-warehouse",
    stack_size = 10,
   },
   {
    type = "container",
    name = "angels-warehouse",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "angels-warehouse"},
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
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 768,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
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
    name = "angels-warehouse-passive-provider",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-passive-provider.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "b[angels-warehouse-passive-provider]",
    place_result = "angels-warehouse-passive-provider",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "angels-warehouse-passive-provider",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-passive-provider.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-warehouse-passive-provider"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 512,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-passive-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
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
    name = "angels-warehouse-active-provider",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "c[angels-warehouse-active-provider]",
    place_result = "angels-warehouse-active-provider",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "angels-warehouse-active-provider",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-active-provider.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-warehouse-active-provider"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 512,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-active-provider.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
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
    name = "angels-warehouse-storage",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-storage.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "d[angels-warehouse-storage]",
    place_result = "angels-warehouse-storage",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "angels-warehouse-storage",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-storage.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-warehouse-storage"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "angels-warehouse",
    inventory_size = 768,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-storage.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
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
    name = "angels-warehouse-requester",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-requester.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-warehouses",
    order = "e[angels-warehouse-requester]",
    place_result = "angels-warehouse-requester",
    stack_size = 10,
  },
  {
    type = "logistic-container",
    name = "angels-warehouse-requester",
    icon = "__angelsaddons-warehouses__/graphics/icons/warehouse-requester.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "angels-warehouse-requester"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    fast_replaceable_group = "container",
    inventory_size = 512,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__angelsaddons-warehouses__/graphics/entity/warehouse-requester.png",
      priority = "extra-high",
      width = 256,
      height = 288,
      shift = {0, -0.5}
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