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
    angelsmods.functions.move_item("bob-solder", "angels-solder-casting", "d")
    data.raw["item"]["bob-solder"].icon = "__angelssmeltinggraphics__/graphics/icons/solder.png"
    data.raw["item"]["bob-solder"].icon_size = 32
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/solder.png",
      "__angelssmeltinggraphics__/graphics/icons/solder.png"
    )
    OV.remove_unlock("bob-electronics", "bob-solder")

    OV.disable_recipe({ "solder-alloy", "solder-alloy-lead", "bob-solder" })
    angelsmods.functions.hide("solder-alloy")
    OV.remove_unlock("bob-electronics", "solder-alloy-lead")
    OV.remove_prereq("bob-electronics", "alloy-processing")

    if angelsmods.trigger.smelting_products["solder"].mixture then
      OV.add_prereq("bob-electronics", "angels-solder-smelting-basic")
    else
      OV.add_prereq("bob-electronics", "angels-solder-smelting-1")
    end
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.patch_recipes({ { name = "angels-roll-solder-converting", category = "bob-electronics-machine" } })
  end

  if angelsmods.trigger.smelting_products["solder"].mixture then
    if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
      OV.add_prereq("angels-solder-smelting-basic", "automation-science-pack")
    end
  else
    angelsmods.functions.hide("angels-solder-mixture")
    OV.disable_recipe({ "angels-solder-mixture", "angels-solder-smelting-1", "angels-solder-mixture-smelting" })
    OV.disable_technology({ "angels-solder-smelting-basic" })
    OV.remove_prereq("angels-solder-smelting-1", "angels-solder-smelting-basic")
    OV.remove_unlock("angels-solder-smelting-1", "angels-solder-smelting-1")
    data.raw.recipe["angels-solder-smelting-2"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      1,
      angelsmods.smelting.number_tint
    )
    data.raw.recipe["angels-solder-smelting-3"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      2,
      angelsmods.smelting.number_tint
    )
    data.raw.recipe["angels-solder-smelting-4"].icons = angelsmods.functions.add_number_icon_layer(
      angelsmods.functions.get_object_icons("liquid-molten-solder"),
      3,
      angelsmods.smelting.number_tint
    )
  end
else
  angelsmods.functions.hide("angels-solder-mixture")
  angelsmods.functions.hide("liquid-molten-solder")
  angelsmods.functions.hide("angels-roll-solder")
  angelsmods.functions.hide("angels-solder")
  OV.disable_recipe({ "angels-solder-mixture" })
  OV.disable_recipe({
    "angels-solder-smelting-1",
    "angels-solder-smelting-2",
    "angels-solder-smelting-3",
    "angels-solder-smelting-4",
  })
  OV.disable_recipe({ "roll-solder-casting", "roll-solder-casting-fast" })
  OV.disable_recipe({ "angels-solder-mixture-smelting", "angels-solder", "angels-roll-solder-converting" })
  OV.disable_technology({
    "angels-solder-smelting-basic",
    "angels-solder-smelting-1",
    "angels-solder-smelting-2",
    "angels-solder-smelting-3",
  })
end
