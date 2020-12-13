local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["cobalt"].plate = true
  angelsmods.trigger.smelting_products["cobalt"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["cobalt"] then
else
  angelsmods.functions.add_flag("cobalt-ore", "hidden")
end

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

  if angelsmods.trigger.smelting_products["cobalt"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-cobalt", "hidden")
    OV.disable_recipe({"molten-cobalt-smelting"})
    OV.disable_technology({"angels-cobalt-casting-2", "angels-cobalt-casting-3"})
    -- swap tech tier 1 to ingots
    for _, property in pairs({"icon", "icon_size", "icon_mipmaps", "icons", "localised_name"}) do
      data.raw.technology["angels-cobalt-smelting-1"][property] = util.table.deepcopy(data.raw.technology["angels-cobalt-smelting-2"][property])
    end
  end
  
  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({"cobalt-ore-processing-alt"})
  end
else
  angelsmods.functions.add_flag("processed-cobalt", "hidden")
  angelsmods.functions.add_flag("pellet-cobalt", "hidden")
  angelsmods.functions.add_flag("solid-cobalt-hydroxide", "hidden")
  angelsmods.functions.add_flag("solid-cobalt-oxide", "hidden")
  angelsmods.functions.add_flag("ingot-cobalt", "hidden")
  angelsmods.functions.add_flag("liquid-molten-cobalt", "hidden")
  OV.disable_recipe({"cobalt-ore-processing", "cobalt-processed-processing", "cobalt-ore-processing-alt"})
  OV.disable_recipe({"pellet-cobalt-smelting", "processed-cobalt-smelting", "solid-cobalt-hydroxide-smelting"})
  OV.disable_recipe({"cobalt-ore-smelting", "solid-cobalt-oxide-smelting"})
  OV.disable_recipe({"molten-cobalt-smelting"})
  OV.disable_technology({"angels-cobalt-smelting-1", "angels-cobalt-smelting-2", "angels-cobalt-smelting-3"})
  OV.disable_technology({"angels-cobalt-casting-2", "angels-cobalt-casting-3"})
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
  angelsmods.functions.add_flag("angels-roll-cobalt", "hidden")
  OV.disable_recipe({"roll-cobalt-casting", "roll-cobalt-casting-fast"})
  OV.disable_recipe({"angels-plate-cobalt", "angels-roll-cobalt-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].powder then
else
  angelsmods.functions.add_flag("powder-cobalt", "hidden")
  OV.disable_recipe({ "powder-cobalt" })
end