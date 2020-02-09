data:extend(
{
  {
    type = "fluid",
    name = "liquid-fish-atmosphere",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=156/255, g=206/255, b=0/255},
    flow_color = {r=156/255, g=206/255, b=0/255},
    icon = "__angelsbioprocessing__/graphics/icons/liquid-fish-atmosphere.png",
    icon_size = 32,
    subgroup = "bio-fish",
    order = "ca",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-polluted-fish-atmosphere",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=156/255, g=206/255, b=0/255},
    flow_color = {r=156/255, g=206/255, b=0/255},
    icon = "__angelsbioprocessing__/graphics/icons/liquid-polluted-fish-atmosphere.png",
    icon_size = 32,
    subgroup = "bio-fish",
    order = "cb",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },



  -- FISH
  {
    type = "capsule",
    name = "alien-fish-1-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
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
                damage = {type = "physical", amount = -40}
              }
            }
          }
        }
      }
    },
    subgroup = "bio-fish",
    order = "bb",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "alien-fish-2-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
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
                damage = {type = "physical", amount = -40}
              }
            }
          }
        }
      }
    },
    subgroup = "bio-fish",
    order = "bc",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "alien-fish-3-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
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
                damage = {type = "physical", amount = -40}
              }
            }
          }
        }
      }
    },
    subgroup = "bio-fish",
    order = "bd",
    stack_size = 100
  },
}
)