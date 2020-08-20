local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- MOLDS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_molds then
else
  angelsmods.functions.add_flag("motor-casing-0", "hidden")
  angelsmods.functions.add_flag("mold-expendable", "hidden")
  angelsmods.functions.add_flag("mold-non-expendable", "hidden")
  angelsmods.functions.add_flag("spent-mold-non-expendable", "hidden")
  OV.disable_recipe({"angels-casing-resin-mold", "mold-expendable"})
  OV.disable_recipe({"mold-non-expendable", "mold-non-expendable-wash"})
  OV.remove_prereq("angels-metallurgy-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-metallurgy-3", "angels-stone-smelting-2")
end