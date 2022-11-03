local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -------------------------------------------------------------------------------
  -- ELECTRONICS ----------------------------------------------------------------
  -------------------------------------------------------------------------------
  OV.global_replace_item("electronic-circuit", "circuit-red-loaded")
  angelsmods.functions.add_flag("electronic-circuit", "hidden")
  OV.disable_recipe({ "electronic-circuit" })

  OV.global_replace_item("advanced-circuit", "circuit-green-loaded")
  angelsmods.functions.add_flag("advanced-circuit", "hidden")
  OV.disable_recipe({ "advanced-circuit" })

  OV.global_replace_item("processing-unit", "circuit-blue-loaded")
  angelsmods.functions.add_flag("processing-unit", "hidden")
  OV.disable_recipe({ "processing-unit" })

  -------------------------------------------------------------------------------
  -- INTERMEDIATES --------------------------------------------------------------
  -------------------------------------------------------------------------------

  --OV.global_replace_item("battery", "battery-1")
  angelsmods.functions.add_flag("battery", "hidden")
  OV.disable_recipe({ "battery" })

  OV.global_replace_item("iron-gear-wheel", "angels-gear")
  angelsmods.functions.add_flag("iron-gear-wheel", "hidden")
  OV.disable_recipe({ "iron-gear-wheel" })

  OV.global_replace_item("engine-unit", "motor-2")
  angelsmods.functions.add_flag("engine-unit", "hidden")
  OV.disable_recipe({ "engine-unit" })

  OV.global_replace_item("electric-engine-unit", "motor-4")
  angelsmods.functions.add_flag("electric-engine-unit", "hidden")
  OV.disable_recipe({ "electric-engine-unit" })

  OV.execute()
end

-- custom fixes
require("prototypes.overrides.components-base-recipe-update")
require("prototypes.overrides.components-bobs-recipe-update")
