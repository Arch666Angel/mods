local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["nitinol"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["nitinol"].plate then
    angelsmods.functions.move_item("bob-nitinol-alloy", "angels-alloys-casting", "f[nitinol]-b[nitinol-alloy]")
    data.raw["item"]["bob-nitinol-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-nitinol.png"
    data.raw["item"]["bob-nitinol-alloy"].icon_size = 32
    OV.add_prereq("bob-nitinol-processing", "angels-nitinol-smelting-1")
    OV.add_prereq("bob-nitinol-processing", "lubricant")
    OV.remove_prereq("bob-nitinol-processing", "bob-titanium-processing")
    OV.disable_recipe({ "bob-nitinol-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-nitinol")
    OV.set_research_difficulty("bob-nitinol-processing", "bob-nitinol-alloy", 10, "craft-item")
  else
    angelsmods.functions.hide("angels-liquid-molten-nitinol")
    OV.disable_recipe({ "angels-liquid-molten-nitinol" })
    OV.disable_recipe({ "angels-plate-nitinol" })
    OV.disable_technology({ "angels-nitinol-smelting-1" })
  end
end
