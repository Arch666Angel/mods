data:extend({
  --AMMO
  {
    type = "ammo-category",
    name = "cannon-turret",
  },
  {
    type = "ammo-category",
    name = "heavy-cannon-shell",
  },
  {
    type = "ammo-category",
    name = "bio",
    bonus_gui_order = "m-b",
  },
  {
    type = "ammo-category",
    name = "electric",
  },
  {
    type = "ammo-category",
    name = "gathering",
  },
  --DAMAGE TYPE
  {
    type = "damage-type",
    name = "plasma",
  },
  {
    type = "damage-type",
    name = "bio",
  },
  {
    type = "damage-type",
    name = "gathering",
  },
  --SUBGROUPS
  ---------------------------------------------------------------------------
  -- EXPLORATION ------------------------------------------------------------
  ---------------------------------------------------------------------------
  {
    type = "item-group",
    --name = "angels-exploration",
    name = "combat", -- vanilla group
    localised_name = { "item-group-name.angels-exploration" },
    order = "la[angels]-f[exploration]-a", -- order la[angels]-f[exploration]-b reserved for warfare
    icons = {
      {
        icon = "__angelsexplorationgraphics__/graphics/technology/heavy-tank-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsexplorationgraphics__/graphics/icons/void.png",
        icon_size = 64,
        scale = 0.35,
        shift = { 20, -20 },
      },
    },
  },
  {
    type = "item-subgroup",
    name = "angels-physical-aa", -- regular gun
    group = "combat",
    order = "a-a-a",
  },
  -- order "a-a-b" taken by bobwarfare
  -- order "a-a-c" taken by bobwarfare
  -- order "a-a-d" taken by bobwarfare
  -- order "a-a-e" taken by bobwarfare
  {
    type = "item-subgroup",
    name = "angels-physical-ba", -- shotgun
    group = "combat",
    order = "a-b-a",
  },
  -- order "a-b-b" taken by bobwarfare
  {
    type = "item-subgroup",
    name = "angels-fire",
    group = "combat", -- fire stuffs
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-capsules-a", -- capsule stuffs
    group = "combat",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "angels-explosion-a", -- rocket
    group = "combat",
    order = "d-a",
  },
  -- order "d-b-a" taken by bobwarfare
  -- order "d-b-b" taken by bobwarfare
  {
    type = "item-subgroup",
    name = "angels-exploration-tank-a",
    group = "combat",
    order = "d-c-a",
  },
  {
    type = "item-subgroup",
    name = "angels-exploration-tank-b",
    group = "combat",
    order = "d-c-b",
  },
  {
    type = "item-subgroup",
    name = "angels-electric-a", -- laser
    group = "combat",
    order = "e-a",
  },
  -- order "e-b" taken by bobwarfare
  -- order "e-c" taken by bobwarfare
  {
    type = "item-subgroup",
    name = "angels-artillery-a", -- artillery
    group = "combat",
    order = "f-a",
  },
  {
    type = "item-subgroup",
    name = "angels-exploration-troups",
    group = "combat",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "angels-exploration-walls",
    group = "combat",
    order = "h",
  },
})
