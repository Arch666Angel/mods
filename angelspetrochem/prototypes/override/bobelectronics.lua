local OV = angelsmods.functions.OV

if mods["bobelectronics"] then
  OV.add_prereq("advanced-electronics", "chlorine-processing-1")
  OV.hide_recipe("bob-oil-processing")

  if not mods["bobplates"] then
    OV.remove_unlock("plastics", "synthetic-wood")
    OV.add_unlock("plastic-1", "synthetic-wood")
  end
end
