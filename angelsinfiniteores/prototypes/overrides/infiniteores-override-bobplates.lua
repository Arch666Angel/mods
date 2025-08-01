if mods["bobplates"] and mods["angelsbioprocessing"] then
  -- there is an infinite wood production available, carbon should
  -- be obtained from infinite coal patches instead
  local OV = angelsmods.functions.OV
  OV.disable_recipe({ "bob-carbon-from-wood" })
  OV.execute()
end
