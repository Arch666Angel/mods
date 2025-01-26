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
    angelsmods.functions.hide("liquid-molten-glass")
    OV.disable_recipe({ "molten-glass-smelting" })
  end
else
  angelsmods.functions.hide("solid-glass-mixture")
  angelsmods.functions.hide("liquid-molten-glass")
  OV.disable_recipe({ "glass-mixture-1", "glass-mixture-2", "glass-mixture-3", "glass-mixture-4" })
  OV.disable_recipe({ "molten-glass-smelting" })
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
    angelsmods.functions.move_item("bob-glass", "angels-glass-casting", "d")
    data.raw["item"]["bob-glass"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png"
    data.raw["item"]["bob-glass"].icon_size = 32

    data.raw["recipe"]["angels-plate-glass-2"].main_product = "bob-glass"
    data.raw["recipe"]["angels-plate-glass-3"].main_product = "bob-glass"

    OV.patch_recipes({
      {
        name = "bob-glass",
        energy_required = 10.5,
        ingredients = {
          { name = "quartz", type = "item", amount = "+3" },
        },
        results = {
          { name = "bob-glass", type = "item", amount = "+2" },
        },
        icons = {
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png",
          },
          {
            icon = "__angelssmeltinggraphics__/graphics/icons/ore-silica.png",
            scale = 0.4375,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
        subgroup = "angels-glass-casting",
        order = "d[angels-plate-glass]-a",
      },
    })
  end
else
  angelsmods.functions.hide("angels-plate-glass")
  OV.disable_recipe({ "angels-plate-glass-1", "angels-plate-glass-2", "angels-plate-glass-3" })
end

-------------------------------------------------------------------------------
-- FIBREGLASS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].fibre then
else
  angelsmods.functions.hide("angels-coil-glass-fiber")
  OV.disable_recipe({ "angels-coil-glass-fiber" })
  OV.disable_recipe({ "angels-coil-glass-fiber-fast" })
end

-------------------------------------------------------------------------------
-- BOARD ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].board then
  if mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
        localised_name = { "item-name.fibreglass-board" },
        results = {
          { "!!" },
          { name = "fibreglass-board", type = "item", amount = 4 },
        },
        icons = {
          {
            icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
            icon_size = 128,
            scale = 32 / 128,
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
    OV.add_prereq("angels-glass-smelting-2", "resin-1")

    -- disable bob variant
    OV.remove_unlock("processing-unit", "fibreglass-board")
    OV.disable_recipe({ "fibreglass-board" })
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
        category = "electronics-with-fluid",
      },
    })
  end
else
  OV.disable_recipe({ "angels-glass-fiber-board" })
end
