local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["glass"].mixture = true
  angelsmods.trigger.smelting_products["glass"].plate = true
  angelsmods.trigger.smelting_products["glass"].fibre = true
  angelsmods.trigger.smelting_products["glass"].board = true
end

-------------------------------------------------------------------------------
-- MIXTURE --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].mixture then
  if
    angelsmods.trigger.smelting_products["glass"].plate
    or angelsmods.trigger.smelting_products["glass"].fibre
    or angelsmods.trigger.smelting_products["glass"].board
  then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("angels-liquid-molten-glass")
    OV.disable_recipe({ "angels-liquid-molten-glass" })
  end
else
  angelsmods.functions.hide("angels-solid-glass-mixture")
  angelsmods.functions.hide("angels-liquid-molten-glass")
  OV.disable_recipe({ "angels-solid-glass-mixture", "angels-solid-glass-mixture-2", "angels-solid-glass-mixture-3", "angels-solid-glass-mixture-4" })
  OV.disable_recipe({ "angels-liquid-molten-glass" })
  OV.disable_technology({ "angels-glass-smelting-1", "angels-glass-smelting-2", "angels-glass-smelting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-glass", "bob-glass")
    angelsmods.functions.hide("angels-plate-glass")
    OV.copy_item_properties("angels-plate-glass", "bob-glass")

    data.raw["recipe"]["angels-plate-glass-2"].main_product = "bob-glass"
    data.raw["recipe"]["angels-plate-glass-3"].main_product = "bob-glass"

    OV.patch_recipes({
      {
        name = "bob-glass",
        energy_required = 10.5,
        ingredients = {
          { name = "bob-quartz", type = "item", amount = "+3" },
        },
        results = {
          { name = "bob-glass", type = "item", amount = "+2" },
        },
        icons = angelsmods.functions.add_icon_layer(
          angelsmods.functions.get_object_icons("bob-glass"),
          angelsmods.functions.get_object_icons("bob-quartz"),
          { -10, -10 },
          0.4375
        ),
        icon_size = 32,
        subgroup = "angels-glass-casting",
        order = "d[angels-plate-glass]-a",
      },
    })
  end
else
  angelsmods.functions.hide("angels-plate-glass")
  OV.disable_recipe({ "angels-plate-glass", "angels-plate-glass-2", "angels-plate-glass-3" })
  OV.remove_prereq("angels-glass-smelting-3", "angels-tin-casting-3")
end

-------------------------------------------------------------------------------
-- FIBREGLASS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].fibre then
else
  angelsmods.functions.hide("angels-coil-glass-fiber")
  OV.disable_recipe({ "angels-coil-glass-fiber" })
  OV.disable_recipe({ "angels-coil-glass-fiber-2" })
end

-------------------------------------------------------------------------------
-- BOARD ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].board then
  if mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
        localised_name = { "item-name.bob-fibreglass-board" },
        results = {
          { "!!" },
          { name = "bob-fibreglass-board", type = "item", amount = 4 },
        },
        icons = {
          {
            icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
            icon_size = 64,
            scale = 32 / 64,
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-glass.png",
            icon_size = 64,
            scale = 0.4375 * 0.5,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        subgroup = "bob-boards",
        order = "c-a3[fibreglass-board]",
      },
    })
    OV.add_unlock("angels-glass-smelting-2", "angels-glass-fiber-board")
    OV.add_prereq("processing-unit", "angels-glass-smelting-2")
    OV.add_prereq("angels-glass-smelting-2", "angels-resin-1")

    -- disable bob variant
    OV.remove_unlock("processing-unit", "bob-fibreglass-board")
    OV.disable_recipe({ "bob-fibreglass-board" })
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-glass-fiber-board", "electronics-with-fluid")
  end
else
  OV.disable_recipe({ "angels-glass-fiber-board" })
end
