local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- CONVERT FLUIDS TO ANGELS VERSION -------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- water
  OV.converter_fluid("bob-pure-water", "angels-water-purified")
  OV.converter_fluid("bob-oxygen", "angels-gas-oxygen")
  OV.converter_fluid("bob-hydrogen", "angels-gas-hydrogen")

  -- nitrogen (air)
  OV.converter_fluid("bob-liquid-air", "angels-gas-oxygen")
  OV.converter_fluid("bob-nitrogen", "angels-gas-nitrogen")
  OV.converter_fluid("bob-nitrogen-dioxide", "angels-gas-nitrogen-dioxide")
  OV.converter_fluid("bob-nitric-acid", "angels-liquid-nitric-acid")

  -- sulfur
  OV.converter_fluid("bob-hydrogen-sulfide", "angels-gas-hydrogen-sulfide")
  OV.converter_fluid("bob-sulfur-dioxide", "angels-gas-sulfur-dioxide")

  -- chlorine
  OV.converter_fluid("bob-chlorine", "angels-gas-chlorine")
  OV.converter_fluid("bob-hydrogen-chloride", "angels-gas-hydrogen-chloride")
  OV.converter_fluid("bob-ferric-chloride-solution", "angels-liquid-ferric-chloride-solution")
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
  ["angels-liquid-naphtha"] = { fv = 244.7, em = 3, turr = false },
  ["heavy-oil"] = { fv = nil, turr = false },
  --liquid Fuel oil (light oil), bobs value 1.5MJ (light fuel oil 39 MJ/L)(40.6 MJ/kg)
  ["angels-liquid-fuel-oil"] = { fv = 249.9, em = 2, turr = false }, --was 24.99kJ
  ["light-oil"] = { fv = nil, turr = false },
  --gas methane (petrogas), bobs value 2.3MJ (methane 35.9 MJ/L)(49.85 MJ/kg)
  ["angels-gas-methane"] = { fv = 230 },
  ["petroleum-gas"] = { fv = nil, turr = false },
  ["angels-gas-ethane"] = { fv = 388.9, em = 1.5 }, --gas ethane (), - (ethane 60.7 MJ/L)(47.2 MJ/kg)
  ["angels-gas-butane"] = { fv = 710.5, em = 1.8 }, --gas butane (), - (butane 110.9 MJ/L)(46.46 MJ/kg)
  ["angels-gas-propene"] = { fv = 521.5, em = 5 }, --gas propene (), - (propylene 81.4 MJ/L)(45.8 MJ/kg)
  ["angels-gas-methanol"] = { fv = 101.2 }, --gas methanol (), - (methanol(L) 15.8 MJ/L)(19.9 MJ/kg)
  ["angels-gas-ethylene"] = { fv = 365.2 }, --gas ethylene (), - (ethylene 57.0 MJ/L)(47.7 MJ/kg)
  ["crude-oil"] = { fv = 350, turr = false }, --liquid crude (crude oil)
  ["angels-gas-hydrogen"] = {
    fv = 33,
    em = 0.2,--[[>>(may need to go much lower) meant to be 66kJ, but dropped to 33 for reasons.]]
  }, --gas hydrogen (), bobs value is 45kJ (hydrogen 10.3 MJ/L)(120.1 MJ/kg)
  ["angels-gas-hydrazine"] = { fv = 126.9, em = 0.1 }, --gas hydrazine (), bobs value is 340kJ (hydrazine 19.8 MJ/L)(19.4 MJ/kg)
  ["bob-liquid-fuel"] = { fv = 300, em = 1.5, turr = false }, --down from 2.3MJ
  ["angels-gas-ethanol"] = { fv = mods["angelsbioprocessing"] and 135.2 or nil }, --liquid ethanol (), - (ethanol(L) 21.1 MJ/L)(26.7 MJ/kg)
}
local turret_params = data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids

