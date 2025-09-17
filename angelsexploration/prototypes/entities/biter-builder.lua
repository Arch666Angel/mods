require("util")

local control_name = "enemy-base"

-- autoplace
local function enemy_autoplace(params)
  return {
    control = params.control or control_name,
    order = params.order or "b[enemy]-misc",
    force = "enemy",
    probability_expression = params.probability_expression,
    richness_expression = 1,
  }
end

local function enemy_spawner_autoplace(probability_expression)
  return enemy_autoplace({
    probability_expression = probability_expression,
    order = "b[enemy]-a[spawner]",
  })
end

local function enemy_worm_autoplace(probability_expression)
  return enemy_autoplace({
    probability_expression = probability_expression,
    order = "b[enemy]-b[worm]",
  })
end


-- return
-- {
--   control_name = control_name,
--   enemy_autoplace = enemy_autoplace,
--   enemy_spawner_autoplace = enemy_spawner_autoplace,
--   enemy_worm_autoplace = enemy_worm_autoplace
-- }

-- animation
local function make_die_animation(data_die)
  if data_die.type == "scarab" then
    return {
      layers = {
        {
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_die.scale,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
          },
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_die.scale,
          tint = data_die.tint1,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_die.scale,
          tint = data_die.tint2,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
      },
    }
  end
end
local function make_run_animation(data_run)
  if data_run.type == "biter" then
    --utilise the vanilla script
    return biterrunanimation(data_run.scale, data_run.tint1, data_run.tint1)
  end
  if data_run.type == "spitter" or data_run.type == "psyker" then
    --utilise the vanilla script
    return spitterrunanimation(data_run.scale, data_run.tint1, data_run.tint1)
  end
  if data_run.type == "scarab" then
    return {
      layers = {
        {
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_run.scale,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
          },
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_run.scale,
          tint = data_run.tint1,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_run.scale,
          tint = data_run.tint2,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
      },
    }
  end
end
local function make_attack_animation(data_attack)
  if data_attack.type == "biter" then
    --utilise the vanilla script
    return biterattackanimation(data_attack.scale, data_attack.tint1, data_attack.tint1)
  end
  if data_attack.type == "spitter" or data_attack.type == "psyker" then
    --utilise the vanilla script
    return spitterattackanimation(data_attack.scale, data_attack.tint1, data_attack.tint1)
  end
  if data_attack.type == "scarab" then
    return {
      layers = {
        {
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_attack.scale,
          stripes = {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8,
            },
          },
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_attack.scale,
          tint = data_attack.tint1,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
        {
          flags = { "mask" },
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = { 0, -2 / 3 },
          animation_speed = 0.75,
          scale = data_attack.scale,
          tint = data_attack.tint2,
          stripes = util.multiplystripes(16, {
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-1.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
            {
              filename = "__angelsexplorationgraphics__/graphics/entity/scarab/scarab-fur-2.png",
              width_in_frames = 1,
              height_in_frames = 8,
            },
          }),
        },
      },
    }
  end
end

-- sounds
local function make_roar_sound(type, volume)
  if type == "biter" or type == "scarab" then
    return {
      {
        filename = "__base__/sound/creatures/biter-roar-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-roar-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-roar-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-roar-4.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-roar-5.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-roar-6.ogg",
        volume = volume,
      },
    }
  end
  if type == "spitter" or type == "psyker" then
    return {
      {
        filename = "__base__/sound/creatures/spitter-call-med-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-4.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-5.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-6.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-7.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-8.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-9.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-10.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-11.ogg",
        volume = volume,
      },
    }
  end
  if type == "worm" then
    return {
      {
        filename = "__base__/sound/creatures/worm-roar-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-roar-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-roar-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-roar-4.ogg",
        volume = volume,
      },
    }
  end
end
local function make_die_sound(type, volume)
  if type == "biter" or type == "scarab" then
    return {
      {
        filename = "__base__/sound/creatures/biter-death-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-death-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-death-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-death-4.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/biter-death-5.ogg",
        volume = volume,
      },
    }
  end
  if type == "spitter" or type == "psyker" then
    return {
      {
        filename = "__base__/sound/creatures/spitter-death-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-death-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-death-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-death-4.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/spitter-death-5.ogg",
        volume = volume,
      },
    }
  end
  if type == "worm" then
    return {
      {
        filename = "__base__/sound/creatures/worm-death-1.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-death-2.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-death-3.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-death-4.ogg",
        volume = volume,
      },
      {
        filename = "__base__/sound/creatures/worm-death-5.ogg",
        volume = volume,
      },
    }
  end
