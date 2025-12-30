local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["tin"].wire = true
  angelsmods.trigger.smelting_products["tin"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tin"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-tin-ore"]
    local bob_ore = data.raw.item["bob-tin-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-tin-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].ingot then
  if angelsmods.trigger.smelting_products["tin"].plate or angelsmods.trigger.smelting_products["tin"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-tin")
    OV.disable_recipe({ "angels-liquid-molten-tin" })
    OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-tin-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-tin-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-tin")
  angelsmods.functions.hide("angels-pellet-tin")
  angelsmods.functions.hide("angels-ingot-tin")
  angelsmods.functions.hide("angels-liquid-molten-tin")
  OV.disable_recipe({ "angels-processed-tin", "angels-pellet-tin" })
  OV.disable_recipe({ "angels-ingot-tin", "angels-ingot-tin-2", "angels-ingot-tin-3" })
  OV.disable_recipe({ "angels-liquid-molten-tin" })
  OV.disable_technology({ "angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3" })
  OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-tin", "bob-tin-plate")
    angelsmods.functions.hide("angels-plate-tin")
    OV.copy_item_properties("angels-plate-tin", "bob-tin-plate")
    OV.remove_unlock("angels-ore-crushing", "bob-tin-plate")
    OV.hide_recipe({ "bob-tin-plate" })
    if mods["boblogistics"] then
      OV.add_prereq("logistics", "angels-tin-smelting-1")
    end
  end
else
  angelsmods.functions.hide("angels-plate-tin")
  angelsmods.functions.hide("angels-roll-tin")
  OV.disable_recipe({ "angels-roll-tin", "angels-roll-tin-2" })
  OV.disable_recipe({ "angels-plate-tin", "angels-plate-tin-2" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].wire then
  if data.raw.item["bob-tinned-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-tin", "bob-tinned-copper-cable")
    angelsmods.functions.hide("angels-wire-tin")
    OV.copy_item_properties("angels-wire-tin", "bob-tinned-copper-cable")
    OV.disable_recipe({ "bob-tinned-copper-cable" })
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/tinned-copper-cable.png",
      "__angelssmeltinggraphics__/graphics/icons/wire-tin.png"
    )
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-wire-tin", "electronics")
    OV.add_additional_category("angels-wire-tin-2", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-tin")
  angelsmods.functions.hide("angels-wire-coil-tin")
  OV.disable_recipe({ "angels-wire-coil-tin", "angels-wire-coil-tin-2" })
  OV.disable_recipe({ "angels-wire-tin", "angels-wire-tin-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].powder then
else
  angelsmods.functions.hide("angels-powder-tin")
  OV.disable_recipe({ "angels-powder-tin" })
end
