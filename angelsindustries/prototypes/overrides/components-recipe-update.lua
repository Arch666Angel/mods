local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- ELECTRONICS ----------------------------------------------------------------
-------------------------------------------------------------------------------
OV.global_replace_item("electronic-circuit", "circuit-red-loaded")
angelsmods.functions.add_flag("electronic-circuit", "hidden")
OV.disable_recipe({"electronic-circuit"})

OV.global_replace_item("advanced-circuit", "circuit-green-loaded")
angelsmods.functions.add_flag("advanced-circuit", "hidden")
OV.disable_recipe({"advanced-circuit"})

OV.global_replace_item("processing-unit", "circuit-blue-loaded")
angelsmods.functions.add_flag("processing-unit", "hidden")
OV.disable_recipe({"processing-unit"})

-------------------------------------------------------------------------------
-- INTERMEDIATES --------------------------------------------------------------
-------------------------------------------------------------------------------
-- OV.global_replace_item("iron-stick", "angels-rod-iron")
-- angelsmods.functions.add_flag("iron-stick", "hidden")
-- OV.disable_recipe({"iron-stick"})

OV.global_replace_item("iron-gear-wheel", "angels-gear")
angelsmods.functions.add_flag("iron-gear-wheel", "hidden")
OV.disable_recipe({"iron-gear-wheel"})

OV.global_replace_item("engine-unit", "motor-2")
angelsmods.functions.add_flag("engine-unit", "hidden")
OV.disable_recipe({"engine-unit"})

OV.global_replace_item("electric-engine-unit", "motor-4")
angelsmods.functions.add_flag("electric-engine-unit", "hidden")
OV.disable_recipe({"electric-engine-unit"})

OV.execute()
-- custom fixes

require("prototypes.overrides.components-base-recipe-update")
OV.execute()

require("prototypes.overrides.components-bobs-recipe-update")
OV.execute()
