local OV = angelsmods.functions.OV

if mods["boblogistics"] then
  -- bob valves
  OV.disable_recipe({
    "bob-valve",
    "bob-overflow-valve",
    "bob-topup-valve",
  })
  angelsmods.functions.hide("bob-valve")
  angelsmods.functions.hide("bob-overflow-valve")
  angelsmods.functions.hide("bob-topup-valve")
end
