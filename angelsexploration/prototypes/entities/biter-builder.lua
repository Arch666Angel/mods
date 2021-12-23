require("util")

local noise = require("noise")

local tne = noise.to_noise_expression
local litexp = noise.literal_expression

local onehalf_exp = tne(1) / 2
local onethird_exp = tne(1) / 3

local enemy_random_seed = 1
local function new_random_seed()
  enemy_random_seed = enemy_random_seed + 1
  return enemy_random_seed
end

-- Copy from base.. since local...
local function enemy_autoplace(params)
  local distance_factor = params.distance_factor or 1
  local order = params.order or "b[enemy]-misc"
  local is_turret = params.is_turret or false

  local distance_unit = 312
  local distance_outside_starting_area = noise.var("distance") - noise.var("starting_area_radius")

  -- Units with a higher distance_factor will appear farther out by one
  -- distance_unit per distance_factor
  local distance_height_multiplier =
    noise.max(0, 1 + (distance_outside_starting_area - distance_unit * distance_factor) * 0.002 * distance_factor)

  local probability_expression = noise.var("enemy_base_probability") * distance_height_multiplier
  -- limit probability so that it never quite reaches 1,
  -- because that would result in stupid-looking squares of biter bases:
  probability_expression = noise.min(probability_expression, 0.25 + distance_factor * 0.05)
  -- Add randomness to the probability so that there's a little bit of a gradient
  -- between different units:
  probability_expression =
    noise.random_penalty(
    probability_expression,
    0.1,
    {
      x = noise.var("x") + new_random_seed() -- Include distance_factor in random seed!
    }
  )
  -- log("Probability expression for " .. params.order .. "#" .. distance_factor .. ":")
  -- log(tostring(expression_to_ascii_math(probability_expression)))
  local richness_expression = tne(1)

  return {
    control = control_name,
    order = order,
    force = "enemy",
    probability_expression = probability_expression,
    richness_expression = richness_expression
  }
end

local function enemy_spawner_autoplace(distance)
  return enemy_autoplace {
    distance_factor = distance,
    order = "b[enemy]-a[spawner]"
  }
end

local function enemy_worm_autoplace(distance)
  return enemy_autoplace {
    distance_factor = distance,
    order = "b[enemy]-b[worm]",
    is_turret = true
  }
end
local function make_die_animation(data_die)
  if data_die.type == "scarab" then
    return {
      layers = {
        {
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_die.scale,
          stripes = {
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          }
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_die.scale,
          tint = data_die.tint1,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_die.scale,
          tint = data_die.tint2,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        }
      }
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
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_run.scale,
          stripes = {
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          }
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_run.scale,
          tint = data_run.tint1,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_run.scale,
          tint = data_run.tint2,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        }
      }
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
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_attack.scale,
          stripes = {
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-1.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-2.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-3.png",
              width_in_frames = 8,
              height_in_frames = 8
            },
            {
              filename = "__angelsexploration__/graphics/entity/scarab/scarab-run-4.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          }
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_attack.scale,
          tint = data_attack.tint1,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        },
        {
          flags = {"mask"},
          width = 160,
          height = 160,
          frame_count = 16,
          direction_count = 16,
          shift = {0, -2/3},
          animation_speed = 0.75,
          scale = data_attack.scale,
          tint = data_attack.tint2,
          stripes = util.multiplystripes(
            16,
            {
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-1.png",
                width_in_frames = 1,
                height_in_frames = 8
              },
              {
                filename = "__angelsexploration__/graphics/entity/scarab/scarab-fur-2.png",
                width_in_frames = 1,
                height_in_frames = 8
              }
            }
          )
        }
      }
    }
  end
end

local function make_roar_sound(type, volume)
  if type == "biter" or type == "scarab" then
    return {
      {
        filename = "__base__/sound/creatures/biter-roar-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-roar-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-roar-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-roar-4.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-roar-5.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-roar-6.ogg",
        volume = volume
      }
    }
  end
  if type == "spitter" or type == "psyker" then
    return {
      {
        filename = "__base__/sound/creatures/spitter-call-med-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-4.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-5.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-6.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-7.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-8.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-9.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-10.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-call-med-11.ogg",
        volume = volume
      }
    }
  end
  if type == "worm" then
    return {
      {
        filename = "__base__/sound/creatures/worm-roar-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-roar-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-roar-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-roar-4.ogg",
        volume = volume
      }
    }
  end
end

