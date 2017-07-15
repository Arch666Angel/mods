data:extend(
{
--BASIC LABs
  {
    type = "item",
    name = "angels-main-lab",
    icon = "__base__/graphics/icons/lab.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-labs-1",
    order = "h[angels-main-lab]",
    place_result = "angels-main-lab",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "angels-main-lab",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-main-lab"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "1000kW",
    researching_speed = 1,
    inputs =
    {
      "angels-science-pack-grey",
      "angels-science-pack-red",
      "angels-science-pack-green",
      "angels-science-pack-orange",
      "angels-science-pack-blue",
      "angels-science-pack-yellow",
    },
    module_specification =
    {
      module_slots = 2,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  },
  {
    type = "item",
    name = "angels-basic-lab",
    icon = "__angelscomponents__/graphics/icons/basic-lab-ico.png",
	flags = {"goes-to-quickbar"},
    subgroup = "angels-labs-1",
    order = "g[angels-basic-lab]",
    place_result = "angels-basic-lab",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "angels-basic-lab",
    icon = "__angelscomponents__/graphics/icons/basic-lab-ico.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-basic-lab"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__angelscomponents__/graphics/entity/basic-lab/basic-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation =
    {
      filename = "__angelscomponents__/graphics/entity/basic-lab/basic-lab-off.png",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {0, 0}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    researching_speed = 1.5,
    inputs =
    {
      "angels-science-pack-grey",
      "datacore-basic",
    },
    module_specification =
    {
      module_slots = 2,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  },
}
)