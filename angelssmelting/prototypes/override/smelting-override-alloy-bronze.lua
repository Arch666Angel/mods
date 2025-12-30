local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["bronze"].plate = true
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.smelting_products["bronze"].plate then
    angelsmods.functions.move_item("bob-bronze-alloy", "angels-alloys-casting", "a[bronze]-b[bronze-alloy]")
    data.raw["item"]["bob-bronze-alloy"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-bronze.png"
    data.raw["item"]["bob-bronze-alloy"].icon_size = 32
    OV.disable_recipe({ "bob-bronze-alloy" })
    angelsmods.functions.allow_productivity("angels-plate-bronze")
    -- alloys shenanigans -------------------------------------------------------
    OV.add_prereq("bob-alloy-processing", "angels-bronze-smelting-1")
    OV.add_prereq("logistics-2", "angels-bronze-smelting-1")
    OV.remove_prereq("chemical-science-pack", "bob-alloy-processing")
    OV.remove_prereq("bob-cobalt-processing", "bob-alloy-processing")
    OV.remove_prereq("logistics-2", "bob-alloy-processing")
    OV.remove_prereq("bob-nitinol-processing", "bob-alloy-processing")
    OV.remove_prereq("steel-processing", "bob-alloy-processing")
    OV.remove_prereq("bob-tungsten-processing", "bob-alloy-processing")
    OV.remove_prereq("bob-tungsten-alloy-processing", "bob-alloy-processing")
    OV.remove_prereq("bob-zinc-processing", "bob-alloy-processing")
    if mods["bobpower"] then
      OV.remove_prereq("bob-fluid-generator-1", "bob-alloy-processing")
      OV.add_prereq("bob-fluid-generator-1", "angels-bronze-smelting-1")
    end
    OV.set_research_difficulty("bob-alloy-processing", "bob-bronze-alloy", 10, "craft-item")
  else
    angelsmods.functions.hide("angels-liquid-molten-bronze")
    OV.disable_recipe({ "angels-liquid-molten-bronze", "angels-liquid-molten-bronze-2", "angels-liquid-molten-bronze-3" })
    OV.disable_recipe({ "angels-plate-bronze" })
    OV.disable_technology({ "angels-bronze-smelting-1", "angels-bronze-smelting-2", "angels-bronze-smelting-3" })
  end
end