local function make_die_sound(type, volume)
  if type == "biter" or type == "scarab" then
    return {
      {
        filename = "__base__/sound/creatures/biter-death-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-death-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-death-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-death-4.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/biter-death-5.ogg",
        volume = volume
      }
    }
  end
  if type == "spitter" or type == "psyker" then
    return {
      {
        filename = "__base__/sound/creatures/spitter-death-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-death-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-death-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-death-4.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/spitter-death-5.ogg",
        volume = volume
      }
    }
  end
  if type == "worm" then
    return {
      {
        filename = "__base__/sound/creatures/worm-death-1.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-death-2.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-death-3.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-death-4.ogg",
        volume = volume
      },
      {
        filename = "__base__/sound/creatures/worm-death-5.ogg",
        volume = volume
      }
    }
  end
end

local function make_call_sounds(volume)
  return {
    {
      filename = "__base__/sound/creatures/biter-call-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-5.ogg",
      volume = volume
    }
  }
end

local function make_icon(ico_app)
  return {
    {
      icon = "__angelsexploration__/graphics/icons/" .. ico_app.type .. "-base.png"
    },
    {
      icon = "__angelsexploration__/graphics/icons/" .. ico_app.type .. "-overlay.png",
      tint = ico_app.tint1
    }
  }
end

local function make_projectile(pro_app, pro_dmg)
  data:extend(
    {
      {
        type = "beam",
        name = pro_app.name .. "-" .. pro_app.type .. "-beam",
        flags = {"not-on-map"},
        width = 0.5,
        damage_interval = pro_dmg.cooldown,
        action = {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = {amount = pro_dmg.damage, type = "electric"}
              }
            }
          }
        },
        start = {
          filename = "__base__/graphics/entity/beam/tileable-beam-START.png",
          line_length = 4,
          width = 52,
          height = 40,
          frame_count = 16,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {-0.03125, 0},
          hr_version = {
            filename = "__base__/graphics/entity/beam/hr-tileable-beam-START.png",
            line_length = 4,
            width = 94,
            height = 66,
            frame_count = 16,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {0.53125, 0},
            scale = 0.5
          }
        },
        ending = {
          filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
          line_length = 4,
          width = 49,
          height = 54,
          frame_count = 16,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {-0.046875, 0},
          hr_version = {
            filename = "__base__/graphics/entity/beam/hr-tileable-beam-END.png",
            line_length = 4,
            width = 91,
            height = 93,
            frame_count = 16,
            axially_symmetrical = false,
            direction_count = 1,
            shift = {-0.078125, -0.046875},
            scale = 0.5
          }
        },
        head = {
          filename = "__base__/graphics/entity/beam/beam-head.png",
          line_length = 16,
          width = 45,
          height = 39,
          frame_count = 16,
          animation_speed = 0.5,
          blend_mode = "additive-soft"
        },
        tail = {
          filename = "__base__/graphics/entity/beam/beam-tail.png",
          line_length = 16,
          width = 45,
          height = 39,
          frame_count = 16,
          blend_mode = "additive-soft"
        },
        body = {
          {
            filename = "__base__/graphics/entity/beam/beam-body-1.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-2.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-3.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-4.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-5.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          },
          {
            filename = "__base__/graphics/entity/beam/beam-body-6.png",
            line_length = 16,
            width = 45,
            height = 39,
            frame_count = 16,
            blend_mode = "additive-soft"
          }
        },
        working_sound = {
          {
            filename = "__base__/sound/fight/electric-beam.ogg",
            volume = 0.7
          }
        }
      }
    }
  )
end

