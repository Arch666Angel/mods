local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["brass"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["brass"].plate then
    angelsmods.functions.move_item("bob-brass-alloy", "angels-alloys-casting", "b[brass]-b[brass-alloy]")
    data.raw["item"]["bob-brass-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-brass.png"
    data.raw["item"]["bob-brass-alloy"].icon_size = 32
    OV.disable_recipe({ "bob-brass-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-brass")
    OV.add_prereq("bob-zinc-processing", "angels-brass-smelting-1")
    OV.set_research_difficulty("bob-zinc-processing", "bob-brass-alloy", 10, "craft-item")
  else
    angelsmods.functions.hide("angels-liquid-molten-brass")
    OV.disable_recipe({ "angels-liquid-molten-brass", "angels-liquid-molten-brass-2", "angels-liquid-molten-brass-3" })
    OV.disable_recipe({ "angels-plate-brass" })
    OV.disable_technology({ "angels-brass-smelting-1", "angels-brass-smelting-2", "angels-brass-smelting-3" })
  end
end
