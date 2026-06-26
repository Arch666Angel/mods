local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- ELECTRONICS ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.global_replace_item("electronic-circuit", "circuit-red-loaded")
  angelsmods.functions.hide("electronic-circuit")
  OV.disable_recipe({ "electronic-circuit" })

  OV.global_replace_item("advanced-circuit", "circuit-green-loaded")
  angelsmods.functions.hide("advanced-circuit")
  OV.disable_recipe({ "advanced-circuit" })

  OV.global_replace_item("processing-unit", "circuit-blue-loaded")
  angelsmods.functions.hide("processing-unit")
  OV.disable_recipe({ "processing-unit" })

  -------------------------------------------------------------------------------
  -- INTERMEDIATES --------------------------------------------------------------
  -------------------------------------------------------------------------------

  --OV.global_replace_item("battery", "battery-1")
  angelsmods.functions.hide("battery")
  OV.disable_recipe({ "battery" })

  OV.global_replace_item("iron-gear-wheel", "angels-gear")
  angelsmods.functions.hide("iron-gear-wheel")
  OV.disable_recipe({ "iron-gear-wheel" })

  OV.global_replace_item("engine-unit", "motor-2")
  angelsmods.functions.hide("engine-unit")
  OV.disable_recipe({ "engine-unit" })

  OV.global_replace_item("electric-engine-unit", "motor-4")
  angelsmods.functions.hide("electric-engine-unit")
  OV.disable_recipe({ "electric-engine-unit" })

  OV.execute()
end

-- custom fixes
require("prototypes.overrides.components-base-recipe-update")
require("prototypes.overrides.components-bobs-recipe-update")
