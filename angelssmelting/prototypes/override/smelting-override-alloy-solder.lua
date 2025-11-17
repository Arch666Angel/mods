local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["solder"].wire = true
  angelsmods.trigger.smelting_products["solder"].mixture = true
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["solder"].wire then
  -- REPLACE ITEMS (use bob version)
  if mods["bobelectronics"] and data.raw.item["bob-solder"] then
    OV.global_replace_item("angels-solder", "bob-solder")
    angelsmods.functions.hide("angels-solder")
    OV.copy_item_properties("angels-solder", "bob-solder")
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/solder.png",
      "__angelssmeltinggraphics__/graphics/icons/solder.png"
    )
    OV.remove_unlock("bob-electronics", "bob-solder")

    OV.disable_recipe({ "bob-solder-alloy", "bob-solder-alloy-lead", "bob-solder" })
    angelsmods.functions.hide("bob-solder-alloy")
    OV.remove_unlock("bob-electronics", "bob-solder-alloy-lead")
    OV.remove_prereq("bob-electronics", "bob-alloy-processing")

    if angelsmods.trigger.smelting_products["solder"].mixture then
      OV.add_prereq("bob-electronics", "angels-solder-smelting-basic")
    else
      OV.add_prereq("bob-electronics", "angels-solder-smelting-1")
    end
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-solder-2", "electronics" )
  end

  if angelsmods.trigger.smelting_products["solder"].mixture then
  else
    angelsmods.functions.hide("angels-solder-mixture")
    OV.disable_recipe({ "angels-solder-mixture", "angels-liquid-molten-solder", "angels-solder-mixture-smelting" })
    OV.disable_technology({ "angels-solder-smelting-basic" })
    OV.remove_prereq("angels-solder-smelting-1", "angels-solder-smelting-basic")
    OV.remove_unlock("angels-solder-smelting-1", "angels-liquid-molten-solder")
    data.raw.recipe["angels-liquid-molten-solder-2"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      1,
      angelsmods.smelting.number_tint
    )
    data.raw.recipe["angels-liquid-molten-solder-3"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      2,
      angelsmods.smelting.number_tint
    )
    data.raw.recipe["angels-liquid-molten-solder-4"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("angels-liquid-molten-solder"),
      3,
      angelsmods.smelting.number_tint
    )
  end
else
  angelsmods.functions.hide("angels-solder-mixture")
  angelsmods.functions.hide("angels-liquid-molten-solder")
  angelsmods.functions.hide("angels-roll-solder")
  angelsmods.functions.hide("angels-solder")
  OV.disable_recipe({ "angels-solder-mixture" })
  OV.disable_recipe({
    "angels-liquid-molten-solder",
    "angels-liquid-molten-solder-2",
    "angels-liquid-molten-solder-3",
    "angels-liquid-molten-solder-4",
  })
  OV.disable_recipe({ "angels-roll-solder", "angels-roll-solder-2" })
  OV.disable_recipe({ "angels-solder-mixture-smelting", "angels-solder", "angels-solder-2" })
  OV.disable_technology({
    "angels-solder-smelting-basic",
    "angels-solder-smelting-1",
    "angels-solder-smelting-2",
    "angels-solder-smelting-3",
  })
end

if mods["bobelectronics"] or mods["bobplates"] then
  -- Disable Bob's Resin from wood recipe. No longer needed for solder
  OV.disable_recipe({ "bob-resin-wood" })
  OV.disable_technology({ "bob-wood-processing" })
  OV.remove_prereq({
    "bob-bodies",
    "bob-electronics",
    "bob-walking-vehicle",
  }, "bob-wood-processing")
end
