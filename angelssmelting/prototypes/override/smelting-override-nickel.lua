local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].plate = true
  angelsmods.trigger.smelting_products["nickel"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["nickel"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-nickel-ore"]
    local bob_ore = data.raw.item["bob-nickel-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-nickel-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].ingot then
  if mods["bobplates"] then
    OV.global_replace_technology("bob-nickel-processing", "angels-nickel-smelting-1")
    OV.hide_recipe("bob-nickel-plate")
  end

  if angelsmods.trigger.smelting_products["nickel"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-nickel")
    OV.disable_recipe({ "angels-liquid-molten-nickel" })
    OV.disable_technology({ "angels-nickel-casting-2", "angels-nickel-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-nickel-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-nickel-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-nickel")
  angelsmods.functions.hide("angels-pellet-nickel")
  angelsmods.functions.hide("angels-cathode-nickel")
  angelsmods.functions.hide("angels-solid-nickel-carbonyl")
  angelsmods.functions.hide("angels-ingot-nickel")
  angelsmods.functions.hide("angels-liquid-molten-nickel")
  OV.disable_recipe({ "angels-processed-nickel", "angels-pellet-nickel" })
  OV.disable_recipe({ "angels-cathode-nickel", "angels-solid-nickel-carbonyl" })
  OV.disable_recipe({ "angels-ingot-nickel", "angels-ingot-nickel-2", "angels-ingot-nickel-3" })
  OV.disable_recipe({ "angels-liquid-molten-nickel" })
  OV.disable_technology({ "angels-nickel-smelting-1", "angels-nickel-smelting-2", "angels-nickel-smelting-3" })
  OV.disable_technology({ "angels-nickel-casting-2", "angels-nickel-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-nickel", "bob-nickel-plate")
    angelsmods.functions.hide("angels-plate-nickel")
    OV.copy_item_properties("angels-plate-nickel", "bob-nickel-plate")
  end
else
  angelsmods.functions.hide("angels-plate-nickel")
  angelsmods.functions.hide("angels-roll-nickel")
  OV.disable_recipe({ "angels-roll-nickel", "angels-roll-nickel-2" })
  OV.disable_recipe({ "angels-plate-nickel", "angels-plate-nickel-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].powder then
else
  angelsmods.functions.hide("angels-powder-nickel")
  OV.disable_recipe({ "angels-powder-nickel" })
end
