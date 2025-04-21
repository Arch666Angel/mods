local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
  angelsmods.trigger.smelting_products["titanium"].plate = true
  angelsmods.trigger.smelting_products["titanium"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["titanium"] then
else
  angelsmods.functions.hide("rutile-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods["bobplates"] then
    OV.add_prereq("titanium-processing", "angels-titanium-smelting-1")
  end

  if angelsmods.trigger.smelting_products["titanium"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-titanium")
    OV.disable_recipe({
      "molten-titanium-smelting-1",
      "molten-titanium-smelting-2",
      "molten-titanium-smelting-3",
      "molten-titanium-smelting-4",
      "molten-titanium-smelting-5",
    })
    OV.disable_technology({ "angels-titanium-casting-2", "angels-titanium-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-titanium-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-titanium-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-titanium")
  angelsmods.functions.hide("pellet-titanium")
  angelsmods.functions.hide("liquid-titanium-tetrachloride")
  angelsmods.functions.hide("sponge-titanium")
  angelsmods.functions.hide("ingot-titanium")
  angelsmods.functions.hide("liquid-molten-titanium")
  OV.disable_recipe({ "titanium-ore-processing", "titanium-processed-processing" })
  OV.disable_recipe({ "titanium-ore-smelting", "processed-titanium-smelting", "liquid-titanium-tetrachloride-smelting" })
  OV.disable_recipe({ "sponge-titanium-smelting", "pellet-titanium-smelting" })
  OV.disable_recipe({
    "molten-titanium-smelting-1",
    "molten-titanium-smelting-2",
    "molten-titanium-smelting-3",
    "molten-titanium-smelting-4",
    "molten-titanium-smelting-5",
  })
  OV.disable_technology({ "angels-titanium-smelting-1", "angels-titanium-smelting-2", "angels-titanium-smelting-3" })
  OV.disable_technology({ "angels-titanium-casting-2", "angels-titanium-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-titanium", "bob-titanium-plate")
    angelsmods.functions.hide("angels-plate-titanium")
    angelsmods.functions.move_item("bob-titanium-plate", "angels-titanium-casting", "j")
    data.raw["item"]["bob-titanium-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-titanium.png"
    data.raw["item"]["bob-titanium-plate"].icon_size = 32
    OV.disable_recipe({ "bob-titanium-plate" })
  end
else
  angelsmods.functions.hide("angels-plate-titanium")
  angelsmods.functions.hide("angels-roll-titanium")
  OV.disable_recipe({ "roll-titanium-casting", "roll-titanium-casting-fast" })
  OV.disable_recipe({ "angels-plate-titanium", "angels-roll-titanium-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].powder then
else
  angelsmods.functions.hide("powder-titanium")
  OV.disable_recipe({ "powder-titanium" })
end
