require("util")
local math3d = require("math3d")
local sounds = require("__base__.prototypes.entity.sounds")

local bio_turret_make_color = function(r_, g_, b_, a_)
  return { r = r_ * a_, g = g_ * a_, b = b_ * a_, a = a_ }
end

local bio_turret_foreach = function(table_, fun_)
  for k, tab in pairs(table_) do
    fun_(tab)
  end
  return table_
end

local bio_turret_gun_shift = {
  north = util.by_pixel(0.0, -6.0),
  east = util.by_pixel(18.5, 9.5),
  south = util.by_pixel(0.0, 19.0),
  west = util.by_pixel(-12.0, 5.5),
}

local bio_turret_model_info = {
  tilt_pivot = { -1.68551, 0, 2.35439 },
  gun_tip_lowered = { 4.27735, 0, 3.97644 },
  gun_tip_raised = { 2.2515, 0, 7.10942 },
  units_per_tile = 4,
}

local bio_turret_gun_center_base = math3d.vector2.sub({ 0, -0.725 }, bio_turret_gun_shift.south)

local indicator_pictures = {
  north = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/led-indicator/bio-turret-led-indicator-north.png",
    line_length = 2,
    width = 10,
    height = 18,
    frame_count = 2,
    axially_symmetrical = false,
    direction_count = 1,
    shift = util.by_pixel(7, 20),
    scale = 0.5,
  },
  east = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/led-indicator/bio-turret-led-indicator-east.png",
    line_length = 2,
    width = 18,
    height = 8,
    frame_count = 2,
    axially_symmetrical = false,
    direction_count = 1,
    shift = util.by_pixel(-33, -5),
    scale = 0.5,
  },
  south = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/led-indicator/bio-turret-led-indicator-south.png",
    line_length = 2,
    width = 8,
    height = 18,
    frame_count = 2,
    axially_symmetrical = false,
    direction_count = 1,
    shift = util.by_pixel(-8, -45),
    scale = 0.5,
  },
  west = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/led-indicator/bio-turret-led-indicator-west.png",
    line_length = 2,
    width = 20,
    height = 10,
    frame_count = 2,
    axially_symmetrical = false,
    direction_count = 1,
    shift = util.by_pixel(32, -20),
    scale = 0.5,
  },
}

local bio_turret_extension_animation = function(shft, opts)
  local m_line_length = 5
  local m_frame_count = 15
  local ret_layers = {
    -- diffuse
    {
      filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-extension.png",
      priority = "medium",
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 152,
      height = 128,
      direction_count = 1,
      axially_symmetrical = false,
      shift = util.by_pixel(0, -26),
      scale = 0.5,
    },
    -- mask
    {
      filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-extension-mask.png",
      flags = { "mask" },
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 144,
      height = 120,
      direction_count = 1,
      axially_symmetrical = false,
      shift = util.by_pixel(0, -26),
      apply_runtime_tint = true,
      scale = 0.5,
    },
    -- shadow
    {
      filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-extension-shadow.png",
      frame_count = opts and opts.frame_count or m_frame_count,
      line_length = opts and opts.line_length or m_line_length,
      run_mode = opts and opts.run_mode or "forward",
      width = 180,
      height = 114,
      direction_count = 1,
      axially_symmetrical = false,
      shift = util.by_pixel(33, -1),
      draw_as_shadow = true,
      scale = 0.5,
    },
  }

  local yoffsets = { north = 0, east = 3, south = 2, west = 1 }
  local m_lines = m_frame_count / m_line_length

  return {
    layers = bio_turret_foreach(ret_layers, function(tab)
      if tab.shift then
        tab.shift = { tab.shift[1] + shft[1], tab.shift[2] + shft[2] }
      end
      if tab.height then
        tab.y = tab.height * m_lines * yoffsets[opts.direction]
      end
    end),
  }
end

local bio_turret_extension = function(opts)
  local set_direction = function(opts, dir)
    opts.direction = dir
    return opts
  end

  return {
    north = bio_turret_extension_animation(bio_turret_gun_shift.north, set_direction(opts, "north")),
    east = bio_turret_extension_animation(bio_turret_gun_shift.east, set_direction(opts, "east")),
    south = bio_turret_extension_animation(bio_turret_gun_shift.south, set_direction(opts, "south")),
    west = bio_turret_extension_animation(bio_turret_gun_shift.west, set_direction(opts, "west")),
  }
end

