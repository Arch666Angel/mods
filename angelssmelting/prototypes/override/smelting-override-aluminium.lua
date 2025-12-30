local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["aluminium"].plate = true
  angelsmods.trigger.smelting_products["aluminium"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["aluminium"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-bauxite-ore"]
    local bob_ore = data.raw.item["bob-bauxite-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-bauxite-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-solid-aluminium-oxide", "bob-alumina")
    angelsmods.functions.hide("angels-solid-aluminium-oxide")
    OV.copy_item_properties("angels-solid-aluminium-oxide", "bob-alumina")
    OV.global_replace_technology("bob-aluminium-processing", "angels-aluminium-smelting-1")
  end

  OV.patch_recipes({
    {
      name = "angels-filter-ceramic",
      ingredients = {
        { type = "item", name = "plastic-bar", amount = 0 },
        { type = "item", name = mods["bobplates"] and "bob-alumina" or "angels-solid-aluminium-oxide", amount = 1 },
      },
    },
  })
  OV.add_prereq("angels-slag-processing-2", "angels-aluminium-smelting-1")

  if angelsmods.trigger.smelting_products["aluminium"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-aluminium")
    OV.disable_recipe({ "angels-liquid-molten-aluminium", "angels-liquid-molten-aluminium-2", "angels-liquid-molten-aluminium-3" })
    OV.disable_technology({ "angels-aluminium-casting-2", "angels-aluminium-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-aluminium-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-aluminium-smelting-2"][property])
    end
  end
  if not angelsmods.trigger.smelting_products["silicon"].ingot then
    OV.disable_recipe({ "angels-liquid-molten-aluminium-3" })
    OV.remove_prereq("angels-aluminium-casting-3", "angels-silicon-smelting-2")
  end
else
  angelsmods.functions.hide("angels-processed-aluminium")
  angelsmods.functions.hide("angels-pellet-aluminium")
  angelsmods.functions.hide("angels-solid-sodium-aluminate")
  angelsmods.functions.hide("angels-solid-aluminium-hydroxide")
  angelsmods.functions.hide("angels-solid-aluminium-oxide")
  angelsmods.functions.hide("angels-ingot-aluminium")
  angelsmods.functions.hide("angels-liquid-molten-aluminium")
  OV.disable_recipe({
    "angels-processed-aluminium",
    "angels-pellet-aluminium",
    "angels-solid-sodium-aluminate",
    "angels-solid-aluminium-hydroxide",
  })
  OV.disable_recipe({
    "angels-solid-aluminium-hydroxide-2",
    "angels-solid-aluminium-oxide",
    "angels-solid-aluminium-oxide-2",
  })
  OV.disable_recipe({ "angels-ingot-aluminium" })
  OV.disable_recipe({ "angels-liquid-molten-aluminium", "angels-liquid-molten-aluminium-2", "angels-liquid-molten-aluminium-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-aluminium", "bob-aluminium-plate")
    angelsmods.functions.hide("angels-plate-aluminium")
    OV.copy_item_properties("angels-plate-aluminium", "bob-aluminium-plate")
    OV.hide_recipe({ "bob-aluminium-plate", "bob-alumina" })
  end
else
  angelsmods.functions.hide("angels-plate-aluminium")
  angelsmods.functions.hide("angels-roll-aluminium")
  OV.disable_recipe({ "angels-roll-aluminium", "angels-roll-aluminium-2" })
  OV.disable_recipe({ "angels-plate-aluminium", "angels-plate-aluminium-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["aluminium"].powder then
else
  angelsmods.functions.hide("angels-powder-aluminium")
  OV.disable_recipe({ "angels-powder-aluminium" })
end
