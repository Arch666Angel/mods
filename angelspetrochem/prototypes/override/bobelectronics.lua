local OV = angelsmods.functions.OV

if mods["bobelectronics"] then
  OV.add_prereq("advanced-electronics", "chlorine-processing-1")
  OV.hide_recipe("bob-oil-processing")
end
