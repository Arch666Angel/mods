local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- MOLDS ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_molds then
else
  angelsmods.functions.hide("angels-motor-casing-0")
  angelsmods.functions.hide("angels-mold-expendable")
  angelsmods.functions.hide("angels-mold-non-expendable")
  angelsmods.functions.hide("angels-spent-mold-non-expendable")
  OV.disable_recipe({ "angels-casing-resin-mold", "angels-mold-expendable" })
  OV.disable_recipe({ "angels-mold-non-expendable", "angels-mold-non-expendable-wash" })
  OV.remove_prereq("angels-stone-smelting-2", "angels-resins")
end

-------------------------------------------------------------------------------
-- BOBS HEAT SHIELD -----------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.sintering_tech and mods["bobrevamp"] then
  OV.patch_recipes({
    {
      name = "bob-heat-shield-tile",
      category = "angels-sintering-4",
    },
  })
  OV.add_prereq("bob-heat-shield", "angels-powder-metallurgy-4")
end
