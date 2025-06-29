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
    local angel_ore = data.raw.item["tin-ore"]
    local bob_ore = data.raw.item["bob-tin-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("tin-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].ingot then
  if angelsmods.trigger.smelting_products["tin"].plate or angelsmods.trigger.smelting_products["tin"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-tin")
    OV.disable_recipe({ "molten-tin-smelting" })
    OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-tin-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-tin-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-tin")
  angelsmods.functions.hide("pellet-tin")
  angelsmods.functions.hide("ingot-tin")
  angelsmods.functions.hide("liquid-molten-tin")
  OV.disable_recipe({ "tin-ore-processing", "tin-processed-processing" })
  OV.disable_recipe({ "tin-ore-smelting", "processed-tin-smelting", "pellet-tin-smelting" })
  OV.disable_recipe({ "molten-tin-smelting" })
  OV.disable_technology({ "angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3" })
  OV.disable_technology({ "angels-tin-casting-2", "angels-tin-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].plate then
  OV.patch_recipes({
    {
      name = "angelsore6-crushed-smelting",
      subgroup = "angels-tin-casting",
      order = "i[angels-plate-tin]-a",
    },
  })

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-tin", "bob-tin-plate")
    angelsmods.functions.hide("angels-plate-tin")
    OV.copy_item_properties("angels-plate-tin", "bob-tin-plate")
    OV.patch_recipes({
      {
        name = "angelsore6-crushed-smelting",
        icons = angelsmods.functions.add_icon_layer(
          angelsmods.functions.get_object_icons("bob-tin-plate"),
          angelsmods.functions.get_object_icons("angels-ore6-crushed"),
          { -10, -10 },
          0.4375
        ),
      },
    })
    OV.remove_unlock("ore-crushing", "bob-tin-plate")
    OV.hide_recipe({ "bob-tin-plate" })
  end
else
  angelsmods.functions.hide("angels-plate-tin")
  angelsmods.functions.hide("angels-roll-tin")
  OV.disable_recipe({ "roll-tin-casting", "roll-tin-casting-fast" })
  OV.disable_recipe({ "angels-plate-tin", "angels-roll-tin-converting" })
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
    OV.add_additional_category("basic-tinned-copper-wire", "electronics")
    OV.add_additional_category("angels-wire-coil-tin-converting", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-tin")
  angelsmods.functions.hide("angels-wire-coil-tin")
  OV.disable_recipe({ "angels-wire-coil-tin-casting", "angels-wire-coil-tin-casting-fast" })
  OV.disable_recipe({ "basic-tinned-copper-wire", "angels-wire-coil-tin-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].powder then
else
  angelsmods.functions.hide("powder-tin")
  OV.disable_recipe({ "powder-tin" })
end
