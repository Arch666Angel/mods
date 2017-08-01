function make_biter(name, health, dmg1, dmg2, res1, res2, res3, res4, res5, multi, scale, tint1, tint2)
data:extend(
{
  {
    type = "unit",
    name = name.."-biter",
    icon = "__base__/graphics/icons/small-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
    max_health = health,
    order = "b-b-a",
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
	resistances =
	{ 
		{type = "physical", decrease = res1, percent = res1 * multi}, 
		{type = "explosion", decrease = res2, percent = res2 * multi}, 
		{type = "fire", decrease = res3, percent = res3 * multi}, 
		{type = "laser", decrease = res4, percent = res4 * multi}, 
		{type = "plasma", decrease = res5, percent = res5 * multi}
	},
    attack_parameters =
    {
      type = "projectile",
      range = 0.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type =
	  {
		category = "melee",
		target_type = "entity",
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
			  type = "damage",
			  damage = { amount = dmg1 , type = "physical"}
			},
			{
			  type = "damage",
			  damage = { amount = dmg2 , type = "acid"}
			}
		  }
		}
	  },
      sound =
	  {
		{
		  filename = "__base__/sound/creatures/biter-roar-1.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-roar-2.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-roar-3.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-roar-4.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-roar-5.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-roar-6.ogg",
		  volume = 0.4
		}
	  },
      animation =
		{
		layers=
		{
		  {
			width = 279,
			height = 184,
			frame_count = 11,
			direction_count = 16,
			shift = {scale * 1.74609, scale * -0.644531},
			animation_speed = 0.3,
			scale = scale,
			stripes =
			{
			 {
			  filename = "__base__/graphics/entity/biter/biter-attack-1.png",
			  width_in_frames = 6,
			  height_in_frames = 8,
			 },
			 {
			  filename = "__base__/graphics/entity/biter/biter-attack-2.png",
			  width_in_frames = 5,
			  height_in_frames = 8,
			 },
			 {
			  filename = "__base__/graphics/entity/biter/biter-attack-3.png",
			  width_in_frames = 6,
			  height_in_frames = 8,
			 },
			 {
			  filename = "__base__/graphics/entity/biter/biter-attack-4.png",
			  width_in_frames = 5,
			  height_in_frames = 8,
			 }
			}
		  },

		  {
			filename = "__base__/graphics/entity/biter/biter-attack-mask1.png",
			flags = { "mask" },
			width = 125,
			height = 108,
			frame_count = 11,
			direction_count = 16,
			shift = {scale * 0.117188, scale * -1.11328},
			scale = scale,
			tint = tint1,
		  },

		  {
			filename = "__base__/graphics/entity/biter/biter-attack-mask2.png",
			flags = { "mask" },
			width = 114,
			height = 100,
			frame_count = 11,
			direction_count = 16,
			shift = {scale * 0.117188, scale * -1.06641},
			scale = scale,
			tint = tint2
		  }
		}
	  },
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    corpse = name.."-biter-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound = 
	  {
		{
		  filename = "__base__/sound/creatures/biter-death-1.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-death-2.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-death-3.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-death-4.ogg",
		  volume = 0.4
		},
		{
		  filename = "__base__/sound/creatures/biter-death-5.ogg",
		  volume = 0.4
		}
	  },
    working_sound = 
	  {
		{
		  filename = "__base__/sound/creatures/biter-call-1.ogg",
		  volume = 0.3
		},
		{
		  filename = "__base__/sound/creatures/biter-call-2.ogg",
		  volume = 0.3
		},
		{
		  filename = "__base__/sound/creatures/biter-call-3.ogg",
		  volume = 0.3
		},
		{
		  filename = "__base__/sound/creatures/biter-call-4.ogg",
		  volume = 0.3
		},
		{
		  filename = "__base__/sound/creatures/biter-call-5.ogg",
		  volume = 0.3
		}
	  },
    run_animation = 
	{
    layers=
    {
      {
        width = 169,
        height = 114,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.714844, scale * -0.246094},
        scale = scale,
        stripes =
        {
         {
          filename = "__base__/graphics/entity/biter/biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16,
         },
         {
          filename = "__base__/graphics/entity/biter/biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16,
         }
        }
      },
      {
        filename = "__base__/graphics/entity/biter/biter-run-mask1.png",
        flags = { "mask" },
        width = 105,
        height = 81,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.867188},
        scale = scale,
        tint = tint1
      },
      {
        filename = "__base__/graphics/entity/biter/biter-run-mask2.png",
        flags = { "mask" },
        line_length = 16,
        width = 95,
        height = 81,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.855469},
        scale = scale,
        tint = tint2
      }
    }
  }
  },

  {
    type = "corpse",
    name = name.."-biter-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[biter]-"..name,
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = 
	{
    layers=
    {
      {
        width = 190,
        height = 129,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.621094, scale * -0.1875},
        scale = scale,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/biter/biter-die-1.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-3.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8,
          }
        }
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
        flags = { "mask" },
        width = 120,
        height = 109,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.574219},
        scale = scale,
        tint = tint1
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
        flags = { "mask" },
        width = 115,
        height = 108,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.128906, scale * -0.585938},
        scale = scale,
        tint = tint2
      }
    }
  }
  },
})
end

make_biter("colossal", 500, 50, 40, 0, 0, 10, 0, 0, 4, 1.4, {r=0.56, g=0.46, b=0.42, a=0.65}, {r=1, g=0.63, b=0, a=0.4})