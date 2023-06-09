local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

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
  ["liquid-naphtha"] = { fv = 244.7, em = 3, turr = false },
  ["heavy-oil"] = {
    fv = angelsmods.trigger.enableconverter and 244.7 or nil,
    turr = angelsmods.trigger.enableconverter and true or false,
  },
  --liquid Fuel oil (light oil), bobs value 1.5MJ (light fuel oil 39 MJ/L)(40.6 MJ/kg)
  ["liquid-fuel-oil"] = { fv = 249.9, em = 2, turr = false }, --was 24.99kJ
  ["light-oil"] = {
    fv = angelsmods.trigger.enableconverter and 249.9 or nil,
    turr = angelsmods.trigger.enableconverter and true or false,
  },
  --gas methane (petrogas), bobs value 2.3MJ (methane 35.9 MJ/L)(49.85 MJ/kg)
  ["gas-methane"] = { fv = 230 },
  ["petroleum-gas"] = {
    fv = angelsmods.trigger.enableconverter and 230 or nil,
    turr = angelsmods.trigger.enableconverter and true or false,
  },
  ["gas-ethane"] = { fv = 388.9, em = 1.5 }, --gas ethane (), - (ethane 60.7 MJ/L)(47.2 MJ/kg)
  ["gas-butane"] = { fv = 710.5, em = 1.8 }, --gas butane (), - (butane 110.9 MJ/L)(46.46 MJ/kg)
  ["gas-propene"] = { fv = 521.5, em = 5 }, --gas propene (), - (propylene 81.4 MJ/L)(45.8 MJ/kg)
  ["gas-methanol"] = { fv = 101.2 }, --gas methanol (), - (methanol(L) 15.8 MJ/L)(19.9 MJ/kg)
  ["gas-ethylene"] = { fv = 365.2 }, --gas ethylene (), - (ethylene 57.0 MJ/L)(47.7 MJ/kg)
  ["crude-oil"] = { fv = 350, turr = false }, --liquid crude (crude oil)
  ["gas-hydrogen"] = {
    fv = 33,
    em = 0.2,--[[>>(may need to go much lower) meant to be 66kJ, but dropped to 33 for reasons.]]
  }, --gas hydrogen (), bobs value is 45kJ (hydrogen 10.3 MJ/L)(120.1 MJ/kg)
  ["gas-hydrazine"] = { fv = 126.9, em = 0.1 }, --gas hydrazine (), bobs value is 340kJ (hydrazine 19.8 MJ/L)(19.4 MJ/kg)
  ["liquid-fuel"] = { fv = 300, em = 1.5, turr = false }, --down from 2.3MJ
  ["gas-ethanol"] = { fv = mods["angelsbioprocessing"] and 135.2 or nil }, --liquid ethanol (), - (ethanol(L) 21.1 MJ/L)(26.7 MJ/kg)
}
local turret_params = data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids

if mods["bobplates"] then
  for fluid, vals in pairs(Energy_table) do
    if vals.fv then
      data.raw.fluid[fluid].fuel_value = (math.floor(vals.fv / 5 + 0.5)) * 5 .. "kJ"
      data.raw.fluid[fluid].emissions_multiplier = vals.em or data.raw.fluid[fluid].emissions_multiplier or 1
      if vals.turr ~= false then
        table.insert(
          turret_params,
          { type = fluid, damage_modifier = math.floor(vals.fv / Energy_table["gas-methane"].fv * 10 + 0.5) / 10 }
        )
      end
    end
  end
  --fuel oil balancing
  data.raw.recipe["enriched-fuel-from-liquid-fuel"].ingredients =
    { { type = "fluid", name = "liquid-fuel", amount = 100 } } --up from 20
end

-------------------------------------------------------------------------------
-- TECH TREE CLEANUP ----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- electronics tech patch ---------------------------------------------------
  if mods["bobelectronics"] then
    OV.add_prereq("electronics", "angels-coal-processing")
  end
end

-------------------------------------------------------------------------------
-- ICON ADJUSTMENTS -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  -- liquid fuel --------------------------------------------------------------
  move_item("liquid-fuel", "petrochem-carbon-fluids", "dac", "fluid")
  data.raw["fluid"]["liquid-fuel"].icon = nil
  data.raw["fluid"]["liquid-fuel"].icons =
    angelsmods.functions.create_liquid_fluid_icon(nil, { { 237, 212, 104 }, { 247, 216, 081 }, { 247, 216, 081 } })
  OV.barrel_overrides("liquid-fuel", "acid")

  data.raw["recipe"]["liquid-fuel"].always_show_products = true
  data.raw["recipe"]["liquid-fuel"].icon = nil
  data.raw["recipe"]["liquid-fuel"].icons = angelsmods.functions.create_liquid_recipe_icon(
    { "liquid-fuel" },
    { { 237, 212, 104 }, { 247, 216, 081 }, { 247, 216, 081 } }
  )
  --update bobs tungstic acid to use new icon
  data.raw.fluid["tungstic-acid"].icons = angelsmods.functions.create_viscous_liquid_fluid_icon(
    nil,
    { { 235, 235, 240 }, { 235, 235, 240 }, { 135, 090, 023, 0.75 }, { 135, 090, 023, 0.75 } }
  )
  data.raw.fluid["tungstic-acid"].icon = nil
  data.raw.fluid["tungstic-acid"].icon_size = nil
  data.raw.fluid["tungstic-acid"].icon_mipmaps = nil
  OV.patch_recipes({
    {
      name = "liquid-fuel",
      ingredients = {
        { "!!" },
        { name = "liquid-fuel-oil", type = "fluid", amount = 40 },
        { name = "gas-residual", type = "fluid", amount = 10 },
      },
      results = {
        { name = "liquid-fuel", type = "fluid", amount = 50 },
      },
      subgroup = "petrochem-carbon-oil-feed",
      order = "h",
    },
    {
      name = "tungstic-acid",
      icons = angelsmods.functions.create_liquid_recipe_icon(
        nil,
        { { 135, 090, 023 }, { 170, 170, 180 }, { 170, 170, 180 } },
        { { "__bobplates__/graphics/icons/tungstic-acid.png", 32 } }
      ),
    },
  })
  OV.add_unlock("flammables", "liquid-fuel")
  OV.add_unlock("flammables", "enriched-fuel-from-liquid-fuel")
  OV.remove_prereq("flammables", "gas-processing")
  OV.add_prereq("flammables", "gas-steam-cracking-1")
