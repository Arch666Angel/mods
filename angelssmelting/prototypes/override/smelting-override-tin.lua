local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if not angelsmods.trigger.smelting_products["tin"].ingot then
  OV.disable_technology({"angels-tin-smelting-1", "angels-tin-smelting-2", "angels-tin-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].plate then
  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angelsore6-crushed-smelting",
        subgroup = "angels-tin-casting",
        order = "g[angels-plate-tin]-a"
      }
    })
  end

  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-tin", "tin-plate")
    angelsmods.functions.add_flag("angels-plate-tin", "hidden")

    OV.patch_recipes({
      {
        name = "tin-plate",
        energy_required = 10.5,
        normal =
        {
          ingredients =
          {
            { name = "tin-ore", type = "item", amount = "+3" }
          },
          results =
          {
            { name = "tin-plate", type = "item", amount = "+2" }
          }
        },
        expensive =
        {
          ingredients =
          { {"!!"},
            { name = "tin-ore", type = "item", amount = 5 * intermediatemulti }
          },
          results =
          {
            { name = "tin-plate", type = "item", amount = "+2" }
          }
        },
        icons = {
          { 
            icon = "__angelssmelting__/graphics/icons/plate-tin.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/ore-tin.png",
            scale = 0.4375,
            shift = { -10, -10},
          },
        },
        icon_size = 32,
        subgroup = "angels-tin-casting",
        order = "g[angels-plate-tin]-b"
      },
    })
  end
else
  angelsmods.functions.add_flag("angels-plate-tin", "hidden")
  -- todo: disable roll and plate recipes
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["tin"].wire then
  if data.raw.item["tinned-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-tin", "tinned-copper-cable")
    angelsmods.functions.add_flag("angels-wire-tin", "hidden")
    angelsmods.functions.move_item("tinned-copper-cable", "angels-tin-casting", "h")
    OV.patch_recipes({
      {
        name = "tinned-copper-cable",
        subgroup = "angels-tin-casting",
        order = "h[angels-wire-tin]-a",
        icons = {
          {
            icon = "__angelssmelting__/graphics/icons/wire-tin.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/plate-tin.png",
            scale = 0.4375,
            shift = { -10, -10},
          }
        },
        icon_size = 32,
      },
      {
        name = "angels-wire-coil-tin-converting",
        category = "electronics-machine"
      },
    })
  end
else
  angelsmods.functions.add_flag("angels-wire-tin", "hidden")
  -- todo: disable coil and wire recipes
end