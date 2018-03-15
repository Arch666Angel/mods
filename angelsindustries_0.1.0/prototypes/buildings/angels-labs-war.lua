data:extend(
{
--WAR LAB
  {
    type = "item",
    name = "angels-war-lab-1",
    icon = "__angelsindustries__/graphics/icons/war-lab-ico.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-labs-1",
    order = "f[angels-war-lab-1]",
    place_result = "angels-war-lab-1",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "angels-war-lab-1",
    icon = "__angelsindustries__/graphics/icons/war-lab-ico.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-war-lab-1"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__angelsindustries__/graphics/entity/war-lab/war-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation =
    {
      filename = "__angelsindustries__/graphics/entity/war-lab/war-lab-off.png",
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
    energy_usage = "125kW",
    researching_speed = 1,
    inputs =
    {
      "angels-science-pack-red",
      "angels-science-pack-green",
      "angels-science-pack-orange",
      "datacore-war-1",
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
    name = "angels-war-lab-2",
    icon = "__angelsindustries__/graphics/icons/war-lab-ico.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
    subgroup = "angels-labs-2",
    order = "f[angels-war-lab-2]",
    place_result = "angels-war-lab-2",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "angels-war-lab-2",
    icon = "__angelsindustries__/graphics/icons/war-lab-ico.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-war-lab-2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__angelsindustries__/graphics/entity/war-lab/war-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation =
    {
      filename = "__angelsindustries__/graphics/entity/war-lab/war-lab-off.png",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {0, 0}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "250W",
    researching_speed = 2,
    inputs =
    {
      "angels-science-pack-blue",
      "angels-science-pack-yellow",
      "datacore-war-2",
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