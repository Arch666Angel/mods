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
  OV.remove_prereq("angels-metallurgy-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-metallurgy-3", "angels-stone-smelting-2")
end