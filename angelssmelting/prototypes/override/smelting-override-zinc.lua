local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].plate = true
  angelsmods.trigger.smelting_products["zinc"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["zinc"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-zinc-ore"]
    local bob_ore = data.raw.item["bob-zinc-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-zinc-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].ingot then
  if angelsmods.trigger.smelting_products["zinc"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-zinc")
    OV.disable_recipe({ "angels-molten-zinc-smelting" })
    OV.disable_technology({ "angels-zinc-casting-2", "angels-zinc-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-zinc-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-zinc-smelting-2"][property])
    end
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({ "angels-zinc-ore-processing-alt" })
    OV.patch_recipes({
      {
        name = "angels-pellet-zinc-smelting",
        icons = angelsmods.functions.get_object_icons("angels-solid-zinc-oxide"),
      },
    })
  end
else
  angelsmods.functions.hide("angels-processed-zinc")
  angelsmods.functions.hide("angels-pellet-zinc")
  angelsmods.functions.hide("angels-solid-zinc-oxide")
  angelsmods.functions.hide("angels-cathode-zinc")
  angelsmods.functions.hide("angels-ingot-zinc")
  angelsmods.functions.hide("angels-liquid-molten-zinc")
  OV.disable_recipe({ "angels-zinc-ore-processing", "angels-zinc-processed-processing", "angels-zinc-ore-processing-alt" })
  OV.disable_recipe({ "angels-pellet-zinc-smelting", "angels-solid-zinc-oxide-smelting" })
  OV.disable_recipe({ "angels-zinc-ore-smelting", "angels-processed-zinc-smelting", "angels-cathode-zinc-smelting" })
  OV.disable_recipe({ "angels-molten-zinc-smelting" })
  OV.disable_recipe({ "angels-molten-zinc-smelting" })
  OV.disable_technology({ "angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3" })
  OV.disable_technology({ "angels-zinc-casting-2", "angels-zinc-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-zinc", "bob-zinc-plate")
    angelsmods.functions.hide("angels-plate-zinc")
    OV.copy_item_properties("angels-plate-zinc", "bob-zinc-plate")
    OV.disable_recipe({ "bob-zinc-plate" })
    OV.remove_prereq("bob-battery-3", "bob-zinc-processing")
    OV.add_prereq("bob-battery-3", "angels-zinc-smelting-1")
  end
else
  angelsmods.functions.hide("angels-plate-zinc")
  angelsmods.functions.hide("angels-roll-zinc")
  OV.disable_recipe({ "angels-roll-zinc-casting", "angels-roll-zinc-casting-fast" })
  OV.disable_recipe({ "angels-plate-zinc", "angels-roll-zinc-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].powder then
else
  angelsmods.functions.hide("angels-powder-zinc")
  OV.disable_recipe({ "angels-powder-zinc" })
end
