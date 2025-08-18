local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- AIR COMPRESSOR -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.hide({
    "bob-void-pump",
    "bob-air-pump",
    "bob-air-pump-2",
    "bob-air-pump-3",
    "bob-air-pump-4",
  })

  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-air-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-air-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-air-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "bob-air-pump-4", nil)

  --OV.remove_unlock("air-compressor-1", "bob-liquid-air")
  OV.disable_technology({
    "bob-void-fluid",
    "bob-air-compressor-1",
    "bob-air-compressor-2",
    "bob-air-compressor-3",
    "bob-air-compressor-4",
  })

  OV.hide_recipe({
    "bob-air-pump",
    "bob-air-pump-2",
    "bob-air-pump-3",
    "bob-air-pump-4",
    "bob-void-pump",
    "void-bob-ammonia",
    "void-bob-carbon-dioxide",
    "void-bob-chlorine",
    "void-bob-deuterium",
    "void-bob-hydrogen",
    "void-bob-hydrogen-chloride",
    "void-bob-hydrogen-sulfide",
    "void-bob-nitrogen",
    "void-bob-oxygen",
    "void-bob-petroleum-gas",
    "void-bob-sour-gas",
    "void-bob-sulfur-dioxide",
    "void-steam",
  })
end

-------------------------------------------------------------------------------
-- STORAGE TANKS --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if mods["boblogistics"] then
    OV.patch_recipes({
      {
        name = "angels-storage-tank-3",
        ingredients = {
          { name = "bob-small-inline-storage-tank", amount = 1 },
        },
      },
    })

    data.raw["storage-tank"]["angels-storage-tank-1"].fluid_box.volume = 200000
    data.raw["storage-tank"]["angels-storage-tank-2"].fluid_box.volume = 150000
  end
  -- electrolysis -------------------------------------------------------------
  --move small tanks to fluid-control
  OV.add_unlock("angels-fluid-control", "bob-small-storage-tank")
  OV.add_unlock("angels-fluid-control", "bob-small-inline-storage-tank")

  OV.global_replace_technology("bob-electrolysis-1", "angels-basic-chemistry")
  OV.global_replace_technology("bob-electrolysis-2", "angels-basic-chemistry-2")
  OV.disable_technology({ "bob-electrolysis-1", "bob-electrolysis-2" })

  --clean-up pre-requisites
  OV.remove_prereq("steel-processing", "bob-electrolysis-1")
  OV.remove_prereq("bob-lithium-processing", "bob-electrolysis-1")
  OV.remove_prereq("bob-zinc-processing", "bob-electrolysis-1")
  OV.remove_prereq("bob-lead-processing", "bob-electrolysis-1")
  OV.remove_prereq("bob-cobalt-processing", "bob-electrolysis-1")

  OV.remove_prereq("bob-chemical-processing-2", "bob-electrolysis-2")
  OV.remove_prereq("plastics", "chemical-plant")
  OV.remove_prereq("plastics", "bob-electrolysis-2")
  OV.remove_prereq("bob-aluminium-processing", "bob-electrolysis-2")
  OV.add_prereq("bob-aluminium-processing", "angels-chlorine-processing-1")
  OV.remove_prereq("bob-gold-processing-2", "bob-electrolysis-2")
  OV.add_prereq("bob-gold-processing", "angels-chlorine-processing-1")
  OV.remove_prereq("bob-battery-3", "electrolysis-2")
  OV.add_prereq("bob-grinding", "steel-processing")
end

