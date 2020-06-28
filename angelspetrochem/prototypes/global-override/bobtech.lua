local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- STEAM BURNER PHASE ---------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("basic-chemistry", "ore-crushing")

  OV.add_prereq("angels-fluid-control", "steel-processing")
  if mods["bobplates"] then
    OV.add_prereq("angels-fluid-control", "electrolysis-1")
  end
end