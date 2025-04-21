local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["platinum"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["platinum"] then
else
  angelsmods.functions.hide("platinum-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].ingot then
  if
    angelsmods.trigger.smelting_products["platinum"].plate or angelsmods.trigger.smelting_products["platinum"].wire
  then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-platinum")
    OV.disable_recipe({ "molten-platinum-smelting" })
    OV.disable_technology({ "angels-platinum-casting-2", "angels-platinum-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-platinum-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-platinum-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-platinum")
  angelsmods.functions.hide("pellet-platinum")
  angelsmods.functions.hide("liquid-hexachloroplatinic-acid")
  angelsmods.functions.hide("solid-ammonium-chloroplatinate")
  angelsmods.functions.hide("ingot-platinum")
  angelsmods.functions.hide("liquid-molten-platinum")
  OV.disable_recipe({ "platinum-ore-processing", "platinum-processed-processing" })
  OV.disable_recipe({ "pellet-platinum-smelting", "liquid-hexachloroplatinic-acid-smelting" })
  OV.disable_recipe({
    "platinum-ore-smelting",
    "processed-platinum-smelting",
    "solid-ammonium-chloroplatinate-smelting",
  })
  OV.disable_recipe({ "molten-platinum-smelting" })
  OV.disable_technology({ "angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3" })
  OV.disable_technology({ "angels-platinum-casting-2", "angels-platinum-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].plate then
else
  angelsmods.functions.hide("angels-plate-platinum")
  angelsmods.functions.hide("angels-roll-platinum")
  OV.disable_recipe({ "roll-platinum-casting", "roll-platinum-casting-fast" })
  OV.disable_recipe({ "angels-plate-platinum", "angels-roll-platinum-converting" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].wire then
  OV.patch_recipes({
    {
      name = "processing-electronics",
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = "gilded-copper-cable" },
      },
    },
  })
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.patch_recipes({
      {
        name = "basic-platinated-copper-wire",
        category = "bob-electronics",
      },
      {
        name = "angels-wire-coil-platinum-converting",
        category = "bob-electronics-machine",
      },
    })
  end
else
  angelsmods.functions.hide("angels-wire-platinum")
  angelsmods.functions.hide("angels-wire-coil-platinum")
  OV.disable_recipe({ "angels-wire-coil-platinum-casting", "angels-wire-coil-platinum-casting-fast" })
  OV.disable_recipe({ "basic-platinated-copper-wire", "angels-wire-coil-platinum-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].powder then
else
  angelsmods.functions.hide("powder-platinum")
  OV.disable_recipe({ "powder-platinum" })
end