end
local function make_call_sounds(volume)
  return {
    {
      filename = "__base__/sound/creatures/biter-call-1.ogg",
      volume = volume,
    },
    {
      filename = "__base__/sound/creatures/biter-call-2.ogg",
      volume = volume,
    },
    {
      filename = "__base__/sound/creatures/biter-call-3.ogg",
      volume = volume,
    },
    {
      filename = "__base__/sound/creatures/biter-call-4.ogg",
      volume = volume,
    },
    {
      filename = "__base__/sound/creatures/biter-call-5.ogg",
      volume = volume,
    },
  }
end

-- icon
local function make_icon(ico_app)
  return {
    {
      icon = "__angelsexplorationgraphics__/graphics/icons/" .. ico_app.type .. "-base.png",
    },
    {
      icon = "__angelsexplorationgraphics__/graphics/icons/" .. ico_app.type .. "-overlay.png",
      tint = ico_app.tint1,
    },
  }
end

-- attack
local function make_shoot_shiftings(scale, offset)
  return {
    {
      0.0625 * 0,
      util.add_shift(util.mul_shift(util.by_pixel(0, -135), scale * 0.5), util.by_pixel(offset * 0, -offset * 1)),
    },
    {
      0.0625 * 1,
      util.add_shift(
        util.mul_shift(util.by_pixel(24, -133), scale * 0.5),
        util.by_pixel(offset * 0.38, -offset * 0.92)
      ),
    },
    {
      0.0625 * 2,
      util.add_shift(
        util.mul_shift(util.by_pixel(48, -121), scale * 0.5),
        util.by_pixel(offset * 0.71, -offset * 0.71)
      ),
    },
    {
      0.0625 * 3,
      util.add_shift(
        util.mul_shift(util.by_pixel(76, -105), scale * 0.5),
        util.by_pixel(offset * 0.92, -offset * 0.38)
      ),
    },
    {
      0.0625 * 4,
      util.add_shift(util.mul_shift(util.by_pixel(86, -73), scale * 0.5), util.by_pixel(offset * 1, offset * 0)),
    },
    {
      0.0625 * 5,
      util.add_shift(util.mul_shift(util.by_pixel(74, -43), scale * 0.5), util.by_pixel(offset * 0.92, offset * 0.38)),
    },
    {
      0.0625 * 6,
      util.add_shift(util.mul_shift(util.by_pixel(52, -25), scale * 0.5), util.by_pixel(offset * 0.71, offset * 0.71)),
    },
    {
      0.0625 * 7,
      util.add_shift(util.mul_shift(util.by_pixel(26, -17), scale * 0.5), util.by_pixel(offset * 0.38, offset * 0.92)),
    },
    {
      0.0625 * 8,
      util.add_shift(util.mul_shift(util.by_pixel(1, -13), scale * 0.5), util.by_pixel(offset * 0, offset * 1)),
    },
    {
      0.0625 * 9,
      util.add_shift(
        util.mul_shift(util.by_pixel(-27, -16), scale * 0.5),
        util.by_pixel(-offset * 0.38, offset * 0.92)
      ),
    },
    {
      0.0625 * 10,
      util.add_shift(
        util.mul_shift(util.by_pixel(-51, -23), scale * 0.5),
        util.by_pixel(-offset * 0.71, offset * 0.71)
      ),
    },
    {
      0.0625 * 11,
      util.add_shift(
        util.mul_shift(util.by_pixel(-71, -41), scale * 0.5),
        util.by_pixel(-offset * 0.92, offset * 0.38)
      ),
    },
    {
      0.0625 * 12,
      util.add_shift(util.mul_shift(util.by_pixel(-85, -71), scale * 0.5), util.by_pixel(-offset * 1, offset * 0)),
    },
    {
      0.0625 * 13,
      util.add_shift(
        util.mul_shift(util.by_pixel(-71, -103), scale * 0.5),
        util.by_pixel(-offset * 0.92, -offset * 0.38)
      ),
    },
    {
      0.0625 * 14,
      util.add_shift(
        util.mul_shift(util.by_pixel(-49, -119), scale * 0.5),
        util.by_pixel(-offset * 0.71, -offset * 0.71)
      ),
    },
    {
      0.0625 * 15,
      util.add_shift(
        util.mul_shift(util.by_pixel(-23, -125), scale * 0.5),
        util.by_pixel(-offset * 0.38, -offset * 0.92)
      ),
    },
  }
