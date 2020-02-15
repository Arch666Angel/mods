local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti
-------------------------------------------------------------------------------
-- MIXTURE --------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].mixture then
else
  OV.disable_technology({"angels-glass-smelting-1", "angels-glass-smelting-2", "angels-glass-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["glass"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-glass", "glass")
    angelsmods.functions.add_flag("angels-plate-glass", "hidden")
    data.raw["recipe"]["angels-plate-glass-2"].normal.main_product= "glass"
    data.raw["recipe"]["angels-plate-glass-2"].expensive.main_product= "glass"
    data.raw["recipe"]["angels-plate-glass-3"].normal.main_product= "glass"
    data.raw["recipe"]["angels-plate-glass-3"].expensive.main_product= "glass"

    OV.patch_recipes({
      {
        name = "quartz-glass",
        energy_required = 10.5,
        normal =
        {
          ingredients =
          {
            { name = "quartz", type = "item", amount = "+3" }
          },
          results =
          {
            { name = "glass", type = "item", amount = "+2" }
          }
        },
        expensive =
        {
          ingredients =
          { {"!!"},
            { name = "quartz", type = "item", amount = 5 * intermediatemulti }
          },
          results =
          {
            { name = "glass", type = "item", amount = "+2" }
          }
        },
        icons = {
          { 
            icon = "__angelssmelting__/graphics/icons/plate-glass.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/ore-silica.png",
            scale = 0.4375,
            shift = { -10, -10},
          },
        },
        icon_size = 32,
        subgroup = "angels-glass-casting",
        order = "d[angels-plate-glass]-a"
      },
    })
  end

  if mods['bobelectronics'] then
    OV.patch_recipes({
      {
        name = "angels-glass-fiber-board",
        results =
        { {"!!"},
          { name = "fibreglass-board", type = "item", amount = 4 },
        },
        icons = {
          {
            icon = "__bobelectronics__/graphics/icons/fibreglass-board.png",
            icon_size = 128,
            scale = 32/128
          },
          {
            icon = "__angelssmelting__/graphics/icons/wire-coil-glass.png",
            scale = 0.4375,
            shift = { -10, -10},
          }
        },
        icon_size = 32,
      }
    })
    OV.add_unlock("angels-glass-smelting-3", "angels-glass-fiber-board")
    OV.add_prereq("advanced-electronics-2", "angels-glass-smelting-3" )
    OV.remove_unlock("advanced-electronics-2", "fibreglass-board")
    OV.disable_recipe({ "fibreglass-board" })
  end
else
  angelsmods.functions.add_flag("angels-plate-glass", "hidden")
  -- todo disable recipes (?)
end
