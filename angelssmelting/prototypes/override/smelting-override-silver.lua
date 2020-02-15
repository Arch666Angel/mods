local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-silver-nitrate", "silver-nitrate")
    angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
    OV.disable_recipe({"silver-nitrate"})

    angelsmods.functions.move_item("silver-oxide", "angels-silver-casting", "m[silver-oxide]")
    OV.patch_recipes({ { name = "silver-oxide", subgroup = "angels-silver-casting", order = "m[silver-oxide]" } })
  end
else
  angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
  OV.disable_technology({"angels-silver-smelting-1", "angels-silver-smelting-2", "angels-silver-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-silver", "silver-plate")
    angelsmods.functions.add_flag("angels-plate-silver", "hidden")

    OV.patch_recipes({
      {
        name = "silver-plate",
        energy_required = 10.5,
        normal =
        {
          ingredients =
          {
            { name = "silver-ore", type = "item", amount = "+3" }
          }, 
          results =
          {
            { name = "silver-plate", type = "item", amount = "+2" }
          }
        },
        expensive =
        {
          ingredients =
          { {"!!"},
            { name = "silver-ore", type = "item", amount = 5 * intermediatemulti }
          },
          results =
          {
            { name = "silver-plate", type = "item", amount = "+2" }
          }
        },
        icons = {
          { 
            icon = "__angelssmelting__/graphics/icons/plate-silver.png",
          },
          {
            icon = "__angelssmelting__/graphics/icons/ore-silver.png",
            scale = 0.4375,
            shift = { -10, -10},
          },
        },
        icon_size = 32,
        subgroup = "angels-silver-casting",
        order = "k[angels-plate-silver]-a"
      },
    })
  end
else
  -- disable roll and plate recipes
  angelsmods.functions.add_flag("angels-plate-silver", "hidden")
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].wire then
else
  -- disable coil and wire recipes
end