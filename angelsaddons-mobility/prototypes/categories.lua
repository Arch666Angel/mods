if not data.raw["equipment-category"]["angels-void"] then
  data:extend({
    {
      type = "equipment-category",
      name = "angels-void",
    },
  })
end
--------------------------------------------------------------------------------------------------
-- Train categories ------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
for _, equipment_category in pairs({
  --"angels-void", --covered above
  "angels-basegame-attack",
  "angels-basegame-defense",
  "angels-basegame-movement",
  "angels-basegame-energy",
  "angels-basegame-construction",
}) do
  if not data.raw["equipment-category"][equipment_category] then
    data:extend({
      {
        type = "equipment-category",
        name = equipment_category,
      },
    })
  end
end

data:extend({
  {
    type = "item-subgroup",
    name = "angels-vehicle-train-crawler",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "bb[crawler-train]" or "z[angel-train]-a[crawler]",
  },
  {
    type = "item-subgroup",
    name = "angels-petrotrain",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "bd[petro-train]" or "z[angel-train]-b[petro]",
  },
  {
    type = "item-subgroup",
    name = "angels-smeltingtrain",
    group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    order = mods["angelsindustries"] and "bf[smelting-train]" or "z[angel-train]-c[smelting]",
  },
})
