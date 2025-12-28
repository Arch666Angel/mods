local OV = angelsmods.functions.OV

local ore_exists = angelsmods.functions.ore_enabled

-------------------------------------------------------------------------------
--BASE GAME -------------------------------------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- SPECIAL VANILLA ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.add_unlock("angels-ore-crushing", "angels-copper-pebbles")
  OV.add_unlock("angels-ore-crushing", "angels-copper-pebbles-smelting")
  OV.add_unlock("angels-ore-crushing", "angels-copper-nugget-smelting")

  OV.add_unlock("angels-ore-crushing", "angels-iron-pebbles")
  OV.add_unlock("angels-ore-crushing", "angels-iron-pebbles-smelting")
  OV.add_unlock("angels-ore-crushing", "angels-iron-nugget-smelting")
end