end
local function make_projectile_beam(pro_app, pro_dmg)
  local beam = {
    type = "beam",
    name = "electric-beam" .. "-" .. pro_app.name .. "-" .. pro_app.type,
    flags = { "not-on-map" },
    width = 0.5,
    damage_interval = pro_dmg.cooldown,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = pro_dmg.damage, type = "electric" },
          },
        },
      },
    },
    graphics_set = {
      beam = {
        start = {
          filename = "__base__/graphics/entity/beam/tileable-beam-START.png",
          line_length = 4,
          width = 94,
          height = 66,
          frame_count = 16,
          shift = { 0.53125, 0 },
          scale = 0.5,
        },
        ending = {
          filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
          line_length = 4,
          width = 91,
          height = 93,
          frame_count = 16,
          shift = { -0.078125, -0.046875 },
          scale = 0.5,
        },
        head = {
          filename = "__base__/graphics/entity/beam/beam-head.png",
          line_length = 16,
          width = 45,
          height = 39,
          frame_count = 16,
          animation_speed = 0.5,
          blend_mode = "additive-soft",
        },
        tail = {
          filename = "__base__/graphics/entity/beam/beam-tail.png",
          line_length = 16,
          width = 45,
          height = 39,
          frame_count = 16,
          blend_mode = "additive-soft",
        },
        body = {
          {
            filename = "__base__/graphics/entity/beam/beam-body-1.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-2.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-3.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-4.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-5.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-6.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft",
          },
        },
      },
    },
    working_sound = {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7,
      },
    },
  }
  data:extend({ beam })
  return beam.name
