local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gunmetal"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["gunmetal"].plate then
    angelsmods.functions.move_item("bob-gunmetal-alloy", "angels-alloys-casting", "c[gunmetal]-b[gunmetal-alloy]")
    data.raw["item"]["bob-gunmetal-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-gunmetal.png"
    data.raw["item"]["bob-gunmetal-alloy"].icon_size = 32
    OV.disable_recipe({ "bob-gunmetal-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-gunmetal")

    if mods["bobwarfare"] then
      OV.add_prereq("bob-bullets", "angels-gunmetal-smelting-1")
      OV.add_prereq("bob-shotgun-shells", "angels-gunmetal-smelting-1")
      OV.add_prereq("bob-rocket", "angels-gunmetal-smelting-1")
    end
  else
    angelsmods.functions.hide("angels-liquid-molten-gunmetal")
    OV.disable_recipe({ "angels-liquid-molten-gunmetal" })
    OV.disable_recipe({ "angels-plate-gunmetal" })
    OV.disable_technology({ "angels-gunmetal-smelting-1" })
  end
end
