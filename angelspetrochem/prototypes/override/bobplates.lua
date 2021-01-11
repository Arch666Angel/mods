local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

if mods["bobplates"] then
  OV.disable_recipe({"bob-resin-oil"})

  OV.set_science_pack("electric-engine", "chemical-science-pack")
end

-------------------------------------------------------------------------------
-- CONVERT FLUIDS TO ANGELS VERSION -------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- water
  if settings.startup["bobmods-plates-purewater"].value == true then
    OV.converter_fluid("pure-water", "water-purified")
    angelsmods.functions.disable_barreling_recipes("pure-water")
  end

  OV.converter_fluid("oxygen", "gas-oxygen")
  angelsmods.functions.disable_barreling_recipes("oxygen")

  OV.converter_fluid("hydrogen", "gas-hydrogen")
  angelsmods.functions.disable_barreling_recipes("hydrogen")

  -- nitrogen (air)
  OV.converter_fluid("liquid-air", "gas-oxygen")
  angelsmods.functions.disable_barreling_recipes("liquid-air")

  OV.converter_fluid("nitrogen", "gas-nitrogen")
  angelsmods.functions.disable_barreling_recipes("nitrogen")

  OV.converter_fluid("nitrogen-dioxide", "gas-nitrogen-dioxide")
  angelsmods.functions.disable_barreling_recipes("nitrogen-dioxide")

  OV.converter_fluid("nitric-acid", "liquid-nitric-acid")
  angelsmods.functions.disable_barreling_recipes("nitric-acid")

  -- sulfur
  OV.converter_fluid("hydrogen-sulfide", "gas-hydrogen-sulfide")
  angelsmods.functions.disable_barreling_recipes("hydrogen-sulfide")

  OV.converter_fluid("sulfur-dioxide", "gas-sulfur-dioxide")
  angelsmods.functions.disable_barreling_recipes("sulfur-dioxide")
  
  -- chlorine
  OV.converter_fluid("chlorine", "gas-chlorine")
  angelsmods.functions.disable_barreling_recipes("chlorine")
  
  OV.converter_fluid("hydrogen-chloride", "gas-hydrogen-chloride")
  angelsmods.functions.disable_barreling_recipes("hydrogen-chloride")
  
  OV.converter_fluid("ferric-chloride-solution", "liquid-ferric-chloride-solution")
  angelsmods.functions.disable_barreling_recipes("ferric-chloride-solution")
end

-------------------------------------------------------------------------------
-- FUEL VALUES ----------------------------------------------------------------
-------------------------------------------------------------------------------
--if bobs is active, add fuel values to fluids
--Do this regardless of settings
--base fluid is methane, all others are based on relative real values
--==BASED ON VOULMETRIC NUMBERS divided by 10, using methane as the base
if mods["bobplates"] then
  --liquid Naphtha (heavy oil), bobs value is 1MJ (Heavy fuel oil 38.2 MJ/L)(39 MJ/kg)
  data.raw.fluid["liquid-naphtha"].fuel_value = "244.7kJ"
  data.raw.fluid["liquid-naphtha"].emissions_multiplier = 3

  --liquid Fuel oil (light oil), bobs value 1.5MJ (light fuel oil 39 MJ/L)(40.6 MJ/kg)
  data.raw.fluid["liquid-fuel-oil"].fuel_value = "249.9kJ" -- was 24.99kJ
  data.raw.fluid["liquid-fuel-oil"].emissions_multiplier = 2

  --gas methane (petrogas), bobs value 2.3MJ (methane 35.9 MJ/L)(49.85 MJ/kg)
  data.raw.fluid["gas-methane"].fuel_value = "230.0kJ"

  --gas ethane (), - (ethane 60.7 MJ/L)(47.2 MJ/kg)
  data.raw.fluid["gas-ethane"].fuel_value = "388.9kJ"
  data.raw.fluid["gas-ethane"].emissions_multiplier = 1.5

  --gas butane (), - (butane 110.9 MJ/L)(46.46 MJ/kg)
  data.raw.fluid["gas-butane"].fuel_value = "710.5kJ"
  data.raw.fluid["gas-butane"].emissions_multiplier = 1.8

  --gas propene (), - (propylene 81.4 MJ/L)(45.8 MJ/kg)
  data.raw.fluid["gas-propene"].fuel_value = "521.5kJ"
  data.raw.fluid["gas-propene"].emissions_multiplier = 5

  --gas methanol (), - (methanol(L) 15.8 MJ/L)(19.9 MJ/kg)
  data.raw.fluid["gas-methanol"].fuel_value = "101.2kJ"

  --gas ethylene (), - (ethylene 57.0 MJ/L)(47.7 MJ/kg)
  data.raw.fluid["gas-ethylene"].fuel_value = "365.2kJ"

  --gas benzene (), - (benzene 133.8 MJ/L)(40.5 MJ/kg)
  data.raw.fluid["gas-benzene"].fuel_value = "857.2kJ"

  --liquid crude (crude oil)
  data.raw.fluid["crude-oil"].fuel_value = "1000kJ"

  --gas hydrogen (), bobs value is 45kJ (hydrogen 10.3 MJ/L)(120.1 MJ/kg)
  -->>(may need to go much lower) meant to be 66kJ, but dropped to 33 for reasons.
  data.raw.fluid["gas-hydrogen"].fuel_value = "33kJ"
  data.raw.fluid["gas-hydrogen"].emissions_multiplier = 0.2

  --gas hydrazine (), bobs value is 340kJ (hydrazine 19.8 MJ/L)(19.4 MJ/kg)
  data.raw.fluid["gas-hydrazine"].fuel_value = "126.9kJ"
  data.raw.fluid["gas-hydrazine"].emissions_multiplier = 0.1

  --fuel oil balancing
  data.raw.fluid["liquid-fuel"].fuel_value = "300kJ" --down from 2.3MJ
  data.raw.recipe["enriched-fuel-from-liquid-fuel"].ingredients = {{type = "fluid", name = "liquid-fuel", amount = 100}} --up from 20

  if mods["angelsbioprocessing"] then
    --liquid ethanol (), - (ethanol(L) 21.1 MJ/L)(26.7 MJ/kg)
    data.raw.fluid["gas-ethanol"].fuel_value = "135.2kJ"
  end
  --updates for conversion valve settings
  if angelsmods.trigger.enableconverter then
    data.raw.fluid["heavy-oil"].fuel_value = "244.7kJ"
    data.raw.fluid["light-oil"].fuel_value = "249.9kJ"
    data.raw.fluid["petroleum-gas"].fuel_value = "230.0kJ"
    --data.raw.fluid["crude-oil"].fuel_value = "1000kJ"
  end
end
