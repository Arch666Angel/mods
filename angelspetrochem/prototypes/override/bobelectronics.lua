local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobelectronics"] then
  OV.add_prereq("advanced-circuit", "chlorine-processing-1")
  OV.add_prereq("advanced-circuit", "resins")
  OV.hide_recipe("bob-oil-processing")
end

-------------------------------------------------------------------------------
-- RUBBER HANDLING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobelectronics"] then
  move_item("bob-insulated-cable", "petrochem-solids", "a[petrochem-solids]-c[rubber]-b")

  OV.patch_recipes({
    {
      name = "bob-insulated-cable",
      subgroup = "petrochem-solids-2",
      order = "b[rubber]-c[cable]-c",
    },
  })
  OV.hide_recipe("bob-rubber")
  OV.remove_unlock("bob-wood-processing", "bob-rubber")
  OV.remove_unlock("bob-electronics", "bob-insulated-cable")

  OV.add_unlock("rubbers", "bob-insulated-cable")
  OV.add_prereq("processing-unit", "rubbers")
end
