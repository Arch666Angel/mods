data:extend(
{
--CANNON SHELLS
	--TURRET
  {
    type = "projectile",
    name = "cannon-turret-projectile",
    flags = {"not-on-map"},
    --collision_box = {{-0.1, -1.1}, {0.1, 1.1}},
    acceleration = 0,
    piercing_damage = 10,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 80 , type = "physical"}
          },
          {
            type = "damage",
            damage = { amount = 20 , type = "explosion"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =	{
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
	  shift = {0.0, 0.0},
	}
  },
  {
    type = "ammo",
    name = "cannon-turret-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-turret",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "cannon-turret-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "angels-turrets",
    order = "d",
	magazine_size = 4,
    stack_size = 200
  },
	--TANK
  {
    type = "projectile",
    name = "heavy-cannon-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.1, -1.1}, {0.1, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 300,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 150 , type = "physical"}
          },
          {
            type = "damage",
            damage = { amount = 50 , type = "explosion"}
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =	{
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
	  shift = {0.0, 0.0},
	}
  },
  {
    type = "ammo",
    name = "heavy-cannon-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
		repeat_count = 2,
        action_delivery =
        {
          type = "projectile",
          projectile = "heavy-cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.2,
          range_deviation = 0.1,
          max_range = 40,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "angels-exploration",
    order = "d[heavy-cannon-shell]",
    stack_size = 200
  },
--ROCKETS
  -- {
    -- type = "projectile",
    -- name = "tac-nuc-rocket",
    -- flags = {"not-on-map"},
    -- acceleration = 0.005,
    -- action =
    -- {
      -- type = "direct",
      -- action_delivery =
      -- {
        -- type = "instant",
        -- target_effects =
        -- {
          -- {
            -- type = "create-entity",
            -- entity_name = "explosion"
          -- },
          -- {
            -- type = "nested-result",
            -- action =
            -- {
              -- type = "area",
              -- perimeter = 20,
              -- action_delivery =
              -- {
                -- type = "instant",
                -- target_effects =
                -- {
                  -- {
                    -- type = "damage",
                    -- damage = {amount = 200, type = "explosion"}
                  -- },
                  -- {
                    -- type = "create-entity",
                    -- entity_name = "explosion"
                  -- }
                -- }
              -- }
            -- },
          -- }
        -- }
      -- }
    -- },
    -- light = {intensity = 0.5, size = 4},
    -- animation =
    -- {
      -- filename = "__base__/graphics/entity/rocket/rocket.png",
      -- frame_count = 8,
      -- line_length = 8,
      -- width = 9,
      -- height = 35,
      -- shift = {0, 0},
      -- priority = "high"
    -- },
    -- shadow =
    -- {
      -- filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      -- frame_count = 1,
      -- width = 7,
      -- height = 24,
      -- priority = "high",
      -- shift = {0, 0}
    -- },
    -- smoke =
    -- {
      -- {
        -- name = "smoke-fast",
        -- deviation = {0.15, 0.15},
        -- frequency = 1,
        -- position = {0, -1},
        -- slow_down_factor = 1,
        -- starting_frame = 3,
        -- starting_frame_deviation = 5,
        -- starting_frame_speed = 0,
        -- starting_frame_speed_deviation = 5
      -- }
    -- }
  -- },
  -- {
    -- type = "ammo",
    -- name = "tac-nuc-rocket",
    -- icon = "__base__/graphics/icons/explosive-rocket.png",
    -- flags = {"goes-to-main-inventory"},
    -- ammo_type =
    -- {
      -- category = "rocket",
      -- action =
      -- {
        -- type = "direct",
        -- action_delivery =
        -- {
          -- type = "projectile",
          -- projectile = "tac-nuc-rocket",
          -- starting_speed = 0.1,
          -- source_effects =
          -- {
            -- type = "create-entity",
            -- entity_name = "explosion-hit"
          -- }
        -- }
      -- }
    -- },
    -- subgroup = "ammo",
    -- order = "d[rocket-launcher]-b[explosive]",
    -- stack_size = 200
  -- },
}
)