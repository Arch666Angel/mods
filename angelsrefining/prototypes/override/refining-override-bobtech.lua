local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- STEAM BURNER PHASE ---------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
  OV.add_prereq("ore-crushing", "automation-science-pack")
  OV.add_prereq("ore-crushing", "electricity")
end

-------------------------------------------------------------------------------
-- ALIEN SCIENCE PACKS --------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobenemies"] and mods["bobtech"] then
  -- alien science packs are in use
  OV.set_science_pack("alien-research", "production-science-pack", 1)
  OV.add_prereq("alien-research", "production-science-pack")

  -- regular packs depending on alien science
  if mods["bobwarfare"] then
    OV.add_prereq({
      "bob-explosive-artillery-shells",
      "bob-poison-artillery-shells",
      "bob-fire-artillery-shells",
    }, "production-science-pack")
  end
end