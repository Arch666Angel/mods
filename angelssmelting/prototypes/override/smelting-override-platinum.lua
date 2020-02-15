local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].ingot then
else
  angelsmods.functions.add_flag("processed-platinum", "hidden")
  angelsmods.functions.add_flag("pellet-platinum", "hidden")
  angelsmods.functions.add_flag("solid-ammonium-chloroplatinate", "hidden")
  angelsmods.functions.add_flag("ingot-platinum", "hidden")

  data.raw.fluid["liquid-hexachloroplatinic-acid"].hidden = true
  data.raw.fluid["liquid-molten-platinum"].hidden = true

  OV.disable_technology({"angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].plate then
else
  -- disable roll and plate recipe
  angelsmods.functions.add_flag("angels-roll-platinum", "hidden")
  angelsmods.functions.add_flag("angels-plate-platinum", "hidden")
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].wire then
else
  -- disable coil and wire recipe
  angelsmods.functions.add_flag("angels-wire-coil-platinum", "hidden")
  angelsmods.functions.add_flag("angels-wire-platinum", "hidden")
end
