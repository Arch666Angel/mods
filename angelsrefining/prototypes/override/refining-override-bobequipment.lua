local OV = angelsmods.functions.OV

if mods["bobequipment"] then
  -----------------------------------------------------------------------------
  -- ENERGY SHIELD EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.set_science_pack("bob-energy-shield-equipment-3", "production-science-pack")
  if mods["bobelectronics"] then
  else
    OV.add_prereq({
      "bob-energy-shield-equipment-3",
    }, "production-science-pack")
  end

  if mods["bobenemies"] and mods["bobtech"] then
    OV.add_prereq("bob-energy-shield-equipment-4", "alien-research")
  else -- not alien technology
    OV.set_science_pack({
      "bob-energy-shield-equipment-4",
      "bob-energy-shield-equipment-5",
      "bob-energy-shield-equipment-6",
    }, "production-science-pack")
  end

  -----------------------------------------------------------------------------
  -- BATTERY EQUIPMENT --------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobenemies"] and mods["bobtech"] then
    OV.add_prereq("bob-battery-equipment-4", "alien-research")
  end

  -----------------------------------------------------------------------------
  -- FUSION REACTOR EQUIPMENT -------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobenemies"] and mods["bobtech"] then
    OV.remove_science_pack("fusion-reactor-equipment", "utility-science-pack")
    OV.set_science_pack("fusion-reactor-equipment", "production-science-pack")
    OV.remove_prereq("fusion-reactor-equipment", "utility-science-pack")
    OV.add_prereq("fusion-reactor-equipment", "production-science-pack")
    OV.add_prereq("fusion-reactor-equipment-2", "alien-research")
  end

  -----------------------------------------------------------------------------
  -- LASER DEFENSE EQUIPMENT --------------------------------------------------
  -----------------------------------------------------------------------------
  OV.add_prereq("personal-laser-defense-equipment-4", "utility-science-pack")

  -----------------------------------------------------------------------------
  -- EXOSKELETON EQUIPMENT ----------------------------------------------------
  -----------------------------------------------------------------------------
  OV.set_science_pack("exoskeleton-equipment", "chemical-science-pack")
  if mods["boblogistics"] and (not mods["angelsindustries"]) then
    OV.add_prereq("exoskeleton-equipment", "chemical-science-pack")
  end

  -----------------------------------------------------------------------------
  -- unknown ------------------------------------------------------------------
  -----------------------------------------------------------------------------
  angelsmods.functions.add_flag("combat-robot-dispenser-equipment", "hidden")
end