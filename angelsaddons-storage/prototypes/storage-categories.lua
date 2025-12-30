if not data.raw["item-subgroup"]["angels-silo"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-silo",
      group = "logistics",
      order = "ac[chests-silo]",
    },
  })
end
if not data.raw["item-subgroup"]["angels-ore-silo"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-ore-silo",
      group = "logistics",
      order = "ad[chests-ore-silo]",
    },
  })
end
if not data.raw["item-subgroup"]["angels-warehouse"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-warehouse",
      group = "logistics",
      order = "ae[chests-warehouse]",
    },
  })
end
