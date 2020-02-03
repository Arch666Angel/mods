if aai_industry and data.raw.item["electric-motor"] then
  table.insert(data.raw.recipe['nilaus-truck'].normal.ingredients, {"electric-motor", 5})
  table.insert(data.raw.recipe['nilaus-truck'].expensive.ingredients, {"electric-motor", 10})
  table.insert(data.raw.technology['nilaus-truck'].prerequisites, "electricity")
end

if angelsmods and angelsmods.industries then
  data.raw["item-with-entity-data"]["nilaus-truck"].subgroup = "angels-vehicle-car"
  data.raw["item-with-entity-data"]["nilaus-truck"].order = "a[car]-b"
end