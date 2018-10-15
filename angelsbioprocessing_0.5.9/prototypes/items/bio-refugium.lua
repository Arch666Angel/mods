data:extend(
{
  {
    type = "fluid",
    name = "gas-puffer-atmosphere",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=156/255, g=206/255, b=0/255},
    flow_color = {r=156/255, g=206/255, b=0/255},
    icon = "__angelsbioprocessing__/graphics/icons/gas-puffer-atmosphere.png",
    icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "bio-puffer-1",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-1",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer-egg",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-2",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-2",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-egg.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer-egg",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-3",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-3",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-egg.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer-egg",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-4",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-4",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-egg.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer-egg",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-5",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer",
    order = "e",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-5",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-egg.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-puffer-egg",
    order = "e",
    stack_size = 200,
  },
  --HOGGER
    {
    type = "item",
    name = "bio-hogger-1",
    icon = "__angelsbioprocessing__/graphics/icons/hogger-1-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-hogger",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-hogger-2",
    icon = "__angelsbioprocessing__/graphics/icons/hogger-2-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-hogger",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-hogger-3",
    icon = "__angelsbioprocessing__/graphics/icons/hogger-3-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-hogger",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-hogger-4",
    icon = "__angelsbioprocessing__/graphics/icons/hogger-4-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-hogger",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-hogger-5",
    icon = "__angelsbioprocessing__/graphics/icons/hogger-5-icon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "bio-hogger",
    order = "e",
    stack_size = 200,
  },
  --PROCESSING
  {
    type = "capsule",
    name = "bio-raw-meat",
    icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bio-puffer-egg",
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
                damage = {type = "physical", amount = -80}
              }
            }
          }
        }
      }
    },
    order = "e",
    stack_size = 200
  },
}
)
