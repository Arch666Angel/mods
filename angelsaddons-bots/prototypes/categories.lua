---------------------------------------------------------------------------
-- ITEM GROUPS / SUBGROUPS ------------------------------------------------
---------------------------------------------------------------------------
data:extend({
  {
    type = "item-subgroup",
    name = "angels-chests-big",
    group = "logistics",
    order = "ab[chests-big]",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-ports",
    group = "logistics",
    order = "f[carbo-port]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-expander",
    group = "logistics",
    order = "f[carbo-port]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-bots",
    group = "logistics",
    order = "f[bots]",
  },
})

if mods["boblogistics"] then
  for _, subgroup in pairs({
    "angels-cargo-ports",
    "angels-cargo-expander",
    "angels-cargo-bots",
  }) do
    data.raw["item-subgroup"][subgroup].group = "bob-logistics"
  end
end
