data:extend(
{
  {
    type = "item",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "petrochem-buildings-steam",
    order = "b[angels-flare-stack]",
    place_result = "angels-flare-stack",
    stack_size = 10,
  },
  {
    type = "furnace",
    name = "angels-flare-stack",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-flare-stack"},
    max_health = 100,
    fast_replaceable_group = "angels-flare-stack",
    corpse = "small-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -5.25}, {1, 1}},
    crafting_categories = {"angels-chemical-void"},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    result_inventory_size = 0,
    source_inventory_size = 0,
    crafting_speed = 2,
    show_recipe_icon = false,
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
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.25 * 60
    },
    energy_usage = "30kW",
    animation =
    {
      north =
      {
        layers =
        {
          {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
            priority = "extra-high",
            width = 71,
            height = 215,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -64),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack.png",
              priority = "extra-high",
              frame_count = 1,
              width = 142,
              height = 429,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            } or nil
          },
          {
            draw_as_shadow = true,
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-shadow.png",
            priority = "extra-high",
            width = 193,
            height = 69,
            frame_count = 1,
            shift = util.by_pixel(61.5, 10.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            } or nil
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
            priority = "extra-high",
            width = 71,
            height = 215,
            x = 71,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -64),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 142,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            } or nil
          },
          {
            draw_as_shadow = true,
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-shadow.png",
            priority = "extra-high",
            width = 193,
            height = 69,
            x = 193,
            frame_count = 1,
            shift = util.by_pixel(61.5, 10.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 382,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            } or nil
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
            priority = "extra-high",
            width = 71,
            height = 215,
            x = 142,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -64),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 284,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            } or nil
          },
          {
            draw_as_shadow = true,
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-shadow.png",
            priority = "extra-high",
            width = 193,
            height = 69,
            x = 386,
            frame_count = 1,
            shift = util.by_pixel(61.5, 10.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 764,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            } or nil
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
            priority = "extra-high",
            width = 71,
            height = 215,
            x = 213,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -64),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 426,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            } or nil
          },
          {
            draw_as_shadow = true,
            filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-shadow.png",
            priority = "extra-high",
            width = 193,
            height = 69,
            x = 579,
            frame_count = 1,
            shift = util.by_pixel(61.5, 10.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 1146,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            } or nil
          }
        }
      }
    },
    working_visualisations =
    {
      {
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel(-3, -166),
        east_position = util.by_pixel(-3, -170),
        south_position = util.by_pixel(3, -170),
        west_position = util.by_pixel(3, -166),
        animation = {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
      },
      {
        fadeout = true,
        north_animation =
        {
          filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-light.png",
          priority = "extra-high",
          width = 71,
          height = 215,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -64),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-light.png",
            priority = "extra-high",
            width = 142,
            height = 429,
            frame_count = 1,
            shift = util.by_pixel(0, -65),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        east_animation =
        {
          filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-light.png",
          priority = "extra-high",
          width = 71,
          height = 215,
          x = 71,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -64),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-light.png",
            priority = "extra-high",
            width = 142,
            height = 429,
            x = 142,
            frame_count = 1,
            shift = util.by_pixel(0, -65),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        south_animation =
        {
          filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-light.png",
          priority = "extra-high",
          width = 71,
          height = 215,
          x = 142,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -64),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-light.png",
            priority = "extra-high",
            width = 142,
            height = 429,
            x = 284,
            frame_count = 1,
            shift = util.by_pixel(0, -65),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        },
        west_animation =
        {
          filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack-light.png",
          priority = "extra-high",
          width = 71,
          height = 215,
          x = 213,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -64),
          blend_mode = "additive-soft",
          draw_as_glow = true,
          hr_version = angelsmods.trigger.enable_hq_graphics and {
            filename = "__angelspetrochem__/graphics/entity/flare-stack/hr-flare-stack-light.png",
            priority = "extra-high",
            width = 142,
            height = 429,
            x = 426,
            frame_count = 1,
            shift = util.by_pixel(0, -65),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            scale = 0.5,
          } or nil
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
}
)
