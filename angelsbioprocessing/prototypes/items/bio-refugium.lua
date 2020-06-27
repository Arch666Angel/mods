data:extend(
{
  -----------------------------------------------------------------------------
  -- PROCESSING ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "item",
    name = "bio-raw-meat",
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    subgroup = "bio-fish",
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -60}
              }
            }
          }
        }
      }
    },
    order = "ca",
    stack_size = 200
  },
  {
    type = "item",
    name = "bio-alien-processed-meat",
    icon = "__angelsbioprocessing__/graphics/icons/alien-processed-meat.png",
    icon_size = 32,
    subgroup = "bio-processing-alien-intermediate",
    order = "a[alien]-d[processed-meat]",
    stack_size = 200
  },
}
)
