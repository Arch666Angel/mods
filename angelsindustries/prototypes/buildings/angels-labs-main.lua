local OV = angelsmods.functions.OV
local sounds = require("__base__/prototypes/entity/sounds")

if angelsmods.industries.tech then
  local lab_item = {
    type = "item",
    name = "angels-main-lab",
    icons = {
      {
        icon = "__angelsindustriesgraphics__/graphics/icons/main-lab.png",
        icon_size = 64,
        scale = 0.5,
      },
    },
    icon_size = 32,
    subgroup = "angels-labs-4",
    order = "h[angels-main-lab]",
    --place_result = "angels-main-lab",
    stack_size = 10,
  }

  local lab_entity = {
    type = "lab",
    --name = lab_item.place_result,
    --icons = lab_item.icons,
    flags = { "placeable-player", "player-creation" },
    minable = {
      mining_time = 1,
      --result = lab_item.name
    },
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",

    collision_box = { { -3.2, -3.2 }, { 3.2, 3.2 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    drawing_box_vertical_extension = 1,

    light = { intensity = 0.75, size = 8 },

    resistances = {
      {
        type = "physical",
        percent = 80,
      },
      {
        type = "fire",
        percent = 80,
      },
      {
        type = "explosion",
        percent = 80,
      },
      {
        type = "impact",
        percent = 80,
      },
    },

    on_animation = {
      filename = "__angelsindustriesgraphics__/graphics/entity/main-lab/main-lab.png",
      width = 288,
      height = 352,
      frame_count = 42,
      line_length = 7,
      animation_speed = 42 / 120,
      shift = { 0.5, -1 },
    },
    off_animation = {
      filename = "__angelsindustriesgraphics__/graphics/entity/main-lab/main-lab-off.png",
      width = 288,
      height = 352,
      frame_count = 1,
      shift = { 0.5, -1 },
    },

    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
      },
    },
    impact_category = "default",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,

    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "1000kW",

    researching_speed = 1,
    inputs = {},

    module_slots = 2,
    icons_positioning = {
      {
        inventory_index = defines.inventory.lab_modules,
        max_icons_per_row = 3,
        max_icon_rows = 1,
        shift = { 0, 0.9 },
      },
    },
  }

  local function create_rich_text_icons(inputs)
    local rich_text_icons = { "" }
    for _, input in pairs(inputs) do
      table.insert(rich_text_icons, string.format("[img=item/%s]", input))
    end
    return rich_text_icons
  end

  local lab_tiers = {
    {
      new_pack = "angels-science-pack-grey",
    },
    {
      new_pack = "angels-science-pack-red",
      health_inc = 1000,
      speed_multiplier = 2,
    },
    {
      new_pack = "angels-science-pack-green",
      health_inc = 1000,
      speed_multiplier = 2,
    },
    {
      new_pack = "angels-science-pack-orange",
      health_inc = 1000,
      speed_multiplier = 2,
      modules = 1,
    },
    {
      new_pack = "angels-science-pack-blue",
      health_inc = 1000,
      speed_multiplier = 2,
      modules = 1,
    },
    {
      new_pack = "angels-science-pack-yellow",
      health_inc = 1000,
      speed_multiplier = 2,
      modules = 1,
    },
    {
      new_pack = "angels-science-pack-white",
      health_inc = 5000,
      speed_multiplier = 2,
      modules = 1,
    },
  }

  for tier_index, tier_props in pairs(lab_tiers) do
    -- tier props
    if tier_props then
      if tier_props.new_pack then
        table.insert(lab_entity.inputs, tier_props.new_pack)
      end
      lab_entity.max_health = lab_entity.max_health + (tier_props.health_inc or 0)
      lab_entity.researching_speed = lab_entity.researching_speed * (tier_props.speed_multiplier or 1)
      lab_entity.module_slots = lab_entity.module_slots + (tier_props.modules or 0)
    end

    -- item
    local lab_item_tier = util.table.deepcopy(lab_item)
    lab_item_tier.name = lab_item_tier.name .. string.format("-%i", tier_index)
    lab_item_tier.icons =
      angelsmods.functions.add_number_icon_layer(lab_item_tier.icons, tier_index, angelsmods.industries.number_tint)
    lab_item_tier.place_result = lab_item_tier.name
    lab_item_tier.order = lab_item_tier.order .. string.format("-%i", tier_index)

    -- entity
    local lab_entity_tier = util.table.deepcopy(lab_entity)
    lab_entity_tier.name = lab_item_tier.place_result
    lab_entity_tier.localised_name = { "entity-name.angels-main-lab", tostring(tier_index) }
    lab_entity_tier.localised_description = {
      "",
      { "entity-description.angels-main-lab" },
      "\n",
      { "entity-description.angels-main-lab-warning" },
      "\n",
      { "entity-description.angels-lab-inputs", create_rich_text_icons(lab_entity_tier.inputs) },
    }
    lab_entity_tier.icons = util.table.deepcopy(lab_item_tier.icons)
    lab_entity_tier.minable.result = lab_item_tier.name
    lab_entity_tier.energy_usage = string.format("%iMW", lab_entity_tier.researching_speed)

    data:extend({
      lab_item_tier,
      lab_entity_tier,
    })

    angelsmods.trigger.lab_ignore_token[lab_entity_tier.name] = true
  end

  -- disable base game lab as it is obsolete
  OV.disable_recipe("lab")
  angelsmods.functions.hide("lab")

  -- duplicate the first main lab to be part of the crash site
  data:extend({
    {
      type = "item",
      name = lab_item.name .. string.format("-%i", 0),
      localised_name = { "entity-name.angels-main-lab-crash-site" },
      localised_description = {
        "",
        { "entity-description.angels-main-lab-crash-site" },
        "\n",
        { "entity-description.angels-main-lab-warning" },
        --[[
		  "\n",
          {"entity-description.angels-lab-inputs",
            create_rich_text_icons(data.raw["lab"][lab_item.name .. string.format("-%i", 1)].inputs)}
		  --]]
        --
      },

      icon = "__angelsindustriesgraphics__/graphics/icons/crash-site-lab-repaired.png",
      icon_size = 64,

      subgroup = lab_item.subgroup,
      order = lab_item.order .. string.format("-%i", 0),

      --place_result = lab_item.name .. string.format("-%i", 0),
      stack_size = lab_item.stack_size,
    },
    {
      type = "lab",
      name = lab_item.name .. string.format("-%i", 0),
      localised_name = { "entity-name.angels-main-lab-crash-site" },
      localised_description = {
        "",
        { "entity-description.angels-main-lab-crash-site" },
        "\n",
        { "entity-description.angels-main-lab-warning" },
        "\n",
        {
          "entity-description.angels-lab-inputs",
          create_rich_text_icons(data.raw["lab"][lab_item.name .. string.format("-%i", 1)].inputs),
        },
      },

      icon = "__angelsindustriesgraphics__/graphics/icons/crash-site-lab-repaired.png",
      icon_size = 64,

      flags = { "not-deconstructable", "placeable-player", "player-creation" },
      hidden = true,
      --map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
      minable = {
        mining_time = 1,
        result = lab_item.name .. string.format("-%i", 0),
      },

      max_health = data.raw["lab"][lab_item.name .. string.format("-%i", 1)].max_health / 2,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",

      collision_box = { { -2.2, -1.2 }, { 2.2, 1.2 } },
      selection_box = { { -2.5, -1.5 }, { 2.5, 1.5 } },

      entity_info_icon_shift = util.by_pixel(32, 0),
      light = { intensity = 0.9, size = 12, color = { r = 1.0, g = 1.0, b = 1.0 }, shift = { 1.5, 0.5 } },

      integration_patch_render_layer = "decals",
      integration_patch = {
        filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-ground.png",
        priority = "very-low",
        width = 700,
        height = 344,
        shift = util.by_pixel(-49 - 16, 11 - 8),
        frame_count = 1,
        line_length = 1,
        scale = 0.5,
      },

      resistances = {
        {
          type = "fire",
          percent = 100,
        },
      },

      on_animation = {
        layers = {
          {
            filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-repaired.png",
            priority = "very-low",
            width = 488,
            height = 252,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-18 - 16, 14 - 8),
            scale = 0.5,
          },
          {
            filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-repaired-beams.png",
            priority = "very-low",
            width = 130,
            height = 100,
            frame_count = 24,
            line_length = 6,
            animation_speed = 1 / 3,
            shift = util.by_pixel(37 - 16, -20 - 8),
            blend_mode = "additive",
            scale = 0.5,
          },
          {
            filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-repaired-shadow.png",
            priority = "very-low",
            width = 696,
            height = 302,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-11 - 16, 12 - 8),
            scale = 0.5,
            draw_as_shadow = true,
          },
        },
      },
      off_animation = {
        layers = {
          {
            filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-repaired.png",
            priority = "very-low",
            width = 488,
            height = 252,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-18 - 16, 14 - 8),
            scale = 0.5,
          },
          {
            filename = "__angelsindustriesgraphics__/graphics/entity/crash-site-lab/crash-site-lab-repaired-shadow.png",
            priority = "very-low",
            width = 696,
            height = 302,
            frame_count = 1,
            line_length = 1,
            repeat_count = 24,
            animation_speed = 1 / 3,
            shift = util.by_pixel(-11 - 16, 12 - 8),
            scale = 0.5,
            draw_as_shadow = true,
          },
        },
      },

      working_sound = {
        sound = {
          filename = "__base__/sound/lab.ogg",
          volume = 0.7,
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20,
      },

      impact_category = "default",
      open_sound = sounds.machine_open,
      close_sound = sounds.machine_close,

      energy_source = {
        type = "burner",
        fuel_categories = { "chemical" },
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = 12 },
        smoke = {
          {
            name = "smoke",
            deviation = { 0.1, 0.1 },
            frequency = 3,
          },
        },
      },
      energy_usage = string.format(
        "%ikW",
        data.raw["lab"][lab_item.name .. string.format("-%i", 1)].researching_speed / 2 * 1000
      ),

      researching_speed = data.raw["lab"][lab_item.name .. string.format("-%i", 1)].researching_speed / 2,
      inputs = data.raw["lab"][lab_item.name .. string.format("-%i", 1)].inputs,

      --[[
        module_slots = 2,
        icons_positioning = {
        {
          inventory_index = defines.inventory.lab_modules,
          max_icons_per_row = 3,
          max_icon_rows = 1,
          shift = { 0, 0.9 },
        }
      },
        ]]
    },
  })

  angelsmods.trigger.lab_ignore_token[lab_item.name .. string.format("-%i", 0)] = true
end