local bio_turret_prepared_animation = function(shft, opts)
  local diffuse_layer = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun.png",
    priority = "medium",
    counterclockwise = true,
    line_length = 8,
    width = 158,
    height = 128,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = util.by_pixel(-1, -25),
    scale = 0.5,
  }
  local glow_layer = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-active.png",
    counterclockwise = true,
    line_length = 8,
    width = 158,
    height = 126,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = util.by_pixel(-1, -25),
    tint = bio_turret_make_color(1, 1, 1, 0.5),
    blend_mode = "additive",
    scale = 0.5,
  }
  local mask_layer = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-mask.png",
    flags = { "mask" },
    counterclockwise = true,
    line_length = 8,
    width = 144,
    height = 112,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = util.by_pixel(-1, -28),
    apply_runtime_tint = true,
    scale = 0.5,
  }
  local shadow_layer = {
    filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/gun/bio-turret-gun-shadow.png",
    counterclockwise = true,
    line_length = 8,
    width = 182,
    height = 116,
    frame_count = 1,
    axially_symmetrical = false,
    direction_count = 64,
    shift = util.by_pixel(31, -1),
    draw_as_shadow = true,
    scale = 0.5,
  }

  local ret_layers = opts and opts.attacking and { diffuse_layer, glow_layer, mask_layer, shadow_layer }
    or { diffuse_layer, mask_layer, shadow_layer }

  return {
    layers = bio_turret_foreach(ret_layers, function(tab)
      if tab.shift then
        tab.shift = { tab.shift[1] + shft[1], tab.shift[2] + shft[2] }
      end
    end),
  }
end

local bio_turret_prepared = function(opts)
  return {
    north = bio_turret_prepared_animation(bio_turret_gun_shift.north, opts),
    east = bio_turret_prepared_animation(bio_turret_gun_shift.east, opts),
    south = bio_turret_prepared_animation(bio_turret_gun_shift.south, opts),
    west = bio_turret_prepared_animation(bio_turret_gun_shift.west, opts),
  }
end

local bio_turret_preparing_muzzle_animation = function(opts)
  opts.frame_count = opts.frame_count or 15
  opts.run_mode = opts.run_mode or "forward"
  assert(opts.orientation_count)

  local model = bio_turret_model_info
  local angle_raised = -math3d.vector3.angle({ 1, 0, 0 }, math3d.vector3.sub(model.gun_tip_raised, model.tilt_pivot))
  local angle_lowered = -math3d.vector3.angle({ 1, 0, 0 }, math3d.vector3.sub(model.gun_tip_lowered, model.tilt_pivot))
  local delta_angle = angle_raised - angle_lowered

  local generated_orientations = {}
  for r = 0, opts.orientation_count - 1 do
    local phi = (r / opts.orientation_count - 0.25) * math.pi * 2
    local generated_frames = {}
    for i = 0, opts.frame_count - 1 do
      local k = opts.run_mode == "backward" and (opts.frame_count - i - 1) or i
      local progress = opts.progress or (k / (opts.frame_count - 1))

      local matrix = math3d.matrix4x4
      local mat = matrix.compose({
        matrix.translation_vec3(math3d.vector3.mul(model.tilt_pivot, -1)),
        matrix.rotation_y(progress * delta_angle),
        matrix.translation_vec3(model.tilt_pivot),
        matrix.rotation_z(phi),
        matrix.scale(1 / model.units_per_tile, 1 / model.units_per_tile, -1 / model.units_per_tile),
      })

      local vec = math3d.matrix4x4.mul_vec3(mat, model.gun_tip_lowered)
      table.insert(generated_frames, math3d.project_vec3(vec))
    end
    local direction_data = { frames = generated_frames }
    if opts.layers and opts.layers[r] then
      direction_data.render_layer = opts.layers[r]
    end
    table.insert(generated_orientations, direction_data)
  end

  return {
    rotations = generated_orientations,
    direction_shift = bio_turret_gun_shift,
  }
end

circuit_connector_definitions["angels-bio-turret"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 14, main_offset = util.by_pixel(-7.25,  24.5), shadow_offset = util.by_pixel(-7.25,  24.5), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-42.875, -12.125), shadow_offset = util.by_pixel(-42.875, -12.125), show_shadow = true },
  { variation =  2, main_offset = util.by_pixel( 7.625, -46.75), shadow_offset = util.by_pixel( 7.625, -46.75), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 44.5, -8.5), shadow_offset = util.by_pixel( 44.5, -8.5), show_shadow = true },
})

