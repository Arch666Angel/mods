--ADD LIQUIFYING RECIPES TO CHEMICAL PLANTS
if bobmods and bobmods.assembly and data.raw["assembling-machine"]["chemical-plant-2"] then
  table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, "liquifying")
  table.insert(data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories, "liquifying")
  table.insert(data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories, "liquifying")
  table.insert(data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories, "liquifying")
end