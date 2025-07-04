local OV = angelsmods.functions.OV

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
  angelsmods.functions.hide("angels-manganese-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].ingot then
  if angelsmods.trigger.smelting_products["manganese"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-manganese")
    OV.disable_recipe({ "angels-molten-manganese-smelting" })
    OV.disable_technology({ "angels-manganese-casting-2", "angels-manganese-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-manganese-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-manganese-smelting-2"][property])
    end
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({ "angels-manganese-processed-processing-alt" })
    -- remove number icon as there is only one tier...
    local maganese_oxide = data.raw["recipe"]["angels-pellet-manganese-smelting"]
    if maganese_oxide then
      maganese_oxide.icons = nil
    end
  end
else
  angelsmods.functions.hide("angels-processed-manganese")
  angelsmods.functions.hide("angels-pellet-manganese")
  angelsmods.functions.hide("angels-solid-manganese-oxide")
  angelsmods.functions.hide("angels-cathode-manganese")
  angelsmods.functions.hide("angels-ingot-manganese")
  angelsmods.functions.hide("angels-liquid-molten-manganese")
  angelsmods.functions.hide("angels-solid-iron-hydroxide")
  OV.disable_recipe({ "angels-manganese-ore-processing", "angels-manganese-processed-processing" })
  OV.disable_recipe({
    "angels-pellet-manganese-smelting",
    "angels-processed-manganese-smelting",
    "angels-manganese-processed-processing-alt",
    "angels-solid-manganese-oxide-smelting",
  })
  OV.disable_recipe({ "angels-manganese-ore-smelting", "angels-cathode-manganese-smelting" })
  OV.disable_recipe({ "angels-molten-manganese-smelting", "angels-solid-iron-hydroxide-smelting" })
  OV.disable_technology({ "angels-manganese-smelting-1", "angels-manganese-smelting-2", "angels-manganese-smelting-3" })
  OV.disable_technology({ "angels-manganese-casting-2", "angels-manganese-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].plate then
else
  angelsmods.functions.hide("angels-plate-manganese")
  angelsmods.functions.hide("angels-roll-manganese")
  OV.disable_recipe({ "angels-roll-manganese-casting", "angels-roll-manganese-casting-fast" })
  OV.disable_recipe({ "angels-plate-manganese", "angels-roll-manganese-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["manganese"].powder then
else
  angelsmods.functions.hide("angels-powder-manganese")
  OV.disable_recipe({ "angels-powder-manganese" })
end
