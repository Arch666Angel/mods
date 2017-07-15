data:extend(
{
    {
    type = "item",
    name = "cooling-tower",
    icon = "__angelssmelting__/graphics/icons/cooling-tower.png",
	flags = {"goes-to-quickbar"},
    subgroup = "water-treatment-building",
    order = "f[cooling-tower]",
    place_result = "cooling-tower",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "cooling-tower",
    icon = "__angelssmelting__/graphics/icons/cooling-tower.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cooling-tower"},
    max_health = 100,
    fast_replaceable_group = "cooling-tower",
    corpse = "small-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"cooling"},
	module_specification =
    {
      module_slots = 2
    },
	allowed_effects = {"consumption", "speed", "pollution"},
    crafting_speed = 2,
    ingredient_count = 4,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
    animation =
    {
        filename = "__angelssmelting__/graphics/entity/cooling-tower/cooling-tower.png",
        width = 160,
        height = 192,
        frame_count = 25,
	    line_length = 5,
        shift = {0, -0.5},
        animation_speed = 0.5
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)