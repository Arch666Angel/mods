local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["gold"].ingot = true
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["gold"].wire = true
  angelsmods.trigger.smelting_products["gold"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["gold"] then
else
  angelsmods.functions.add_flag("gold-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].ingot then
  if angelsmods.trigger.smelting_products["gold"].plate or angelsmods.trigger.smelting_products["gold"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.add_flag("liquid-molten-gold", "hidden")
    OV.disable_recipe({ "molten-gold-smelting" })
    OV.disable_technology({ "angels-gold-casting-2", "angels-gold-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icon_mipmaps", "icons", "localised_name" }) do
      data.raw.technology["angels-gold-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-gold-smelting-2"][property])
    end
  end
else
  angelsmods.functions.add_flag("processed-gold", "hidden")
  angelsmods.functions.add_flag("pellet-gold", "hidden")
  angelsmods.functions.add_flag("solid-sodium-gold-cyanide", "hidden")
  angelsmods.functions.add_flag("liquid-chlorauric-acid", "hidden")
  angelsmods.functions.add_flag("cathode-gold", "hidden")
  angelsmods.functions.add_flag("ingot-gold", "hidden")
  angelsmods.functions.add_flag("liquid-molten-gold", "hidden")
  OV.disable_recipe({ "gold-ore-processing", "gold-processed-processing" })
  OV.disable_recipe({
    "pellet-gold-smelting",
    "liquid-chlorauric-acid",
    "processed-gold-smelting",
    "solid-sodium-gold-cyanide-smelting",
  })
  OV.disable_recipe({ "gold-ore-smelting", "cathode-gold-smelting" })
  OV.disable_recipe({ "molten-gold-smelting" })
  OV.disable_technology({ "angels-gold-smelting-1", "angels-gold-smelting-2", "angels-gold-smelting-3" })
  OV.disable_technology({ "angels-gold-casting-2", "angels-gold-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.hide_recipe("bob-gold-plate")
    OV.global_replace_item("angels-plate-gold", "gold-plate")
    angelsmods.functions.add_flag("angels-plate-gold", "hidden")
    angelsmods.functions.move_item("gold-plate", "angels-gold-casting", "l")
    data.raw["item"]["gold-plate"].icon = "__angelssmelting__/graphics/icons/plate-gold.png"
    data.raw["item"]["gold-plate"].icon_size = 32
    data.raw["item"]["gold-plate"].icon_mipmaps = 1

    OV.global_replace_technology("gold-processing", "angels-gold-smelting-1")
  end
else
  angelsmods.functions.add_flag("angels-plate-gold", "hidden")
  angelsmods.functions.add_flag("angels-roll-gold", "hidden")
  OV.disable_recipe({ "roll-gold-casting", "roll-gold-casting-fast" })
  OV.disable_recipe({ "angels-plate-gold", "angels-roll-gold-converting" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].wire then
  if data.raw.item["gilded-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-gold", "gilded-copper-cable")
    angelsmods.functions.add_flag("angels-wire-gold", "hidden")
    angelsmods.functions.move_item("gilded-copper-cable", "angels-gold-casting", "m")
    OV.disable_recipe({ "gilded-copper-cable" })
    data.raw["item"]["gilded-copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-gold.png"
    data.raw["item"]["gilded-copper-cable"].icon_size = 32
    data.raw["item"]["gilded-copper-cable"].icon_mipmaps = 1
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      "__angelssmelting__/graphics/icons/wire-gold.png"
    )

    OV.patch_recipes({
      {
        name = "intergrated-electronics",
        ingredients = {
          {
            type = "item",
            name = angelsmods.trigger.smelting_products["platinum"].wire and "gilded-copper-cable" or "insulated-cable",
            amount = "tinned-copper-cable" or 2,
          },
        },
      },
    })
  else
    OV.patch_recipes({
      {
        name = "processing-unit",
        ingredients = {
          { type = "item", name = "angels-wire-gold", amount = 2 },
        },
      },
    })
    OV.add_prereq("advanced-electronics-2", "angels-gold-smelting-1")
  end

  if mods["bobassembly"] and mods["bobelectronics"] then
    OV.patch_recipes({
      {
        name = "angels-wire-gold",
        category = "electronics",
      },
      {
        name = "angels-wire-coil-gold-converting",
        category = "electronics-machine",
      },
    })
  end
else
  angelsmods.functions.add_flag("angels-wire-gold", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-gold", "hidden")
  OV.disable_recipe({ "angels-wire-coil-gold-casting", "angels-wire-coil-gold-casting-fast" })
  OV.disable_recipe({ "angels-wire-gold", "angels-wire-coil-gold-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].powder then
else
  angelsmods.functions.add_flag("powder-gold", "hidden")
  OV.disable_recipe({ "powder-gold" })
end
