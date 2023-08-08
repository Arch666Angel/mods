local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
    angelsmods.functions.add_flag("liquid-molten-glass", "hidden")
    OV.disable_recipe({ "molten-glass-smelting" })
  end
else
  angelsmods.functions.add_flag("solid-glass-mixture", "hidden")
  angelsmods.functions.add_flag("liquid-molten-glass", "hidden")
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
    OV.global_replace_item("angels-plate-glass", "glass")
    angelsmods.functions.add_flag("angels-plate-glass", "hidden")
    angelsmods.functions.move_item("glass", "angels-glass-casting", "d")
    data.raw["item"]["glass"].icon = "__angelssmelting__/graphics/icons/plate-glass.png"
    data.raw["item"]["glass"].icon_size = 32
    data.raw["item"]["glass"].icon_mipmaps = 1

    data.raw["recipe"]["angels-plate-glass-2"].normal.main_product = "glass"
    data.raw["recipe"]["angels-plate-glass-2"].expensive.main_product = "glass"
    data.raw["recipe"]["angels-plate-glass-3"].normal.main_product = "glass"
    data.raw["recipe"]["angels-plate-glass-3"].expensive.main_product = "glass"

    OV.patch_recipes({
      {
        name = "quartz-glass",
        energy_required = 10.5,
        normal = {
          ingredients = {
            { name = "quartz", type = "item", amount = "+3" },
          },
          results = {
            { name = "glass", type = "item", amount = "+2" },
          },
        },
        expensive = {
          ingredients = {
            { "!!" },
            { name = "quartz", type = "item", amount = 5 * intermediatemulti },
          },
          results = {
            { name = "glass", type = "item", amount = "+2" },
          },
        },
        icons = {
          {
            icon = "__angelssmelting__/graphics/icons/plate-glass.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/ore-silica.png",
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
  angelsmods.functions.add_flag("angels-plate-glass", "hidden")
  OV.disable_recipe({ "angels-plate-glass-1", "angels-plate-glass-2", "angels-plate-glass-3" })
end

-------------------------------------------------------------------------------
-- FIBREGLASS -----------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].fibre then
  if mods["bobelectronics"] then
    angelsmods.functions.move_item("angels-glass-fiber-board", "bob-boards", "c-a3[fibreglass-board]", "recipe")
  else
    --[[OV.patch_recipes(
      {
        {
          name = "angels-glass-fiber-board",
          results = {
            {"!!"},
            {name = "angels-glass-fiber-board", type = "item", amount = 4}
          },
        }
      }
    )]]
  end
else
  angelsmods.functions.add_flag("angels-coil-glass-fiber", "hidden")
  OV.disable_recipe({ "angels-coil-glass-fiber" })
end

-------------------------------------------------------------------------------
-- BOARD ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].board then
  if mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
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
            icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
            icon_size = 64,
            icon_mipmaps = 4,
            scale = 0.4375 * 0.5,
            shift = { -10, -10 },
          },
        },
        icon_size = 32,
      },
    })
    OV.add_unlock("angels-glass-smelting-2", "angels-glass-fiber-board")
    OV.add_prereq("advanced-electronics-2", "angels-glass-smelting-2")
    OV.add_prereq("angels-glass-smelting-2", "resin-1")

    -- disable bob variant
    OV.remove_unlock("advanced-electronics-2", "fibreglass-board")
    OV.disable_recipe({ "fibreglass-board" })
    if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value == true then
      OV.patch_recipes({
        {
          name = "angels-glass-fiber-board",
          category = "electronics-with-fluid",
        }
      })
    end
  end
else
  OV.disable_recipe({ "angels-glass-fiber-board" })
end
