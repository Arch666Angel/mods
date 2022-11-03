if not data.raw["item-subgroup"]["angels-silo"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-silo",
      group = "logistics",
      order = "zc",
    },
  })
end
if not data.raw["item-subgroup"]["angels-ore-silo"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-ore-silo",
      group = "logistics",
      order = "zd",
    },
  })
end
if not data.raw["item-subgroup"]["angels-warehouse"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "angels-warehouse",
      group = "logistics",
      order = "ze",
    },
  })
end