local function make_attack_parameter(data_app, data_dmg)
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
      category = "melee",
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = {amount = data_dmg.damage, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = data_dmg.damage2, type = "acid"}
            }
          }
        }
      }
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
      category = "melee",
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = {amount = data_dmg.damage, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "acid"}
            }
          }
        }
      }
    }
  end
  if data_app.type == "spitter" then
    data_dmg.type = "stream"
    data_dmg.ammo_category = "biological"
    data_dmg.cooldown_deviation = 0.15
    data_dmg.damage_modifier = (data_dmg.damage_modifier or 1) * (data_dmg.damage / 50) -- this will make sure damage/sec equals data_dmg.damage
    data_dmg.roarvolume = 0.4

    data_dmg.warmup = 30
    --projectile_creation_parameters = spitter_shoot_shiftings(data.scale, data.scale * scale_spitter_stream),
    data_dmg.use_shooter_direction = true

    data_dmg.lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5 -- this is same as particle horizontal speed of flamethrower fire stream

    data_dmg.ammo = {
      category = "biological",
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "bio-stream"
        }
      }
    }
  end
  if data_app.type == "psyker" then
    make_projectile(data_app, data_dmg)
    data_dmg.type = "beam"
    data_dmg.category = "electric"
    data_dmg.ammo = {
      category = "electric",
      action = {
        type = "direct",
        action_delivery = {
          type = "beam",
          beam = data_app.name .. "-" .. data_app.type .. "-beam",
          max_length = 15,
          duration = 20,
          source_offset = {0.15, -0.5}
        }
      }
    }
  end
  return {
    type = data_dmg.type,
    ammo_category = data_dmg.category,
    cooldown = data_dmg.cooldown,
    range = data_dmg.range,
    min_attack_distance = data_dmg.min_attack_distance,
    --projectile_creation_distance = data_dmg.creation_distance,
    damage_modifier = data_dmg.damage_modifier,
    warmup = data_dmg.warmup,
    ammo_type = data_dmg.ammo,
    sound = make_roar_sound(data_app.type, volume),
    animation = make_attack_animation(data_app)
  }
end

function angelsmods.functions.make_alien(def_data)
  --log(serpent.block(def_data))
  if def_data ~= nil then
    local c_name = def_data.appearance.name .. "-" .. def_data.appearance.type .. "-corpse"
    --utilise the vanilla script to add the death animation and corpses in one go
    local corpse_base = {
      type = "corpse",
      name = c_name,
      icons={
        {icon = "__base__/graphics/icons/big-biter-corpse.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = def_data.appearance.tint1,
      }},
      selection_box = {{-1, -1}, {1, 1}},
      selectable_in_game = false,
      subgroup = "corpses",
      order = "c[corpse]-a[" .. def_data.appearance.type .. "]-a[" .. def_data.appearance.name .. "]",
      flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"}
    }
    data:extend({corpse_base})
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
    data:extend(
      {
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
            "hidden"
          },
          max_health = def_data.appearance.health,
          resistances = def_data.resistance,
          order = def_data.appearance.order or "b-z-a",
          subgroup = "enemies",
          healing_per_tick = 0.01,
          collision_box = {{-0.4*box_scale, -0.4*box_scale}, {0.4*box_scale, 0.4*box_scale}},
          selection_box = {{-0.7*box_scale, -1.5*box_scale}, {0.7*box_scale, 0.3*box_scale}},
          attack_parameters = make_attack_parameter(def_data.appearance, def_data.attack),
          vision_distance = 30,
          movement_speed = def_data.appearance.speed,
          distance_per_frame = 0.1,
          pollution_to_join_attack = 200,
          distraction_cooldown = 300,
          min_pursue_time = 10 * 60,
          max_pursue_distance = 50,
          corpse = c_name,
          dying_explosion = "blood-explosion-big",
          dying_sound = make_die_sound(def_data.appearance.type, 0.4),
          working_sound = make_call_sounds(0.3),
          run_animation = make_run_animation(def_data.appearance)
        }
      }
    )
  end
end

function angelsmods.functions.make_alien_spawner(spawn_data)
  data:extend(
    {
      {
        type = "unit-spawner",
        name = spawn_data.appearance.type .. "-spawner",
        icon = "__base__/graphics/icons/biter-spawner.png",
        icon_size = 64,
        flags = {"placeable-player", "placeable-enemy", "not-repairable"},
        max_health = spawn_data.appearance.health,
        order = spawn_data.appearance.order or "b-d-z",
        subgroup = "enemies",
        resistances = spawn_data.resistance,
        working_sound = {
          sound = {
            {
              filename = "__base__/sound/creatures/spawner.ogg",
              volume = 1.0
            }
          },
          apparent_volume = 2
        },
        dying_sound = {
          {
            filename = "__base__/sound/creatures/spawner-death-1.ogg",
            volume = 1.0
          },
          {
            filename = "__base__/sound/creatures/spawner-death-2.ogg",
            volume = 1.0
          }
        },
        healing_per_tick = 0.02,
        collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
        -- in ticks per 1 pu
        pollution_absorption_absolute = 20,
        pollution_absorption_proportional = 0.01,
        loot = {},
        corpse = "biter-spawner-corpse",
        dying_explosion = "blood-explosion-huge",
        max_count_of_owned_units = 7,
        max_friends_around_to_spawn = 5,
        animations = {
          spawner_idle_animation(0, spawn_data.appearance.tint),
          spawner_idle_animation(1, spawn_data.appearance.tint),
          spawner_idle_animation(2, spawn_data.appearance.tint),
          spawner_idle_animation(3, spawn_data.appearance.tint)
        },
        result_units = spawn_data.results,
        spawning_cooldown = spawn_data.appearance.spawn_cooldown,
        spawning_radius = 10,
        spawning_spacing = 3,
        max_spawn_shift = 0,
        max_richness_for_spawn_shift = 100,
        autoplace = enemy_spawner_autoplace(1),
        call_for_help_radius = 50
      },
      {
        type = "corpse",
        name = spawn_data.appearance.type .. "-spawner-corpse",
        flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
        icon = "__base__/graphics/icons/biter-spawner-corpse.png",
        icon_size = 32,
        collision_box = {{-2, -2}, {2, 2}},
        selection_box = {{-2, -2}, {2, 2}},
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
          spawner_die_animation(3, spawn_data.appearance.tint)
        }
      }
    }
  )
  -- log(serpent.block(data.raw["unit-spawner"][spawn_data.appearance.type.."-spawner"].autoplace))