if mods["bobplates"] then
  for fluid, vals in pairs(Energy_table) do
    if vals.fv and data.raw.fluid[fluid] then
      data.raw.fluid[fluid].fuel_value = (math.floor(vals.fv / 5 + 0.5)) * 5 .. "kJ"
      data.raw.fluid[fluid].emissions_multiplier = vals.em or data.raw.fluid[fluid].emissions_multiplier or 1
      if vals.turr ~= false then
        table.insert(
          turret_params,
          { type = fluid, damage_modifier = math.floor(vals.fv / Energy_table["angels-gas-methane"].fv * 10 + 0.5) / 10 }
        )
      end
    end
  end
  --fuel oil balancing
  data.raw.recipe["bob-enriched-fuel"].ingredients =
    { { type = "fluid", name = "bob-liquid-fuel", amount = 100 } } --up from 20
end

-------------------------------------------------------------------------------
-- ICON ADJUSTMENTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- liquid fuel --------------------------------------------------------------
  move_item("bob-liquid-fuel", "angels-petrochem-carbon-fluids", "dac", "fluid")
  data.raw["fluid"]["bob-liquid-fuel"].icon = nil
  data.raw["fluid"]["bob-liquid-fuel"].icons =
    angelsmods.functions.create_liquid_fluid_icon(nil, { { 237, 212, 104 }, { 247, 216, 081 }, { 247, 216, 081 } })
  OV.barrel_overrides("bob-liquid-fuel", "acid")

  data.raw["recipe"]["bob-liquid-fuel"].always_show_products = true
  data.raw["recipe"]["bob-liquid-fuel"].icon = nil
  data.raw["recipe"]["bob-liquid-fuel"].icons = angelsmods.functions.create_liquid_recipe_icon(
    { "bob-liquid-fuel" },
    { { 237, 212, 104 }, { 247, 216, 081 }, { 247, 216, 081 } }
  )
  --update bobs tungstic acid to use new icon
  data.raw.fluid["bob-tungstic-acid"].icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
    nil,
    { { 235, 235, 240 }, { 235, 235, 240 }, { 135, 090, 023, 0.75 }, { 135, 090, 023, 0.75 } }
  )
  data.raw.fluid["bob-tungstic-acid"].icon = nil
  data.raw.fluid["bob-tungstic-acid"].icon_size = nil
  data.raw.recipe["bob-tungstic-acid"].icon = nil
  OV.patch_recipes({
    {
      name = "bob-liquid-fuel",
      ingredients = {
        { "!!" },
        { name = "angels-liquid-fuel-oil", type = "fluid", amount = 40 },
        { name = "angels-gas-residual", type = "fluid", amount = 10 },
      },
      results = {
        { name = "bob-liquid-fuel", type = "fluid", amount = 50 },
      },
      subgroup = "angels-petrochem-carbon-oil-feed",
      order = "h",
    },
    {
      name = "bob-tungstic-acid",
      icons = angelsmods.functions.create_liquid_recipe_icon(
        nil,
        { { 135, 090, 023 }, { 170, 170, 180 }, { 170, 170, 180 } },
        { { "__bobplates__/graphics/icons/tungstic-acid.png", 32 } }
      ),
    },
  })
  OV.add_unlock("flammables", "bob-liquid-fuel")
  OV.add_unlock("flammables", "bob-enriched-fuel")
  OV.remove_prereq("flammables", "angels-gas-processing")
  OV.add_prereq("flammables", "angels-steam-cracking-1")
end

