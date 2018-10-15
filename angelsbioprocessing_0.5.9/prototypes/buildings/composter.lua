data:extend(
{
    {
    type = "item",
    name = "composter",
    icon = "__angelsbioprocessing__/graphics/icons/composter.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "bio-processing-buildings-b",
    order = "a",
    place_result = "composter",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "composter",
    icon = "__angelsbioprocessing__/graphics/icons/composter.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "composter"},
    max_health = 100,
    fast_replaceable_group = "composter",
    corpse = "small-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"angels-bio-void"},
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
    -- fluid_boxes =
    -- {
      -- {
        -- production_type = "input",
        -- pipe_covers = pipecoverspictures(),
        -- base_area = 10,
        -- base_level = -1,
        -- pipe_connections = {{ type="input", position = {0, 3} }}
      -- },
    -- },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
    animation =
    {
        filename = "__angelsbioprocessing__/graphics/entity/composter/composter.png",
        width = 160,
        height = 160,
        frame_count = 1,
	    line_length = 1,
        shift = {0, 0},
        --animation_speed = 0.5
    },
	working_visualisations =
    {
        filename = "__angelsbioprocessing__/graphics/entity/composter/composter-animation.png",
        width = 128,
        height = 32,
        frame_count = 25,
	    line_length = 5,
        shift = {0, 1},
        animation_speed = 0.5
    },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)