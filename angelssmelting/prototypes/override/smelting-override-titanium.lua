local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

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
  angelsmods.functions.add_flag("rutile-ore", "hidden")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].ingot then
  --REPLACE TECHS AND DISABLE RECIPES
  if mods['bobplates'] then
    OV.add_prereq( "titanium-processing", "angels-titanium-smelting-1" )
  end

  if angelsmods.trigger.smelting_products["titanium"].plate then
  else
    -- no need for molten recipe
    data.raw.fluid["liquid-molten-titanium"].hidden = true
    OV.disable_recipe({"molten-titanium-smelting-1", "molten-titanium-smelting-2", "molten-titanium-smelting-3", "molten-titanium-smelting-4", "molten-titanium-smelting-5"})
  end
else
  angelsmods.functions.add_flag("processed-titanium", "hidden")
  angelsmods.functions.add_flag("pellet-titanium", "hidden")
  data.raw.fluid["liquid-titanium-tetrachloride"].hidden = true
  angelsmods.functions.add_flag("sponge-titanium", "hidden")
  angelsmods.functions.add_flag("ingot-titanium", "hidden")
  data.raw.fluid["liquid-molten-titanium"].hidden = true
  OV.disable_recipe({"titanium-ore-processing", "titanium-processed-processing"})
  OV.disable_recipe({"titanium-ore-smelting", "processed-titanium-smelting", "liquid-titanium-tetrachloride-smelting"})
  OV.disable_recipe({"sponge-titanium-smelting", "pellet-titanium-smelting"})
  OV.disable_recipe({"molten-titanium-smelting-1", "molten-titanium-smelting-2", "molten-titanium-smelting-3", "molten-titanium-smelting-4", "molten-titanium-smelting-5"})
  OV.disable_technology({"angels-titanium-smelting-1", "angels-titanium-smelting-2", "angels-titanium-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods['bobplates'] then
    OV.global_replace_item("angels-plate-titanium", "titanium-plate")
    angelsmods.functions.add_flag("angels-plate-titanium", "hidden")

    OV.disable_recipe({ "bob-titanium-plate" })
  end
else
  angelsmods.functions.add_flag("angels-plate-titanium", "hidden")
  angelsmods.functions.add_flag("angels-roll-titanium", "hidden")
  OV.disable_recipe({"roll-titanium-casting", "roll-titanium-casting-fast"})
  OV.disable_recipe({"angels-plate-titanium", "angels-roll-titanium-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["titanium"].powder then
else
  angelsmods.functions.add_flag("powder-titanium", "hidden")
  OV.disable_recipe({ "powder-titanium" })
end