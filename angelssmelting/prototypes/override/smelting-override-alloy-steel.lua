local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["steel"].ingot = true
  angelsmods.trigger.smelting_products["steel"].plate = true
  angelsmods.trigger.smelting_products["steel"].powder = true
  angelsmods.trigger.smelting_products["steel"].rod = true
end

-------------------------------------------------------------------------------
-- TECHNOLOGY -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].ingot then
else
  OV.remove_prereq("angels-steel-smelting-3", "angels-cobalt-smelting-1")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].ingot then
  if not angelsmods.trigger.smelting_products["silicon"].ingot then
    OV.disable_recipe({ "angels-liquid-molten-steel-2" })
    OV.patch_recipes({
      {
        name = "angels-liquid-molten-steel-3",
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
          2,
          angelsmods.smelting.number_tint
        )
      },
      {
        name = "angels-liquid-molten-steel-4",
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
          3,
          angelsmods.smelting.number_tint
        )
      },
      {
        name = "angels-liquid-molten-steel-5",
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("angels-liquid-molten-steel"),
          4,
          angelsmods.smelting.number_tint
        )
      },
    })
    OV.remove_prereq("angels-steel-smelting-2", "angels-silicon-smelting-1")
    OV.add_prereq("angels-steel-smelting-2", "angels-strand-casting-1")
  end

  if
    not angelsmods.trigger.smelting_products["manganese"]
    or not angelsmods.trigger.smelting_products["manganese"].ingot
  then
    OV.remove_prereq("angels-steel-smelting-2", "angels-manganese-smelting-1")
  end

  if angelsmods.trigger.smelting_products["steel"].plate or angelsmods.trigger.smelting_products["steel"].rod then
  else
    OV.remove_prereq("angels-steel-smelting-3", "angels-strand-casting-2")
    OV.remove_prereq("angels-steel-smelting-3", "angels-coolant-1")
    OV.add_prereq("angels-steel-smelting-3", "angels-metallurgy-3")
  end

  if not angelsmods.trigger.smelting_products["nickel"] or not angelsmods.trigger.smelting_products["nickel"].ingot then
    OV.remove_prereq("angels-steel-smelting-3", "angels-nickel-smelting-1")
  end

  if not angelsmods.trigger.smelting_products["chrome"] or not angelsmods.trigger.smelting_products["chrome"].ingot then
    OV.remove_prereq("angels-steel-smelting-4", "angels-chrome-smelting-1")
  end

  if
    not angelsmods.trigger.smelting_products["tungsten"]
    or not angelsmods.trigger.smelting_products["tungsten"].powder
  then
    OV.remove_prereq("angels-steel-smelting-4", "angels-tungsten-smelting-1")
  end

  if angelsmods.trigger.smelting_products["steel"].powder then
  else
    data.raw.technology["angels-steel-smelting-2"].localised_name =
      { "", { "technology-name.angels-steel-casting" }, " 2" }
  end
else
  angelsmods.functions.hide("angels-ingot-steel")
  angelsmods.functions.hide("angels-liquid-molten-steel")
  OV.disable_recipe({ "angels-ingot-steel" })
  OV.disable_recipe({
    "angels-liquid-molten-steel",
    "angels-liquid-molten-steel-2",
    "angels-liquid-molten-steel-3",
    "angels-liquid-molten-steel-4",
    "angels-liquid-molten-steel-5",
  })
  OV.disable_technology({
    "angels-steel-smelting-1",
    "angels-steel-smelting-2",
    "angels-steel-smelting-3",
    "angels-steel-smelting-4",
  })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].plate then
  OV.disable_recipe({
    "steel-plate",
  })
  OV.add_prereq("steel-processing", "angels-steel-smelting-1")
  OV.global_replace_item("angels-plate-steel", "steel-plate")
  angelsmods.functions.hide("angels-plate-steel")
  angelsmods.functions.move_item("steel-plate", "angels-steel-casting", "l")
  angelsmods.functions.override_item_conditions({
    value = 200,
    list = {
      "steel-plate",
    },
  })
  data.raw["item"]["steel-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-steel.png"
  data.raw["item"]["steel-plate"].icon_size = 32
  OV.global_replace_icon(
    "__base__/graphics/icons/plate/steel-plate.png",
    "__angelssmeltinggraphics__/graphics/icons/plate-steel.png"
  )
else
  angelsmods.functions.hide("angels-plate-steel")
  angelsmods.functions.hide("angels-roll-steel")
  OV.disable_recipe({ "angels-roll-steel", "angels-roll-steel-2" })
  OV.disable_recipe({ "angels-plate-steel", "angels-plate-steel-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].powder then
else
  angelsmods.functions.hide("angels-powder-steel")
  OV.disable_recipe({ "angels-powder-steel" })
end

-------------------------------------------------------------------------------
-- ROD ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["steel"].rod then
  OV.add_unlock("steel-processing", "angels-rod-steel")
else
  angelsmods.functions.hide("angels-rod-stack-steel")
  angelsmods.functions.hide("angels-rod-steel")
  OV.disable_recipe({ "angels-rod-stack-steel", "angels-rod-stack-steel-2" })
  OV.disable_recipe({ "angels-rod-steel", "angels-rod-steel-2" })
end
