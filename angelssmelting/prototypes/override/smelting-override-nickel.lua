local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].plate = true
  angelsmods.trigger.smelting_products["nickel"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["nickel"] then
else
  angelsmods.functions.hide("nickel-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].ingot then
  if mods["bobplates"] then
    OV.global_replace_technology("nickel-processing", "angels-nickel-smelting-1")
    OV.hide_recipe("bob-nickel-plate")
  end

  if angelsmods.trigger.smelting_products["nickel"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-nickel")
    OV.disable_recipe({ "molten-nickel-smelting" })
    OV.disable_technology({ "angels-nickel-casting-2", "angels-nickel-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-nickel-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-nickel-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-nickel")
  angelsmods.functions.hide("pellet-nickel")
  angelsmods.functions.hide("cathode-nickel")
  angelsmods.functions.hide("solid-nickel-carbonyl")
  angelsmods.functions.hide("ingot-nickel")
  angelsmods.functions.hide("liquid-molten-nickel")
  OV.disable_recipe({ "nickel-ore-processing", "nickel-processed-processing" })
  OV.disable_recipe({ "processed-nickel-smelting", "pellet-nickel-smelting" })
  OV.disable_recipe({ "nickel-ore-smelting", "cathode-nickel-smelting", "solid-nickel-carbonyl-smelting" })
  OV.disable_recipe({ "molten-nickel-smelting" })
  OV.disable_technology({ "angels-nickel-smelting-1", "angels-nickel-smelting-2", "angels-nickel-smelting-3" })
  OV.disable_technology({ "angels-nickel-casting-2", "angels-nickel-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-nickel", "bob-nickel-plate")
    angelsmods.functions.hide("angels-plate-nickel")
    angelsmods.functions.move_item("bob-nickel-plate", "angels-nickel-casting", "j")
    data.raw["item"]["bob-nickel-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-nickel.png"
    data.raw["item"]["bob-nickel-plate"].icon_size = 32
  end
else
  angelsmods.functions.hide("angels-plate-nickel")
  angelsmods.functions.hide("angels-roll-nickel")
  OV.disable_recipe({ "roll-nickel-casting", "roll-nickel-casting-fast" })
  OV.disable_recipe({ "angels-plate-nickel", "angels-roll-nickel-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["nickel"].powder then
else
  angelsmods.functions.hide("powder-nickel")
  OV.disable_recipe({ "powder-nickel" })
end
