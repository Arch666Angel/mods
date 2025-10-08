local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item
local get_ore_name = angelsmods.functions.get_ore_name

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] and data.raw["fluid"]["bob-deuterium"] then
  angelsmods.trigger.water_green_waste = true
  OV.converter_fluid("bob-heavy-water", "angels-liquid-water-heavy")
  OV.converter_fluid("bob-deuterium", "angels-gas-deuterium")

  OV.disable_recipe({ "bob-heavy-water", "bob-heavy-water-electrolysis" })

  OV.global_replace_technology("bob-heavy-water-processing", "angels-water-chemistry-1")
  OV.disable_technology("bob-heavy-water-processing")
  OV.global_replace_technology("bob-deuterium-processing", "angels-water-chemistry-2")
  OV.disable_technology("bob-deuterium-processing")
  OV.add_prereq("angels-water-chemistry-2", "nuclear-fuel-reprocessing")

  if mods["bobequipment"] then
    OV.patch_recipes({
      {
        name = "fission-reactor-equipment",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = "angels-liquid-water-heavy", maximum_temperature = 30 },
        },
      },
    })
  end
  if mods["bobvehicleequipment"] then
    OV.patch_recipes({
      {
        name = "bob-vehicle-fission-cell-equipment-2",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = "angels-liquid-water-heavy", maximum_temperature = 30 },
        },
      },
      {
        name = "bob-vehicle-fission-reactor-equipment-2",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-semiheavy-3", amount = "angels-liquid-water-heavy", maximum_temperature = 30 },
        },
      },
    })
  end
else
  angelsmods.trigger.water_green_waste = true
end

