local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- STEAM BURNER PHASE ---------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("ore-crushing", "automation-science-pack")
  OV.add_prereq("ore-crushing", "electricity")
end