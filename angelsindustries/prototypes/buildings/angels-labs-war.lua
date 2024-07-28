local function create_rich_text_icons(inputs)
  local rich_text_icons = { "" }
  for _, input in pairs(inputs) do
    table.insert(rich_text_icons, string.format("[img=item/%s]", input))
  end
  return rich_text_icons
end

if angelsmods.industries.tech then
  data:extend({
    --WAR LAB
    {
      type = "item",
      name = "angels-war-lab-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "angels-labs-1",
      order = "e",
      place_result = "angels-war-lab-1",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-war-lab-1",
      localised_description = {
        "",
        { "entity-description.angels-war-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-red",
            "angels-science-pack-green",
            "angels-science-pack-orange",
            "datacore-war-1",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-war-lab-1" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab-off.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7,
        },
        apparent_volume = 1,
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "125kW",
      researching_speed = 1,
      inputs = {
        "angels-science-pack-red",
        "angels-science-pack-green",
        "angels-science-pack-orange",
        "datacore-war-1",
      },
      module_specification = {
        module_slots = 2,
        module_info_max_icons_per_row = 3,
        module_info_max_icon_rows = 1,
        module_info_icon_shift = { 0, 0.9 },
      },
    },
    {
      type = "item",
      name = "angels-war-lab-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "angels-labs-2",
      order = "e",
      place_result = "angels-war-lab-2",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-war-lab-2",
      localised_description = {
        "",
        { "entity-description.angels-war-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-blue",
            "angels-science-pack-yellow",
            "datacore-war-2",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-war-lab-2" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab-off.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "250kW",
      researching_speed = 2,
      inputs = {
        "angels-science-pack-blue",
        "angels-science-pack-yellow",
        "datacore-war-2",
      },
      module_specification = {
        module_slots = 2,
        module_info_max_icons_per_row = 3,
        module_info_max_icon_rows = 1,
        module_info_icon_shift = { 0, 0.9 },
      },
    },
    {
      type = "item",
      name = "angels-war-lab-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "angels-labs-3",
      order = "e",
      place_result = "angels-war-lab-3",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-war-lab-3",
      localised_description = {
        "",
        { "entity-description.angels-war-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-white",
            "datacore-war-2",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/war-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-war-lab-3" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/war-lab/war-lab-off.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = { 0, 0 },
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
      },
      energy_usage = "300kW",
      researching_speed = 3,
      inputs = {
        "angels-science-pack-white",
        "datacore-war-2",
      },
      module_specification = {
        module_slots = 3,
        module_info_max_icons_per_row = 3,
        module_info_max_icon_rows = 1,
        module_info_icon_shift = { 0, 0.9 },
      },
    },
  })

  angelsmods.trigger.lab_ignore_token["angels-war-lab-1"] = true
  angelsmods.trigger.lab_ignore_token["angels-war-lab-2"] = true
  angelsmods.trigger.lab_ignore_token["angels-war-lab-3"] = true
end
