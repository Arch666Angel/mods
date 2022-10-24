--ADD LIQUIFYING RECIPES TO CHEMICAL PLANTS
angelsmods.functions.add_crafting_category("assembling-machine", "chemical-plant", "liquifying")

if mods["bobassembly"] and data.raw["assembling-machine"]["chemical-plant-2"] then
  angelsmods.functions.add_crafting_category("assembling-machine", "chemical-plant-2", "liquifying")
  angelsmods.functions.add_crafting_category("assembling-machine", "chemical-plant-3", "liquifying")
  angelsmods.functions.add_crafting_category("assembling-machine", "chemical-plant-4", "liquifying")
end
