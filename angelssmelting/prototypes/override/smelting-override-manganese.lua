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
    OV.disable_recipe({ "molten-manganese-smelting" })
    OV.disable_technology({ "angels-manganese-casting-2", "angels-manganese-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icon_mipmaps", "icons", "localised_name" }) do
      data.raw.technology["angels-manganese-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-manganese-smelting-2"][property])
    end
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({ "manganese-processed-processing-alt" })
  end
else
  angelsmods.functions.add_flag("processed-manganese", "hidden")
  angelsmods.functions.add_flag("pellet-manganese", "hidden")
  angelsmods.functions.add_flag("solid-manganese-oxide", "hidden")
  angelsmods.functions.add_flag("cathode-manganese", "hidden")
  angelsmods.functions.add_flag("ingot-manganese", "hidden")
  angelsmods.functions.add_flag("liquid-molten-manganese", "hidden")
  angelsmods.functions.add_flag("solid-iron-hydroxide", "hidden")
  OV.disable_recipe({ "manganese-ore-processing", "manganese-processed-processing" })
  OV.disable_recipe({
    "pellet-manganese-smelting",
    "processed-manganese-smelting",
    "manganese-processed-processing-alt",
    "solid-manganese-oxide-smelting",
  })
  OV.disable_recipe({ "manganese-ore-smelting", "cathode-manganese-smelting" })
  OV.disable_recipe({ "molten-manganese-smelting", "solid-iron-hydroxide-smelting" })
  OV.disable_technology({ "angels-manganese-smelting-1", "angels-manganese-smelting-2", "angels-manganese-smelting-3" })
  OV.disable_technology({ "angels-manganese-casting-2", "angels-manganese-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].plate then
else
  angelsmods.functions.add_flag("angels-plate-manganese", "hidden")
  angelsmods.functions.add_flag("angels-roll-manganese", "hidden")
  OV.disable_recipe({ "roll-manganese-casting", "roll-manganese-casting-fast" })
  OV.disable_recipe({ "angels-plate-manganese", "angels-roll-manganese-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].powder then
else
  angelsmods.functions.add_flag("powder-manganese", "hidden")
  OV.disable_recipe({ "powder-manganese" })
end
