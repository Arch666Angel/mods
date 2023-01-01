if mods["bobplates"] and mods["angelsbioprocessing"] then
  -- there is an infinite wood production available, coal should
  -- be obtained from infinite coal patches instead
  local OV = angelsmods.functions.OV
  OV.disable_recipe({ "bob-coal-from-wood" })
  OV.execute()
end
