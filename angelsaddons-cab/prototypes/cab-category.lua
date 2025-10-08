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
  {
    type = "equipment-category",
    name = "angels-light-attack",
  },
  {
    type = "equipment-category",
    name = "angels-heavy-attack",
  },
  {
    type = "equipment-category",
    name = "angels-repair",
  },
  {
    type = "equipment-category",
    name = "angels-light-defense",
  },
  {
    type = "equipment-category",
    name = "angels-heavy-defense",
  },
  {
    type = "equipment-category",
    name = "angels-energy",
  },
  {
    type = "equipment-category",
    name = "angels-construction",
  },
  {
    type = "equipment-category",
    name = "angels-movement",
  },
  --AMMO CATEGORY
  {
    type = "ammo-category",
    name = "angels-cab-deploy",
    hidden = true,
  },
  {
    type = "ammo-category",
    name = "angels-cab-undeploy",
    hidden = true,
  },
  --SUBGROUPS
  {
    type = "item-subgroup",
    name = "angels-cab",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "da" or "zc",
  },
  {
    type = "item-subgroup",
    name = "angels-vehicle-equipment",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "db" or "zd",
  },
})
