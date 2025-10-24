local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["copper"].plate = true
  angelsmods.trigger.smelting_products["copper"].powder = true
  angelsmods.trigger.smelting_products["copper"].wire = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["copper"] then
  angelsmods.functions.override_item_conditions({
    value = 200,
    list = {
      "copper-ore",
    },
  })
  angelsmods.functions.move_item("copper-ore", "angels-copper", "a")
else
  angelsmods.functions.hide("copper-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].ingot then
  if angelsmods.trigger.smelting_products["copper"].plate or angelsmods.trigger.smelting_products["copper"].wire then
  else
    OV.disable_technology({ "angels-copper-casting-2", "angels-copper-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-copper-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-copper-smelting-2"][property])
    end
  end
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
      enabled = false,
      hidden = true,
      ingredients = {
        { name = "copper-ore", type = "item", amount = "+3" },
      },
      results = {
        { name = "copper-plate", type = "item", amount = "+2" },
      },
      icons = {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
          icon_size = 32,
        },
        {
          icon = "__base__/graphics/icons/copper-ore.png",
          icon_size = 64,
          scale = 32 / 64 * 0.4375,
          shift = { -10, -10 },
        },
      },
      subgroup = "angels-copper-casting",
      order = "j[angels-plate-copper]-b",
    },
  })
  OV.remove_unlock("angels-ore-crushing", "copper-plate")
  angelsmods.functions.move_item("copper-plate", "angels-copper-casting", "j")
  angelsmods.functions.override_item_conditions({
    value = 200,
    list = {
      "copper-plate",
    },
  })
  data.raw["item"]["copper-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png"
  data.raw["item"]["copper-plate"].icon_size = 32
  OV.global_replace_icon(
    "__base__/graphics/icons/plate/copper-plate.png",
    "__angelssmeltinggraphics__/graphics/icons/plate-copper.png"
  )

  OV.patch_recipes({
    {
      name = "angels-ore3-crushed-smelting",
      subgroup = "angels-copper-casting",
      order = "j[angels-plate-copper]-a",
    },
  })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].powder then
else
  angelsmods.functions.hide("angels-powder-copper")
  OV.disable_recipe({ "angels-powder-copper" })
end

-------------------------------------------------------------------------------
-- CABLE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["copper"].wire then
  OV.patch_recipes({
    {
      name = "copper-cable",
      allow_decomposition = false,
      icons = {
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/wire-copper.png",
          icon_size = 32,
        },
        {
          icon = "__angelssmeltinggraphics__/graphics/icons/plate-copper.png",
          icon_size = 32,
          scale = 0.4375,
          shift = { -10, -10 },
        },
      },
      subgroup = "angels-copper-casting",
      order = "k[angels-wire-copper]-a",
    },
  })
  angelsmods.functions.remove_productivity("copper-cable")
  angelsmods.functions.move_item("copper-cable", "angels-copper-casting", "k")
  data.raw["item"]["copper-cable"].icon = "__angelssmeltinggraphics__/graphics/icons/wire-copper.png"
  data.raw["item"]["copper-cable"].icon_size = 32
  OV.global_replace_icon(
    "__base__/graphics/icons/plate/copper-cable.png",
    "__angelssmeltinggraphics__/graphics/icons/wire-copper.png"
  )

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("copper-cable", "electronics")
    OV.add_additional_category("angels-wire-copper-2", "electronics")
  end
else
  -- todo
end
