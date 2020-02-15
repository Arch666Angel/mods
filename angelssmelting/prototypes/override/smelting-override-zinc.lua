local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].ingot then
else
  OV.disable_technology({"angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-zinc", "zinc-plate")
    angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
  end

  --REPLACE TECHS AND DISABLE RECIPES
  if mods['bobplates'] then
    if angelsmods.trigger.smelting_products["brass"].plate then
      OV.add_prereq( "zinc-processing", "angels-brass-smelting-1" )
    end
    OV.disable_recipe({ "bob-zinc-plate" })
  end
else
  angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
  -- disable plate recipe
end
