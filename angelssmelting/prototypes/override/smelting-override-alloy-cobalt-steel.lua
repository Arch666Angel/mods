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
    OV.add_prereq("bob-cobalt-processing", "angels-cobalt-steel-smelting-1")
    angelsmods.functions.allow_productivity("angels-plate-cobalt-steel")
    OV.set_research_difficulty("bob-cobalt-processing", "bob-cobalt-steel-alloy", 10, "craft-item")
  else
    angelsmods.functions.hide("angels-liquid-molten-cobalt-steel")
    OV.disable_recipe({ "angels-liquid-molten-cobalt-steel" })
    OV.disable_recipe({ "angels-plate-cobalt-steel" })
    OV.disable_technology({ "angels-cobalt-steel-smelting-1" })
  end
end
