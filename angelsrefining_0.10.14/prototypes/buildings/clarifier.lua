data:extend(
{
    {
    type = "item",
    name = "clarifier",
    icon = "__angelsrefining__/graphics/icons/clarifier.png",
	icon_size = 32,
    subgroup = "water-treatment-building",
    order = "c[clarifier]",
    place_result = "clarifier",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "clarifier",
    icon = "__angelsrefining__/graphics/icons/clarifier.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "clarifier"},
    max_health = 100,
    fast_replaceable_group = "clarifier",
    corpse = "small-remnants",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"angels-water-void"},
	module_specification =
    {
      module_slots = 2
    },
	allowed_effects = {"consumption", "speed", "pollution"},
    result_inventory_size = 1,
    crafting_speed = 2,
    source_inventory_size = 1,
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
        pipe_connections = {{ type="input", position = {0, 3} }}
      },
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
        filename = "__angelsrefining__/graphics/entity/clarifier/clarifier.png",
        width = 224,
        height = 224,
        frame_count = 64,
	    line_length = 8,
        shift = {0, 0},
        animation_speed = 0.5
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)