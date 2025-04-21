local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] and data.raw["fluid"]["bob-deuterium"] then
  angelsmods.trigger.water_green_waste = true
  OV.converter_fluid("bob-heavy-water", "liquid-water-heavy")
  angelsmods.functions.disable_barreling_recipes("bob-heavy-water")
  OV.converter_fluid("bob-deuterium", "gas-deuterium")
  angelsmods.functions.disable_barreling_recipes("bob-deuterium")

  OV.disable_recipe({ "bob-heavy-water", "bob-heavy-water-electrolysis" })

  OV.global_replace_technology("bob-heavy-water-processing", "water-chemistry-1")
  OV.disable_technology("bob-heavy-water-processing")
  OV.global_replace_technology("bob-deuterium-processing", "water-chemistry-2")
  OV.disable_technology("bob-deuterium-processing")
  OV.add_prereq("water-chemistry-2", "nuclear-fuel-reprocessing")

  if mods["bobrevamp"] and mods["bobpower"] and settings.startup["bobmods-revamp-nuclear"].value == true then
    -- deuterium-fuel-cell will be unlocked by bob-nuclear-power-3
  else
    OV.add_unlock("water-chemistry-2", "bob-deuterium-fuel-cell")
  end

  OV.set_science_pack("bob-deuterium-fuel-reprocessing", "utility-science-pack", 1)
  OV.set_science_pack("bob-deuterium-fuel-cell-2", "utility-science-pack", 1)
elseif angelsmods.industries and angelsmods.industries.overhaul then
  angelsmods.trigger.water_green_waste = true
  -- everything is good, nothing to change

  --elseif data.raw["fluid"]["deuterium"] then
  -- not bobs mods, should we do something, usual thing is to do nothing...
else -- no deuterium required, disabling it...
  angelsmods.functions.hide("gas-enriched-hydrogen-sulfide")
  angelsmods.functions.hide("liquid-water-semiheavy-1")
  angelsmods.functions.hide("liquid-water-semiheavy-2")
  angelsmods.functions.hide("liquid-water-semiheavy-3")
  angelsmods.functions.hide("liquid-water-heavy")
  angelsmods.functions.hide("gas-deuterium")

  OV.disable_recipe({
    "angels-hydrogen-sulfide-enrichment",
    "angels-water-enrichment-1",
    "angels-water-enriched-cooling-1",
    "angels-water-enrichment-2",
    "angels-water-enriched-cooling-2",
    "angels-water-enrichment-3",
    "angels-water-enriched-cooling-3",
    "angels-heavy-water-extraction",
    "angels-heavy-water-cooling",
    "angels-heavy-water-separation",
    "angels-heavy-water-separation-2",
  })

  OV.disable_technology({ "water-chemistry-1", "water-chemistry-2" })
end

-- Enforce semiheavy water temp
OV.set_temperature_barreling("liquid-water-semiheavy-1", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-semiheavy-2", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-semiheavy-3", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-heavy", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-heavy", 100)

