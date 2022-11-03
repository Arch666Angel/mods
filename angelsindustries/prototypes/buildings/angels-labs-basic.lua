local function create_rich_text_icons(inputs)
  local rich_text_icons = { "" }
  for _, input in pairs(inputs) do
    table.insert(rich_text_icons, string.format("[img=item/%s]", input))
  end
  return rich_text_icons
end

if angelsmods.industries.tech then
  data:extend({
    --BASIC LABs
    {
      type = "item",
      name = "angels-basic-lab",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "angels-labs-1",
      order = "g[angels-basic-lab]",
      place_result = "angels-basic-lab",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-basic-lab",
      localised_description = {
        "",
        { "entity-description.angels-basic-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-grey",
            "datacore-basic",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 1, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-basic-lab" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
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
      energy_usage = "100kW",
      researching_speed = 1.5,
      inputs = {
        "angels-science-pack-grey",
        "datacore-basic",
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
      name = "angels-basic-lab-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "angels-labs-2",
      order = "g[angels-basic-lab]",
      place_result = "angels-basic-lab-2",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-basic-lab-2",
      localised_description = {
        "",
        { "entity-description.angels-basic-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-red",
            "angels-science-pack-green",
            "angels-science-pack-orange",
            "angels-science-pack-blue",
            "angels-science-pack-yellow",
            "datacore-basic",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 2, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-basic-lab-2" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
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
      energy_usage = "150kW",
      researching_speed = 2,
      inputs = {
        "angels-science-pack-red",
        "angels-science-pack-green",
        "angels-science-pack-orange",
        "angels-science-pack-blue",
        "angels-science-pack-yellow",
        "datacore-basic",
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
      name = "angels-basic-lab-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "angels-labs-3",
      order = "g[angels-basic-lab]",
      place_result = "angels-basic-lab-3",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-basic-lab-3",
      localised_description = {
        "",
        { "entity-description.angels-basic-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-white",
            "datacore-basic",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
          icon_size = 32,
          icon_mipmaps = 1,
        },
      }, 3, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-basic-lab-3" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
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
      energy_usage = "200kW",
      researching_speed = 2.5,
      inputs = {
        "angels-science-pack-white",
        "datacore-basic",
      },
      module_specification = {
        module_slots = 3,
        module_info_max_icons_per_row = 3,
        module_info_max_icon_rows = 1,
        module_info_icon_shift = { 0, 0.9 },
      },
    },
  })

  angelsmods.triggers.lab_ignore_token["angels-basic-lab"] = true
  angelsmods.triggers.lab_ignore_token["angels-basic-lab-2"] = true
  angelsmods.triggers.lab_ignore_token["angels-basic-lab-3"] = true
end
