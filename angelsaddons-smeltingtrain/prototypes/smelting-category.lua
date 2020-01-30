if not data.raw["equipment-category"]["angels-void"] then
  data:extend(
  {
    {
    type = "equipment-category",
    name = "angels-void",
    },
  })
end

data:extend(
{
  {
    type = "item-subgroup",
    name = "angels-smeltingtrain",
    group = "logistics",
    order = "zb",
  },
}
)
