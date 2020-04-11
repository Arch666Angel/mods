if angelsmods.industries then
  local OV = angelsmods.functions.OV

  if angelsmods.industries.components then
    require("prototypes.recipes.cab-updates")
  end
  OV.remove_prereq("angels-cab", "automobilism")
  OV.add_prereq("angels-cab", "angels-crawler")
  OV.execute()
end

require "prototypes.entities.cab-updates"

if mods["bobvehicleequipment"] then
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "tank")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "vehicle")
  table.insert(data.raw["equipment-grid"]["angels-cab"].equipment_categories, "armoured-vehicle")
end
