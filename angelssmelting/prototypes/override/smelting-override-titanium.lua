local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods['bobplates'] then
    OV.add_prereq( "titanium-processing", "angels-titanium-smelting-1" )
  end
else
  OV.disable_technology({"angels-titanium-smelting-1", "angels-titanium-smelting-2", "angels-titanium-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-titanium", "titanium-plate")
    angelsmods.functions.add_flag("angels-plate-titanium", "hidden")

    OV.disable_recipe({ "bob-titanium-plate" })
  end
else
  angelsmods.functions.add_flag("angels-plate-titanium", "hidden")
end
