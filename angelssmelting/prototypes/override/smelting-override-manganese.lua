local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].ingot then
else
  OV.disable_technology({"angels-manganese-smelting-1", "angels-manganese-smelting-2", "angels-manganese-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].plate then
else
  -- disable plate recipe
end