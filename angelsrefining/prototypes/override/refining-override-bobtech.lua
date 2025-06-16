local OV = angelsmods.functions.OV

if mods["bobtech"] then

  -------------------------------------------------------------------------------
  -- STEAM BURNER PHASE ---------------------------------------------------------
  -------------------------------------------------------------------------------
  if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
    OV.add_prereq("ore-crushing", "automation-science-pack")
    OV.add_prereq("ore-crushing", "bob-electricity")
    OV.add_prereq("water-treatment", "bob-electricity")

    -- Glass becomes available much later in Angel's.
    -- Replace with tin plates in labs, and remove completely from Automation science.
    data.raw.technology["bob-burner-lab"].research_trigger.item = "bob-tin-plate"
    OV.patch_recipes({
        {
          name = "bob-burner-lab",
          ingredients = {
            { name = "bob-tin-plate", amount = "bob-glass" },
          },
        }
    })
  end

  OV.remove_input("automation-science-pack", "bob-glass")
end
