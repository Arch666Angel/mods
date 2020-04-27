-------------------------------------------------------------------------------
-- create dummy thorium ore
-------------------------------------------------------------------------------
data:extend(
{
  {
    type = "item",
    name = "thorium-ore", 
    icon = "__angelsrefining__/graphics/icons/nodule-crushed.png",
    icon_size = 32, --for now
    subgroup = "angels-power-nuclear-processing", --for now
    order = "a[radioactive-element]-c[neptunium-240]",--for now
    stack_size = 100,
  },
})
-------------------------------------------------------------------------------
-- RADIOACTIVE ELEMENTS -------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
{
  --order a[radioactive-element]-a[uranium-235] reserved for uranium-235
  --order a[radioactive-element]-b[uranium-238] reserved for uranium-238
  --Np-240
  {
    type = "item",
    name = "neptunium-240", -- cyan/blue
    icon = "__angelsindustries__/graphics/icons/neptunium-240.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-c[neptunium-240]",
    stack_size = 50,
  },
  --Pu-240
  {
    type = "item",
    name = "plutonium-240", -- orange
    icon = "__angelsindustries__/graphics/icons/plutonium-239.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-d[plutonium-240]",
    stack_size = 50,
  },
  --Am-241
  {
    type = "item",
    name = "americium-241", -- translucent white (bleeched color)
    icon = "__angelsindustries__/graphics/icons/americium-241.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-e[americium-241]",
    stack_size = 50,
  },
  --Cm-245
  {
    type = "item",
    name = "curium-245", -- yellowed silver
    icon = "__angelsindustries__/graphics/icons/curium-245.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-f[curium-245]",
    stack_size = 50,
  },
  --U-234
  {
    type = "item",
    name = "uranium-234", -- green (the rarest of the shiny rocks)
    icon = "__angelsindustries__/graphics/icons/uranium-234.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-g[uranium-234]",
    stack_size = 50,
  },
  --Th-232
  {
    type = "item",
    name = "thorium-232", -- red (almost maroon)
    icon = "__angelsindustries__/graphics/icons/thorium-232.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-processing",
    order = "a[radioactive-element]-h[thorium-232]",
    stack_size = 50,
  },
})

-------------------------------------------------------------------------------
-- OTHER INTERMEDIATES --------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
{
  --muon-fusion-catalyst
  {
    type = "item",
    name = "angels-muon-fusion-catalyst",
    icon = "__angelsindustries__/graphics/icons/fusion-catalyst.png",
    icon_size = 64,
    subgroup = "angels-power-nuclear-processing",
    order = "a",
    stack_size = 1,
  },
})

-------------------------------------------------------------------------------
-- NUCLEAR FUEL CELLS ---------------------------------------------------------
-------------------------------------------------------------------------------
data:extend(
{
  --uranium-cell
    --order "a[uranium]-a" reserved for uranium-fuel-cell
    --order "a[uranium]-b" reserved for used-up-uranium-fuel-cell
  --U-234-cell
  {
    type = "item",
    name = "angels-uranium-fuel-cell",
    icon = "__angelsindustries__/graphics/icons/uranium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "a[uranium]-c",
    fuel_category = "nuclear",
    burnt_result = "used-up-uranium-fuel-cell",
    fuel_value = "1.5GJ",
    fuel_glow_color = {r = 0.7, g = 1, b = 0},
    stack_size = 20,
  },
  --AMOX-cell
  {
    type = "item",
    name = "AMOX-cell",
    icon = "__angelsindustries__/graphics/icons/plutonium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "b[AMOX]-a",
    fuel_category = "nuclear",
    burnt_result = "used-up-AMOX-cell",
    fuel_value = "18GJ",
    fuel_glow_color = {r = 0.7, g = 1, b = 0},
    stack_size = 20,
  },
  {
    type = "item",
    name = "used-up-AMOX-cell",
    icon = "__angelsindustries__/graphics/icons/used-up-plutonium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "b[AMOX]-b",
    stack_size = 20,
  },
  --thorium-cell
  {
    type = "item",
    name = "angels-thorium-fuel-cell",
    icon = "__angelsindustries__/graphics/icons/thorium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "c[thorium]-a",
    fuel_category = "nuclear",
    burnt_result = "used-up-angels-thorium-fuel-cell",
    fuel_value = "50GJ",
    fuel_glow_color = {r = 0.7, g = 1, b = 0},
    stack_size = 20,
  },
  {
    type = "item",
    name = "used-up-angels-thorium-fuel-cell",
    icon = "__angelsindustries__/graphics/icons/used-up-thorium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "c[thorium]-b",
    stack_size = 20,
  },
  --deuterium-cell
  {
    type = "item",
    name = "angels-deuterium-fuel-cell",
    icon = "__angelsindustries__/graphics/icons/deuterium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "d[deuterium]-a",
    fuel_category = "nuclear",
    burnt_result = "used-up-angels-deuterium-fuel-cell",
    fuel_value = "80GJ",
    fuel_glow_color = {r = 0.7, g = 1, b = 0},
    stack_size = 20,
  },
  {
    type = "item",
    name = "used-up-angels-deuterium-fuel-cell",
    icon = "__angelsindustries__/graphics/icons/used-up-deuterium-fuel-cell.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-power-nuclear-fuel-cell",
    order = "d[deuterium]-b",
    stack_size = 20,
  },
})
--[[THE PLAN
Starting with the vanilla power system and the heavy water cycle added by Lovely_santa
- Add in a tier 2 reaction that yields plutonium
- Create a sinc for said plutonium in an advanced cell
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
used-up-AMOX-cell
Am-241
muon-fusion-catalyst
== LIST OF RECIPES
angels-uranium-reprocessing
10 cells + 20 HF.acid -> 5 U-238 + 2 Np-240 + 1 slag + 20 FWW
"advanced-chemistry" (big chem plant)

angels-plutonium-synth
8 Np-240 -> 8 Pu-240
"centrifuging" (centrifuge)

angels-mixed-oxide-cell
5 Pu-240 + 5 U-238 + 1 Pb.plate -> 10 AMOX-cells
"advanced-crafting" (no-hand crafting)

angels-mixed-oxide-reprocessing
10 used-up-AMOX-cells -> 2 U-238 + 1 slag + 1 Am-241 + 1 Fusion Catalyst
"centrifuging" (centrifuge)

angels-americium-regeneration
5 Am-241 + 25 U-235 -> 2 U-238 + 1 Pu-240 + 15 U-235
"centrifuging" (centrifuge)
]]
