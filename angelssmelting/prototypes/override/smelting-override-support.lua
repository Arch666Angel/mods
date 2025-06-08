local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- MOLDS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_molds then
else
  angelsmods.functions.hide("motor-casing-0")
  angelsmods.functions.hide("mold-expendable")
  angelsmods.functions.hide("mold-non-expendable")
  angelsmods.functions.hide("spent-mold-non-expendable")
  OV.disable_recipe({ "angels-casing-resin-mold", "mold-expendable" })
  OV.disable_recipe({ "mold-non-expendable", "mold-non-expendable-wash" })
  OV.remove_prereq("angels-metallurgy-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-metallurgy-3", "angels-stone-smelting-2")
  OV.remove_prereq("angels-stone-smelting-2", "resins")
end

-------------------------------------------------------------------------------
-- BOBS HEAT SHIELD -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.sintering_tech and mods["bobrevamp"] then
  OV.patch_recipes({
    {
      name = "bob-heat-shield-tile",
      category = "sintering-4",
    },
  })
  OV.add_prereq("bob-heat-shield", "powder-metallurgy-4")
end
