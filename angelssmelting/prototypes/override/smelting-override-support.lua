local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- MOLDS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_molds then
else
  angelsmods.functions.add_flag("mold-expendable", "hidden")
  angelsmods.functions.add_flag("mold-non-expendable", "hidden")
  OV.disable_recipe({"mold-expendable", "mold-non-expendable"})
end