-- Enforce semiheavy water temp
OV.set_temperature_barreling("angels-liquid-water-semiheavy-1", 25)
-- OV.duplicate_barreling_at_temperature("angels-liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("angels-liquid-water-semiheavy-2", 25)
-- OV.duplicate_barreling_at_temperature("angels-liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("angels-liquid-water-semiheavy-3", 25)
-- OV.duplicate_barreling_at_temperature("angels-liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("angels-liquid-water-heavy", 25)
-- OV.duplicate_barreling_at_temperature("angels-liquid-water-heavy", 100)

-------------------------------------------------------------------------------
-- CATALYSTS ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["platinum"] then
  -- angels component and/or science overhaul
  OV.patch_recipes({
    {
      name = "angels-catalyst-metal-red",
      ingredients = {
        { type = "item", name = get_ore_name("iron-ore"), amount = 1 },
        { type = "item", name = get_ore_name("copper-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-green",
      ingredients = {
        { type = "item", name = get_ore_name("angels-bauxite-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-silver-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-blue",
      ingredients = {
        { type = "item", name = get_ore_name("angels-rutile-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-gold-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = get_ore_name("angels-tungsten-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-platinum-ore"), amount = 1 },
      },
    },
  })
elseif mods["bobplates"] or mods["angelssmelting"] then
  -- regular overhaul/full angels mode
  OV.patch_recipes({
    {
      name = "angels-catalyst-metal-red",
      ingredients = {
        { type = "item", name = get_ore_name("iron-ore"), amount = 1 },
        { type = "item", name = get_ore_name("copper-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-green",
      ingredients = {
        { type = "item", name = get_ore_name("angels-bauxite-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-silver-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-blue",
      ingredients = {
        { type = "item", name = get_ore_name("angels-rutile-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-cobalt-ore"), amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = get_ore_name("angels-tungsten-ore"), amount = 1 },
        { type = "item", name = get_ore_name("angels-nickel-ore"), amount = 1 },
      },
    },
  })
  OV.add_prereq("angels-advanced-chemistry-3", "angels-ore-leaching")
  OV.add_prereq("angels-advanced-chemistry-5", "angels-ore-refining")
else -- special vanilla
  OV.patch_recipes({
    {
      name = "angels-catalyst-metal-red",
      ingredients = {
        { type = "item", name = "angels-ore1", amount = 1 },
        { type = "item", name = "angels-ore3", amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-green",
      ingredients = {
        { type = "item", name = "angels-ore1", amount = 1 },
        { type = "item", name = "angels-ore2", amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-blue",
      ingredients = {
        { type = "item", name = "angels-ore3", amount = 1 },
        { type = "item", name = "angels-ore4", amount = 1 },
      },
    },
    {
      name = "angels-catalyst-metal-yellow",
      ingredients = {
        { type = "item", name = "angels-ore2", amount = 1 },
        { type = "item", name = "angels-ore4", amount = 1 },
      },
    },
  })
end

-------------------------------------------------------------------------------
-- SPECIAL VANILLA ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe({
    "angels-solid-calcium-chloride",
  })
  angelsmods.functions.hide({
    "angels-solid-calcium-chloride",
  })
end

if angelsmods.trigger.gas_acetone then
else
  OV.disable_recipe({
    "angels-cumene-process",
  })
  angelsmods.functions.hide({
    "angels-gas-acetone",
  })
end

if angelsmods.trigger.gas_urea then
else
  OV.disable_recipe({
    "angels-gas-urea",
  })
  angelsmods.functions.hide({
    "angels-gas-urea",
  })
end

if angelsmods.trigger.resin then
else
  OV.disable_recipe({
    "angels-solid-resin",
    "angels-liquid-resin",
    "angels-liquid-resin-2",
    "angels-liquid-resin-3",
    "angels-gas-melamine",
    "angels-liquid-bisphenol-a",
  })
  angelsmods.functions.hide({
    "angels-solid-resin",
    "angels-liquid-resin",
    "angels-gas-melamine",
    "angels-liquid-bisphenol-a",
  })
  OV.disable_technology({
    "angels-resins",
    "angels-resin-1",
    "angels-resin-2",
    "angels-resin-3",
  })
end

if angelsmods.trigger.rubber then
else
  OV.disable_recipe({
    "angels-liquid-rubber",
    "angels-solid-rubber",
    "angels-liquid-styrene",
    "angels-liquid-ethylbenzene",
    "angels-gas-butadiene",
  })
  angelsmods.functions.hide({
    "angels-solid-rubber",
    "angels-liquid-rubber",
    "angels-liquid-styrene",
    "angels-liquid-ethylbenzene",
    "angels-gas-butadiene",
  })
  OV.disable_technology({
    "angels-rubbers",
    "angels-rubber",
  })
end

if angelsmods.trigger.liquid_ferric_chloride_solution then
else
  OV.disable_recipe({
    "angels-liquid-ferric-chloride-solution",
  })
  OV.remove_unlock("angels-chlorine-processing-1", "angels-liquid-ferric-chloride-solution")
  angelsmods.functions.hide("angels-liquid-ferric-chloride-solution")
end

if angelsmods.trigger.liquid_cupric_chloride_solution then
else
  OV.disable_recipe({
    "angels-liquid-cupric-chloride-solution",
  })
  OV.remove_unlock("angels-chlorine-processing-1", "angels-liquid-cupric-chloride-solution")
  angelsmods.functions.hide("angels-liquid-cupric-chloride-solution")
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
    "angels-gas-ammonium-chloride",
  })
  OV.remove_unlock("angels-nitrogen-processing-4", "angels-gas-ammonium-chloride")
  angelsmods.functions.hide("angels-gas-ammonium-chloride")
  OV.remove_prereq("angels-nitrogen-processing-3", "angels-chlorine-processing-2")
end


-----------------------------------------------------------------------------
-- SULFURIC ACID ------------------------------------------------------------
-----------------------------------------------------------------------------
if angelsmods.trigger.early_sulfuric_acid == true then
  -- Sulfur 1
  OV.set_science_pack("angels-sulfur-processing-1", "logistic-science-pack", 0)

  OV.remove_prereq("angels-sulfur-processing-1", "angels-water-treatment-2")
  OV.add_prereq("angels-sulfur-processing-1", "angels-basic-chemistry-2")

  OV.remove_unlock("angels-sulfur-processing-1", "angels-gas-sulfur-dioxide")
  OV.remove_unlock("angels-sulfur-processing-1", "angels-gas-sulfur-dioxide-calcium-sulfate")
  OV.remove_unlock("angels-sulfur-processing-1", "angels-liquid-hydrofluoric-acid")
  OV.remove_unlock("angels-sulfur-processing-1", "angels-gas-hydrogen-fluoride")

  -- Sulfur 2
  OV.remove_prereq("angels-sulfur-processing-2", "angels-advanced-chemistry-1")
  OV.remove_prereq("angels-sulfur-processing-2", "angels-gas-processing")
  OV.add_prereq("angels-sulfur-processing-2", "angels-water-treatment-2")

  OV.add_unlock("angels-sulfur-processing-2", "angels-gas-sulfur-dioxide")
  OV.add_unlock("angels-sulfur-processing-2", "angels-gas-sulfur-dioxide-calcium-sulfate")
  OV.add_unlock("angels-sulfur-processing-2", "angels-liquid-hydrofluoric-acid")
  OV.add_unlock("angels-sulfur-processing-2", "angels-gas-hydrogen-fluoride")

  OV.remove_unlock("angels-sulfur-processing-2", "angels-gas-acid-catalyst")
  OV.remove_unlock("angels-sulfur-processing-2", "angels-solid-sulfur")
  OV.remove_unlock("angels-sulfur-processing-2", "angels-hydrogen-fluoride-dissolving")

  -- Sulfur 3
  OV.set_science_pack("angels-sulfur-processing-3", "chemical-science-pack", 0)

  OV.remove_prereq("angels-sulfur-processing-3", "angels-nitrogen-processing-2")
  OV.remove_prereq("angels-sulfur-processing-3", "angels-slag-processing-1")
  OV.remove_prereq("angels-sulfur-processing-3", "chemical-science-pack")
  OV.add_prereq("angels-sulfur-processing-3", "angels-advanced-chemistry-1")
  OV.add_prereq("angels-sulfur-processing-3", "angels-gas-processing")

  OV.add_unlock("angels-sulfur-processing-3", "angels-gas-acid-catalyst")
  OV.add_unlock("angels-sulfur-processing-3", "angels-solid-sulfur")
  OV.add_unlock("angels-sulfur-processing-3", "angels-hydrogen-fluoride-dissolving")

  OV.remove_unlock("angels-sulfur-processing-3", "angels-filter-lime")
  OV.remove_unlock("angels-sulfur-processing-3", "angels-filter-lime-used-cleaning")
  OV.remove_unlock("angels-sulfur-processing-3", "angels-sulfur-air-scrubbing")

  -- Sulfur 4
  OV.add_prereq("angels-sulfur-processing-4", "angels-nitrogen-processing-2")
  OV.add_prereq("angels-sulfur-processing-4", "angels-slag-processing-1")
  OV.add_prereq("angels-sulfur-processing-4", "chemical-science-pack")

  OV.add_unlock("angels-sulfur-processing-4", "angels-filter-lime")
  OV.add_unlock("angels-sulfur-processing-4", "angels-filter-lime-used-cleaning")
  OV.add_unlock("angels-sulfur-processing-4", "angels-sulfur-air-scrubbing")

  -- Dependent techs
  OV.add_prereq("angels-slag-processing-1", "logistic-science-pack")
  OV.add_prereq("angels-bio-fermentation", "logistic-science-pack")
else
  -- Hide sulfur 4
  OV.disable_technology("angels-sulfur-processing-4")
end

-----------------------------------------------------------------------------
-- HYDROGEN FLUORIDE GAS ----------------------------------------------------
-----------------------------------------------------------------------------
if angelsmods.trigger.gas_hydrogen_fluoride == false then
  OV.disable_recipe({
    "angels-gas-hydrogen-fluoride",
    "angels-liquid-hydrogen-fluoride",
  })
  OV.patch_recipes({
    name = "angels-gas-acid-catalyst",
    results = { { name = "angels-gas-hydrogen-fluoride", type = "fluid", amount = 0 } },
    category = "chemistry",
  })
  angelsmods.functions.hide({
    "angels-gas-hydrogen-fluoride",
    "angels-liquid-hydrofluoric-acid",
  })
end
