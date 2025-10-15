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
  angelsmods.functions.hide("angels-platinum-ore")
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
    angelsmods.functions.hide("angels-liquid-molten-platinum")
    OV.disable_recipe({ "angels-liquid-molten-platinum" })
    OV.disable_technology({ "angels-platinum-casting-2", "angels-platinum-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-platinum-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-platinum-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("angels-processed-platinum")
  angelsmods.functions.hide("angels-pellet-platinum")
  angelsmods.functions.hide("angels-liquid-hexachloroplatinic-acid")
  angelsmods.functions.hide("angels-solid-ammonium-chloroplatinate")
  angelsmods.functions.hide("angels-ingot-platinum")
  angelsmods.functions.hide("angels-liquid-molten-platinum")
  OV.disable_recipe({ "angels-platinum-ore-processing", "angels-platinum-processed-processing" })
  OV.disable_recipe({ "angels-pellet-platinum-smelting", "angels-liquid-hexachloroplatinic-acid-smelting" })
  OV.disable_recipe({
    "angels-platinum-ore-smelting",
    "angels-processed-platinum-smelting",
    "angels-solid-ammonium-chloroplatinate-smelting",
  })
  OV.disable_recipe({ "angels-liquid-molten-platinum" })
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
  OV.disable_recipe({ "angels-roll-platinum", "angels-roll-platinum-2" })
  OV.disable_recipe({ "angels-plate-platinum", "angels-plate-platinum-2" })
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].wire then
  OV.patch_recipes({
    {
      name = "bob-processing-electronics",
      ingredients = {
        { type = "item", name = "angels-wire-platinum", amount = "bob-gilded-copper-cable" },
      },
    },
  })
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then
    OV.add_additional_category("angels-wire-platinum", "electronics")
    OV.add_additional_category("angels-wire-platinum-2", "electronics")
  end
else
  angelsmods.functions.hide("angels-wire-platinum")
  angelsmods.functions.hide("angels-wire-coil-platinum")
  OV.disable_recipe({ "angels-wire-coil-platinum", "angels-wire-coil-platinum-2" })
  OV.disable_recipe({ "angels-wire-platinum", "angels-wire-platinum-2" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].powder then
else
  angelsmods.functions.hide("angels-powder-platinum")
  OV.disable_recipe({ "angels-powder-platinum" })
end
