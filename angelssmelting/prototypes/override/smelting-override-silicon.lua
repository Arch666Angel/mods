local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
  angelsmods.trigger.smelting_products["silicon"].mono = true
  angelsmods.trigger.smelting_products["silicon"].powder = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].ingot then
else
  angelsmods.functions.add_flag("processed-silica", "hidden")
  angelsmods.functions.add_flag("pellet-silica", "hidden")
  data.raw.fluid["liquid-trichlorosilane"].hidden = true
  data.raw.fluid["gas-silane"].hidden = true
  angelsmods.functions.add_flag("ingot-silicon", "hidden")
  data.raw.fluid["liquid-molten-silicon"].hidden = true
  OV.disable_recipe({"silica-ore-processing", "silica-processed-processing"})
  OV.disable_recipe({"processed-silicon-smelting", "pellet-silicon-smelting"})
  OV.disable_recipe({"silicon-ore-smelting", "liquid-trichlorosilane-smelting", "gas-silane-smelting"})
  OV.disable_recipe({"molten-silicon-smelting"})
  OV.disable_technology({"angels-silicon-smelting-1", "angels-silicon-smelting-2", "angels-silicon-smelting-3"})
end

-------------------------------------------------------------------------------
-- MONO -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].mono then
  if mods['bobplates'] then
    OV.global_replace_item("silicon", "angels-mono-silicon")
    angelsmods.functions.add_flag("silicon", "hidden")
    OV.disable_recipe({ "bob-silicon-plate" })
  end

  if mods['bobplates'] then
    -- silicon plate derivatives
    angelsmods.functions.move_item("silicon-wafer", "angels-silicon-casting", "l[bobs-silicon]-a")
    OV.patch_recipes({
      { name = "silicon-wafer", subgroup = "angels-silicon-casting", order = "l[bobs-silicon]-a" },
    })
    OV.add_prereq( "silicon-processing", "angels-silicon-smelting-1" )
  end
else
  angelsmods.functions.add_flag("angels-mono-silicon-seed", "hidden")
  angelsmods.functions.add_flag("angels-quartz-crucible", "hidden")
  angelsmods.functions.add_flag("angels-mono-silicon", "hidden")
  OV.disable_recipe({"angels-mono-silicon-seed", "angels-mono-silicon-1", "angels-mono-silicon-2", "angels-quartz-crucible"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].powder then
  if mods['bobplates'] then
    OV.global_replace_item("powder-silicon", "silicon-powder")
    angelsmods.functions.add_flag("powder-silicon", "hidden")
    OV.disable_recipe({ "powder-silicon" })

    angelsmods.functions.move_item("silicon-powder", "angels-silicon", "g")
    data.raw.item["silicon-powder"].icon = "__angelssmelting__/graphics/icons/powder-silica.png"
    data.raw.item["silicon-powder"].icon_size = 32
    data.raw.item["silicon-powder"].localised_name = {"item-name.powder-silicon"}
    OV.patch_recipes({
      {
        name = "silicon-powder",
        subgroup = "angels-silicon",
        ingredients = {
          {"!!"},
          {"ingot-silicon", 1},
        },
        order = "g[bobs-silicon]"
      }
    })
    OV.add_prereq( "silicon-processing", "angels-silicon-smelting-1" )
  end

  if mods['bobplates'] then
    -- silicon powder derivatives
    angelsmods.functions.move_item("silicon-nitride", "angels-silicon-casting", "l[bobs-silicon]-b")
    angelsmods.functions.move_item("silicon-carbide", "angels-silicon-casting", "l[bobs-silicon]-c")
    OV.patch_recipes({
      { name = "silicon-nitride", subgroup = "angels-silicon-casting", order = "l[bobs-silicon]-b" },
      { name = "silicon-carbide", subgroup = "angels-silicon-casting", order = "l[bobs-silicon]-c" },
    })
  end
else
  angelsmods.functions.add_flag("powder-silicon", "hidden")
  OV.disable_recipe({ "powder-silicon" })
end