data:extend({
  {
    type = "item",
    name = "angels-bio-turret",
    icon = "__angelsexplorationgraphics__/graphics/icons/bio-turret.png",
    icon_size = 64,
    subgroup = "angels-fire",
    order = "b[turret]-c[bio-turret]",
    place_result = "angels-bio-turret",
    stack_size = 50,
  },
  {
    type = "corpse",
    name = "angels-bio-turret-remnants",
    icon = "__angelsexplorationgraphics__/graphics/icons/bio-turret.png",
    icon_size = 64,
    flags = { "placeable-neutral", "not-on-map" },
    selection_box = { { -1, -1.5 }, { 1, 1.5 } },
    tile_width = 2,
    tile_height = 3,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = {
      layers = {
        {
          filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/remnants/bio-turret-remnants.png",
          line_length = 1,
          width = 302,
          height = 326,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 4,
          shift = util.by_pixel(-1.5, -4),
          scale = 0.5,
        },
        {
          priority = "low",
          filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/remnants/mask/bio-turret-remnants-mask.png",
          width = 164,
          height = 164,
          frame_count = 1,
          --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
          apply_runtime_tint = true,
          direction_count = 4,
          shift = util.by_pixel(0, -3.5),
          scale = 0.5,
        },
      },
    },
  },
  {
    type = "fluid-turret",
    name = "angels-bio-turret",
    icon = "__angelsexplorationgraphics__/graphics/icons/bio-turret.png",
    icon_size = 64,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-bio-turret" },
    max_health = 1400,
    corpse = "angels-bio-turret-remnants",
    collision_box = { { -0.7, -1.2 }, { 0.7, 1.2 } },
    selection_box = { { -1, -1.5 }, { 1, 1.5 } },
    rotation_speed = 0.03, -- 0.015
    preparing_speed = 0.08,
    folding_speed = 0.08,
    attacking_speed = 0.5, -- 1
    ending_attack_speed = 0.2,
    dying_explosion = "medium-explosion",
    turret_base_has_direction = true,
    resistances = {
      {
        type = "bio",
        percent = 100,
      },
    },
    fluid_box =
    {
      production_type = "none", -- FluidTurret has its own logic
      secondary_draw_order = 0,
      render_layer = "lower-object",
      --pipe_picture = fireutil.flamethrower_turret_pipepictures(),
      pipe_covers = pipecoverspictures(),
      volume = 100,
      pipe_connections =
      {
        { direction = defines.direction.west, position = { -0.5, 1.0 } },
        { direction = defines.direction.east, position = { 0.5, 1.0 } }
      }
    },
    fluid_buffer_size = 100,
    fluid_buffer_input_flow = 250 / 60 / 5, -- 5s to fill the buffer
    activation_buffer_ratio = 0.25,
    circuit_connector = circuit_connector_definitions["angels-bio-turret"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    folded_animation = bio_turret_extension({ frame_count = 1, line_length = 1 }),
    preparing_animation = bio_turret_extension({}),
    prepared_animation = bio_turret_prepared(),
    attacking_animation = bio_turret_prepared({ attacking = true }),
    ending_attack_animation = bio_turret_prepared({ attacking = true }),
    folding_animation = bio_turret_extension({ run_mode = "backward" }),
    not_enough_fuel_indicator_picture = indicator_pictures,
    enough_fuel_indicator_picture = bio_turret_foreach(util.table.deepcopy(indicator_pictures), function(tab)
      tab.x = tab.width
    end),
    out_of_ammo_alert_icon = {
      filename = "__core__/graphics/icons/alerts/fuel-icon-red.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      flags = { "icon" },
    },
    gun_animation_render_layer = "object",
    gun_animation_secondary_draw_order = 1,
    base_picture_render_layer = "lower-object-above-shadow",
    base_picture_secondary_draw_order = 1,
    graphics_set = {
      base_visualisation = {
        animation = {
          north = {
            layers = {
              -- diffuse
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-north.png",
                line_length = 1,
                width = 158,
                height = 196,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-1, 13),
                scale = 0.5,
              },
              -- mask
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-north-mask.png",
                flags = { "mask" },
                line_length = 1,
                width = 74,
                height = 70,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-1, 33),
                apply_runtime_tint = true,
                scale = 0.5,
              },
              -- shadow
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-north-shadow.png",
                draw_as_shadow = true,
                line_length = 1,
                width = 134,
                height = 152,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(3, 15),
                scale = 0.5,
              },
            },
          },
          east = {
            layers = {
              -- diffuse
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-east.png",
                line_length = 1,
                width = 216,
                height = 146,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-6, 3),
                scale = 0.5,
              },
              -- mask
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-east-mask.png",
                flags = { "mask" },
                apply_runtime_tint = true,
                line_length = 1,
                width = 66,
                height = 82,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-33, 1),
                scale = 0.5,
              },
              -- shadow
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-east-shadow.png",
                draw_as_shadow = true,
                line_length = 1,
                width = 144,
                height = 86,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(14, 9),
                scale = 0.5,
              },
            },
          },
          south = {
            layers = {
              -- diffuse
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-south.png",
                line_length = 1,
                width = 128,
                height = 166,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                scale = 0.5,
              },
              -- mask
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-south-mask.png",
                flags = { "mask" },
                apply_runtime_tint = true,
                line_length = 1,
                width = 72,
                height = 72,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0, -31),
                scale = 0.5,
              },
              -- shadow
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-south-shadow.png",
                draw_as_shadow = true,
                line_length = 1,
                width = 134,
                height = 98,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(3, 9),
                scale = 0.5,
              },
            },
          },
          west = {
            layers = {
              -- diffuse
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-west.png",
                line_length = 1,
                width = 208,
                height = 144,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(7, -1),
                scale = 0.5,
              },
              -- mask
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-west-mask.png",
                flags = { "mask" },
                apply_runtime_tint = true,
                line_length = 1,
                width = 64,
                height = 74,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(32, -1),
                scale = 0.5,
              },
              -- shadow
              {
                filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/base/bio-turret-base-west-shadow.png",
                draw_as_shadow = true,
                line_length = 1,
                width = 206,
                height = 88,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(15, 4),
                scale = 0.5,
              },
            },
          },
        },
      },
    },
    muzzle_animation = {
      filename = "__angelsexplorationgraphics__/graphics/entity/bio-turret/bio-turret-muzzle-fire.png",
      line_length = 8,
      width = 17,
      height = 41,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = "additive",
      scale = 0.5,
      shift = { 0.015625 * 0.5, -0.546875 * 0.5 + 0.05 },
    },
    muzzle_light = { intensity = 0.7, size = 3 },
    folded_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 1,
      orientation_count = 4,
      progress = 0,
      layers = { [0] = "object" },
    }),
    preparing_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 15,
      orientation_count = 4,
      layers = { [0] = "object" },
    }),
    prepared_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 1,
      orientation_count = 64,
      progress = 1,
    }),
    attacking_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 1,
      orientation_count = 64,
      progress = 1,
    }),
    ending_attack_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 1,
      orientation_count = 64,
      progress = 1,
    }),
    folding_muzzle_animation_shift = bio_turret_preparing_muzzle_animation({
      frame_count = 15,
      orientation_count = 4,
      run_mode = "backward",
      layers = { [0] = "object" },
    }),
    impact_category = "default",
    prepare_range = 35,
    shoot_in_prepare_state = false,
    attack_parameters = {
      type = "stream",
      ammo_category = "biological",
      cooldown = 4,
      range = 30,
      min_range = 6,
      turn_range = 1.0 / 3.0,
      fire_penalty = 15,
      fluids = {
        { type = "crude-oil" },
        --{type = "heavy-oil", damage_modifier = 1.05},
        --{type = "light-oil", damage_modifier = 1.1}
        { type = "lubricant", damage_modifier = 1.05 },
      },
      fluid_consumption = 0.2, -- 0.2 = 3/s
      gun_center_shift = {
        north = math3d.vector2.add(bio_turret_gun_center_base, bio_turret_gun_shift.north),
        east = math3d.vector2.add(bio_turret_gun_center_base, bio_turret_gun_shift.east),
        south = math3d.vector2.add(bio_turret_gun_center_base, bio_turret_gun_shift.south),
        west = math3d.vector2.add(bio_turret_gun_center_base, bio_turret_gun_shift.west),
      },
      gun_barrel_length = 0.4,
      ammo_type = {
        category = "bio",
        action = {
          type = "direct",
          action_delivery = {
            type = "stream",
            stream = "angels-bio-stream",
            source_offset = { 0.15, -0.5 },
          },
        },
      },
      cyclic_sound = {
        begin_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7,
          },
        },
        middle_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7,
          },
        },
        end_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7,
          },
        },
      },
    },
    call_for_help_radius = 40,
  },
})
