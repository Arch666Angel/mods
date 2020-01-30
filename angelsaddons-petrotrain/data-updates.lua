if angelsmods.petrochem then
  local OV = angelsmods.functions.OV
  OV.modify_input("petro-tank1", {"angels-storage-tank-1", "storage-tank"})
  OV.modify_input("petro-tank2", {"angels-storage-tank-2", "storage-tank"})
end

if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.petrotrain-updates")
  end
  data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-logistics"
  data.raw["item-subgroup"]["angels-petrotrain"].order = "fc"
end

if data.raw["equipment-category"]["armoured-vehicle"] then
  table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories,"vehicle")
end