end
local function make_projectile_stream(pro_app, pro_dmg)
  local get_stream_radius = function(pro_app)
    if pro_app.name == "small" then
      return 1
    elseif pro_app.name == "medium" then
      return 1.25
    elseif pro_app.name == "big" then
      return 1.35
    elseif pro_app.name == "behemoth" then
      return 1.75
    elseif pro_app.name == "colosal" then
      return 2
    end
    return 1
  end
  local get_slow_down = function(pro_app)
    if pro_app.type == "spitter" then
      if pro_app.name == "small" then
        return 0.6
      elseif pro_app.name == "medium" then
        return 0.5
      elseif pro_app.name == "big" then
        return 0.4
      elseif pro_app.name == "behemoth" then
        return 0.3
      elseif pro_app.name == "colosal" then
        return 0.2
      end
    end
    return 1
  end

  local sticker = {
    type = "sticker",
    name = "acid-sticker-" .. pro_app.name,
    flags = { "not-on-map" },
    animation = {
      filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
      draw_as_glow = true,
      line_length = 5,
      width = 30,
      height = 34,
      frame_count = 50,
      animation_speed = 0.5,
      tint = pro_dmg.tint3,
      shift = util.by_pixel(1.5, 0),
      scale = 0.5,
    },
    duration_in_ticks = pro_dmg.slow_seconds * 60,
    target_movement_modifier_from = get_slow_down(pro_app),
    target_movement_modifier_to = 1,
    vehicle_speed_modifier_from = get_slow_down(pro_app),
    vehicle_speed_modifier_to = 1,
    vehicle_friction_modifier_from = pro_dmg.vehicle_friction_modifier,
    vehicle_friction_modifier_to = 1,
  }
  if data.raw[sticker.type][sticker.name] then
    data.raw[sticker.type][sticker.name] = sticker
  else
    data:extend({ sticker })
  end

  local splash_fire_ground_patch_scale = 0.65
  local splash_fire = {
    type = "fire",
    name = "acid-splash-fire-" .. pro_app.type .. "-" .. pro_app.name,
    localised_name = { "entity-name.acid-splash" },
    flags = { "placeable-off-grid", "not-on-map" },
    damage_per_tick = { amount = 0 / 60, type = "acid" },
    maximum_damage_multiplier = 3,
    damage_multiplier_increase_per_added_fuel = 1,
    damage_multiplier_decrease_per_tick = 0.005,

    --spawn_entity = "fire-flame-on-tree",
    uses_alternative_behavior = true,
    limit_overlapping_particles = true,
    initial_render_layer = "object",
    render_layer = "lower-object-above-shadow",
    secondary_render_layer = "higher-object-above",
    secondary_picture_fade_out_start = 30,
    secondary_picture_fade_out_duration = 60,

    spread_delay = 300,
    spread_delay_deviation = 180,
    maximum_spread_count = 100,

    particle_alpha = 0.6,
    particle_alpha_blend_duration = 60 * 5,
    --flame_alpha = 0.35,
    --flame_alpha_deviation = 0.05,

    emissions_per_second = {pollution=0.001},

    add_fuel_cooldown = 10,
    fade_in_duration = 1,
    fade_out_duration = 30,

    initial_lifetime = 60 * 32, --120,
    lifetime_increase_by = 0,
    lifetime_increase_cooldown = 4,
    maximum_lifetime = 1800,
    delay_between_initial_flames = 10, -- deal damage ever 10 ticks
    initial_flame_count = 1,
    burnt_patch_lifetime = 0,

    on_damage_tick_effect = {
      type = "direct",
      force = "enemy",
      ignore_collision_condition = true,
      trigger_target_mask = { "ground-unit" },
      filter_enabled = true,
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-sticker",
            sticker = sticker.name,
            show_in_tooltip = true,
          },
          {
            type = "damage",
            damage = { amount = pro_dmg.damage * (10 / 60) / pro_dmg.damage_modifier, type = "acid" },
            apply_damage_to_trees = false,
          },
        },
      },
    },

    pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            draw_as_glow = true,
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), pro_app.scale),
            tint = pro_dmg.tint2,
            scale = 0.5 * pro_app.scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), pro_app.scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            draw_as_glow = true,
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), pro_app.scale),
            tint = pro_dmg.tint2,
            scale = 0.5 * pro_app.scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), pro_app.scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            draw_as_glow = true,
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), pro_app.scale),
            tint = pro_dmg.tint2,
            scale = 0.5 * pro_app.scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), pro_app.scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            draw_as_glow = true,
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), pro_app.scale),
            tint = pro_dmg.tint2,
            scale = 0.5 * pro_app.scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), pro_app.scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale,
          },
        },
      },
    },

    secondary_pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            draw_as_glow = true,
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), pro_app.scale * splash_fire_ground_patch_scale),
            tint = util.multiply_color(pro_dmg.tint2, 0.7),
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), pro_app.scale * splash_fire_ground_patch_scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            draw_as_glow = true,
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), pro_app.scale * splash_fire_ground_patch_scale),
            tint = util.multiply_color(pro_dmg.tint2, 0.7),
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), pro_app.scale * splash_fire_ground_patch_scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            draw_as_glow = true,
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), pro_app.scale * splash_fire_ground_patch_scale),
            tint = util.multiply_color(pro_dmg.tint2, 0.7),
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), pro_app.scale * splash_fire_ground_patch_scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            draw_as_glow = true,
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), pro_app.scale * splash_fire_ground_patch_scale),
            tint = util.multiply_color(pro_dmg.tint2, 0.7),
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), pro_app.scale * splash_fire_ground_patch_scale),
            draw_as_shadow = true,
            scale = 0.5 * pro_app.scale * splash_fire_ground_patch_scale,
          },
        },
      },
    },
  }
  if data.raw[splash_fire.type][splash_fire.name] then
    data.raw[splash_fire.type][splash_fire.name] = splash_fire
  else
    data:extend({ splash_fire })
  end

  local stream = {
    type = "stream",
    name = "acid-stream-" .. pro_app.type .. "-" .. pro_app.name,
    flags = { "not-on-map" },
    particle_buffer_size = 90,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    particle_vertical_acceleration = 0.005 * 0.60 * 1.5, --x
    particle_horizontal_speed = 0.2 * 0.75 * 1.5 * 1.5, --x
    particle_horizontal_speed_deviation = 0.005 * 0.70,
    particle_start_alpha = 0.5,
    particle_end_alpha = 1,
    particle_alpha_per_part = 0.8,
    particle_scale_per_part = 0.8,
    particle_loop_frame_count = 15,
    --particle_fade_out_threshold = 0.95,
    particle_fade_out_duration = 2,
    particle_loop_exit_threshold = 0.25,
    special_neutral_target_damage = { amount = 1, type = "acid" },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/fight/projectile-acid-burn-loop.ogg",
          volume = 0.4,
        },
      },
    },
    initial_action = {
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "play-sound",
              sound = {
                {
                  filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                  volume = 0.65,
                },
                {
                  filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                  volume = 0.65,
                },
                {
                  filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                  volume = 0.6,
                },
                {
                  filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                  volume = 0.6,
                },
              },
            },
            {
              type = "create-fire",
              entity_name = splash_fire.name,
              tile_collision_mask = { layers = {
                water_tile=true
              } },
              show_in_tooltip = true,
            },
            {
              type = "create-entity",
              entity_name = "water-splash",
              tile_collision_mask = { layers = {
                ground_tile = true,
              } },
            },
          },
        },
      },
      {
        type = "area",
        radius = get_stream_radius(pro_app),
        force = "enemy",
        ignore_collision_condition = true,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "create-sticker",
              sticker = sticker.name,
            },
            {
              type = "damage",
              damage = { amount = 1, type = "acid" },
            },
          },
        },
      },
    },
    particle = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-head.png",
      draw_as_glow = true,
      line_length = 5,
      width = 42,
      height = 164,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(-2, 31), pro_app.scale),
      tint = pro_dmg.tint1,
      priority = "high",
      scale = 0.5 * pro_app.scale,
      animation_speed = 1,
    },
    spine_animation = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-tail.png",
      draw_as_glow = true,
      line_length = 5,
      width = 132,
      height = 20,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(0, -1), pro_app.scale),
      tint = pro_dmg.tint1,
      priority = "high",
      scale = 0.5 * pro_app.scale,
      animation_speed = 1,
    },
    shadow = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
      line_length = 15,
      width = 42,
      height = 164,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(-2, 31), pro_app.scale),
      draw_as_shadow = true,
      priority = "high",
      scale = 0.5 * pro_app.scale,
      animation_speed = 1,
    },

    oriented_particle = true,
    shadow_scale_enabled = true,
  }
  if data.raw[stream.type][stream.name] then
    data.raw[stream.type][stream.name] = stream
  else
    data:extend({ stream })
  end

  return stream.name