end

function angelsmods.functions.update_alien(ua_data)
  local u_name = ua_data.appearance.name .. "-" .. ua_data.appearance.type
  if data.raw.unit[u_name] then
    local unit = data.raw.unit[u_name]
    unit.resistances = ua_data.resistance
    unit.max_health = ua_data.appearance.health
    unit.movement_speed = ua_data.appearance.speed
    unit.attack_parameters = make_attack_parameter(ua_data.appearance, ua_data.attack)
  end
end

function angelsmods.functions.update_spawner(us_data)
  local s_name = us_data.appearance.type .. "-spawner"
  if data.raw["unit-spawner"][s_name] then
    local spawner = data.raw["unit-spawner"][s_name]
    --log(serpent.block(spawner))
    spawner.resistances = spawner.resistances or {}
    for _,new_resistance_data in pairs(us_data.resistance or {}) do
      local existing_resistace = false
      for old_resistance_index,old_resistance_data in pairs(spawner.resistances) do
        if old_resistance_data.type == new_resistance_data.type then
          spawner.resistances[old_resistance_index] = new_resistance_data
          existing_resistace = true
          break
        end
      end
      if not existing_resistance then
        table.insert(spawner.resistances, new_resistance_data)
      end
    end
    spawner.max_health = us_data.appearance.health
    spawner.spawning_cooldown = us_data.appearance.spawn_cooldown
    spawner.result_units = spawner.result_units or {}
    for _,new_result_unit_data in pairs(us_data.results or {}) do
      local existing_result_unit = false
      for old_result_unit_index,old_result_unit_data in pairs(spawner.result_units) do
        if old_result_unit_data[1] == new_result_unit_data[1] then
          spawner.result_units[old_result_unit_index] = new_result_unit_data
          existing_result_unit = true
          break
        end
      end
      if not existing_resistance then
        table.insert(spawner.result_units, new_result_unit_data)
      end
    end
  end
end

-- log(serpent.block(data.raw["unit-spawner"]["biter-spawner"].autoplace))
-- log(serpent.block(data.raw["unit-spawner"]["spitter-spawner"].autoplace))

