local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- AIR COMPRESSOR -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  angelsmods.functions.hide({
    "void-pump",
    "air-pump",
    "air-pump-2",
    "air-pump-3",
    "air-pump-4",
  })

  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-2", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-3", nil)
  angelsmods.functions.set_next_upgrade("assembling-machine", "air-pump-4", nil)

  --OV.remove_unlock("air-compressor-1", "bob-liquid-air")
  OV.disable_technology({
    "void-fluid",
    "air-compressor-1",
    "air-compressor-2",
    "air-compressor-3",
    "air-compressor-4",
  })

  OV.hide_recipe({
    "air-pump",
    "air-pump-2",
    "air-pump-3",
    "air-pump-4",
    "void-ammonia",
    "void-carbon-dioxide",
    "void-chlorine",
    "void-deuterium",
    "void-hydrogen",
    "void-hydrogen-chloride",
    "void-hydrogen-sulfide",
    "void-nitrogen",
    "void-oxygen",
    "void-petroleum-gas",
    "void-pump",
    "void-sour-gas",
    "void-steam",
    "void-sulfur-dioxide",
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

  OV.global_replace_technology("electrolysis-1", "basic-chemistry")
  OV.global_replace_technology("electrolysis-2", "basic-chemistry-2")
  OV.disable_technology({ "electrolysis-1", "electrolysis-2" })

  --clean-up pre-requisites
  OV.remove_prereq("steel-processing", "electrolysis-1")
  OV.remove_prereq("lithium-processing", "electrolysis-1")
  OV.remove_prereq("bob-zinc-processing", "electrolysis-1")
  OV.remove_prereq("bob-lead-processing", "electrolysis-1")
  OV.remove_prereq("cobalt-processing", "electrolysis-1")

  OV.remove_prereq("chemical-processing-2", "electrolysis-2")
  OV.remove_prereq("plastics", "chemical-plant")
  OV.remove_prereq("plastics", "electrolysis-2")
  OV.remove_prereq("aluminium-processing", "electrolysis-2")
  OV.add_prereq("aluminium-processing", "chlorine-processing-1")
  OV.remove_prereq("gold-processing-2", "electrolysis-2")
  OV.add_prereq("gold-processing", "chlorine-processing-1")
  OV.remove_prereq("battery-3", "electrolysis-2")
  OV.add_prereq("bob-grinding", "steel-processing")
end

-------------------------------------------------------------------------------
-- FLUID CONTROL --------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- generic replace items ----------------------------------------------------
  OV.global_replace_item("carbon", "solid-carbon")
  angelsmods.functions.hide("carbon")
  OV.remove_unlock("chemical-processing-1", "carbon")
  OV.add_prereq("bob-lead-processing", "angels-coal-processing")
  OV.add_prereq("silicon-processing", "angels-coal-processing")

  -- lithium processing -------------------------------------------------------
  OV.patch_recipes({
    {
      name = "lithium-water-electrolysis",
      results = {
        { name = "gas-hydrogen", type = "fluid", amount = 20 },
      },
    },
  })

  -- oxygen processing --------------------------------------------------------
  OV.converter_fluid("oxygen", "gas-oxygen")
  OV.converter_fluid("hydrogen", "gas-hydrogen")
  OV.disable_recipe({ "water-electrolysis", "solid-fuel-from-hydrogen" })
  --OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")
  OV.add_prereq("chemical-processing-1", "basic-chemistry")

  -- chloride processing ------------------------------------------------------
  OV.converter_fluid("chlorine", "gas-chlorine")
  OV.disable_recipe({ "salt-water-electrolysis", "salt" })

  OV.converter_fluid("hydrogen-chloride", "gas-hydrogen-chloride")
  OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")

  OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
  angelsmods.functions.hide("calcium-chloride")
  OV.disable_recipe("calcium-chloride")
  OV.remove_unlock("chemical-processing-2", "calcium-chloride")
  if not mods["angelssmelting"] then
    OV.add_prereq("silicon-processing", "chlorine-processing-2")
    OV.add_prereq("titanium-processing", "chlorine-processing-2")
  end

  OV.converter_fluid("ferric-chloride-solution", "liquid-ferric-chloride-solution")
  OV.disable_recipe({ "ferric-chloride-solution" })

  -- sodium processing --------------------------------------------------------
  OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
  angelsmods.functions.hide("sodium-hydroxide")

  -- nitrogen processing ------------------------------------------------------
  OV.converter_fluid("liquid-air", "gas-compressed-air")

  OV.converter_fluid("nitrogen", "gas-nitrogen")
  OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
  OV.remove_prereq("ceramics", "nitrogen-processing")
  OV.add_prereq("ceramics", "angels-nitrogen-processing-1")

  OV.converter_fluid("nitric-acid", "liquid-nitric-acid")
  OV.converter_fluid("nitrogen-dioxide", "gas-nitrogen-dioxide")

  -- sulfur processing --------------------------------------------------------
  OV.converter_fluid("sulfur-dioxide", "gas-sulfur-dioxide")
  OV.converter_fluid("hydrogen-sulfide", "gas-hydrogen-sulfide")
elseif mods["bobelectronics"] then
  -- chloride processing ------------------------------------------------------
  OV.converter_fluid("ferric-chloride-solution", "liquid-ferric-chloride-solution")
  OV.disable_recipe({ "ferric-chloride-solution" })
end

-------------------------------------------------------------------------------
-- OIL PROCESSING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  move_item("bob-enriched-fuel", "petrochem-fuel", "a[solid-fuel]-b")
  OV.patch_recipes({ { name = "bob-enriched-fuel", subgroup = "petrochem-fuel", order = "g" } })
  OV.disable_technology({ "oil-processing-2", "oil-processing-3", "oil-processing-4" })
  --hide disabled
  OV.hide_recipe({
    "bob-oil-processing",
    "hydrogen-sulfide",
    "sulfur-dioxide",
    "coal-cracking",
    "hydrogen-chloride",
    "petroleum-gas-cracking",
    "nitric-acid",
    "nitrogen-dioxide",
    "nitrogen",
    "sulfuric-acid-2",
    "sulfuric-acid-3",
    "bob-liquid-air",
    "solid-fuel-from-hydrogen",
    "sulfur",
    "sulfur-2",
    "sulfur-3",
    "carbon",
    "bob-resin-oil",
  })
  -- plastics -----------------------------------------------------------------
  OV.remove_unlock("plastics", "plastic-bar")

  -- other oil related stuffs
  OV.patch_recipes({
    {
      name = "polishing-compound",
      ingredients = {
        { name = "liquid-mineral-oil", type = "fluid", amount = "liquid-fuel-oil" },
      },
    },
  })
elseif mods["bobelectronics"] then
  --hide disabled
  OV.hide_recipe({
    "coal-cracking",
    "bob-resin-oil",
  })
end

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.global_replace_item("salt", "solid-salt")
  angelsmods.functions.hide("salt")

  move_item("heavy-water", "water-treatment-fluid", "eb")
  move_item("deuterium", "petrochem-basic-fluids", "i")
  move_item("bob-heavy-water", "water-treatment", "b[bob-heavy-water]")
  move_item("heavy-water-electrolysis", "petrochem-basics", "a[water-separation]-a[heavy-water-electrolysis]", "recipe")
end

-------------------------------------------------------------------------------
-- TECH TREE CLEANUP ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- chemical processing tech patch -------------------------------------------
  OV.add_prereq("chemical-processing-2", "logistic-science-pack")
end
