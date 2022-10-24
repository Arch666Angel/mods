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
  OV.remove_prereq("angels-stone-smelting-2", "resins")
end

-------------------------------------------------------------------------------
-- BOBS HEAT SHIELD -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.sintering_tech and mods["bobrevamp"] then
  OV.patch_recipes(
    {
      {
        name = "heat-shield-tile",
        category = "sintering-4"
      }
    }
  )
  OV.add_prereq("heat-shield", "powder-metallurgy-4")
else
  OV.add_prereq("heat-shield", "production-science-pack")
end