function angelsmods.functions.compile_alien_data() -- creates an overview of the current alien data
  -- map biter spawn range on each spawner
  local spawners = {}
  local calculate_spawn_data = function(raw_spawn_points)
    local spawn_points = {}
    for _,spawn_point in pairs(raw_spawn_points) do -- convert indices to numbers
      table.insert(spawn_points, util.table.deepcopy(spawn_point))
    end
    
    local _,first_spawn_point = next(spawn_points)
    if (first_spawn_point.evolution_factor or first_spawn_point[1]) ~= 0 and
      (first_spawn_point.spawn_weight     or first_spawn_point[2]) ~= 0 then
      table.insert(spawn_points, 1, {0,0}) -- insert start spawn point (if needed)
    end
    
    local res = {} -- look for spawn ranges (=wanted data)
    for spawn_idx,spawn_point in pairs(spawn_points) do
      if ((#res)%2) == 0 then -- looking for a weight > 0
        if (spawn_point.spawn_weight or spawn_point[2]) ~= 0 then
          if spawn_idx == 1 then
            table.insert(res, 0) -- spawns from the start
          else
            table.insert(res, spawn_points[spawn_idx-1].evolution_factor or spawn_points[spawn_idx-1][1])
          end
        end
      else -- looking for a weight == 0
        table.insert(res, spawn_point.evolution_factor or spawn_point[1])
      end
    end
    
    return ((#res)>0) and res or nil -- return the result (if any)
  end
  local combine_spawn_data = function(spawn_data_1, spawn_data_2)
    if spawn_data_1 == nil then return spawn_data_2 end
    if spawn_data_2 == nil then return spawn_data_1 end
    log("TODO!!!")
    return spawn_data_1
  end
  for _,spawner in pairs(data.raw["unit-spawner"]) do
    spawners[spawner.name] = {}
    for _,spawn in pairs(spawner.result_units) do
      local spawn_name = spawn.unit or spawn[1]
      if data.raw['unit'][spawn_name] then
        spawners[spawner.name][spawn_name] = combine_spawn_data(spawners[spawner.name][spawn_name], calculate_spawn_data(spawn.spawn_points or spawn[2]))
      else
        --log(spawn_name)
      end
    end
  end

  -- map units to single spawner (=earliest)
  local units = {}
  for spawner,spawner_data in pairs(spawners) do
    for unit,spawn_data in pairs(spawner_data) do
      units[unit] = units[unit] or {}
      units[unit][spawner] = spawn_data[1] -- first point this unit is spawning
    end
  end
  for unit,spawn_data in pairs(units) do
    local lowest_evo_factor = 2
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor < lowest_evo_factor then
        lowest_evo_factor = evo_factor
      end
    end
    if lowest_evo_factor > 1 then
      lowest_evo_factor = -lowest_evo_factor
    end
    local spawners_to_remove = {}
    local highest_evo_factor_2 = 0
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = (#spawners[spawner][unit]) > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 > highest_evo_factor_2 then
          highest_evo_factor_2 = evo_factor_2
        end
      else
        table.insert(spawners_to_remove, spawner)
      end
    end
    local picked = false
    for spawner,evo_factor in pairs(spawn_data) do
      if evo_factor == lowest_evo_factor then
        local evo_factor_2 = (#spawners[spawner][unit]) > 1 and spawners[spawner][unit][2] or 1
        if evo_factor_2 < highest_evo_factor_2 or picked then
          table.insert(spawners_to_remove, spawner)
        else
          picked = true -- picking the first if multiple spawners are 'equal'
        end
      end
    end
    for _,spawner_to_remove in pairs(spawners_to_remove) do
      units[unit][spawner_to_remove] = nil
    end
  end

  -- map all units to the spawner they are assigned to
  spawners = {}
  for unit,unit_data in pairs(units) do
    for spawner,evo_factor in pairs(unit_data) do
      spawners[spawner] = spawners[spawner] or {}
      spawners[spawner][unit] = evo_factor
    end
  end

  -- order biters in rising evolution factor for each spawner
  local order_units
  order_units = function(units)
    local highest_evo_factor = -1
    for _,evo_factor in pairs(units) do
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then return units end -- recursion end
    local ordered_units = util.table.deepcopy(units)
    for unit,evo_factor in pairs(ordered_units) do
      if evo_factor == highest_evo_factor then
        ordered_units[unit] = nil
        ordered_units = order_units(ordered_units) -- recursion
        table.insert(ordered_units, {[unit]=evo_factor})
        return ordered_units
      end
    end
  end
  for spawner,unit_data in pairs(spawners) do
    spawners[spawner] = order_units(unit_data)
  end

  -- order spawners in rising evolution factor in unique biter spawns
  local order_spawners
  order_spawners = function(spawners)
    local highest_evo_factor = -1
    for _,spawner_data in pairs(spawners) do
      local _,evo_factor = next(spawner_data[1])
      if evo_factor > highest_evo_factor then
        highest_evo_factor = evo_factor
      end
    end
    if highest_evo_factor < 0 then return spawners end -- recursion end
    local ordered_spawners = util.table.deepcopy(spawners)
    for spawner,spawner_data in pairs(ordered_spawners) do
      local _,evo_factor = next(spawner_data[1])
      if evo_factor == highest_evo_factor then
        ordered_spawners[spawner] = nil
        ordered_spawners = order_spawners(ordered_spawners) -- recursion
        table.insert(ordered_spawners, {[spawner]=util.table.deepcopy(spawner_data)})
        return ordered_spawners
      end
    end
  end
  return order_spawners(spawners)
end
