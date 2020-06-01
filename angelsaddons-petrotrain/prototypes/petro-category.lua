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
    {
      type = "item-subgroup",
      name = "angels-petrotrain",
      group = "logistics",
      order = "z[angel-train]-b[petro]"
    }
  }
)
