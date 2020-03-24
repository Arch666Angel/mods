local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["copper"].plate = true
  angelsmods.trigger.smelting_products["copper"].powder = true
  angelsmods.trigger.smelting_products["copper"].wire = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
angelsmods.functions.override_item_conditions({
  value = 200,
  list = {
    "copper-ore",
  }
})
angelsmods.functions.move_item("copper-ore", "angels-copper", "a")

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].ingot then
  --todo
else
  --todo
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].plate then
  OV.patch_recipes({
    {
      name = "copper-plate",
      energy_required = 10.5,
      normal =
      {
        ingredients =
        {
          { name = "copper-ore", type = "item", amount = "+3" }
        },
        results =
        {
          { name = "copper-plate", type = "item", amount = "+2" }
        }
      },
      expensive =
      {
        ingredients =
        { {"!!"},
          { name = "copper-ore", type = "item", amount = 5 * intermediatemulti }
        },
        results =
        {
          { name = "copper-plate", type = "item", amount = "+2" }
        }
      },
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/plate-copper.png",
        },
        {
          icon = "__base__/graphics/icons/copper-ore.png",
          icon_size = 64,
          scale = 32/64 * 0.4375,
          shift = { -10, -10},
        }
      },
      icon_size = 32,
      subgroup = "angels-copper-casting",
      order = "j[angels-plate-copper]-b",
    },
  })
  OV.global_replace_item("angels-plate-copper", "copper-plate")
  angelsmods.functions.add_flag("angels-plate-copper", "hidden")

  if angelsmods.refining then
    OV.patch_recipes({
      {
        name = "angelsore3-crushed-smelting",
        subgroup = "angels-copper-casting",
        order = "j[angels-plate-copper]-a"
      },
    })
  end
else
  -- todo
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].powder then
else
  angelsmods.functions.add_flag("powder-copper", "hidden")
  OV.disable_recipe({ "powder-copper" })
end

-------------------------------------------------------------------------------
-- CABLE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].wire then
  OV.patch_recipes({
    {
      name = "copper-cable",
      icons = {
        { 
          icon = "__angelssmelting__/graphics/icons/wire-copper.png",
        },
        {
          icon = "__angelssmelting__/graphics/icons/plate-copper.png",
          scale = 0.4375,
          shift = { -10, -10},
        }
      },
      icon_size = 32,
      subgroup = "angels-copper-casting",
      order = "k[angels-wire-copper]-a"
    },
  })
  OV.global_replace_item("angels-wire-copper", "copper-cable")
  angelsmods.functions.add_flag("angels-wire-copper", "hidden")

  if mods['bobassembly'] then
    OV.patch_recipes({
      {
        name = "copper-cable",
        category = "electronics"
      },
      {
        name = "angels-wire-coil-copper-converting",
        category = "electronics-machine"
      }
    })
  end
else
  -- todo
end
