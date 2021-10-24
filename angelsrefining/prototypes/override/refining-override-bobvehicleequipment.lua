local OV = angelsmods.functions.OV

if mods["bobvehicleequipment"] then
  OV.remove_prereq("vehicle-roboport-equipment-2", "advanced-logistic-science-pack")
  OV.add_prereq("vehicle-roboport-equipment-3", "advanced-logistic-science-pack")
end