local OV = angelsmods.functions.OV

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
  angelsmods.functions.hide("angels-chrome-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].ingot then
  if angelsmods.trigger.smelting_products["chrome"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-chrome")
    OV.disable_recipe({ "angels-liquid-molten-chrome" })
    OV.disable_technology({ "angels-chrome-casting-2", "angels-chrome-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-chrome-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-chrome-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-chrome")
  angelsmods.functions.hide("angels-pellet-chrome")
  angelsmods.functions.hide("angels-solid-chromate")
  angelsmods.functions.hide("angels-solid-dichromate")
  angelsmods.functions.hide("angels-solid-chrome-oxide")
  angelsmods.functions.hide("angels-ingot-chrome")
  angelsmods.functions.hide("angels-liquid-molten-chrome")
  OV.disable_recipe({ "angels-processed-chrome", "angels-pellet-chrome", "angels-solid-chromate" })
  OV.disable_recipe({ "angels-solid-dichromate", "angels-solid-chrome-oxide" })
  OV.disable_recipe({ "angels-ingot-chrome", "angels-ingot-chrome-2", "angels-ingot-chrome-3" })
  OV.disable_recipe({ "angels-liquid-molten-chrome" })
  OV.disable_technology({ "angels-chrome-smelting-1", "angels-chrome-smelting-2", "angels-chrome-smelting-3" })
  OV.disable_technology({ "angels-chrome-casting-2", "angels-chrome-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].plate then
else
  angelsmods.functions.hide("angels-plate-chrome")
  angelsmods.functions.hide("angels-roll-chrome")
  OV.disable_recipe({ "angels-roll-chrome", "angels-roll-chrome-2" })
  OV.disable_recipe({ "angels-plate-chrome", "angels-plate-chrome-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].powder then
else
  angelsmods.functions.hide("angels-powder-chrome")
  OV.disable_recipe({ "angels-powder-chrome" })
end
