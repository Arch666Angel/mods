local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].ingot then
else
  OV.disable_technology({"angels-silicon-smelting-1", "angels-silicon-smelting-2", "angels-silicon-smelting-3"})
end

-------------------------------------------------------------------------------
-- MONO -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].mono then
  if mods['bobplates'] then
    OV.global_replace_item("silicon", "angels-mono-silicon")
    OV.add_prereq( "silicon-processing", "angels-silicon-smelting-1" )
    OV.disable_recipe({ "bob-silicon-plate" })

    -- move some items/recipes around
    angelsmods.functions.move_item("silicon-wafer", "angels-silicon-casting", "k[bobs-silicon]-a")
    angelsmods.functions.move_item("silicon-powder", "angels-silicon-casting", "k[bobs-silicon]-b")
    angelsmods.functions.move_item("silicon-nitride", "angels-silicon-casting", "k[bobs-silicon]-c")
    angelsmods.functions.move_item("silicon-carbide", "angels-silicon-casting", "k[bobs-silicon]-d")
    OV.patch_recipes({
      { name = "silicon-wafer", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-a" },
      { name = "silicon-powder", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-b" },
      { name = "silicon-nitride", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-c" },
      { name = "silicon-carbide", subgroup = "angels-silicon-casting", order = "k[bobs-silicon]-d" },
    })
  end
else
  OV.disable_recipe({"angels-mono-silicon-seed", "angels-mono-silicon-1", "angels-mono-silicon-2", "angels-quartz-crucible"})
end
