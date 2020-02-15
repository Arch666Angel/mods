local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods['bobplates'] then
    OV.global_replace_item("solid-cobalt-oxide", "cobalt-oxide")
    angelsmods.functions.add_flag("solid-cobalt-oxide", "hidden")
    OV.disable_recipe({ "cobalt-oxide", "cobalt-oxide-from-copper", "cobalt-plate", "cobalt-steel-alloy" })
  end
else
  angelsmods.functions.add_flag("solid-cobalt-oxide", "hidden")
  OV.disable_technology({"angels-cobalt-smelting-1", "angels-cobalt-smelting-2", "angels-cobalt-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-cobalt", "cobalt-plate")
    angelsmods.functions.add_flag("angels-plate-cobalt", "hidden")
  end
else
  angelsmods.functions.add_flag("angels-plate-cobalt", "hidden")
  -- disable cobalt plate recipe
end
