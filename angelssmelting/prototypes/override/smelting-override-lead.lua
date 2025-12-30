local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  angelsmods.trigger.smelting_products["lead"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["lead"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-lead-ore"]
    local bob_ore = data.raw.item["bob-lead-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-lead-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].ingot then
  OV.add_prereq("angels-sulfur-processing-1", "angels-lead-smelting-1")

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-solid-lead-oxide", "bob-lead-oxide")
    angelsmods.functions.hide("angels-solid-lead-oxide")
    OV.copy_item_properties("angels-solid-lead-oxide", "bob-lead-oxide")
    OV.hide_recipe({ "bob-lead-plate", "bob-lead-oxide", "bob-lead-oxide-2" })
    OV.global_replace_technology("bob-lead-processing", "angels-lead-smelting-1")
  end

  if angelsmods.trigger.smelting_products["lead"].plate or angelsmods.trigger.smelting_products["zinc"].ingot then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-lead")
    OV.disable_recipe({ "angels-liquid-molten-lead" })
  end

  if angelsmods.trigger.smelting_products["lead"].plate then
  else
    OV.disable_technology({ "angels-lead-casting-2", "angels-lead-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-lead-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-lead-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-lead")
  angelsmods.functions.hide("angels-pellet-lead")
  angelsmods.functions.hide("angels-solid-lead-oxide")
  angelsmods.functions.hide("angels-anode-lead")
  angelsmods.functions.hide("angels-liquid-hexafluorosilicic-acid")
  angelsmods.functions.hide("angels-ingot-lead")
  angelsmods.functions.hide("angels-liquid-molten-lead")
  OV.disable_recipe({ "angels-processed-lead", "angels-pellet-lead" })
  OV.disable_recipe({ "angels-solid-lead-oxide", "angels-anode-lead", "angels-liquid-hexafluorosilicic-acid" })
  OV.disable_recipe({ "angels-ingot-lead", "angels-ingot-lead-2", "angels-ingot-lead-3" })
  OV.disable_recipe({ "angels-liquid-molten-lead" })
  OV.disable_technology({ "angels-lead-smelting-1", "angels-lead-smelting-2", "angels-lead-smelting-3" })
  OV.disable_technology({ "angels-lead-casting-2", "angels-lead-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].plate then
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-lead", "bob-lead-plate")
    angelsmods.functions.hide("angels-plate-lead")
    OV.copy_item_properties("angels-plate-lead", "bob-lead-plate")
    OV.disable_recipe({"bob-lead-plate", "bob-lead-plate-2"})
  end
else
  angelsmods.functions.hide("angels-plate-lead")
  angelsmods.functions.hide("angels-roll-lead")
  OV.disable_recipe({ "angels-roll-lead", "angels-roll-lead-2" })
  OV.disable_recipe({ "angels-plate-lead", "angels-plate-lead-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["lead"].powder then
else
  angelsmods.functions.hide("angels-powder-lead")
  OV.disable_recipe({ "angels-powder-lead" })
end
