local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["invar"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["invar"].plate then
    OV.hide_recipe("bob-invar-alloy")
    angelsmods.functions.move_item("bob-invar-alloy", "angels-alloys-casting", "d[invar]-b[invar-alloy]")
    data.raw["item"]["bob-invar-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-invar.png"
    data.raw["item"]["bob-invar-alloy"].icon_size = 32
    OV.global_replace_technology("bob-invar-processing", "angels-invar-smelting-1")
    angelsmods.functions.allow_productivity("angels-plate-invar")
  else
    angelsmods.functions.hide("angels-liquid-molten-invar")
    OV.disable_recipe({ "angels-liquid-molten-invar" })
    OV.disable_recipe({ "angels-plate-invar" })
    OV.disable_technology({ "angels-invar-smelting-1" })
  end
end
