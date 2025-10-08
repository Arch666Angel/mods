local OV = angelsmods.functions.OV
-- for mod compatibility we have to do this one more time, in case other mods
-- are adding vanilla ingredients again in data updates
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- ELECTRONICS ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.global_replace_item("electronic-circuit", "circuit-red-loaded")
  OV.global_replace_item("advanced-circuit", "circuit-green-loaded")
  OV.global_replace_item("processing-unit", "circuit-blue-loaded")

  -------------------------------------------------------------------------------
  -- INTERMEDIATES --------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.global_replace_item("iron-gear-wheel", "angels-gear")
  OV.global_replace_item("engine-unit", "motor-2")
  OV.global_replace_technology("engine", "angels-components-mechanical-2")
  OV.global_replace_item("electric-engine-unit", "motor-4")
  if angelsmods.functions.tech_uses_science_pack("electric-engine", "chemical-science-pack") then
    OV.global_replace_technology("electric-engine", "angels-components-mechanical-4")
  else
    OV.global_replace_technology("electric-engine", "angels-components-mechanical-3")
  end
end
