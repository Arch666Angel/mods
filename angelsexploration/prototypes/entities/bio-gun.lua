data:extend({
  {
    type = "gun",
    name = "angels-bio-gun",
    icon = "__angelsexplorationgraphics__/graphics/icons/bio-gun.png",
    icon_size = 64,
    flags = {},
    subgroup = "angels-fire",
    order = "a[gun]-b[bio-rounds]",
    attack_parameters = {
      type = "stream",
      ammo_category = "angels-bio",
      cooldown = 2,
      movement_slow_down_factor = 0.6,
      --projectile_creation_distance = 0.6,
      gun_barrel_length = 0.8,
      gun_center_shift = { 0, -1 },
      range = 15,
      min_range = 3,
      -- cyclic_sound =
      -- {
      -- begin_sound =
      -- {
      -- {
      -- filename = "__base__/sound/fight/flamethrower-start.ogg",
      -- volume = 0.7
      -- }
      -- },
      -- middle_sound =
      -- {
      -- {
      -- filename = "__base__/sound/fight/flamethrower-mid.ogg",
      -- volume = 0.7
      -- }
      -- },
      -- end_sound =
      -- {
      -- {
      -- filename = "__base__/sound/fight/flamethrower-end.ogg",
      -- volume = 0.7
      -- }
      -- }
      -- }
    },
    stack_size = 5,
  },
})
