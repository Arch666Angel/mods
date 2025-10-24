local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
  angelsmods.trigger.smelting_products["titanium"].plate = true
  angelsmods.trigger.smelting_products["titanium"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["titanium"] then
  if mods["bobores"] then
    local angel_ore = data.raw.item["angels-rutile-ore"]
    local bob_ore = data.raw.item["bob-rutile-ore"]
    OV.global_replace_item(angel_ore.name, bob_ore.name)
    OV.copy_item_properties(angel_ore.name, bob_ore.name)
    angelsmods.functions.hide(angel_ore.name)
  end
else
  angelsmods.functions.hide("angels-rutile-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods["bobplates"] then
    OV.add_prereq("bob-titanium-processing", "angels-titanium-smelting-1")
  end

  if angelsmods.trigger.smelting_products["titanium"].plate then
    if not angelsmods.trigger.smelting_products["tin"].ingot or not angelsmods.trigger.smelting_products["aluminium"].ingot then
      OV.disable_recipe({ "angels-liquid-molten-titanium-4" })
      OV.remove_prereq("angels-titanium-casting-3", "angels-tin-smelting-3")
      OV.remove_prereq("angels-titanium-casting-3", "angels-aluminium-smelting-3")
      OV.patch_recipes({
        {
          name = "angels-liquid-molten-titanium-5",
          icons = angelsmods.functions.add_number_icon_layer(
            angelsmods.functions.get_object_icons("angels-liquid-molten-titanium"),
            4,
            angelsmods.smelting.number_tint
          )
        }
      })
    end
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-titanium")
    OV.disable_recipe({
      "angels-liquid-molten-titanium",
      "angels-liquid-molten-titanium-2",
      "angels-liquid-molten-titanium-3",
      "angels-liquid-molten-titanium-4",
      "angels-liquid-molten-titanium-5",
    })
    OV.disable_technology({ "angels-titanium-casting-2", "angels-titanium-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-titanium-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-titanium-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-titanium")
  angelsmods.functions.hide("angels-pellet-titanium")
  angelsmods.functions.hide("angels-liquid-titanium-tetrachloride")
  angelsmods.functions.hide("angels-sponge-titanium")
  angelsmods.functions.hide("angels-ingot-titanium")
  angelsmods.functions.hide("angels-liquid-molten-titanium")
  OV.disable_recipe({ "angels-processed-titanium", "angels-pellet-titanium" })
  OV.disable_recipe({ "angels-liquid-titanium-tetrachloride", "angels-liquid-titanium-tetrachloride-2", "angels-sponge-titanium" })
  OV.disable_recipe({ "angels-ingot-titanium", "angels-ingot-titanium-2" })
  OV.disable_recipe({
    "angels-liquid-molten-titanium",
    "angels-liquid-molten-titanium-2",
    "angels-liquid-molten-titanium-3",
    "angels-liquid-molten-titanium-4",
    "angels-liquid-molten-titanium-5",
  })
  OV.disable_technology({ "angels-titanium-smelting-1", "angels-titanium-smelting-2", "angels-titanium-smelting-3" })
  OV.disable_technology({ "angels-titanium-casting-2", "angels-titanium-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-titanium", "bob-titanium-plate")
    angelsmods.functions.hide("angels-plate-titanium")
    OV.copy_item_properties("angels-plate-titanium", "bob-titanium-plate")
    OV.disable_recipe({ "bob-titanium-plate" })
  end
else
  angelsmods.functions.hide("angels-plate-titanium")
  angelsmods.functions.hide("angels-roll-titanium")
  OV.disable_recipe({ "angels-roll-titanium", "angels-roll-titanium-2" })
  OV.disable_recipe({ "angels-plate-titanium", "angels-plate-titanium-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].powder then
else
  angelsmods.functions.hide("angels-powder-titanium")
  OV.disable_recipe({ "angels-powder-titanium" })
end
