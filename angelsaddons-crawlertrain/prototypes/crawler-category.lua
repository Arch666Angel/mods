for _, equipment_category in pairs{
  "angels-void",
  "angels-basegame-attack",
  "angels-basegame-defense",
  "angels-basegame-movement",
  "angels-basegame-energy",
  "angels-basegame-construction"
} do
  if not data.raw["equipment-category"][equipment_category] then
    data:extend(
      {
        {
          type = "equipment-category",
          name = equipment_category
        }
      }
    )
  end
end

data:extend(
  {
    --{
    --  type = "item-subgroup",
    --  name = "angels-crawler-train",
    --  group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
    --  order = "fa"
    --},
    {
      type = "item-subgroup",
      name = "angels-vehicle-train-crawler",
      group = mods["angelsindustries"] and "angels-vehicles" or "logistics",
      order = mods["angelsindustries"] and "bb[crawler-train]" or "z[angel-train]-a[crawler]" -- order bc reserved for smeltingtrain (see addon data-update)
    } -- order bd reserved for petrotrain (see addon data-update)
  }
)