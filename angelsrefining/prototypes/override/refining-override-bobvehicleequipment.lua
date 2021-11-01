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
    OV.remove_prereq("vehicle-roboport-equipment-2", "advanced-logistic-science-pack")
    OV.add_prereq("vehicle-roboport-equipment-2", "chemical-science-pack")
    OV.add_prereq("vehicle-roboport-equipment-3", "advanced-logistic-science-pack")
  end
  
  -----------------------------------------------------------------------------
  -- LASER DEFENSE EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.add_prereq("vehicle-laser-defense-equipment-1", "chemical-science-pack")
  OV.add_prereq("vehicle-laser-defense-equipment-5", "production-science-pack")
  if mods["bobplates"] or mods["bobelectronics"] then
    OV.set_science_pack("vehicle-laser-defense-equipment-5", "production-science-pack")
    OV.set_science_pack("vehicle-laser-defense-equipment-6", "production-science-pack")
  end
  OV.add_prereq("vehicle-laser-defense-equipment-6", "utility-science-pack")

  -----------------------------------------------------------------------------
  -- PLASMA CANNON EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.remove_science_pack("vehicle-big-turret-equipment-3", "utility-science-pack")
  OV.remove_prereq("vehicle-big-turret-equipment-3", "utility-science-pack")
  if mods["bobenemies"] and mods["bobtech"] then
  else
    OV.add_prereq("vehicle-big-turret-equipment-4", "utility-science-pack")
  end

  -----------------------------------------------------------------------------
  -- FUSION CELL EQUIPMENT ----------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobenemies"] and mods["bobtech"] then
    OV.remove_science_pack("vehicle-fusion-cell-equipment-3", "utility-science-pack")
    OV.remove_prereq("vehicle-fusion-cell-equipment-3", "utility-science-pack")
  end

  -----------------------------------------------------------------------------
  -- FUSION REACTOR EQUIPMENT -------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobenemies"] and mods["bobtech"] then
    OV.remove_science_pack("vehicle-fusion-reactor-equipment-3", "utility-science-pack")
    OV.remove_prereq("vehicle-fusion-reactor-equipment-3", "utility-science-pack")
  end

end