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
local Energy_table = {
  --liquid Naphtha (heavy oil), bobs value is 1MJ (Heavy fuel oil 38.2 MJ/L)(39 MJ/kg)
  ["liquid-naphtha"]  = { fv = 244.7, em = 3, turr = false}, 
  ["heavy-oil"]       = { fv = angelsmods.trigger.enableconverter and 244.7 or nil, turr = angelsmods.trigger.enableconverter and true or false},
  --liquid Fuel oil (light oil), bobs value 1.5MJ (light fuel oil 39 MJ/L)(40.6 MJ/kg)
  ["liquid-fuel-oil"] = { fv = 249.9, em = 2, turr = false}, --was 24.99kJ
  ["light-oil"]       = { fv = angelsmods.trigger.enableconverter and 249.9 or nil, turr = angelsmods.trigger.enableconverter and true or false},
  --gas methane (petrogas), bobs value 2.3MJ (methane 35.9 MJ/L)(49.85 MJ/kg) 
  ["gas-methane"]     = { fv = 230},
  ["petroleum-gas"]   = { fv = angelsmods.trigger.enableconverter and 230 or nil, turr = angelsmods.trigger.enableconverter and true or false}, 
  ["gas-ethane"]      = { fv = 388.9, em = 1.5}, --gas ethane (), - (ethane 60.7 MJ/L)(47.2 MJ/kg)
  ["gas-butane"]      = { fv = 710.5, em = 1.8}, --gas butane (), - (butane 110.9 MJ/L)(46.46 MJ/kg)
  ["gas-propene"]     = { fv = 521.5, em = 5}, --gas propene (), - (propylene 81.4 MJ/L)(45.8 MJ/kg)
  ["gas-methanol"]    = { fv = 101.2}, --gas methanol (), - (methanol(L) 15.8 MJ/L)(19.9 MJ/kg)
  ["gas-ethylene"]    = { fv = 365.2}, --gas ethylene (), - (ethylene 57.0 MJ/L)(47.7 MJ/kg)
  ["crude-oil"]       = { fv = 1000, turr = false}, --liquid crude (crude oil)
  ["gas-hydrogen"]    = { fv = 33, em = 0.2--[[>>(may need to go much lower) meant to be 66kJ, but dropped to 33 for reasons.]]}, --gas hydrogen (), bobs value is 45kJ (hydrogen 10.3 MJ/L)(120.1 MJ/kg)
  ["gas-hydrazine"]   = { fv = 126.9, em = 0.1}, --gas hydrazine (), bobs value is 340kJ (hydrazine 19.8 MJ/L)(19.4 MJ/kg)
  ["liquid-fuel"]     = { fv = 300, em = 1.5, turr = false}, --down from 2.3MJ
  ["gas-ethanol"]     = { fv = mods["angelsbioprocessing"] and 135.2 or nil}, --liquid ethanol (), - (ethanol(L) 21.1 MJ/L)(26.7 MJ/kg)
}
local turret_params = data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids
  
if mods["bobplates"] then
  for fluid, vals in pairs(Energy_table) do
    if vals.fv then
      data.raw.fluid[fluid].fuel_value = vals.fv .."kJ"
      data.raw.fluid[fluid].emmissions_multiplier = vals.em or 1
      if vals.turr ~= false then
        table.insert(turret_params, {type = fluid, damage_modifier = vals.fv/Energy_table["gas-methane"].fv})
      end
    end
  end
  --fuel oil balancing
  data.raw.recipe["enriched-fuel-from-liquid-fuel"].ingredients = {{type = "fluid", name = "liquid-fuel", amount = 100}} --up from 20
end

-------------------------------------------------------------------------------
-- TECH TREE CLEANUP ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then 
  -- electronics tech patch ---------------------------------------------------
  OV.remove_prereq("electronics","alloy-processing")
  if mods["bobelectronics"] then
    OV.add_prereq("electronics","angels-coal-processing")
  end
end