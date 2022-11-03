local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
  angelsmods.trigger.smelting_products["chrome"].plate = true
  angelsmods.trigger.smelting_products["chrome"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["chrome"] then
else
  angelsmods.functions.add_flag("chrome-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].ingot then
  if angelsmods.trigger.smelting_products["chrome"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-chrome", "hidden")
    OV.disable_recipe({ "molten-chrome-smelting" })
    OV.disable_technology({ "angels-chrome-casting-2", "angels-chrome-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icon_mipmaps", "icons", "localised_name" }) do
      data.raw.technology["angels-chrome-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-chrome-smelting-2"][property])
    end
  end
else
  angelsmods.functions.add_flag("processed-chrome", "hidden")
  angelsmods.functions.add_flag("pellet-chrome", "hidden")
  angelsmods.functions.add_flag("solid-chromate", "hidden")
  angelsmods.functions.add_flag("solid-dichromate", "hidden")
  angelsmods.functions.add_flag("solid-chrome-oxide", "hidden")
  angelsmods.functions.add_flag("ingot-chrome", "hidden")
  angelsmods.functions.add_flag("liquid-molten-chrome", "hidden")
  OV.disable_recipe({ "chrome-ore-processing", "chrome-processed-processing", "pellet-chrome-smelting" })
  OV.disable_recipe({ "solid-chromate-smelting", "solid-dichromate-smelting" })
  OV.disable_recipe({ "chrome-ore-smelting", "processed-chrome-smelting", "solid-chrome-oxide-smelting" })
  OV.disable_recipe({ "molten-chrome-smelting" })
  OV.disable_technology({ "angels-chrome-smelting-1", "angels-chrome-smelting-2", "angels-chrome-smelting-3" })
  OV.disable_technology({ "angels-chrome-casting-2", "angels-chrome-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].plate then
else
  angelsmods.functions.add_flag("angels-plate-chrome", "hidden")
  angelsmods.functions.add_flag("angels-roll-chrome", "hidden")
  OV.disable_recipe({ "roll-chrome-casting", "roll-chrome-casting-fast" })
  OV.disable_recipe({ "angels-plate-chrome", "angels-roll-chrome-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].powder then
else
  angelsmods.functions.add_flag("powder-chrome", "hidden")
  OV.disable_recipe({ "powder-chrome" })
end
