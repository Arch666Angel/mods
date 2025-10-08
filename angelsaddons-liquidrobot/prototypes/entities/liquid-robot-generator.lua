local sounds = require("__base__/prototypes/entity/sounds")

function make_fluid_robot()
  local result = {}
  for f, fluid in pairs(data.raw.fluid) do
    local fluid_per_bot = 5000

    if angelsmods and angelsmods.industry then
      bot_category = "angels-barreling-pump"
    else
      bot_category = "crafting-with-fluid"
    end

    local bot_name = fluid.name .. "-liquid-bot"
    if fluid.icon == nil then
      fluid_icon = fluid.icons
    elseif fluid.icon_size == nil then
      fluid_icon = 32
    else
      fluid_icon = fluid.icon
    end
    local fluid_size = fluid.icon_size

    local bot_icon = {
      { icon = "__angelsaddons-liquidrobot__/graphics/icons/bot-ico.png" },
      { icon = "__angelsaddons-liquidrobot__/graphics/icons/bot-ico-mask.png", tint = fluid.base_color },
      { icon = fluid_icon, scale = 0.5 * 32 / fluid_size, shift = { 0, 7 } },
    }
    local fill_icon = {
      { icon = "__angelsaddons-liquidrobot__/graphics/icons/liquid_bot-empty.png" },
      { icon = "__angelsaddons-liquidrobot__/graphics/icons/liquid_bot-empty-mask.png", tint = fluid.base_color },
      { icon = fluid_icon, scale = 0.5 * 32 / fluid_size, shift = { -7, -7 } },
    }

    local bot_item = {
      type = "item",
      name = bot_name,
      --localised_name = {"item-name.filled-barrel", {"fluid-name." .. fluid.name}},
      icons = bot_icon,
      icon_size = 32,
      flags = {},
      subgroup = "fill-liquid-bot",
      order = "b[" .. fluid.name .. "]",
      stack_size = 1,
      place_result = bot_name,
    }
    table.insert(result, bot_item)

    local bot_entity = {
      type = "logistic-robot",
      name = bot_name,
      icons = bot_icon,
      icon_size = 32,
      flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
      minable = { mining_time = 0.1, result = bot_name },
      max_health = 100,
      collision_box = { { 0, 0 }, { 0, 0 } },
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      max_payload_size = 1,
      speed = 0.02,
      max_energy = "300kJ",
      energy_per_tick = "0.005kJ",
      speed_multiplier_when_out_of_energy = 0.8,
      energy_per_move = "0.1kJ",
      min_to_charge = 0.2,
      max_to_charge = 0.95,
      idle = {
        layers = {
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
          },
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-mask.png",
            tint = fluid.base_color,
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
          },
        },
      },
      idle_with_cargo = {
        layers = {
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
          },
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-mask.png",
            tint = fluid.base_color,
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
          },
        },
      },
      in_motion = {
        layers = {
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
            y = 80,
          },
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-mask.png",
            tint = fluid.base_color,
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
            y = 80,
          },
        },
      },
      in_motion_with_cargo = {
        layers = {
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
            y = 80,
          },
          {
            filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-mask.png",
            tint = fluid.base_color,
            priority = "high",
            line_length = 16,
            width = 80,
            height = 80,
            frame_count = 1,
            shift = { 0, 0 },
            --scale = 0.5,
            direction_count = 16,
            y = 80,
          },
        },
      },
      shadow_idle = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = { 0, 0 },
        direction_count = 16,
      },
      shadow_idle_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = { 0, 0 },
        direction_count = 16,
      },
      shadow_in_motion = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = { 0, 0 },
        direction_count = 16,
      },
      shadow_in_motion_with_cargo = {
        filename = "__angelsaddons-liquidrobot__/graphics/entity/liquidbot/liquid-bot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 80,
        height = 80,
        frame_count = 1,
        shift = { 0, 0 },
        direction_count = 16,
      },
      working_sound = sounds.flying_robot(0.5),
      cargo_centered = { 0.0, 0 },
    }
    table.insert(result, bot_entity)

    local fill_recipe = {
      type = "recipe",
      name = bot_name,
      localised_name = { "recipe-name.fill-barrel", { "fluid-name." .. fluid.name } },
      category = bot_category,
      energy_required = 1,
      subgroup = "fill-liquid-bot",
      order = "b[fill-" .. bot_name .. "]",
      enabled = false,
      icons = fill_icon,
      icon_size = 32,
      ingredients = {
        { type = "fluid", name = fluid.name, amount = fluid_per_bot },
        { type = "item", name = "empty-liquid-bot", amount = 1 },
      },
      results = {
        { type = "item", name = bot_name, amount = 1 },
      },
      hide_from_stats = true,
      allow_decomposition = false,
    }
    table.insert(result, fill_recipe)
    table.insert(data.raw.technology["liquid-robots"].effects, { type = "unlock-recipe", recipe = bot_name })

    local empty_recipe = {
      type = "recipe",
      name = "empty-" .. bot_name,
      localised_name = { "recipe-name.empty-barrel", { "fluid-name." .. fluid.name } },
      category = bot_category,
      energy_required = 1,
      subgroup = "empty-liquid-bot",
      order = "b[empty-" .. bot_name .. "]",
      enabled = false,
      icons = bot_icon,
      icon_size = 32,
      ingredients = {
        { type = "item", name = bot_name, amount = 1 },
      },
      results = {
        { type = "fluid", name = fluid.name, amount = fluid_per_bot },
        { type = "item", name = "empty-liquid-bot", amount = 1 },
      },
      hide_from_stats = true,
      allow_decomposition = false,
    }
    table.insert(result, empty_recipe)
    table.insert(
      data.raw.technology["liquid-robots"].effects,
      { type = "unlock-recipe", recipe = "empty-" .. bot_name }
    )
  end
  data:extend(result)
  --return result
end

make_fluid_robot()
