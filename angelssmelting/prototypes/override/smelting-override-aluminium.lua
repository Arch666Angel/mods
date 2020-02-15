local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-aluminium-oxide", "alumina")
    angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")

    OV.global_replace_technology("aluminium-processing", "angels-aluminium-smelting-1")
  end
else
  angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
  OV.disable_technology({"angels-aluminium-smelting-1", "angels-aluminium-smelting-2", "angels-aluminium-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-aluminium", "aluminium-plate")
    angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
  end
else
  angelsmods.functions.add_flag("angels-plate-aluminium", "hidden")
  -- disable roll and plate recipe
end
