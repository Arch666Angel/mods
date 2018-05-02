data:extend(
{
  {
    type = "item",
    name = "angels-alien-farm",
    icon = "__angelsbioprocessing__/graphics/icons/alien-farm.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-a",
    order = "a",
    place_result = "angels-alien-farm",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-alien-farm",
    icon = "__angelsbioprocessing__/graphics/icons/alien-farm.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "angels-alien-farm"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fast_replaceable_group= "angels-alien-farm",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-alien-farming"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = -0.02 / 2
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation=
    {
      filename = "__angelsbioprocessing__/graphics/entity/alien-farm/alien-farm.png",
      width = 288,
      height = 288,
      line_length = 4,
      frame_count = 16,
      shift = {0, 0},
      animation_speed = 0.5,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -4} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 4} }}
      }
    },
  },
}
)
