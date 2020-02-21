local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["aluminium"].plate = true
  angelsmods.trigger.smelting_products["aluminium"].powder = true
end

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

  if angelsmods.trigger.smelting_products["aluminium"].plate then
  else
    -- no need for molten recipe
    data.raw.fluid["liquid-molten-aluminium"].hidden = true
    OV.disable_recipe({ "molten-aluminium-smelting-1", "molten-aluminium-smelting-2", "molten-aluminium-smelting-3" })
  end
else
  angelsmods.functions.add_flag("processed-aluminium", "hidden")
  angelsmods.functions.add_flag("pellet-aluminium", "hidden")
  angelsmods.functions.add_flag("solid-sodium-aluminate", "hidden")
  angelsmods.functions.add_flag("solid-aluminium-hydroxide", "hidden")
  angelsmods.functions.add_flag("solid-aluminium-oxide", "hidden")
  angelsmods.functions.add_flag("ingot-aluminium", "hidden")
  data.raw.fluid["liquid-molten-aluminium"].hidden = true
  OV.disable_recipe({ "aluminium-processed-processing", "pellet-aluminium-smelting", "bauxite-ore-smelting" })
  OV.disable_recipe({ "processed-aluminium-smelting", "solid-aluminium-hydroxide-smelting", "solid-sodium-aluminate-smelting" })
  OV.disable_recipe({ "solid-aluminium-oxide-smelting" })
  OV.disable_recipe({ "molten-aluminium-smelting-1", "molten-aluminium-smelting-2", "molten-aluminium-smelting-3" })
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
  angelsmods.functions.add_flag("angels-roll-aluminium", "hidden")
  OV.disable_recipe({ "roll-aluminium-casting", "roll-aluminium-casting-fast" })
  OV.disable_recipe({ "angels-plate-aluminium", "angels-roll-aluminium-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].powder then
else
  angelsmods.functions.add_flag("powder-aluminium", "hidden")
  OV.disable_recipe({ "powder-aluminium" })
end