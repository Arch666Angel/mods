data:extend({
  {
    type = "fluid",
    name = "liquid-fish-atmosphere",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      nil,
      { { 194, 227, 091 }, { 184, 239, 000 }, { 156, 207, 000 } }
    ),
    subgroup = "bio-fish",
    order = "ba",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = { r = 156 / 255, g = 206 / 255, b = 0 / 255 },
    flow_color = { r = 156 / 255, g = 206 / 255, b = 0 / 255 },
  },
  {
    type = "fluid",
    name = "liquid-polluted-fish-atmosphere",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      nil,
      { { 194, 227, 091 }, { 241, 050, 238 }, { 241, 050, 238 } }
    ),
    subgroup = "bio-fish",
    order = "bb",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = { r = 156 / 255, g = 206 / 255, b = 0 / 255 },
    flow_color = { r = 156 / 255, g = 206 / 255, b = 0 / 255 },
  },
  -----------------------------------------------------------------------------
  -- FISH ---------------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "capsule",
    name = "alien-fish-1-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
    icon_size = 32,
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                type = "damage",
                damage = { type = "physical", amount = -40 },
              },
            },
          },
        },
      },
    },
    subgroup = "bio-fish",
    order = "ab",
    stack_size = 100,
  },
  {
    type = "capsule",
    name = "alien-fish-2-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
    icon_size = 32,
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                type = "damage",
                damage = { type = "physical", amount = -40 },
              },
            },
          },
        },
      },
    },
    subgroup = "bio-fish",
    order = "ac",
    stack_size = 100,
  },
  {
    type = "capsule",
    name = "alien-fish-3-raw",
    icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
    icon_size = 32,
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                type = "damage",
                damage = { type = "physical", amount = -40 },
              },
            },
          },
        },
      },
    },
    subgroup = "bio-fish",
    order = "ad",
    stack_size = 100,
  },
  -----------------------------------------------------------------------------
  -- PROCESSING ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  {
    type = "fluid",
    name = "liquid-raw-fish-oil",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 200, 113, 048 }, { 200, 113, 048 }, { 241, 155, 057, 0.8 }, { 241, 155, 057, 0.8 } }
    ),
    subgroup = "bio-fish",
    order = "da",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = { r = 194 / 255, g = 122 / 255, b = 29 / 255 },
    flow_color = { r = 194 / 255, g = 122 / 255, b = 29 / 255 },
  },
  {
    type = "fluid",
    name = "liquid-fish-oil",
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
      nil,
      { { 191, 155, 037 }, { 191, 155, 037 }, { 244, 191, 015, 0.8 }, { 244, 191, 015, 0.8 } }
    ),
    subgroup = "bio-fish",
    order = "db",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = { r = 194 / 255, g = 122 / 255, b = 29 / 255 },
    flow_color = { r = 194 / 255, g = 122 / 255, b = 29 / 255 },
  },
  {
    type = "item",
    name = "fish-pulp",
    icon = "__angelsbioprocessing__/graphics/icons/fish-pulp.png",
    icon_size = 32,
    subgroup = "bio-fish",
    order = "dc",
    stack_size = 200,
  },
})
