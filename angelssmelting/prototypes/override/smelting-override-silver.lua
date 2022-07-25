local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
else
  angelsmods.functions.add_flag("silver-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].ingot then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("solid-silver-nitrate", "silver-nitrate")
    angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
    angelsmods.functions.move_item("silver-nitrate", "angels-silver", "d")
    data.raw["item"]["silver-nitrate"].icon = "__angelssmelting__/graphics/icons/solid-silver-nitrate.png"
    data.raw["item"]["silver-nitrate"].icon_size = 32
    data.raw["item"]["silver-nitrate"].icon_mipmaps = 1
    OV.disable_recipe({"silver-nitrate","silver-from-lead"})
    OV.remove_prereq("battery-3", "nitrogen-processing")
    OV.add_prereq("battery-3", "angels-silver-smelting-2")
  end

  if mods['bobplates'] then
    angelsmods.functions.move_item("silver-oxide", "angels-silver", "e")
    data.raw.item["silver-oxide"].icon = "__angelssmelting__/graphics/icons/solid-silver-oxide.png"
    data.raw.item["silver-oxide"].icon_size = 32
    OV.patch_recipes({ { name = "silver-oxide", subgroup = "angels-silver", order = "e[silver-oxide]", category = "powder-mixing" } })
  end

  if angelsmods.trigger.smelting_products["silver"].plate or
     angelsmods.trigger.smelting_products["silver"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-silver", "hidden")
    OV.disable_recipe({"molten-silver-smelting"})
    OV.disable_technology({"angels-silver-casting-2", "angels-silver-casting-3"})
    -- swap tech tier 1 to ingots
    for _, property in pairs({"icon", "icon_size", "icon_mipmaps", "icons", "localised_name"}) do
      data.raw.technology["angels-silver-smelting-1"][property] = util.table.deepcopy(data.raw.technology["angels-silver-smelting-2"][property])
    end
  end
else
  angelsmods.functions.add_flag("processed-silver", "hidden")
  angelsmods.functions.add_flag("pellet-silver", "hidden")
  angelsmods.functions.add_flag("solid-silver-nitrate", "hidden")
  angelsmods.functions.add_flag("solid-sodium-silver-cyanide", "hidden")
  angelsmods.functions.add_flag("cathode-silver", "hidden")
  angelsmods.functions.add_flag("ingot-silver", "hidden")
  angelsmods.functions.add_flag("liquid-molten-silver", "hidden")
  OV.disable_recipe({"silver-ore-processing", "silver-processed-processing"})
  OV.disable_recipe({"processed-silver-smelting", "pellet-silver-smelting", "solid-sodium-silver-cyanide-smelting"})
  OV.disable_recipe({"silver-ore-smelting", "solid-silver-nitrate-smelting", "cathode-silver-smelting"})
  OV.disable_recipe({"molten-silver-smelting"})
  OV.disable_technology({"angels-silver-smelting-1", "angels-silver-smelting-2", "angels-silver-smelting-3"})
  OV.disable_technology({"angels-silver-casting-2", "angels-silver-casting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-silver", "silver-plate")
    angelsmods.functions.add_flag("angels-plate-silver", "hidden")
    angelsmods.functions.move_item("silver-plate", "angels-silver-casting", "m")
    data.raw["item"]["silver-plate"].icon = "__angelssmelting__/graphics/icons/plate-silver.png"
    data.raw["item"]["silver-plate"].icon_size = 32
    data.raw["item"]["silver-plate"].icon_mipmaps = 1

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
        order = "m[angels-plate-silver]-a"
      },
    })
    OV.hide_recipe({"silver-plate"})
  end
  
  if mods["bobelectronics"] then
    OV.patch_recipes(
      {
        {
          name = "superior-circuit-board",
          ingredients =
          {
            {type = "item", name = "silver-plate", amount = "gold-plate"},
          }
        }
      }
    )
  end

else
  angelsmods.functions.add_flag("angels-plate-silver", "hidden")
  angelsmods.functions.add_flag("angels-roll-silver", "hidden")
  OV.disable_recipe({"roll-silver-casting", "roll-silver-casting-fast"})
  OV.disable_recipe({"angels-plate-silver", "angels-roll-silver-converting"})
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].wire then

  -- advanced circuits require silver wire
  if mods["bobelectronics"] then
    OV.patch_recipes(
      {
        {
          name = "electronic-components",
          ingredients =
          {
            {type = "item", name = "angels-wire-silver", amount = "tinned-copper-cable"},
          }
        }
      }
    )
  else
    OV.patch_recipes(
      {
        {
          name = "advanced-circuit",
          ingredients =
          {
            {"!!"},
            {type = "item", name = "angels-wire-silver", amount = 2},
            {type = "item", name = "plastic-bar", amount = 2},
            {type = "item", name = "electronic-circuit", amount = 2}
          }
        }
      }
    )
  end
  OV.add_prereq("advanced-electronics", "angels-silver-smelting-1")

  if mods["bobassembly"] and mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "basic-silvered-copper-wire",
        category = "electronics"
      },
      {
        name = "angels-wire-coil-silver-converting",
        category = "electronics-machine"
      }
    })
  end
else
  angelsmods.functions.add_flag("angels-wire-silver", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-silver", "hidden")
  OV.disable_recipe({"angels-wire-coil-silver-casting", "angels-wire-coil-silver-casting-fast"})
  OV.disable_recipe({"basic-silvered-copper-wire", "angels-wire-coil-silver-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silver"].powder then
else
  angelsmods.functions.add_flag("powder-silver", "hidden")
  OV.disable_recipe({ "powder-silver" })
end