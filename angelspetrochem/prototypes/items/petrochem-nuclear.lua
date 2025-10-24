-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "angels-thorium-ore",
    icon = "__angelspetrochemgraphics__/graphics/icons/ore-thorium.png",
    icon_size = 64,
    pictures = {
      { size = 64, filename = "__angelspetrochemgraphics__/graphics/icons/ore-thorium.png", scale = 0.5 },
      { size = 64, filename = "__angelspetrochemgraphics__/graphics/icons/ore-thorium-1.png", scale = 0.5 },
      { size = 64, filename = "__angelspetrochemgraphics__/graphics/icons/ore-thorium-2.png", scale = 0.5 },
      { size = 64, filename = "__angelspetrochemgraphics__/graphics/icons/ore-thorium-3.png", scale = 0.5 },
    },
    subgroup = "angels-ores",
    order = "i[thorium-ore]",
    stack_size = 200,
  },
})

-------------------------------------------------------------------------------
-- RADIOACTIVE ELEMENTS -------------------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  --U-234
  {
    type = "item",
    name = "angels-uranium-234", -- green (the rarest of the shiny rocks)
    icon = "__angelspetrochemgraphics__/graphics/icons/uranium-234.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-a[uranium-234]",
    stack_size = 100,
  },
  --order a[radioactive-element]-b[uranium-235] reserved for uranium-235
  --order a[radioactive-element]-c[uranium-238] reserved for uranium-238
  --Np-240
  {
    type = "item",
    name = "angels-neptunium-240", -- cyan/blue
    icon = "__angelspetrochemgraphics__/graphics/icons/neptunium-240.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-d[neptunium-240]",
    stack_size = 100,
  },
  --Pu-240
  {
    type = "item",
    name = "angels-plutonium-240", -- orange
    icon = "__angelspetrochemgraphics__/graphics/icons/plutonium-239.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-e[plutonium-240]",
    stack_size = 100,
  },
  --Am-241
  {
    type = "item",
    name = "angels-americium-241", -- translucent white (bleeched color)
    icon = "__angelspetrochemgraphics__/graphics/icons/americium-241.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-f[americium-241]",
    stack_size = 100,
  },
  --Cm-245
  {
    type = "item",
    name = "angels-curium-245", -- yellowed silver
    icon = "__angelspetrochemgraphics__/graphics/icons/curium-245.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-g[curium-245]",
    stack_size = 100,
  },
  --Th-232
  {
    type = "item",
    name = "angels-thorium-232", -- red (almost maroon)
    icon = "__angelspetrochemgraphics__/graphics/icons/thorium-232.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-h[thorium-232]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- OTHER INTERMEDIATES --------------------------------------------------------
-------------------------------------------------------------------------------
data:extend({
  --muon-fusion-catalyst
  {
    type = "item",
    name = "angels-muon-fusion-catalyst",
    icon = "__angelspetrochemgraphics__/graphics/icons/fusion-catalyst.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "b[nuclear-intermediate]-a",
    stack_size = 1,
  },
  -- NUCLEAR TRAIN FUEL
  {
    type = "item",
    name = "angels-nuclear-fuel",
    icon = "__angelspetrochemgraphics__/graphics/icons/plutonium-fuel.png",
    icon_size = 64,
    fuel_category = "chemical",
    fuel_value = "1.4641GJ", --1.21*1.21
    fuel_acceleration_multiplier = 2.5,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "angels-petrochem-fuel",
    order = "k",
    stack_size = 2,
  },
  {
    type = "item",
    name = "angels-nuclear-fuel-2",
    icon = "__angelspetrochemgraphics__/graphics/icons/thorium-fuel.png",
    icon_size = 64,
    fuel_category = "chemical",
    fuel_value = "2.1962GJ", --1.21*(1.21*1.5)
    fuel_acceleration_multiplier = 2.5,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "angels-petrochem-fuel",
    order = "l",
    stack_size = 2,
  },
})

-------------------------------------------------------------------------------
-- NUCLEAR FUEL CELLS ---------------------------------------------------------
-------------------------------------------------------------------------------
if data.raw["item"]["uranium-fuel-cell"] then
  data.raw["item"]["uranium-fuel-cell"].fuel_glow_color = util.color("00ff00") -- Green
end
data:extend({
  --uranium-cell
  {
    type = "item",
    name = "angels-uranium-fuel-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/uranium-234-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "a[uranium]-a",
    fuel_category = "nuclear",
    burnt_result = "depleted-uranium-fuel-cell",
    fuel_value = "1.5GJ",
    fuel_glow_color = util.color("6aff00"), -- Green with hint of yellow
    stack_size = 50,
  },
  --order "a[uranium]-b" reserved for uranium-fuel-cell
  --order "a[uranium]-c" reserved for depleted-uranium-fuel-cell
  --AMOX-cell
  {
    type = "item",
    name = "angels-mixed-oxide-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/plutonium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "b[AMOX]-a",
    fuel_category = "nuclear",
    burnt_result = "angels-depleted-mixed-oxide-cell",
    fuel_value = "8GJ",
    fuel_glow_color = util.color("ff9500"), -- Orange, slightly yellow
    stack_size = 50,
  },
  {
    type = "item",
    name = "angels-depleted-mixed-oxide-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/used-up-plutonium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "b[AMOX]-b",
    stack_size = 50,
  },
  --thorium-cell
  {
    type = "item",
    name = "angels-thorium-fuel-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/thorium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "c[thorium]-a",
    fuel_category = "nuclear",
    burnt_result = "angels-depleted-thorium-fuel-cell",
    fuel_value = "15GJ", --down from 50
    fuel_glow_color = util.color("ff190d"), -- Red, slightly towards orange
    stack_size = 50,
  },
  {
    type = "item",
    name = "angels-depleted-thorium-fuel-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/used-up-thorium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "c[thorium]-b",
    stack_size = 50,
  },
  --deuterium-cell
  {
    type = "item",
    name = "angels-deuterium-fuel-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/deuterium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "d[deuterium]-a",
    fuel_category = "nuclear",
    burnt_result = "angels-depleted-deuterium-fuel-cell",
    fuel_value = "80GJ",
    fuel_glow_color = util.color("00d5ff"), -- cyan per Lovely_Santa
    stack_size = 50,
  },
  {
    type = "item",
    name = "angels-depleted-deuterium-fuel-cell",
    icon = "__angelspetrochemgraphics__/graphics/icons/used-up-deuterium-fuel-cell.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "d[deuterium]-b",
    stack_size = 50,
  },
})
--[[THE PLAN
Starting with the vanilla power system and the heavy water cycle added by Lovely_santa
- Add in a tier 2 reaction that yields plutonium
- Create a sink for said plutonium in an advanced cell
- Create a fusion catalyst from plutonium cell reprocessing
- Create a deuterium recipe that requires the fuel cell
==REFERENCE: VANILLA URANIUM IN-->OUT (1 Fe.plate+ 1 U-235+19 U-238-->(10 cells)-->6 U-238) [U-235 is the shiny rock]
Starting with the vanilla system, leave as is, add an advanced reprocessing cycle which gives plutonium
--Recover 1 slag (for the iron), 5 U-238 and 2 Np-240
--8 Np-240 in an chemplant turns to 8 Pu-240 (fuel grade Pu)
==FUEL CELL 2
-(5 Pu-240+5 U-238+1 Pb.plate-->10 MOX cells-->2 U-238+ 1 slag+ 1 Am-241+ 1 Fusion Catalyst)
==FUEL CELL 3 (Americium regeneration)
-(5 Am-241+ 25 U-235-->2 U-235+1 Pu-240+5 U-238)

== LIST OF ITEMS
Np-240
Pu-240
AMOX-cell
depleted-AMOX-cell
Am-241
muon-fusion-catalyst
== LIST OF RECIPES
angels-uranium-reprocessing
10 cells + 20 HF.acid -> 5 U-238 + 2 Np-240 + 1 slag + 20 FWW
"angels-advanced-chemistry" (big chem plant)

angels-plutonium-synth
8 Np-240 -> 8 Pu-240
"centrifuging" (centrifuge)

angels-mixed-oxide-cell
5 Pu-240 + 5 U-238 + 1 Pb.plate -> 10 AMOX-cells
"advanced-crafting" (no-hand crafting)

angels-mixed-oxide-reprocessing
10 depleted-AMOX-cells -> 2 U-238 + 1 slag + 1 Am-241 + 1 Fusion Catalyst
"centrifuging" (centrifuge)

angels-americium-regeneration
5 Am-241 + 25 U-235 -> 2 U-238 + 1 Pu-240 + 15 U-235
"centrifuging" (centrifuge)
]]
