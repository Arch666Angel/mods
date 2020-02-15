local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].ingot then
  OV.global_replace_technology("nickel-processing", "angels-nickel-smelting-1")
else
  OV.disable_technology({"angels-nickel-smelting-1", "angels-nickel-smelting-2", "angels-nickel-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-nickel", "nickel-plate")
    angelsmods.functions.add_flag("angels-plate-nickel", "hidden")
  end
else
  angelsmods.functions.add_flag("angels-plate-nickel", "hidden")
  -- disable plate recipe
end