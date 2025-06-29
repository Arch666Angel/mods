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
    local angel_ore = data.raw.item["silver-ore"]
    local bob_ore = data.raw.item["bob-silver-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("silver-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("solid-silver-nitrate", "bob-silver-nitrate")
    angelsmods.functions.hide("solid-silver-nitrate")
    OV.copy_item_properties("solid-silver-nitrate", "bob-silver-nitrate")
    OV.disable_recipe({ "bob-silver-nitrate", "bob-silver-from-lead" })
    OV.remove_prereq("bob-battery-3", "nitrogen-processing")
    OV.add_prereq("bob-battery-3", "angels-silver-smelting-2")
    OV.add_prereq("bob-battery-3", "powder-metallurgy-4")

    angelsmods.functions.move_item("bob-silver-oxide", "angels-silver", "e")
    data.raw.item["bob-silver-oxide"].icon = "__angelssmeltinggraphics__/graphics/icons/solid-silver-oxide.png"
    data.raw.item["bob-silver-oxide"].icon_size = 32
    OV.patch_recipes({
      { name = "bob-silver-oxide", subgroup = "angels-silver", order = "e[silver-oxide]", category = "powder-mixing-3" },
    })
  end

  if angelsmods.trigger.smelting_products["silver"].plate or angelsmods.trigger.smelting_products["silver"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-silver")
    OV.disable_recipe({ "molten-silver-smelting" })
    OV.disable_technology({ "angels-silver-casting-2", "angels-silver-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-silver-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-silver-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-silver")
  angelsmods.functions.hide("pellet-silver")
  angelsmods.functions.hide("solid-silver-nitrate")
  angelsmods.functions.hide("solid-sodium-silver-cyanide")
  angelsmods.functions.hide("cathode-silver")
  angelsmods.functions.hide("ingot-silver")
  angelsmods.functions.hide("liquid-molten-silver")
  OV.disable_recipe({ "silver-ore-processing", "silver-processed-processing" })
  OV.disable_recipe({ "processed-silver-smelting", "pellet-silver-smelting", "solid-sodium-silver-cyanide-smelting" })
  OV.disable_recipe({ "silver-ore-smelting", "solid-silver-nitrate-smelting", "cathode-silver-smelting" })
  OV.disable_recipe({ "molten-silver-smelting" })
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
  OV.disable_recipe({ "roll-silver-casting", "roll-silver-casting-fast" })
  OV.disable_recipe({ "angels-plate-silver", "angels-roll-silver-converting" })
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
    OV.add_additional_category("basic-silvered-copper-wire", "electronics")
    OV.add_additional_category("angels-wire-coil-silver-converting", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-silver")
  angelsmods.functions.hide("angels-wire-coil-silver")
  OV.disable_recipe({ "angels-wire-coil-silver-casting", "angels-wire-coil-silver-casting-fast" })
  OV.disable_recipe({ "basic-silvered-copper-wire", "angels-wire-coil-silver-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].powder then
else
  angelsmods.functions.hide("powder-silver")
  OV.disable_recipe({ "powder-silver" })
end
