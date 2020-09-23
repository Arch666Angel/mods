local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -- submachine gun
  OV.remove_unlock("military", "submachine-gun")
  OV.add_unlock("angels-components-weapons-basic", "submachine-gun")
  OV.execute()
--battery usage
--vanilla replacements
replace_recipe_ing("accumulator","battery-1","battery-2")
replace_recipe_ing("flying-robot-frame","battery-1","battery-2")
replace_recipe_ing("battery-equipment","battery-1","battery-3")
replace_recipe_ing("personal-roboport-equipment","battery-1","battery-4")
replace_recipe_ing("battery-mk2-equipment","battery-equipment","battery-5")
table.insert(data.raw.recipe["rocket-control-unit"].ingredients,{type="item",name="battery-6",amount=5})
end