local function create_rich_text_icons(inputs)
  local rich_text_icons = { "" }
  for _, input in pairs(inputs) do
    table.insert(rich_text_icons, string.format("[img=item/%s]", input))
  end
  return rich_text_icons
end

if angelsmods.industries.tech then
  data:extend({
    --PROCESSING LAB
    {
      type = "item",
      name = "angels-processing-lab-1",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 1, angelsmods.industries.number_tint),
      subgroup = "angels-labs-1",
      order = "f",
      place_result = "angels-processing-lab-1",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-processing-lab-1",
      localised_description = {
        "",
        { "entity-description.angels-processing-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-red",
            "angels-science-pack-green",
            "angels-science-pack-orange",
            "datacore-processing-1",
            "angels-token-bio",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 1, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-processing-lab-1" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab-off.png",
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
        "datacore-processing-1",
      },
      module_slots = 2,
      icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          max_icons_per_row = 3,
          max_icon_rows = 1,
          shift = { 0, 0.9 },
        },
      },
    },
    {
      type = "item",
      name = "angels-processing-lab-2",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 2, angelsmods.industries.number_tint),
      subgroup = "angels-labs-2",
      order = "f",
      place_result = "angels-processing-lab-2",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-processing-lab-2",
      localised_description = {
        "",
        { "entity-description.angels-processing-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-blue",
            "angels-science-pack-yellow",
            "datacore-processing-2",
            "angels-token-bio",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 2, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-processing-lab-2" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab-off.png",
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
        "datacore-processing-2",
        --"datacore-processing-3",
        --"datacore-processing-4",
        --"datacore-processing-5"
      },
      module_slots = 2,
      icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          max_icons_per_row = 3,
          max_icon_rows = 1,
          shift = { 0, 0.9 },
        },
      },
    },
    {
      type = "item",
      name = "angels-processing-lab-3",
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 3, angelsmods.industries.number_tint),
      subgroup = "angels-labs-3",
      order = "f",
      place_result = "angels-processing-lab-3",
      stack_size = 10,
    },
    {
      type = "lab",
      name = "angels-processing-lab-3",
      localised_description = {
        "",
        { "entity-description.angels-processing-lab" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons({
            "angels-science-pack-white",
            "datacore-processing-2",
          }),
        },
      },
      icons = angelsmods.functions.add_number_icon_layer({
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/processing-lab-ico.png",
          icon_size = 32,
        },
      }, 3, angelsmods.industries.number_tint),
      flags = { "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "angels-processing-lab-3" },
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      light = { intensity = 0.75, size = 8 },
      on_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab.png",
        width = 160,
        height = 160,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        shift = { 0, 0 },
      },
      off_animation = {
        filename = "__angelsindustriesgraphics__/graphics/entity/processing-lab/processing-lab-off.png",
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
        "datacore-processing-2",
        --"datacore-processing-3",
        --"datacore-processing-4",
        --"datacore-processing-5"
      },
      module_slots = 3,
      icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          max_icons_per_row = 3,
          max_icon_rows = 1,
          shift = { 0, 0.9 },
        },
      },
    },
  })

  angelsmods.trigger.lab_ignore_token["angels-processing-lab-3"] = true
end
