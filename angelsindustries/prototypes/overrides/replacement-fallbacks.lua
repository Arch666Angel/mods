-- set up main replace tables
--[[
==Bob materials Tiers:
T0 materials: iron, copper, stone, wood, bcb, iron gear
T1 materials: iron, tin, iron gear, bcb
T2 materials: steel, bronze, steel gear, beb
T3 materials: cobalt-steel, aluminium, CS-gear, ecb, CS-bearing
T4a materials: brass gear, steel bearing, ecb, aluminium plate
T4 materials: all the titanium, elb, invar
T5 materials: all the nitinol, EPB, tungsten-carbide, copper-tungsten
--NOTES:
DO NOT REPLACE:
==tungsten-carbide
==copper-tungsten-alloy
==nitinol
==cobalt-steel
==silicon-nitride
==brass
==bronze
==angels block tiers materials:
T0=iron,stone,E-grey, w-copper
T1=steel,brick,E-red, w-solder
T2=aluminium,clay-brick,E-green, w-tin
T3=titanium,crete-brick,E-orange, w-silver
T4=tungsten,re-inforced-brick,w-gold
T5=??,??,w-platinum
]]
angelsmods.industries.block_replace = {
  --construction materials
  --ceramic style
  ["stone"] = { new = "block-construction-1", amt_multi = 0.5 },
  ["stone-brick"] = { new = "block-construction-1", amt_multi = 1 },
  ["concrete"] = { new = "block-construction-4", amt_multi = 1 },
  --metals
  ["iron-plate"] = { new = "construction-frame-1", amt_multi = 1 },
  ["steel-plate"] = { new = "construction-frame-2", amt_multi = 1 },
  ["aluminium-plate"] = { new = "construction-frame-3", amt_multi = 1 },
  ["titanium-plate"] = { new = "construction-frame-4", amt_multi = 1 },
  ["tungsten-plate"] = { new = "construction-frame-5", amt_multi = 1 },
  --electronics
  ["electronic-circuit"] = { new = "block-electronics-1", amt_multi = 1 },
  ["advanced-circuit"] = { new = "block-electronics-2", amt_multi = 1 },
  ["processing-unit"] = { new = "block-electronics-4", amt_multi = 1 }, --always 4 with bobs or vanilla
  ["bob-basic-circuit-board"] = { new = "block-electronics-0", amt_multi = 1 },
  ["basic-electronic-board"] = { new = "block-electronics-1", amt_multi = 1 },
  ["bob-advanced-processing-unit"] = { new = "block-electronics-5", amt_multi = 1 },
  --pipes (fluid box replacements)
  ["bob-copper-pipe"] = { new = "block-fluidbox-1", amt_multi = 0.5 },
  ["pipe"] = { new = "block-fluidbox-1", amt_multi = 1 },
  ["bob-stone-pipe"] = { new = "block-fluidbox-1", amt_multi = 1.5 },
  ["bob-steel-pipe"] = { new = "block-fluidbox-1", amt_multi = 2 },
  ["bob-bronze-pipe"] = { new = "block-fluidbox-1", amt_multi = 2.5 },
  ["bob-plastic-pipe"] = { new = "block-fluidbox-1", amt_multi = 3 },
  ["bob-brass-pipe"] = { new = "block-fluidbox-1", amt_multi = 3.5 },
  ["bob-titanium-pipe"] = { new = "block-fluidbox-2", amt_multi = 1 },
  ["bob-ceramic-pipe"] = { new = "block-fluidbox-2", amt_multi = 1.5 },
  ["bob-tungsten-pipe"] = { new = "block-fluidbox-2", amt_multi = 2 },
  ["bob-nitinol-pipe"] = { new = "block-fluidbox-2", amt_multi = 2.5 },
  ["bob-copper-tungsten-pipe"] = { new = "block-fluidbox-2", amt_multi = 3 },
  --wire/cable
  ["copper-cable"] = { new = "cable-harness-1", amt_multi = 1 },
  ["bob-tinned-copper-cable"] = { new = "cable-harness-2", amt_multi = 1 },
  ["bob-insulated-cable"] = { new = "cable-harness-3", amt_multi = 1 },
  ["bob-gilded-copper-cable"] = { new = "cable-harness-4", amt_multi = 1 },
  --intermediates (vanilla)
  ["iron-stick"] = { new = "construction-components", amt_multi = 1 },
}
angelsmods.industries.general_replace = {
  --electronics
  ["bob-basic-circuit-board"] = { new = "circuit-grey", amt_multi = 1 },
  ["basic-electronic-board"] = { new = "circuit-red-loaded", amt_multi = 1, unlock_by = "electronics" },
  ["electronic-circuit"] = { new = "circuit-red-loaded", amt_multi = 1 },
  ["advanced-circuit"] = { new = "circuit-green-loaded", amt_multi = 1, unlock_by = "advanced-circuit" },
  ["processing-unit"] = { new = "circuit-blue-loaded", amt_multi = 1, unlock_by = "processing-unit" },
  ["bob-advanced-processing-unit"] = { new = "circuit-yellow-loaded", amt_multi = 1, unlock_by = "bob-advanced-processing-unit" },
  --electronic components/boards
  ["bob-wooden-board"] = { new = "circuit-grey-board", amt_multi = 1, alt_rec = "angels-bio-paper-1" },
  ["bob-phenolic-board"] = { new = "circuit-orange-board", amt_multi = 1, unlock_by = "advanced-circuit" },
  ["bob-fibreglass-board"] = {
    new = "circuit-blue-board",
    amt_multi = 1,
    unlock_by = "angels-glass-smelting-3",
    alt_rec = "angels-glass-fiber-board",
  },
  ["bob-circuit-board"] = { new = "circuit-orange", amt_multi = 1, unlock_by = "advanced-circuit" },
  ["bob-superior-circuit-board"] = { new = "circuit-blue", amt_multi = 1, unlock_by = "processing-unit" },
  ["bob-multi-layer-circuit-board"] = { new = "circuit-yellow", amt_multi = 1, unlock_by = "bob-advanced-processing-unit" },
  ["bob-basic-electronic-components"] = { new = "circuit-resistor", amt_multi = 1, unlock_by = "electronics" },
  ["bob-electronic-components"] = { new = "circuit-transistor", amt_multi = 1, unlock_by = "advanced-circuit" },
  ["bob-intgrated-electronics"] = { new = "circuit-microchip", amt_multi = 1, unlock_by = "processing-unit" },
  ["bob-processing-electronics"] = { new = "circuit-cpu", amt_multi = 1, unlock_by = "bob-advanced-processing-unit" },
  --gears
  ["iron-gear-wheel"] = { new = "mechanical-parts", amt_multi = 1 },
  ["bob-steel-gear-wheel"] = { new = "angels-gear", amt_multi = 1, unlock_by = "steel-processing" },
  ["bob-brass-gear-wheel"] = { new = "angels-axle", amt_multi = 1, unlocked_by = "bob-zinc-processing" },
  ["bob-cobalt-steel-gear-wheel"] = { new = "angels-roller-chain", amt_multi = 1, unlocked_by = "cobalt-processing" },
  ["bob-titanium-gear-wheel"] = { new = "angels-spring", amt_multi = 1, unlocked_by = "titanium-processing" },
  ["bob-tungsten-gear-wheel"] = { new = "angels-bearing", amt_multi = 1, unlocked_by = "tungsten-processing" },
  --intermediates (vanilla)
  ["engine-unit"] = { new = "motor-2", amt_multi = 1, unlocked_by = "engine" },
  ["electric-engine-unit"] = { new = "motor-4", amt_multi = 1, unlocked_by = "electric-engine" },
  ["battery"] = { new = "battery-1", amt_multi = 1 },
}
--update replacement tables depending on mods
if mods["aai-industry"] then
  angelsmods.industries.block_replace["stone-brick"] = { new = "block-construction-1", amt_multi = 2 }
end
if mods["bobelectronics"] then
  angelsmods.industries.block_replace["advanced-circuit"] = { new = "block-electronics-2", amt_multi = 1 }
  angelsmods.industries.general_replace["electronic-circuit"] =
    { new = "circuit-red-loaded", amt_multi = 1, unlock_by = "electronics" }
  angelsmods.industries.general_replace["advanced-circuit"] =
    { new = "circuit-orange-loaded", amt_multi = 1, unlock_by = "advanced-circuit" }
end
if mods["bobplates"] then
  angelsmods.industries.general_replace["bob-lithium-ion-battery"] = { new = "battery-3", amt_multi = 1 }
  angelsmods.industries.general_replace["bob-silver-zinc-battery"] = { new = "battery-6", amt_multi = 1 }
end
