local OV = angelsmods.functions.OV

if mods["boblogistics"] then
  -- bob valves
  OV.disable_recipe({
    "bob-valve",
    "bob-overflow-valve",
    "bob-topup-valve",
  })
  angelsmods.functions.add_flag("bob-valve", "hidden")
  angelsmods.functions.add_flag("bob-overflow-valve", "hidden")
  angelsmods.functions.add_flag("bob-topup-valve", "hidden")
end