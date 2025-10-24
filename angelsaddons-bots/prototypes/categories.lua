---------------------------------------------------------------------------
-- ITEM GROUPS / SUBGROUPS ------------------------------------------------
---------------------------------------------------------------------------
data:extend({
  {
    type = "item-group",
    name = "angels-logistics",
    order = "la[angels]-e[industries]-d",
    icons = {
      {
        icon = "__angelsaddons-bots__/graphics/technology/cargo-roboport-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsaddons-bots__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = { 20, -20 },
      },
    },
  },
  {
    type = "item-subgroup",
    name = "angels-chests-big",
    group = "logistics",
    order = "ab[chests-big]",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-ports",
    group = "angels-logistics",
    order = "bb[carbo-port]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-expander",
    group = "angels-logistics",
    order = "bb[carbo-port]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-bots",
    group = "angels-logistics",
    order = "cb[bots]",
  },
})
