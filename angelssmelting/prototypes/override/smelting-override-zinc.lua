local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].plate = true
  angelsmods.trigger.smelting_products["zinc"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["zinc"] then
else
  angelsmods.functions.add_flag("zinc-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].ingot then
  if angelsmods.trigger.smelting_products["zinc"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-zinc", "hidden")
    OV.disable_recipe({"molten-zinc-smelting"})
    OV.disable_technology({"angels-zinc-casting-2", "angels-zinc-casting-3"})
    -- swap tech tier 1 to ingots
    for _, property in pairs({"icon", "icon_size", "icon_mipmaps", "icons", "localised_name"}) do
      data.raw.technology["angels-zinc-smelting-1"][property] = util.table.deepcopy(data.raw.technology["angels-zinc-smelting-2"][property])
    end
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({"zinc-ore-processing-alt"})
  end
else
  angelsmods.functions.add_flag("processed-zinc", "hidden")
  angelsmods.functions.add_flag("pellet-zinc", "hidden")
  angelsmods.functions.add_flag("solid-zinc-oxide", "hidden")
  angelsmods.functions.add_flag("cathode-zinc", "hidden")
  angelsmods.functions.add_flag("ingot-zinc", "hidden")
  angelsmods.functions.add_flag("liquid-molten-zinc", "hidden")
  OV.disable_recipe({"zinc-ore-processing", "zinc-processed-processing", "zinc-ore-processing-alt"})
  OV.disable_recipe({"pellet-zinc-smelting", "solid-zinc-oxide-smelting"})
  OV.disable_recipe({"zinc-ore-smelting", "processed-zinc-smelting", "cathode-zinc-smelting"})
  OV.disable_recipe({"molten-zinc-smelting"})
  OV.disable_recipe({"molten-zinc-smelting"})
  OV.disable_technology({"angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3"})
  OV.disable_technology({"angels-zinc-casting-2", "angels-zinc-casting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-zinc", "zinc-plate")
    angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
    OV.disable_recipe({ "bob-zinc-plate" })
  end
else
  angelsmods.functions.add_flag("angels-plate-zinc", "hidden")
  angelsmods.functions.add_flag("angels-roll-zinc", "hidden")
  OV.disable_recipe({"roll-zinc-casting", "roll-zinc-casting-fast"})
  OV.disable_recipe({"angels-plate-zinc", "angels-roll-zinc-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].powder then
else
  angelsmods.functions.add_flag("powder-zinc", "hidden")
  OV.disable_recipe({ "powder-zinc" })
end