end
local function make_attack_parameter(data_app, data_dmg)
  if data_app == nil or data_dmg == nil then
    return nil
  end
  if data_app.type == "biter" then
    data_dmg.type = "projectile"
    data_dmg.category = "melee"
    data_dmg.range = 0.5
    data_dmg.cooldown = 35
    data_dmg.min_attack_distance = nil
    data_dmg.creation_distance = nil
    data_dmg.damage_modifier = nil
    data_dmg.warmup = nil
    data_dmg.ammo = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = data_dmg.damage, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = data_dmg.damage2, type = "acid" },
            },
          },
        },
      },
    }
  end
  if data_app.type == "scarab" then
    data_dmg.type = "projectile"
    data_dmg.category = "melee"
    data_dmg.range = 0.5
    data_dmg.cooldown = 35
    data_dmg.min_attack_distance = nil
    data_dmg.creation_distance = nil
    data_dmg.damage_modifier = nil
    data_dmg.warmup = nil
    data_dmg.ammo = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = data_dmg.damage, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 5, type = "acid" },
            },
          },
        },
      },
    }
  end
  if data_app.type == "spitter" then
    data_dmg.type = "stream"
    data_dmg.category = "biological"
    data_dmg.cooldown_deviation = 0.15
    data_dmg.min_attack_distance = 10 -- TODO: adapt with range parameter?
    data_dmg.projectile_creation_parameters = make_shoot_shiftings(data_app.scale, data_app.scale * 20)
    data_dmg.tint1 = { r = 0.917, g = 1.000, b = 0.282, a = 1.000 } -- stream tint
    data_dmg.tint2 = { r = 1.000, g = 0.992, b = 0.512, a = 1.000 } -- splash tint
    data_dmg.tint3 = { r = 0.714, g = 0.669, b = 0.291, a = 0.745 } -- sticker tint
    data_dmg.slow_seconds = 2
    data_dmg.vehicle_friction_modifier = 1.5
    data_dmg.ammo = {
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = make_projectile_stream(data_app, data_dmg),
        },
      },
    }
    data_dmg.roarvolume = 0.4
    data_dmg.warmup = 30
  end
  if data_app.type == "psyker" then
    data_dmg.type = "beam"
    data_dmg.category = "electric"
    data_dmg.ammo = {
      action = {
        type = "direct",
        action_delivery = {
          type = "beam",
          beam = make_projectile_beam(data_app, data_dmg),
          max_length = 15,
          duration = 20,
          source_offset = { 0.15, -0.5 },
        },
      },
    }
  end
  return {
    type = data_dmg.type,
    ammo_category = data_dmg.category,
    cooldown = data_dmg.cooldown,
    range = data_dmg.range,
    min_attack_distance = data_dmg.min_attack_distance,
    damage_modifier = data_dmg.damage_modifier,
    warmup = data_dmg.warmup,
    ammo_type = data_dmg.ammo,
    sound = make_roar_sound(data_app.type, nil), -- TODO: replace nil with actual volume
    animation = make_attack_animation(data_app),
  }
end

-- drop
local function make_loot(loot_data)
  if type(loot_data) ~= "table" then
    return nil
  end
  if next(loot_data) == nil then
    return nil
  end

  local loot_proto = {}
  for _, loot_item in pairs(loot_data) do
    local item_found = false
    if loot_item.item then
      for _, item_type in pairs({ "item", "tool", "item-with-entity-data" }) do
        if data.raw[item_type][loot_item.item] then
          item_found = true
        end
      end
    end
    if item_found then
      local min = (loot_item.avg_amount or 1) - ((loot_item.variation or 0) / 2)
      local max = (loot_item.avg_amount or 1) + ((loot_item.variation or 0) / 2)
      if max < min then
        min, max = max, min
      end
      if max > 0 then
        local prob = max < 1 and max or 1
        if prob < 1 then
          min, max = min / max, 1
        end
        table.insert(loot_proto, {
          item = loot_item.item,
          probability = prob < 1 and prob or nil,
          count_min = min,
          count_max = max,
        })
      end
    end
  end
  return loot_proto
