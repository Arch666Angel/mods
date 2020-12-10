local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["tin"].wire = true
  angelsmods.trigger.smelting_products["tin"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["tin"] then
else
  angelsmods.functions.add_flag("tin-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].ingot then
  if angelsmods.trigger.smelting_products["tin"].plate or angelsmods.trigger.smelting_products["tin"].wire then
  else
    -- no need for molten recipe
  angelsmods.functions.add_flag("liquid-molten-tin", "hidden")
  OV.disable_recipe({"molten-tin-smelting"})
  -- no need for the strand casting
  OV.remove_prereq("angels-tin-smelting-2", "strand-casting-1")
  OV.remove_prereq("angels-tin-smelting-3", "strand-casting-2")
  end
else
  angelsmods.functions.add_flag("processed-tin", "hidden")
  angelsmods.functions.add_flag("pellet-tin", "hidden")
  angelsmods.functions.add_flag("ingot-tin", "hidden")
  angelsmods.functions.add_flag("liquid-molten-tin", "hidden")
  OV.disable_recipe({"tin-ore-processing", "tin-processed-processing"})
  OV.disable_recipe({"tin-ore-smelting", "processed-tin-smelting", "pellet-tin-smelting"})
  OV.disable_recipe({"molten-tin-smelting"})
  OV.disable_technology({"angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].plate then
  if angelsmods.refining then
    OV.patch_recipes(
      {
        {
          name = "angelsore6-crushed-smelting",
          subgroup = "angels-tin-casting",
          order = "i[angels-plate-tin]-a"
        }
      }
    )
  end

  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-tin", "tin-plate")
    angelsmods.functions.add_flag("angels-plate-tin", "hidden")

    OV.patch_recipes(
      {
        {
          name = "tin-plate",
          energy_required = 10.5,
          normal = {
            enabled = false,
            ingredients = {
              {name = "tin-ore", type = "item", amount = "+3"}
            },
            results = {
              {name = "tin-plate", type = "item", amount = "+2"}
            }
          },
          expensive = {
            enabled = false,
            ingredients = {
              {"!!"},
              {name = "tin-ore", type = "item", amount = 5 * intermediatemulti}
            },
            results = {
              {name = "tin-plate", type = "item", amount = "+2"}
            }
          },
          icons = {
            {
              icon = "__angelssmelting__/graphics/icons/plate-tin.png"
            },
            {
              icon = "__angelssmelting__/graphics/icons/ore-tin.png",
              scale = 0.4375,
              shift = {-10, -10}
            }
          },
          icon_size = 32,
          subgroup = "angels-tin-casting",
          order = "i[angels-plate-tin]-b"
        }
      }
    )
  end
else
  angelsmods.functions.add_flag("angels-plate-tin", "hidden")
  angelsmods.functions.add_flag("angels-roll-tin", "hidden")
  OV.disable_recipe({"roll-tin-casting", "roll-tin-casting-fast"})
  OV.disable_recipe({"angels-plate-tin", "angels-roll-tin-converting"})
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].wire then
  if data.raw.item["tinned-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-tin", "tinned-copper-cable")
    angelsmods.functions.add_flag("angels-wire-tin", "hidden")
    angelsmods.functions.move_item("tinned-copper-cable", "angels-tin-casting", "j")
    OV.disable_recipe({"tinned-copper-cable"})
    if mods["bobassembly"] then
      OV.patch_recipes(
        {
          {
            name = "basic-tinned-copper-wire",
            category = "electronics"
          },
          {
            name = "angels-wire-coil-tin-converting",
            category = "electronics-machine"
          }
        }
      )
    end
  end
else
  angelsmods.functions.add_flag("angels-wire-tin", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-tin", "hidden")
  OV.disable_recipe({"angels-wire-coil-tin-casting", "angels-wire-coil-tin-casting-fast"})
  OV.disable_recipe({"basic-tinned-copper-wire", "angels-wire-coil-tin-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].powder then
else
  angelsmods.functions.add_flag("powder-tin", "hidden")
  OV.disable_recipe({"powder-tin"})
end
