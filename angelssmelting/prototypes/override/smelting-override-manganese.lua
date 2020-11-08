local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["manganese"].ingot = true
  angelsmods.trigger.smelting_products["manganese"].plate = true
  angelsmods.trigger.smelting_products["manganese"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["manganese"] then
else
  angelsmods.functions.add_flag("manganese-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].ingot then
  if angelsmods.trigger.smelting_products["manganese"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-manganese", "hidden")
    OV.disable_recipe({"molten-manganese-smelting"})
    -- no need for the strand casting
    OV.remove_prereq("angels-manganese-smelting-2", "strand-casting-2")
    OV.remove_prereq("angels-manganese-smelting-3", "strand-casting-3")
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({"manganese-processed-processing-alt"})
  end
else
  angelsmods.functions.add_flag("processed-manganese", "hidden")
  angelsmods.functions.add_flag("pellet-manganese", "hidden")
  angelsmods.functions.add_flag("solid-manganese-oxide", "hidden")
  angelsmods.functions.add_flag("cathode-manganese", "hidden")
  angelsmods.functions.add_flag("ingot-manganese", "hidden")
  angelsmods.functions.add_flag("liquid-molten-manganese", "hidden")
  OV.disable_recipe({"manganese-ore-processing", "manganese-processed-processing"})
  OV.disable_recipe({"pellet-manganese-smelting", "processed-manganese-smelting", "manganese-processed-processing-alt", "solid-manganese-oxide-smelting"})
  OV.disable_recipe({"manganese-ore-smelting", "cathode-manganese-smelting"})
  OV.disable_recipe({"molten-manganese-smelting"})
  OV.disable_technology({"angels-manganese-smelting-1", "angels-manganese-smelting-2", "angels-manganese-smelting-3"})
  OV.remove_prereq('angels-iron-smelting-2','angels-manganese-smelting-1')
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].plate then
else
  angelsmods.functions.add_flag("angels-plate-manganese", "hidden")
  angelsmods.functions.add_flag("angels-roll-manganese", "hidden")
  OV.disable_recipe({"roll-manganese-casting", "roll-manganese-casting-fast"})
  OV.disable_recipe({"angels-plate-manganese", "angels-roll-manganese-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].powder then
else
  angelsmods.functions.add_flag("powder-manganese", "hidden")
  OV.disable_recipe({ "powder-manganese" })
end