end

-------------------------------------------------------------------------------
-- RESIN HANDLING -------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.resin then
    OV.global_replace_item({ "solid-resin" }, "resin")
    angelsmods.functions.add_flag("solid-resin", "hidden")
    move_item("resin", "petrochem-solids", "a[petrochem-solids]-b[resin]")

    OV.patch_recipes({
      {
        name = "bob-resin-wood",
        ingredients = {
          { name = "wood", type = "item", amount = "+4" },
        },
        subgroup = "petrochem-solids",
        order = "b[resin]-b[solid]-a",
        icons = angelsmods.functions.add_number_icon_layer({
          {
            icon = "__bobplates__/graphics/icons/resin.png",
            icon_size = 32,
            icon_mipmaps = 1,
          },
        }, 1, angelsmods.petrochem.number_tint),
      },
      {
        name = "solid-resin",
        order = "b[resin]-b[solid]-b",
        icons = mods["angelsbioprocessing"] and {
          {
            icon = "__bobplates__/graphics/icons/resin.png",
            icon_size = 32,
            icon_mipmaps = 1,
          },
        } or angelsmods.functions.add_number_icon_layer({
          {
            icon = "__bobplates__/graphics/icons/resin.png",
            icon_size = 32,
            icon_mipmaps = 1,
          },
        }, 2, angelsmods.petrochem.number_tint),
      },
    })

    if mods["angelsbioprocessing"] then
      OV.disable_recipe({ "bob-resin-wood" })
      OV.disable_technology({ "bob-wood-processing" })
      OV.remove_prereq({
        "bodies",
        "electronics",
        "walking-vehicle",
      },
      "bob-wood-processing")
    end

    OV.remove_unlock("plastics", "synthetic-wood")
    OV.disable_recipe({ "synthetic-wood" })
  else
    angelsmods.functions.add_flag("resin", "hidden")
    OV.disable_recipe({
      "bob-resin-wood",
      "solid-resin",
    })
    OV.remove_unlock("plastics", "synthetic-wood")
    OV.add_unlock("plastic-1", "synthetic-wood")
  end
end

-------------------------------------------------------------------------------
-- RUBBER HANDLING ------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if angelsmods.trigger.rubber then
    OV.global_replace_item("solid-rubber", "rubber")
    angelsmods.functions.add_flag("solid-rubber", "hidden")
    move_item("rubber", "petrochem-solids", "a[petrochem-solids]-c[rubber]-a")

    if mods["bobelectronics"] then
      OV.patch_recipes({
        {
          name = "bob-rubber",
          ingredients = {
            { "!!" },
            { type = "item", name = "resin", amount = 3 },
          },
          subgroup = "petrochem-solids-2",
          order = "b[rubber]-b[solid]-a",
          icons = angelsmods.functions.add_number_icon_layer({
            {
              icon = "__bobplates__/graphics/icons/rubber.png",
              icon_size = 32,
              icon_mipmaps = 1,
            },
          }, 1, angelsmods.petrochem.number_tint),
        },
        {
          name = "solid-rubber",
          subgroup = "petrochem-solids-2",
          order = "b[rubber]-b[solid]-a",
          icons = angelsmods.functions.add_number_icon_layer({
            {
              icon = "__bobplates__/graphics/icons/rubber.png",
              icon_size = 32,
              icon_mipmaps = 1,
            },
          }, 2, angelsmods.petrochem.number_tint),
        },
      })
    else
      OV.disable_recipe("bob-rubber")
    end
  else
    angelsmods.functions.add_flag("rubber", "hidden")
    OV.disable_recipe("bob-rubber")
  end
end

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] then
  if data.raw.recipe["pure-water-pump"] then
    data.raw.recipe["pure-water-pump"].icon = nil
    data.raw.recipe["pure-water-pump"].icon_size = 32
    data.raw.recipe["pure-water-pump"].icons = { { icon = "__angelsrefining__/graphics/icons/water-purified.png" } }
  end
end