-------------------------------------------------------------------------------
-- RESIN HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] or mods["bobelectronics"] then
  if angelsmods.trigger.resin then
    OV.global_replace_item({ "angels-solid-resin" }, "bob-resin")
    angelsmods.functions.hide("angels-solid-resin")
    move_item("bob-resin", "angels-petrochem-solids", "a[petrochem-solids]-b[resin]")

    local resin_icon = mods["bobplates"] and "__bobplates__/graphics/icons/resin.png"
      or "__bobelectronics__/graphics/icons/resin.png"
    OV.patch_recipes({
      {
        name = "angels-solid-resin",
        order = "b[resin]-b[solid]-b",
        icons = mods["angelssmelting"] and {
          {
            icon = resin_icon,
            icon_size = 32,
          },
        } or angelsmods.functions.add_number_icon_layer({
          {
            icon = resin_icon,
            icon_size = 32,
          },
        }, 2, angelsmods.petrochem.number_tint),
      },
    })
    OV.add_prereq("bob-electronics", "automation")
  else
    angelsmods.functions.hide("bob-resin")
    OV.disable_recipe({
      "bob-resin-wood",
      "angels-solid-resin",
    })
  end

  OV.remove_unlock("plastics", "bob-synthetic-wood")
  if mods["angelsbioprocessing"] then
    OV.disable_recipe({ "bob-synthetic-wood" })
  else
    OV.add_unlock("angels-plastic-1", "bob-synthetic-wood")
  end
end

-------------------------------------------------------------------------------
-- RUBBER HANDLING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] or mods["bobelectronics"] then
  if angelsmods.trigger.rubber then
    OV.global_replace_item("angels-solid-rubber", "bob-rubber")
    angelsmods.functions.hide("angels-solid-rubber")
    move_item("bob-rubber", "angels-petrochem-solids", "a[petrochem-solids]-c[rubber]-a")
    OV.disable_recipe("bob-rubber")

    local rubber_icon = mods["bobplates"] and "__bobplates__/graphics/icons/rubber.png"
      or "__bobelectronics__/graphics/icons/rubber.png"

    OV.patch_recipes({
      {
        name = "angels-solid-rubber",
        subgroup = "angels-petrochem-solids-2",
        order = "b[rubber]-b[solid]-a",
        icons = {
          {
            icon = rubber_icon,
            icon_size = 32,
          },
        },
      },
    })
    local wire_name = "copper-cable"
    if mods["bobplates"] and mods["bobelectronics"] then
      wire_name = "bob-tinned-copper-cable"
    elseif mods["angelssmelting"] and angelsmods.trigger.smelting_products["tin"].wire then
      wire_name = "angels-wire-tin"
    end
    OV.patch_recipes({
      {
        name = "arithmetic-combinator",
        ingredients = {
          { name = wire_name, type = "item", amount = "bob-insulated-cable" },
        },
      },
      {
        name = "decider-combinator",
        ingredients = {
          { name = wire_name, type = "item", amount = "bob-insulated-cable" },
        },
      },
      {
        name = "constant-combinator",
        ingredients = {
          { name = wire_name, type = "item", amount = "bob-insulated-cable" },
        },
      },
    })
  else
    angelsmods.functions.hide("bob-rubber")
    OV.disable_recipe("bob-rubber")
  end
end

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if data.raw.recipe["bob-pure-water-pump"] then
    data.raw.recipe["bob-pure-water-pump"].icon = nil
    data.raw.recipe["bob-pure-water-pump"].icon_size = 32
    data.raw.recipe["bob-pure-water-pump"].icons = { { icon = "__angelsrefininggraphics__/graphics/icons/water-purified.png" } }
  end
end

-------------------------------------------------------------------------------
-- CARBON PROCESSING ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  OV.global_replace_item("bob-carbon", "angels-solid-carbon")
  angelsmods.functions.hide("bob-carbon")
  OV.remove_unlock("bob-chemical-processing-1", "bob-carbon")
  OV.remove_unlock("bob-chemical-processing-1", "bob-carbon-from-wood")
  OV.hide_recipe("bob-carbon-from-wood")
  OV.add_prereq("bob-lead-processing", "angels-coal-processing")
  OV.add_prereq("bob-silicon-processing", "angels-coal-processing")
  OV.remove_prereq("bob-electronics", "bob-chemical-processing-1")
  OV.add_prereq("bob-electronics", "angels-coal-processing")
end