-------------------------------------------------------------------------------
-- FLUID CONTROL --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- generic replace items ----------------------------------------------------

  -- lithium processing -------------------------------------------------------
  OV.patch_recipes({
    {
      name = "bob-lithium-water-electrolysis",
      results = {
        { name = "angels-gas-hydrogen", type = "fluid", amount = 20 },
      },
    },
  })

  -- oxygen processing --------------------------------------------------------
  OV.converter_fluid("bob-oxygen", "angels-gas-oxygen")
  OV.converter_fluid("bob-hydrogen", "angels-gas-hydrogen")
  OV.disable_recipe({ "bob-water-electrolysis", "bob-solid-fuel-from-hydrogen" })
  OV.add_prereq("bob-chemical-processing-1", "angels-basic-chemistry")

  -- chloride processing ------------------------------------------------------
  OV.converter_fluid("bob-chlorine", "angels-gas-chlorine")
  OV.disable_recipe({ "bob-salt-water-electrolysis", "bob-salt" })

  OV.converter_fluid("bob-hydrogen-chloride", "angels-gas-hydrogen-chloride")
  OV.remove_unlock("bob-chemical-processing-2", "bob-hydrogen-chloride")

  OV.global_replace_item("bob-calcium-chloride", "angels-solid-calcium-chloride")
  angelsmods.functions.hide("bob-calcium-chloride")
  OV.disable_recipe("bob-calcium-chloride")
  OV.remove_unlock("bob-chemical-processing-2", "bob-calcium-chloride")
  if not mods["angelssmelting"] then
    OV.add_prereq("bob-silicon-processing", "angels-chlorine-processing-2")
    OV.add_prereq("bob-titanium-processing", "angels-chlorine-processing-2")
  end

  OV.converter_fluid("bob-ferric-chloride-solution", "angels-liquid-ferric-chloride-solution")
  OV.disable_recipe({ "bob-ferric-chloride-solution" })

  -- sodium processing --------------------------------------------------------
  OV.global_replace_item("bob-sodium-hydroxide", "angels-solid-sodium-hydroxide")
  angelsmods.functions.hide("bob-sodium-hydroxide")
  OV.disable_recipe('bob-sodium-hydroxide-sink')

  -- nitrogen processing ------------------------------------------------------
  OV.converter_fluid("bob-liquid-air", "angels-gas-compressed-air")

  OV.converter_fluid("bob-nitrogen", "angels-gas-nitrogen")
  OV.global_replace_technology("bob-nitrogen-processing", "angels-nitrogen-processing-2")
  OV.remove_prereq("bob-ceramics", "bob-nitrogen-processing")
  OV.add_prereq("bob-ceramics", "angels-nitrogen-processing-1")

  OV.converter_fluid("bob-nitric-acid", "angels-liquid-nitric-acid")
  OV.converter_fluid("bob-nitrogen-dioxide", "angels-gas-nitrogen-dioxide")

  -- sulfur processing --------------------------------------------------------
  OV.converter_fluid("bob-sulfur-dioxide", "angels-gas-sulfur-dioxide")
  OV.converter_fluid("bob-hydrogen-sulfide", "angels-gas-hydrogen-sulfide")
elseif mods["bobelectronics"] then
  -- chloride processing ------------------------------------------------------
  OV.converter_fluid("bob-ferric-chloride-solution", "angels-liquid-ferric-chloride-solution")
  OV.disable_recipe({ "bob-ferric-chloride-solution" })
end

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  move_item("bob-enriched-fuel", "angels-petrochem-fuel", "a[solid-fuel]-b")
  OV.patch_recipes({ { name = "bob-enriched-fuel", subgroup = "angels-petrochem-fuel", order = "g" } })
  OV.disable_technology({ "oil-processing-2", "oil-processing-3", "oil-processing-4" })

  --hide disabled
  OV.hide_recipe({
    "bob-oil-processing",
    "bob-hydrogen-sulfide",
    "bob-sulfur-dioxide",
    "bob-coal-cracking",
    "bob-hydrogen-chloride",
    "bob-petroleum-gas-cracking",
    "bob-nitric-acid",
    "bob-nitrogen-dioxide",
    "bob-nitrogen",
    "bob-sulfuric-acid-2",
    "bob-sulfuric-acid-3",
    "bob-liquid-air",
    "bob-solid-fuel-from-hydrogen",
    "sulfur",
    "bob-sulfur-2",
    "bob-sulfur-3",
    "bob-carbon",
    "bob-resin-oil",
  })
  -- plastics -----------------------------------------------------------------
  OV.remove_unlock("plastics", "plastic-bar")

  -- other oil related stuffs
  OV.patch_recipes({
    {
      name = "bob-polishing-compound",
      ingredients = {
        { name = "angels-liquid-mineral-oil", type = "fluid", amount = "angels-liquid-fuel-oil" },
      },
    },
  })
elseif mods["bobelectronics"] then
  --hide disabled
  OV.hide_recipe({
    "bob-coal-cracking",
    "bob-resin-oil",
  })
end

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.global_replace_item("bob-salt", "angels-solid-salt")
  angelsmods.functions.hide("bob-salt")

  move_item("bob-heavy-water", "angels-water-treatment-fluid", "eb", "fluid")
  move_item("bob-deuterium", "angels-petrochem-basic-fluids", "i", "fluid")
  move_item("bob-heavy-water", "angels-water-treatment", "b[bob-heavy-water]", "recipe")
  move_item("bob-heavy-water-electrolysis", "angels-petrochem-basics", "a[water-separation]-a[heavy-water-electrolysis]", "recipe")
end

-------------------------------------------------------------------------------
-- TECH TREE CLEANUP ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- chemical processing tech patch -------------------------------------------
  OV.add_prereq("bob-chemical-processing-2", "logistic-science-pack")
end
