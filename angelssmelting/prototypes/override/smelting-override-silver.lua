local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["silver"].ingot = true
  angelsmods.trigger.smelting_products["silver"].plate = true
  angelsmods.trigger.smelting_products["silver"].wire = true
  angelsmods.trigger.smelting_products["silver"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["silver"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-silver-ore"]
    local bob_ore = data.raw.item["bob-silver-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-silver-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-solid-silver-nitrate", "bob-silver-nitrate")
    angelsmods.functions.hide("angels-solid-silver-nitrate")
    OV.copy_item_properties("angels-solid-silver-nitrate", "bob-silver-nitrate")
    OV.disable_recipe({ "bob-silver-nitrate", "bob-silver-from-lead" })
    OV.remove_prereq("bob-battery-3", "nitrogen-processing")
    OV.add_prereq("bob-battery-3", "angels-silver-smelting-2")
    OV.add_prereq("bob-battery-3", "angels-powder-metallurgy-4")

    angelsmods.functions.move_item("bob-silver-oxide", "angels-silver", "e")
    data.raw.item["bob-silver-oxide"].icon = "__angelssmeltinggraphics__/graphics/icons/solid-silver-oxide.png"
    data.raw.item["bob-silver-oxide"].icon_size = 32
    OV.patch_recipes({
      { name = "bob-silver-oxide", subgroup = "angels-silver", order = "e[silver-oxide]", category = "angels-powder-mixing-3" },
    })
  end

  if angelsmods.trigger.smelting_products["silver"].plate or angelsmods.trigger.smelting_products["silver"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-silver")
    OV.disable_recipe({ "angels-liquid-molten-silver" })
    OV.disable_technology({ "angels-silver-casting-2", "angels-silver-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-silver-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-silver-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-silver")
  angelsmods.functions.hide("angels-pellet-silver")
  angelsmods.functions.hide("angels-solid-silver-nitrate")
  angelsmods.functions.hide("angels-solid-sodium-silver-cyanide")
  angelsmods.functions.hide("angels-cathode-silver")
  angelsmods.functions.hide("angels-ingot-silver")
  angelsmods.functions.hide("angels-liquid-molten-silver")
  OV.disable_recipe({ "angels-processed-silver", "angels-pellet-silver" })
  OV.disable_recipe({ "angels-solid-silver-nitrate", "angels-solid-sodium-silver-cyanide", "angels-cathode-silver" })
  OV.disable_recipe({ "angels-ingot-silver", "angels-ingot-silver-2", "angels-ingot-silver-3" })
  OV.disable_recipe({ "angels-liquid-molten-silver" })
  OV.disable_technology({ "angels-silver-smelting-1", "angels-silver-smelting-2", "angels-silver-smelting-3" })
  OV.disable_technology({ "angels-silver-casting-2", "angels-silver-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-silver", "bob-silver-plate")
    angelsmods.functions.hide("angels-plate-silver")
    OV.copy_item_properties("angels-plate-silver", "bob-silver-plate")
    OV.hide_recipe({ "bob-silver-plate" })
  end
else
  angelsmods.functions.hide("angels-plate-silver")
  angelsmods.functions.hide("angels-roll-silver")
  OV.disable_recipe({ "angels-roll-silver", "angels-roll-silver-2" })
  OV.disable_recipe({ "angels-plate-silver", "angels-plate-silver-2" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].wire then
  -- advanced circuits require silver wire
  if mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "bob-electronic-components",
        ingredients = {
          { type = "item", name = "angels-wire-silver", amount = "bob-tinned-copper-cable" },
        },
      },
    })
  else
    OV.patch_recipes({
      {
        name = "advanced-circuit",
        ingredients = {
          { "!!" },
          { type = "item", name = "angels-wire-silver", amount = 2 },
          { type = "item", name = "plastic-bar", amount = 2 },
          { type = "item", name = "electronic-circuit", amount = 2 },
        },
      },
    })
  end
  OV.add_prereq("advanced-circuit", "angels-silver-smelting-1")

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-wire-silver", "electronics")
    OV.add_additional_category("angels-wire-silver-2", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-silver")
  angelsmods.functions.hide("angels-wire-coil-silver")
  OV.disable_recipe({ "angels-wire-coil-silver", "angels-wire-coil-silver-2" })
  OV.disable_recipe({ "angels-wire-silver", "angels-wire-silver-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].powder then
else
  angelsmods.functions.hide("angels-powder-silver")
  OV.disable_recipe({ "angels-powder-silver" })
end
