local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["cobalt"].plate = true
  angelsmods.trigger.smelting_products["cobalt"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["cobalt"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-cobalt-ore"]
    local bob_ore = data.raw.item["bob-cobalt-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-cobalt-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods["bobplates"] then
    OV.global_replace_item("angels-solid-cobalt-oxide", "bob-cobalt-oxide")
    angelsmods.functions.hide("angels-solid-cobalt-oxide")
    OV.copy_item_properties("angels-solid-cobalt-oxide", "bob-cobalt-oxide")
    OV.disable_recipe({ "bob-cobalt-oxide", "bob-cobalt-oxide-from-copper", "bob-cobalt-plate", "bob-cobalt-steel-alloy" })
    OV.remove_prereq({ "bob-battery-2", "bob-rtg" }, "bob-cobalt-processing") --based on the oxide not the plate
    OV.add_prereq({ "bob-battery-2", "bob-rtg" }, "angels-cobalt-smelting-1") --based on the oxide not the plate
  end

  if angelsmods.trigger.smelting_products["cobalt"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-cobalt")
    OV.disable_recipe({ "angels-liquid-molten-cobalt" })
    OV.disable_technology({ "angels-cobalt-casting-2", "angels-cobalt-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-cobalt-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-cobalt-smelting-2"][property])
    end
  end

  if (mods["angelsindustries"] and angelsmods.industries.components) or mods["bobplates"] then
  else
    OV.disable_recipe({ "angels-solid-cobalt-oxide" })
    OV.patch_recipes({
      {
        name = "angels-solid-cobalt-oxide-2",
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("angels-solid-cobalt-oxide"),
          1,
          angelsmods.smelting.number_tint
        ),
      },
      {
        name = "angels-solid-cobalt-oxide-3",
        icons = angelsmods.functions.add_number_icon_layer(
          angelsmods.functions.get_object_icons("angels-solid-cobalt-oxide"),
          2,
          angelsmods.smelting.number_tint
        ),
      },
    })
    OV.remove_prereq("angels-cobalt-smelting-1", "angels-stone-smelting-1")
    OV.add_prereq("angels-cobalt-smelting-2", "angels-stone-smelting-1")
    OV.remove_prereq("angels-cobalt-smelting-1", "angels-ore-processing-2")
    OV.add_prereq("angels-cobalt-smelting-1", "angels-metallurgy-3")
  end
else
  angelsmods.functions.hide("angels-processed-cobalt")
  angelsmods.functions.hide("angels-pellet-cobalt")
  angelsmods.functions.hide("angels-solid-cobalt-hydroxide")
  angelsmods.functions.hide("angels-solid-cobalt-oxide")
  angelsmods.functions.hide("angels-ingot-cobalt")
  angelsmods.functions.hide("angels-liquid-molten-cobalt")
  OV.disable_recipe({ "angels-processed-cobalt", "angels-pellet-cobalt", "angels-solid-cobalt-oxide" })
  OV.disable_recipe({ "angels-solid-cobalt-hydroxide", "angels-solid-cobalt-oxide-2", "angels-solid-cobalt-oxide-3" })
  OV.disable_recipe({ "angels-ingot-cobalt", "angels-ingot-cobalt-2" })
  OV.disable_recipe({ "angels-liquid-molten-cobalt" })
  OV.disable_technology({ "angels-cobalt-smelting-1", "angels-cobalt-smelting-2", "angels-cobalt-smelting-3" })
  OV.disable_technology({ "angels-cobalt-casting-2", "angels-cobalt-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-cobalt", "bob-cobalt-plate")
    angelsmods.functions.hide("angels-plate-cobalt")
    OV.copy_item_properties("angels-plate-cobalt", "bob-cobalt-plate")
  end
else
  angelsmods.functions.hide("angels-plate-cobalt")
  angelsmods.functions.hide("angels-roll-cobalt")
  OV.disable_recipe({ "angels-roll-cobalt", "angels-roll-cobalt-2" })
  OV.disable_recipe({ "angels-plate-cobalt", "angels-plate-cobalt-2" })
  angelsmods.functions.hide("bob-cobalt-plate")
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["cobalt"].powder then
else
  angelsmods.functions.hide("angels-powder-cobalt")
  OV.disable_recipe({ "angels-powder-cobalt" })
end
