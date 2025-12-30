local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gold"].ingot = true
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["gold"].wire = true
  angelsmods.trigger.smelting_products["gold"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["gold"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-gold-ore"]
    local bob_ore = data.raw.item["bob-gold-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-gold-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].ingot then
  if angelsmods.trigger.smelting_products["gold"].plate or angelsmods.trigger.smelting_products["gold"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-gold")
    OV.disable_recipe({ "angels-liquid-molten-gold" })
    OV.disable_technology({ "angels-gold-casting-2", "angels-gold-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-gold-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-gold-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-gold")
  angelsmods.functions.hide("angels-pellet-gold")
  angelsmods.functions.hide("angels-solid-sodium-gold-cyanide")
  angelsmods.functions.hide("angels-liquid-chlorauric-acid")
  angelsmods.functions.hide("angels-cathode-gold")
  angelsmods.functions.hide("angels-ingot-gold")
  angelsmods.functions.hide("angels-liquid-molten-gold")
  OV.disable_recipe({ "angels-processed-gold", "angels-pellet-gold" })
  OV.disable_recipe({
    "angels-solid-sodium-gold-cyanide",
    "angels-liquid-chlorauric-acid",
    "angels-cathode-gold",
    "angels-cathode-gold-2",
  })
  OV.disable_recipe({ "angels-ingot-gold", "angels-ingot-gold-2" })
  OV.disable_recipe({ "angels-liquid-molten-gold" })
  OV.disable_technology({ "angels-gold-smelting-1", "angels-gold-smelting-2", "angels-gold-smelting-3" })
  OV.disable_technology({ "angels-gold-casting-2", "angels-gold-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.hide_recipe("bob-gold-plate")
    OV.global_replace_item("angels-plate-gold", "bob-gold-plate")
    angelsmods.functions.hide("angels-plate-gold")
    OV.copy_item_properties("angels-plate-gold", "bob-gold-plate")
    OV.global_replace_technology("bob-gold-processing", "angels-gold-smelting-1")
  end
else
  angelsmods.functions.hide("angels-plate-gold")
  angelsmods.functions.hide("angels-roll-gold")
  OV.disable_recipe({ "angels-roll-gold", "angels-roll-gold-2" })
  OV.disable_recipe({ "angels-plate-gold", "angels-plate-gold-2" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].wire then
  if data.raw.item["bob-gilded-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-gold", "bob-gilded-copper-cable")
    angelsmods.functions.hide("angels-wire-gold")
    OV.copy_item_properties("angels-wire-gold", "bob-gilded-copper-cable")
    angelsmods.functions.move_item("bob-gilded-copper-cable", "angels-gold-casting", "m")
    OV.disable_recipe({ "bob-gilded-copper-cable" })
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      "__angelssmeltinggraphics__/graphics/icons/wire-gold.png"
    )

    OV.patch_recipes({
      {
        name = "bob-integrated-electronics",
        ingredients = {
          {
            type = "item",
            name = angelsmods.trigger.smelting_products["platinum"].wire and "bob-gilded-copper-cable" or "bob-insulated-cable",
            amount = "bob-tinned-copper-cable",
          },
        },
      },
    })
    OV.remove_prereq("processing-unit", "angels-rubbers")
    OV.add_prereq("processing-unit", "angels-gold-smelting-1")
  else
    OV.patch_recipes({
      {
        name = "processing-unit",
        ingredients = {
          { type = "item", name = "angels-wire-gold", amount = 2 },
        },
      },
    })
    OV.add_prereq("processing-unit", "angels-gold-smelting-1")
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-wire-gold", "electronics")
    OV.add_additional_category("angels-wire-gold-2", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-gold")
  angelsmods.functions.hide("angels-wire-coil-gold")
  OV.disable_recipe({ "angels-wire-coil-gold", "angels-wire-coil-gold-2" })
  OV.disable_recipe({ "angels-wire-gold", "angels-wire-gold-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].powder then
else
  angelsmods.functions.hide("angels-powder-gold")
  OV.disable_recipe({ "angels-powder-gold" })
end