-------------------------------------------------------------------------------
-- CATALYSTS ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["platinum"] then
  -- angels component and/or science overhaul
  OV.patch_recipes({
    {
      name = "catalyst-metal-red",
      ingredients = {
        { type = "item", name = "iron-ore", amount = 1 },
        { type = "item", name = "copper-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-green",
      ingredients = {
        { type = "item", name = "bauxite-ore", amount = 1 },
        { type = "item", name = "silver-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-blue",
      ingredients = {
        { type = "item", name = "rutile-ore", amount = 1 },
        { type = "item", name = "gold-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = "tungsten-ore", amount = 1 },
        { type = "item", name = "platinum-ore", amount = 1 },
      },
    },
  })
elseif mods["bobplates"] or angelsmods.industries and angelsmods.industries.overhaul then
  -- regular overhaul/full angels mode
  OV.patch_recipes({
    {
      name = "catalyst-metal-red",
      ingredients = {
        { type = "item", name = "iron-ore", amount = 1 },
        { type = "item", name = "copper-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-green",
      ingredients = {
        { type = "item", name = "bauxite-ore", amount = 1 },
        { type = "item", name = "silver-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-blue",
      ingredients = {
        { type = "item", name = "rutile-ore", amount = 1 },
        { type = "item", name = "cobalt-ore", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = "tungsten-ore", amount = 1 },
        { type = "item", name = "nickel-ore", amount = 1 },
      },
    },
  })
  OV.add_prereq("angels-advanced-chemistry-3", "ore-leaching")
  OV.add_prereq("angels-advanced-chemistry-5", "ore-refining")
else -- special vanilla
  OV.patch_recipes({
    {
      name = "catalyst-metal-red",
      ingredients = {
        { type = "item", name = "angels-ore1", amount = 1 },
        { type = "item", name = "angels-ore3", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-green",
      ingredients = {
        { type = "item", name = "angels-ore1", amount = 1 },
        { type = "item", name = "angels-ore2", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-blue",
      ingredients = {
        { type = "item", name = "angels-ore3", amount = 1 },
        { type = "item", name = "angels-ore4", amount = 1 },
      },
    },
    {
      name = "catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = "angels-ore2", amount = 1 },
        { type = "item", name = "angels-ore4", amount = 1 },
      },
    },
  })
end

-------------------------------------------------------------------------------
-- VALVES ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.enableconverter then
else
  angelsmods.functions.hide("valve-converter")
  OV.disable_recipe("valve-converter")
end

-------------------------------------------------------------------------------
-- SPECIAL VANILLA ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe({
    "solid-calcium-chloride",
  })
  angelsmods.functions.hide({
    "solid-calcium-chloride",
  })
end

if angelsmods.trigger.gas_acetone then
else
  OV.disable_recipe({
    "cumene-process",
  })
  angelsmods.functions.hide({
    "gas-acetone",
  })
end

if angelsmods.trigger.gas_urea then
else
  OV.disable_recipe({
    "gas-urea",
  })
  angelsmods.functions.hide({
    "gas-urea",
  })
end

if angelsmods.trigger.resin then
else
  OV.disable_recipe({
    "solid-resin",
    "liquid-resin-1",
    "liquid-resin-2",
    "liquid-resin-3",
    "gas-melamine",
    "liquid-bisphenol-a",
  })
  angelsmods.functions.hide({
    "solid-resin",
    "liquid-resin",
    "gas-melamine",
    "liquid-bisphenol-a",
  })
  OV.disable_technology({
    "resins",
    "resin-1",
    "resin-2",
    "resin-3",
  })
end

if angelsmods.trigger.rubber then
else
  OV.disable_recipe({
    "liquid-rubber-1",
    "solid-rubber",
    "liquid-styrene-catalyst",
    "liquid-ethylbenzene-catalyst",
    "catalyst-steam-cracking-butane",
  })
  angelsmods.functions.hide({
    "solid-rubber",
    "liquid-rubber",
    "liquid-styrene",
    "liquid-ethylbenzene",
    "gas-butadiene",
  })
  OV.disable_technology({
    "rubbers",
    "rubber",
  })
end

if angelsmods.trigger.liquid_ferric_chloride_solution then
else
  OV.disable_recipe({
    "liquid-ferric-chloride-solution",
  })
  OV.remove_unlock("chlorine-processing-1", "liquid-ferric-chloride-solution")
  angelsmods.functions.hide("liquid-ferric-chloride-solution")
end

if angelsmods.trigger.liquid_cupric_chloride_solution then
else
  OV.disable_recipe({
    "liquid-cupric-chloride-solution",
  })
  OV.remove_unlock("chlorine-processing-1", "liquid-cupric-chloride-solution")
  angelsmods.functions.hide("liquid-cupric-chloride-solution")
end

if
  angelsmods.trigger.smelting_products["platinum"]
  and (
    angelsmods.trigger.smelting_products["platinum"].ingot
    or angelsmods.trigger.smelting_products["platinum"].plate
    or angelsmods.trigger.smelting_products["platinum"].powder
    or angelsmods.trigger.smelting_products["platinum"].wire
  )
then
  angelsmods.trigger.gas_ammonium_chloride = true
end
if angelsmods.trigger.gas_ammonium_chloride then
else
  OV.disable_recipe({
    "gas-ammonium-chloride",
  })
  OV.remove_unlock("angels-nitrogen-processing-4", "gas-ammonium-chloride")
  angelsmods.functions.hide("gas-ammonium-chloride")
  OV.remove_prereq("angels-nitrogen-processing-3", "chlorine-processing-2")
end

-----------------------------------------------------------------------------
-- DEAD ENDS ----------------------------------------------------------------
-----------------------------------------------------------------------------
--Hydrogen peroxide may be used at a later date, but for now, it is a dead-end
angelsmods.functions.hide({
  "gas-hydrogen-peroxide",
  "gas-phosgene",
})
OV.disable_recipe({
  "gas-phosgene",
})

-----------------------------------------------------------------------------
-- SULFURIC ACID ------------------------------------------------------------
-----------------------------------------------------------------------------
if angelsmods.trigger.early_sulfuric_acid == true then
  -- Sulfur 1
  OV.set_science_pack("angels-sulfur-processing-1", "logistic-science-pack", 0)

  OV.remove_prereq("angels-sulfur-processing-1", "water-treatment-2")
  OV.add_prereq("angels-sulfur-processing-1", "basic-chemistry-2")

  OV.remove_unlock("angels-sulfur-processing-1", "gas-sulfur-dioxide")
  OV.remove_unlock("angels-sulfur-processing-1", "gas-sulfur-dioxide-calcium-sulfate")
  OV.remove_unlock("angels-sulfur-processing-1", "liquid-hydrofluoric-acid")
  OV.remove_unlock("angels-sulfur-processing-1", "gas-hydrogen-fluoride")

  -- Sulfur 2
  OV.remove_prereq("angels-sulfur-processing-2", "angels-advanced-chemistry-1")
  OV.remove_prereq("angels-sulfur-processing-2", "gas-processing")
  OV.add_prereq("angels-sulfur-processing-2", "water-treatment-2")

  OV.add_unlock("angels-sulfur-processing-2", "gas-sulfur-dioxide")
  OV.add_unlock("angels-sulfur-processing-2", "gas-sulfur-dioxide-calcium-sulfate")
  OV.add_unlock("angels-sulfur-processing-2", "liquid-hydrofluoric-acid")
  OV.add_unlock("angels-sulfur-processing-2", "gas-hydrogen-fluoride")

  OV.remove_unlock("angels-sulfur-processing-2", "gas-acid-catalyst")
  OV.remove_unlock("angels-sulfur-processing-2", "solid-sulfur")
  OV.remove_unlock("angels-sulfur-processing-2", "liquid-hydrogen-fluoride")

  -- Sulfur 3
  OV.set_science_pack("angels-sulfur-processing-3", "chemical-science-pack", 0)

  OV.remove_prereq("angels-sulfur-processing-3", "angels-nitrogen-processing-2")
  OV.remove_prereq("angels-sulfur-processing-3", "slag-processing-1")
  OV.remove_prereq("angels-sulfur-processing-3", "chemical-science-pack")
  OV.add_prereq("angels-sulfur-processing-3", "angels-advanced-chemistry-1")
  OV.add_prereq("angels-sulfur-processing-3", "gas-processing")

  OV.add_unlock("angels-sulfur-processing-3", "gas-acid-catalyst")
  OV.add_unlock("angels-sulfur-processing-3", "solid-sulfur")
  OV.add_unlock("angels-sulfur-processing-3", "liquid-hydrogen-fluoride")

  OV.remove_unlock("angels-sulfur-processing-3", "filter-lime")
  OV.remove_unlock("angels-sulfur-processing-3", "filter-lime-used")
  OV.remove_unlock("angels-sulfur-processing-3", "angels-sulfur-scrubber")

  -- Sulfur 4
  OV.add_prereq("angels-sulfur-processing-4", "angels-nitrogen-processing-2")
  OV.add_prereq("angels-sulfur-processing-4", "slag-processing-1")
  OV.add_prereq("angels-sulfur-processing-4", "chemical-science-pack")

  OV.add_unlock("angels-sulfur-processing-4", "filter-lime")
  OV.add_unlock("angels-sulfur-processing-4", "filter-lime-used")
  OV.add_unlock("angels-sulfur-processing-4", "angels-sulfur-scrubber")

  -- Dependent techs
  OV.add_prereq("slag-processing-1", "logistic-science-pack")
  OV.add_prereq("bio-fermentation", "logistic-science-pack")
else
  -- Hide sulfur 4
  OV.disable_technology("angels-sulfur-processing-4")
end

-----------------------------------------------------------------------------
-- HYDROGEN FLUORIDE GAS ----------------------------------------------------
-----------------------------------------------------------------------------
if angelsmods.trigger.gas_hydrogen_fluoride == false then
  OV.disable_recipe({
    "liquid-hydrofluoric-acid",
    "liquid-hydrogen-fluoride",
  })
  OV.patch_recipes({
    name = "gas-acid-catalyst",
    results = { { name = "gas-hydrogen-fluoride", type = "fluid", amount = 0 } },
    category = "chemistry",
  })
  angelsmods.functions.hide({
    "gas-hydrogen-fluoride",
    "liquid-hydrofluoric-acid",
  })
end
