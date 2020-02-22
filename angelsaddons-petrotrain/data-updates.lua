if angelsmods.petrochem then
  local OV = angelsmods.functions.OV
  OV.modify_input("petro-tank1", {"angels-storage-tank-1", "storage-tank"})
  OV.modify_input("petro-tank2", {"angels-storage-tank-2", "storage-tank"})
end

if angelsmods.industries then
  if angelsmods.industries.components then
    require("prototypes.recipes.petrotrain-industries-components-updates")
  end
  data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-vehicles"
  data.raw["item-subgroup"]["angels-petrotrain"].order = "bd[petro-train]"
end

if mods['bobvehicleequipment'] then
  -- petro locomotive
  table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories,"train")
  table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories,"vehicle")
  table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories,"locomotive")
  -- petro tank wagon
  table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories,"train")
  table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories,"vehicle")
end