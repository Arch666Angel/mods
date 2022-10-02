local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["solder"].wire = true
  angelsmods.trigger.smelting_products["solder"].mixture = true
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["solder"].wire then
  -- REPLACE ITEMS (use bob version)
  if mods['bobelectronics'] and data.raw.item["solder"] then
    OV.global_replace_item("angels-solder", "solder")
    angelsmods.functions.add_flag("angels-solder", "hidden")
    angelsmods.functions.move_item("solder", "angels-solder-casting", "d")
    data.raw["item"]["solder"].icon = "__angelssmelting__/graphics/icons/solder.png"
    data.raw["item"]["solder"].icon_size = 32
    data.raw["item"]["solder"].icon_mipmaps = 1
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/solder.png",
      "__angelssmelting__/graphics/icons/solder.png"
    )
    OV.remove_unlock("electronics", "solder")

    OV.disable_recipe({ "solder-alloy", "solder-alloy-lead", "solder" })
    angelsmods.functions.add_flag("solder-alloy", "hidden")
    OV.remove_unlock("electronics", "solder-alloy-lead")
    
    if angelsmods.trigger.smelting_products["solder"].mixture then
      OV.add_prereq("electronics", "angels-solder-smelting-basic" )
    else
      OV.add_prereq("electronics", "angels-solder-smelting-1" )
    end

    OV.patch_recipes({ { name = "angels-roll-solder-converting", category = "electronics-machine"} })
  end

  if angelsmods.trigger.smelting_products["solder"].mixture then
    if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value then
      OV.add_prereq("angels-solder-smelting-basic", "automation-science-pack")
    end
  else
    angelsmods.functions.add_flag("angels-solder-mixture", "hidden")
    OV.disable_recipe({"angels-solder-mixture", "angels-solder-smelting-1", "angels-solder-mixture-smelting"})
    OV.disable_technology({"angels-solder-smelting-basic"})
    OV.remove_prereq("angels-solder-smelting-1", "angels-solder-smelting-basic")
    OV.remove_unlock("angels-solder-smelting-1", "angels-solder-smelting-1")
    data.raw.recipe["angels-solder-smelting-2"].icons =
      angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("liquid-molten-solder"),
        1,
        angelsmods.smelting.number_tint
      )
    data.raw.recipe["angels-solder-smelting-3"].icons =
      angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("liquid-molten-solder"),
        2,
        angelsmods.smelting.number_tint
      )
    data.raw.recipe["angels-solder-smelting-4"].icons =
      angelsmods.functions.add_number_icon_layer(
        angelsmods.functions.get_object_icons("liquid-molten-solder"),
        3,
        angelsmods.smelting.number_tint
      )
  end
else
  angelsmods.functions.add_flag("angels-solder-mixture", "hidden")
  angelsmods.functions.add_flag("liquid-molten-solder", "hidden")
  angelsmods.functions.add_flag("angels-roll-solder", "hidden")
  angelsmods.functions.add_flag("angels-solder", "hidden")
  OV.disable_recipe({ "angels-solder-mixture" })
  OV.disable_recipe({ "angels-solder-smelting-1", "angels-solder-smelting-2", "angels-solder-smelting-3", "angels-solder-smelting-4" })
  OV.disable_recipe({ "roll-solder-casting", "roll-solder-casting-fast" })
  OV.disable_recipe({ "angels-solder-mixture-smelting", "angels-solder", "angels-roll-solder-converting" })
  OV.disable_technology({"angels-solder-smelting-basic", "angels-solder-smelting-1", "angels-solder-smelting-2", "angels-solder-smelting-3"})
end
