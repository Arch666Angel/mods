local OV = angelsmods.functions.OV

if mods["boblogistics"] then
  -- bob valves
  OV.disable_recipe({
    "valves-one_way",
    "valves-overflow",
    "valves-top_up",
  })
  angelsmods.functions.add_flag("valves-one_way", "hidden")
  angelsmods.functions.add_flag("valves-overflow", "hidden")
  angelsmods.functions.add_flag("valves-top_up", "hidden")
end
