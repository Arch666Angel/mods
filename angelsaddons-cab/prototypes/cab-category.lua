if not data.raw["equipment-category"]["angels-void"] then
  data:extend({
    {
      type = "equipment-category",
      name = "angels-void",
    },
  })
end

data:extend({
  --EQUIPMENT CATEGORY
  {
    type = "equipment-category",
    name = "angels-cab",
  },
  --AMMO CATEGORY
  {
    type = "ammo-category",
    name = "angels-cab-deploy",
  },
  {
    type = "ammo-category",
    name = "angels-cab-undeploy",
  },
  --SUBGROUPS
  {
    type = "item-subgroup",
    name = "angels-cab",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "da" or "zc",
  },
})