end

-- public functions
function angelsmods.functions.make_alien(def_data)
  if def_data == nil then
    return
  end
  local c_name = def_data.appearance.name .. "-" .. def_data.appearance.type .. "-corpse"
  --utilise the vanilla script to add the death animation and corpses in one go
  local corpse_base = {
    type = "corpse",
    name = c_name,
    icons = {
      {
        icon = "__base__/graphics/icons/big-biter-corpse.png",
        icon_size = 64,
        tint = def_data.appearance.tint1,
      },
    },
    selection_box = { { -1, -1 }, { 1, 1 } },
    selectable_in_game = false,
    subgroup = "corpses",
    order = "c[corpse]-a[" .. def_data.appearance.type .. "]-a[" .. def_data.appearance.name .. "]",
    flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map" },
  }
  data:extend({ corpse_base })
  if def_data.appearance.type == "scarab" then
    data.raw.corpse[c_name].animation = make_die_animation(def_data.appearance)
  elseif def_data.appearance.type == "biter" then
    --both share biter animations
    add_biter_die_animation(
      def_data.appearance.scale,
      def_data.appearance.tint1,
      def_data.appearance.tint2,
      corpse_base
    )
  else --psyker and spitter share spitter ones, any custom ones would have to be isolated or paired with these
    add_spitter_die_animation(
      def_data.appearance.scale,
      def_data.appearance.tint1,
      def_data.appearance.tint2,
      corpse_base
    )
  end
  local box_scale = def_data.appearance.box_scale or 1
  data:extend({
    {
      type = "unit",
      name = def_data.appearance.name .. "-" .. def_data.appearance.type,
      icons = make_icon(def_data.appearance),
      icon_size = 32,
      flags = {
        "placeable-player",
        "placeable-enemy",
        "placeable-off-grid",
        "not-repairable",
        "breaths-air",
      },
      max_health = def_data.appearance.health,
      resistances = def_data.resistance,
      order = def_data.appearance.order or "b-z-a",
      subgroup = "enemies",
      healing_per_tick = 0.01,
      collision_box = { { -0.4 * box_scale, -0.4 * box_scale }, { 0.4 * box_scale, 0.4 * box_scale } },
      selection_box = { { -0.7 * box_scale, -1.5 * box_scale }, { 0.7 * box_scale, 0.3 * box_scale } },
      attack_parameters = make_attack_parameter(def_data.appearance, def_data.attack),
      vision_distance = 30,
      movement_speed = def_data.appearance.speed,
      distance_per_frame = 0.1,
      absorptions_to_join_attack = { pollution = 200 },
      distraction_cooldown = 300,
      min_pursue_time = 10 * 60,
      max_pursue_distance = 50,
      corpse = c_name,
      loot = make_loot(def_data.loot),
      dying_explosion = "blood-explosion-big",
      dying_sound = make_die_sound(def_data.appearance.type, 0.4),
      working_sound = make_call_sounds(0.3),
      run_animation = make_run_animation(def_data.appearance),
    },
  })
end

