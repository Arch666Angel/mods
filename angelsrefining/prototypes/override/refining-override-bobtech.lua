local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- STEAM BURNER PHASE ---------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("ore-crushing", "automation-science-pack")
  OV.add_prereq("ore-crushing", "bob-electricity")
  --log(serpent.block(data.raw.technology["steam-power"]))
  --log(serpent.block(data.raw.technology["water-treatment"]))
  --OV.add_prereq("water-treatment", "steam-power") --now triggered by making iron plate
  OV.add_prereq("water-treatment", "bob-electricity")
end
