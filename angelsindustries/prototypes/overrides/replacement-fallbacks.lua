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
  ["basic-circuit-board"] = { new = "block-electronics-0", amt_multi = 1 },
  ["basic-electronic-board"] = { new = "block-electronics-1", amt_multi = 1 },
  ["advanced-processing-unit"] = { new = "block-electronics-5", amt_multi = 1 },
  --pipes (fluid box replacements)
  ["copper-pipe"] = { new = "block-fluidbox-1", amt_multi = 0.5 },
  ["pipe"] = { new = "block-fluidbox-1", amt_multi = 1 },
  ["stone-pipe"] = { new = "block-fluidbox-1", amt_multi = 1.5 },
  ["steel-pipe"] = { new = "block-fluidbox-1", amt_multi = 2 },
  ["bronze-pipe"] = { new = "block-fluidbox-1", amt_multi = 2.5 },
  ["plastic-pipe"] = { new = "block-fluidbox-1", amt_multi = 3 },
  ["brass-pipe"] = { new = "block-fluidbox-1", amt_multi = 3.5 },
  ["titanium-pipe"] = { new = "block-fluidbox-2", amt_multi = 1 },
  ["ceramic-pipe"] = { new = "block-fluidbox-2", amt_multi = 1.5 },
  ["tungsten-pipe"] = { new = "block-fluidbox-2", amt_multi = 2 },
  ["nitinol-pipe"] = { new = "block-fluidbox-2", amt_multi = 2.5 },
  ["copper-tungsten-pipe"] = { new = "block-fluidbox-2", amt_multi = 3 },
  --wire/cable
  ["copper-cable"] = { new = "cable-harness-1", amt_multi = 1 },
  ["tinned-copper-cable"] = { new = "cable-harness-2", amt_multi = 1 },
  ["insulated-cable"] = { new = "cable-harness-3", amt_multi = 1 },
  ["gilded-copper-cable"] = { new = "cable-harness-4", amt_multi = 1 },
  --intermediates (vanilla)
  ["iron-stick"] = { new = "construction-components", amt_multi = 1 },
}
angelsmods.industries.general_replace = {
  --electronics
  ["basic-circuit-board"] = { new = "circuit-grey", amt_multi = 1 },
  ["basic-electronic-board"] = { new = "circuit-red-loaded", amt_multi = 1, unlock_by = "electronics" },
  ["electronic-circuit"] = { new = "circuit-red-loaded", amt_multi = 1 },
  ["advanced-circuit"] = { new = "circuit-green-loaded", amt_multi = 1, unlock_by = "advanced-electronics" },
  ["processing-unit"] = { new = "circuit-blue-loaded", amt_multi = 1, unlock_by = "advanced-electronics-2" },
  ["advanced-processing-unit"] = { new = "circuit-yellow-loaded", amt_multi = 1, unlock_by = "advanced-electronics-3" },
  --electronic components/boards
  ["wooden-board"] = { new = "circuit-grey-board", amt_multi = 1, alt_rec = "bio-paper-1" },
  ["phenolic-board"] = { new = "circuit-orange-board", amt_multi = 1, unlock_by = "advanced-electronics" },
  ["fibreglass-board"] = {
    new = "circuit-blue-board",
    amt_multi = 1,
    unlock_by = "angels-glass-smelting-3",
    alt_rec = "angels-glass-fiber-board",
  },
  ["circuit-board"] = { new = "circuit-orange", amt_multi = 1, unlock_by = "advanced-electronics" },
  ["superior-circuit-board"] = { new = "circuit-blue", amt_multi = 1, unlock_by = "advanced-electronics-2" },
  ["multi-layer-circuit-board"] = { new = "circuit-yellow", amt_multi = 1, unlock_by = "advanced-electronics-3" },
  ["basic-electronic-components"] = { new = "circuit-resistor", amt_multi = 1, unlock_by = "electronics" },
  ["electronic-components"] = { new = "circuit-transistor", amt_multi = 1, unlock_by = "advanced-electronics" },
  ["intergrated-electronics"] = { new = "circuit-microchip", amt_multi = 1, unlock_by = "advanced-electronics-2" },
  ["processing-electronics"] = { new = "circuit-cpu", amt_multi = 1, unlock_by = "advanced-electronics-3" },
  --gears
  ["iron-gear-wheel"] = { new = "mechanical-parts", amt_multi = 1 },
  ["steel-gear-wheel"] = { new = "angels-gear", amt_multi = 1, unlock_by = "steel-processing" },
  ["brass-gear-wheel"] = { new = "angels-axle", amt_multi = 1, unlocked_by = "zinc-processing" },
  ["cobalt-steel-gear-wheel"] = { new = "angels-roller-chain", amt_multi = 1, unlocked_by = "cobalt-processing" },
  ["titanium-gear-wheel"] = { new = "angels-spring", amt_multi = 1, unlocked_by = "titanium-processing" },
  ["tungsten-gear-wheel"] = { new = "angels-bearing", amt_multi = 1, unlocked_by = "tungsten-processing" },
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
    { new = "circuit-orange-loaded", amt_multi = 1, unlock_by = "advanced-electronics" }
end
if mods["bobplates"] then
  angelsmods.industries.general_replace["lithium-ion-battery"] = { new = "battery-3", amt_multi = 1 }
  angelsmods.industries.general_replace["silver-zinc-battery"] = { new = "battery-6", amt_multi = 1 }
end