function angelsmods.functions.make_alien_spawner(spawn_data)
  if spawn_data == nil then
    return
  end
  data:extend({
    {
      type = "unit-spawner",
      name = spawn_data.appearance.type .. "-spawner",
      icon = "__base__/graphics/icons/biter-spawner.png",
      icon_size = 64,
      flags = { "placeable-player", "placeable-enemy", "not-repairable" },
      max_health = spawn_data.appearance.health,
      order = spawn_data.appearance.order or "b-d-z",
      subgroup = "enemies",
      resistances = spawn_data.resistance,
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/creatures/spawner.ogg",
            volume = 1.0,
          },
        },
      },
      dying_sound = {
        {
          filename = "__base__/sound/creatures/spawner-death-1.ogg",
          volume = 1.0,
        },
        {
          filename = "__base__/sound/creatures/spawner-death-2.ogg",
          volume = 1.0,
        },
      },
      healing_per_tick = 0.02,
      collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
      selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
      -- in ticks per 1 pu
      absorptions_per_second = { pollution = { absolute = 20, proportional = 0.01 } },
      loot = {},
      corpse = "biter-spawner-corpse",
      loot = make_loot(spawn_data.loot),
      dying_explosion = "blood-explosion-huge",
      max_count_of_owned_units = 7,
      max_friends_around_to_spawn = 5,
      graphics_set = {
        animations = {
          spawner_idle_animation(0, spawn_data.appearance.tint),
          spawner_idle_animation(1, spawn_data.appearance.tint),
          spawner_idle_animation(2, spawn_data.appearance.tint),
          spawner_idle_animation(3, spawn_data.appearance.tint),
        },
      },
      result_units = spawn_data.results,
      spawning_cooldown = spawn_data.appearance.spawn_cooldown,
      spawning_radius = 10,
      spawning_spacing = 3,
      max_spawn_shift = 0,
      max_richness_for_spawn_shift = 100,
      autoplace = enemy_spawner_autoplace("enemy_autoplace_base(0, 6)"),
      call_for_help_radius = 50,
    },
    {
      type = "corpse",
      name = spawn_data.appearance.type .. "-spawner-corpse",
      flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
      icon = "__base__/graphics/icons/biter-spawner-corpse.png",
      icon_size = 32,
      collision_box = { { -2, -2 }, { 2, 2 } },
      selection_box = { { -2, -2 }, { 2, 2 } },
      selectable_in_game = false,
      dying_speed = 0.04,
      time_before_removed = 15 * 60 * 60,
      subgroup = "corpses",
      order = "c[corpse]-b[biter-spawner]",
      final_render_layer = "remnants",
      animation = {
        spawner_die_animation(0, spawn_data.appearance.tint),
        spawner_die_animation(1, spawn_data.appearance.tint),
        spawner_die_animation(2, spawn_data.appearance.tint),
        spawner_die_animation(3, spawn_data.appearance.tint),
      },
    },
  })
end

function angelsmods.functions.update_alien(ua_data)
  if ua_data == nil then
    return
  end
  local unit =
    data.raw.unit[ua_data.appearance.full_name or (ua_data.appearance.name .. "-" .. ua_data.appearance.type) or ""]
  if unit then
    unit.resistances = ua_data.resistance or unit.resistances
    unit.max_health = ua_data.appearance.health or unit.max_health
    unit.movement_speed = ua_data.appearance.speed or unit.movement_speed
    unit.attack_parameters = make_attack_parameter(ua_data.appearance, ua_data.attack) or unit.attack_parameters
    unit.loot = ua_data.loot and make_loot(ua_data.loot) or unit.loot
  end
end

function angelsmods.functions.update_spawner(us_data)
  if us_data == nil then
    return
  end
  local spawner = data.raw["unit-spawner"][us_data.appearance.full_name or (us_data.appearance.type .. "-spawner")]
  if spawner then
    spawner.resistances = spawner.resistances or {}
    for _, new_resistance_data in pairs(us_data.resistance or {}) do
      local existing_resistance = false
      for old_resistance_index, old_resistance_data in pairs(spawner.resistances) do
        if old_resistance_data.type == new_resistance_data.type then
          spawner.resistances[old_resistance_index] = new_resistance_data
          existing_resistance = true
          break
        end
      end
      if not existing_resistance then
        table.insert(spawner.resistances, new_resistance_data)
      end
    end
    spawner.max_health = us_data.appearance.health or spawner.max_health
    spawner.spawning_cooldown = us_data.appearance.spawn_cooldown or spawner.spawning_cooldown
    spawner.result_units = spawner.result_units or {}
    for _, new_result_unit_data in pairs(us_data.results or {}) do
      local existing_result_unit = false
      for old_result_unit_index, old_result_unit_data in pairs(spawner.result_units) do
        if old_result_unit_data[1] == new_result_unit_data[1] then
          spawner.result_units[old_result_unit_index] = new_result_unit_data
          existing_result_unit = true
          break
        end
      end
      if not existing_result_unit then
        table.insert(spawner.result_units, new_result_unit_data)
      end
    end
    spawner.loot = us_data.loot and make_loot(us_data.loot) or spawner.loot
  end
end

