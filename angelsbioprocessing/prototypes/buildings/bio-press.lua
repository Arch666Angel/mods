data:extend(
{
  {
    type = "item",
    name = "bio-press",
    icon = "__angelsbioprocessing__/graphics/icons/bio-press.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-vegetabilis-b",
    order = "d",
    place_result = "bio-press",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-press",
    icon = "__angelsbioprocessing__/graphics/icons/bio-press.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-press"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group= "bio-press",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-pressing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.03 * 60
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    animation=
    {
        filename = "__angelsbioprocessing__/graphics/entity/bio-press/bio-press.png",
        width = 160,
        height = 160,
        line_length = 5,
        frame_count = 25,
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
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{type = "output", position = {0, 2}}}
      },
    },
  },
}
)
