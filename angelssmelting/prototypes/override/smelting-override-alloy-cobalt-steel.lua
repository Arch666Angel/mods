local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["cobalt-steel"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["cobalt-steel"].plate then
    angelsmods.functions.move_item(
      "bob-cobalt-steel-alloy",
      "angels-alloys-casting",
      "e[cobalt-steel]-b[cobalt-steel-alloy]"
    )
    data.raw["item"]["bob-cobalt-steel-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-cobalt-steel.png"
    data.raw["item"]["bob-cobalt-steel-alloy"].icon_size = 32
    angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")
    OV.global_replace_technology("bob-cobalt-processing", "bob-brass-processing")

    angelsmods.functions.hide("bob-cobalt-steel-bearing-ball")
    angelsmods.functions.hide("bob-cobalt-steel-bearing")
    angelsmods.functions.hide("bob-cobalt-steel-gear-wheel")
    OV.disable_recipe({ "bob-cobalt-steel-bearing-ball", "bob-cobalt-steel-bearing", "bob-cobalt-steel-gear-wheel" })
    OV.global_replace_item("bob-cobalt-steel-gear-wheel", "bob-brass-gear-wheel")
    OV.global_replace_item("bob-cobalt-steel-bearing", "bob-brass-bearing")
    data.raw.recipe["bob-cobalt-steel-bearing-recycling"] = nil
    data.raw.recipe["bob-cobalt-steel-gear-wheel-recycling"] = nil
  else
    angelsmods.functions.hide("angels-liquid-molten-cobalt-steel")
    OV.disable_recipe({ "angels-liquid-molten-cobalt-steel" })
    OV.disable_recipe({ "angels-plate-cobalt-steel" })
    OV.disable_technology({ "angels-cobalt-steel-smelting-1" })
  end
end
