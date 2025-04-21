local OV = angelsmods.functions.OV

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
  angelsmods.functions.hide("gold-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].ingot then
  if angelsmods.trigger.smelting_products["gold"].plate or angelsmods.trigger.smelting_products["gold"].wire then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-gold")
    OV.disable_recipe({ "molten-gold-smelting" })
    OV.disable_technology({ "angels-gold-casting-2", "angels-gold-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-gold-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-gold-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-gold")
  angelsmods.functions.hide("pellet-gold")
  angelsmods.functions.hide("solid-sodium-gold-cyanide")
  angelsmods.functions.hide("liquid-chlorauric-acid")
  angelsmods.functions.hide("cathode-gold")
  angelsmods.functions.hide("ingot-gold")
  angelsmods.functions.hide("liquid-molten-gold")
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
    OV.global_replace_item("angels-plate-gold", "bob-gold-plate")
    angelsmods.functions.hide("angels-plate-gold")
    angelsmods.functions.move_item("bob-gold-plate", "angels-gold-casting", "l")
    data.raw["item"]["bob-gold-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-gold.png"
    data.raw["item"]["bob-gold-plate"].icon_size = 32

    OV.global_replace_technology("gold-processing", "angels-gold-smelting-1")
  end
else
  angelsmods.functions.hide("angels-plate-gold")
  angelsmods.functions.hide("angels-roll-gold")
  OV.disable_recipe({ "roll-gold-casting", "roll-gold-casting-fast" })
  OV.disable_recipe({ "angels-plate-gold", "angels-roll-gold-converting" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].wire then
  if data.raw.item["bob-gilded-copper-cable"] then -- bob electronics
    OV.global_replace_item("angels-wire-gold", "bob-gilded-copper-cable")
    angelsmods.functions.hide("angels-wire-gold")
    angelsmods.functions.move_item("bob-gilded-copper-cable", "angels-gold-casting", "m")
    OV.disable_recipe({ "bob-gilded-copper-cable" })
    data.raw["item"]["bob-gilded-copper-cable"].icon = "__angelssmeltinggraphics__/graphics/icons/wire-gold.png"
    data.raw["item"]["bob-gilded-copper-cable"].icon_size = 32
    OV.global_replace_icon(
      "__bobelectronics__/graphics/icons/gilded-copper-cable.png",
      "__angelssmeltinggraphics__/graphics/icons/wire-gold.png"
    )

    OV.patch_recipes({
      {
        name = "intergrated-electronics",
        ingredients = {
          {
            type = "item",
            name = angelsmods.trigger.smelting_products["platinum"].wire and "bob-gilded-copper-cable" or "bob-insulated-cable",
            amount = "bob-tinned-copper-cable",
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
    OV.add_prereq("processing-unit", "angels-gold-smelting-1")
  end

  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.patch_recipes({
      {
        name = "angels-wire-gold",
        category = "bob-electronics",
      },
      {
        name = "angels-wire-coil-gold-converting",
        category = "bob-electronics-machine",
      },
    })
  end
else
  angelsmods.functions.hide("angels-wire-gold")
  angelsmods.functions.hide("angels-wire-coil-gold")
  OV.disable_recipe({ "angels-wire-coil-gold-casting", "angels-wire-coil-gold-casting-fast" })
  OV.disable_recipe({ "angels-wire-gold", "angels-wire-coil-gold-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["gold"].powder then
else
  angelsmods.functions.hide("powder-gold")
  OV.disable_recipe({ "powder-gold" })
end
