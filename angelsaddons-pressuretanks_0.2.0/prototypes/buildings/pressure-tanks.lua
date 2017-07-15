data:extend(
{
  {
    type = "item",
    name = "angels-pressure-tank-1",
    icon = "__angelsaddons-pressuretanks__/graphics/icons/pressure-tank-1.png",
    flags = {"goes-to-quickbar"},
	subgroup = "petrochem-tanks",
    order = "c[angels-pressure-tank-1]",
    place_result = "angels-pressure-tank-1",
    stack_size = 10,
  },
   {
    type = "storage-tank",
    name = "angels-pressure-tank-1",
    icon = "__angelsaddons-pressuretanks__/graphics/icons/pressure-tank-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "angels-pressure-tank-1"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box =
    {
      base_area = 3500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -3} },
        { position = {3, 0} },
        { position = {-3, 0} },
        { position = {0, 3} },
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
	picture =
		{
		sheet =
		{
			filename = "__angelsaddons-pressuretanks__/graphics/entity/pressure-tank-1.png",
			priority = "extra-high",
			frames = 1,
			width = 224,
			height = 224,
			shift = {0, 0}
		}
		},
		fluid_background =
		{
		filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
		priority = "extra-high",
		width = 32,
		height = 15
		},
		window_background =
		{
		filename = "__base__/graphics/entity/storage-tank/window-background.png",
		priority = "extra-high",
		width = 17,
		height = 24
		},
		flow_sprite =
		{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
		},
		gas_flow =
		{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		animation_speed = 0.25,
		hr_version =
		{
		  filename = "__base__/graphics/entity/pipe/hr-steam.png",
		  priority = "extra-high",
		  line_length = 10,
		  width = 48,
		  height = 30,
		  frame_count = 60,
		  axially_symmetrical = false,
		  animation_speed = 0.25,
		  direction_count = 1
		}
	}
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
    },
    circuit_wire_max_distance = 7.5
  },
}
)