function angelsmods.functions.compile_alien_data() -- creates an overview of the current alien data
  -- map biter spawn range on each spawner
  local spawners = {}
  local calculate_spawn_data = function(raw_spawn_points)
    local spawn_points = {}
    for _, spawn_point in pairs(raw_spawn_points) do -- convert indices to numbers
      table.insert(spawn_points, util.table.deepcopy(spawn_point))
    end

    local _, first_spawn_point = next(spawn_points)
    if
      (first_spawn_point.evolution_factor or first_spawn_point[1]) ~= 0
      and (first_spawn_point.spawn_weight or first_spawn_point[2]) ~= 0
    then
      table.insert(spawn_points, 1, { 0, 0 }) -- insert start spawn point (if needed)
    end

    local res = {} -- look for spawn ranges (=wanted data)
    for spawn_idx, spawn_point in pairs(spawn_points) do
      if (#res % 2) == 0 then -- looking for a weight > 0
        if (spawn_point.spawn_weight or spawn_point[2]) ~= 0 then
          if spawn_idx == 1 then
            table.insert(res, 0) -- spawns from the start
          else
            table.insert(res, spawn_points[spawn_idx - 1].evolution_factor or spawn_points[spawn_idx - 1][1])
          end
        end
      else -- looking for a weight == 0
        table.insert(res, spawn_point.evolution_factor or spawn_point[1])
      end
    end

    return (#res > 0) and res or nil -- return the result (if any)
  end
  local combine_spawn_data = function(spawn_data_1, spawn_data_2)
    if spawn_data_1 == nil then
      return spawn_data_2
    end
    if spawn_data_2 == nil then
      return spawn_data_1
    end
    log("TODO!!!")
    return spawn_data_1
  end
  for _, spawner in pairs(data.raw["unit-spawner"]) do
    spawners[spawner.name] = {}
    for _, spawn in pairs(spawner.result_units) do
      local spawn_name = spawn.unit or spawn[1]
      if data.raw["unit"][spawn_name] then
        spawners[spawner.name][spawn_name] =
          combine_spawn_data(spawners[spawner.name][spawn_name], calculate_spawn_data(spawn.spawn_points or spawn[2]))
      else
        --log(spawn_name)
      end
    end
  end

  -- map units to single spawner (=earliest)
  local units = {}
  for spawner, spawner_data in pairs(spawners) do
    for unit, spawn_data in pairs(spawner_data) do
      units[unit] = units[unit] or {}
      units[unit][spawner] = spawn_data[1] -- first point this unit is spawning
    end
  end
  for unit, spawn_data in pairs(units) do
    local lowest_evo_factor = 2
    for spawner, evo_factor in pairs(spawn_data) do
      if evo_factor < lowest_evo_factor then
        lowest_evo_factor = evo_factor
      end
    end
    if lowest_evo_factor > 1 then
      lowest_evo_factor = -lowest_evo_factor
    end
    local spawners_to_remove = {}
    local highest_evo_factor_2 = 0
    for spawner, evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = #spawners[spawner][unit] > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 > highest_evo_factor_2 then
          highest_evo_factor_2 = evo_factor_2
        end
      else
        table.insert(spawners_to_remove, spawner)
      end
    end
    local picked = false
    for spawner, evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = #spawners[spawner][unit] > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 < highest_evo_factor_2 or picked then
          table.insert(spawners_to_remove, spawner)
        else
          picked = true -- picking the first if multiple spawners are 'equal'
        end
      end
    end
    for _, spawner_to_remove in pairs(spawners_to_remove) do
      units[unit][spawner_to_remove] = nil
    end
  end

  -- map all units to the spawner they are assigned to
  spawners = {}
  for unit, unit_data in pairs(units) do
    for spawner, evo_factor in pairs(unit_data) do
      spawners[spawner] = spawners[spawner] or {}
      spawners[spawner][unit] = evo_factor
    end
  end

  -- order biters in rising evolution factor for each spawner
  local order_units
  order_units = function(units)
    local highest_evo_factor = -1
    for _, evo_factor in pairs(units) do
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then
      return units
    end -- recursion end
    local ordered_units = util.table.deepcopy(units)
    for unit, evo_factor in pairs(ordered_units) do
      if evo_factor == highest_evo_factor then
        ordered_units[unit] = nil
        ordered_units = order_units(ordered_units) -- recursion
        table.insert(ordered_units, { [unit] = evo_factor })
        return ordered_units
      end
    end
  end
  for spawner, unit_data in pairs(spawners) do
    spawners[spawner] = order_units(unit_data)
  end

  -- order spawners in rising evolution factor in unique biter spawns
  local order_spawners
  order_spawners = function(spawners)
    local highest_evo_factor = -1
    for _, spawner_data in pairs(spawners) do
      local _, evo_factor = next(spawner_data[1])
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then
      return spawners
    end -- recursion end
    local ordered_spawners = util.table.deepcopy(spawners)
    for spawner, spawner_data in pairs(ordered_spawners) do
      local _, evo_factor = next(spawner_data[1])
      if evo_factor == highest_evo_factor then
        ordered_spawners[spawner] = nil
        ordered_spawners = order_spawners(ordered_spawners) -- recursion
        table.insert(ordered_spawners, { [spawner] = util.table.deepcopy(spawner_data) })
        return ordered_spawners
      end
    end
  end
  return order_spawners(spawners)
end
