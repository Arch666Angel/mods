local OV = angelsmods.functions.OV

if mods["bobvehicleequipment"] then
  -----------------------------------------------------------------------------
  -- ENERGY SHIELD EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.set_science_pack("vehicle-energy-shield-equipment-3", "production-science-pack")
  if mods["bobelectronics"] then
  else
    OV.add_prereq("vehicle-energy-shield-equipment-3", "production-science-pack")
  end

  if mods["bobenemies"] and mods["bobtech"] then
  else -- not alien technology
    OV.set_science_pack({
      "vehicle-energy-shield-equipment-4",
      "vehicle-energy-shield-equipment-5",
      "vehicle-energy-shield-equipment-6",
    }, "production-science-pack")
  end

  -----------------------------------------------------------------------------
  -- ROBOPORT EQUIPMENT -------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobtech"] then
    -- advanced logistic science pack
    OV.remove_prereq("vehicle-roboport-equipment-2", "advanced-logistic-science-pack")
    OV.add_prereq("vehicle-roboport-equipment-3", "advanced-logistic-science-pack")
  end
  
  -----------------------------------------------------------------------------
  -- LASER DEFENSE EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.add_prereq("vehicle-laser-defence-equipment-1", "chemical-science-pack")

  if mods["bobenemies"] and mods["bobtech"] then
  else -- not alien technology
    OV.add_prereq("vehicle-laser-defence-equipment-6", "utility-science-pack")
  end

end