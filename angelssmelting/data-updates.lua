--TRIGGER CHECKS
--alloy-brass
if angelsmods.trigger.smelting_products["brass"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
--alloy-bronze
if angelsmods.trigger.smelting_products["bronze"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--alloy-cobalt-steel
if angelsmods.trigger.smelting_products["cobalt-steel"].plate then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
--alloy-gunmetal
if angelsmods.trigger.smelting_products["gunmetal"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--alloy-invar
if angelsmods.trigger.smelting_products["invar"].plate then
  angelsmods.trigger.smelting_products["steel"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
--alloy-nitinol
if angelsmods.trigger.smelting_products["nitinol"].plate then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["titanium"].ingot = true
end
--alloy-solder
if angelsmods.trigger.smelting_products["solder"].wire then
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
--alloy-steel
if angelsmods.trigger.smelting_products["iron"].rod then
  angelsmods.trigger.smelting_products["steel"].rod = true
end
if angelsmods.trigger.smelting_products["steel"].rod then
  angelsmods.trigger.smelting_products["steel"].plate = true
end
if angelsmods.trigger.smelting_products["steel"].plate then
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
if angelsmods.trigger.smelting_products["steel"].powder then
  angelsmods.trigger.smelting_products["steel"].ingot = true
end
if angelsmods.trigger.smelting_products["steel"].ingot then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
--aluminium
if angelsmods.trigger.smelting_products["aluminium"].powder then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
end
if angelsmods.trigger.smelting_products["aluminium"].plate then
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["manganese"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
  angelsmods.trigger.smelting_products["silicon"].ingot = true
end
--chrome
if angelsmods.trigger.smelting_products["chrome"].powder then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
if angelsmods.trigger.smelting_products["chrome"].plate then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
--tungsten
if angelsmods.trigger.smelting_products["tungsten"].plate then
  angelsmods.trigger.smelting_products["tungsten"].powder = true
  angelsmods.trigger.smelting_products["nickel"].powder = true
  angelsmods.trigger.smelting_products["cobalt"].powder = true
end
--cobalt
if angelsmods.trigger.smelting_products["cobalt"].plate then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
end
if angelsmods.trigger.smelting_products["cobalt"].powder then
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
end
--copper
if angelsmods.trigger.smelting_products["copper"].wire then
  angelsmods.trigger.smelting_products["copper"].plate = true
end
if angelsmods.trigger.smelting_products["copper"].plate then
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["copper"].powder then
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
--glass
if angelsmods.trigger.smelting_products["glass"].board then
  angelsmods.trigger.smelting_products["glass"].fibre = true
end
if angelsmods.trigger.smelting_products["glass"].fibre then
  angelsmods.trigger.smelting_products["glass"].mixture = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
if angelsmods.trigger.smelting_products["glass"].plate then
  angelsmods.trigger.smelting_products["glass"].mixture = true
  angelsmods.trigger.smelting_products["lead"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
--gold
if angelsmods.trigger.smelting_products["gold"].powder then
  angelsmods.trigger.smelting_products["gold"].ingot = true
end
if angelsmods.trigger.smelting_products["gold"].wire then
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["gold"].plate then
  angelsmods.trigger.smelting_products["gold"].ingot = true
end
--iron
if angelsmods.trigger.smelting_products["iron"].powder then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
if angelsmods.trigger.smelting_products["iron"].rod then
  angelsmods.trigger.smelting_products["iron"].plate = true
end
if angelsmods.trigger.smelting_products["iron"].plate then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end
--lead
if angelsmods.trigger.smelting_products["lead"].powder then
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
if angelsmods.trigger.smelting_products["lead"].plate then
  angelsmods.trigger.smelting_products["lead"].ingot = true
end
--nickel
if angelsmods.trigger.smelting_products["nickel"].plate then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
if angelsmods.trigger.smelting_products["nickel"].powder then
  angelsmods.trigger.smelting_products["nickel"].ingot = true
end
--platinum
if angelsmods.trigger.smelting_products["platinum"].wire then
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["platinum"].plate then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
end
if angelsmods.trigger.smelting_products["platinum"].powder then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
end
--silicon
if angelsmods.trigger.smelting_products["silicon"].powder then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
end
if angelsmods.trigger.smelting_products["silicon"].wafer then
  angelsmods.trigger.smelting_products["silicon"].mono = true
end
if angelsmods.trigger.smelting_products["silicon"].mono then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
end
--silver
if angelsmods.trigger.smelting_products["silver"].wire then
  angelsmods.trigger.smelting_products["silver"].ingot = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["silver"].plate then
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
if angelsmods.trigger.smelting_products["silver"].powder then
  angelsmods.trigger.smelting_products["silver"].ingot = true
end
--tin
if angelsmods.trigger.smelting_products["tin"].wire then
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["copper"].ingot = true
end
if angelsmods.trigger.smelting_products["tin"].plate then
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
if angelsmods.trigger.smelting_products["tin"].powder then
  angelsmods.trigger.smelting_products["tin"].ingot = true
end
--titanium
if angelsmods.trigger.smelting_products["titanium"].plate then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
  angelsmods.trigger.smelting_products["manganese"].ingot = true
  angelsmods.trigger.smelting_products["nickel"].ingot = true
  angelsmods.trigger.smelting_products["tin"].ingot = true
  angelsmods.trigger.smelting_products["aluminium"].ingot = true
  angelsmods.trigger.smelting_products["cobalt"].ingot = true
  angelsmods.trigger.smelting_products["chrome"].ingot = true
end
if angelsmods.trigger.smelting_products["titanium"].powder then
  angelsmods.trigger.smelting_products["titanium"].ingot = true
end
--zinc
if angelsmods.trigger.smelting_products["zinc"].plate then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
if angelsmods.trigger.smelting_products["zinc"].powder then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
end
--manganese
if angelsmods.trigger.smelting_products["manganese"].powder then
  angelsmods.trigger.smelting_products["manganese"].ingot = true
end
if angelsmods.trigger.smelting_products["manganese"].plate then
  angelsmods.trigger.smelting_products["manganese"].ingot = true
end
if angelsmods.trigger.smelting_products["manganese"].ingot then
  angelsmods.trigger.smelting_products["iron"].ingot = true
end

--Generic recipe generation
require("prototypes.smelting-generate")
--Overrides for refining/angels internal
require("prototypes.smelting-override")

-- EXECUTE OVERRIDES
angelsmods.functions.OV.execute()
local patched_recipes = {"angels-gas-sulfur-dioxide-calcium-sulfate, angels-solid-lime, angels-filter-lime, angels-solid-lime, bob-heat-shield-tile, angels-liquid-molten-brass, angels-liquid-molten-brass-2, angels-liquid-molten-brass-3, angels-plate-brass, angels-liquid-molten-bronze, angels-liquid-molten-bronze-2, angels-liquid-molten-bronze-3, angels-plate-bronze, angels-liquid-molten-cobalt-steel, angels-plate-cobalt-steel, angels-liquid-molten-gunmetal, angels-plate-gunmetal, angels-liquid-molten-invar, angels-plate-invar, angels-liquid-molten-nitinol, angels-plate-nitinol, angels-filter-ceramic, plastic-bar, angels-solid-cobalt-oxide-2, angels-solid-cobalt-oxide-3, copper-plate, copper-ore, copper-plate, angels-ore3-crushed-smelting, angels-copper-pebbles-smelting, angels-copper-nugget-smelting, copper-cable, bob-glass, bob-quartz, bob-glass, angels-glass-fiber-board, bob-fibreglass-board, bob-integrated-electronics, processing-unit, angels-wire-gold, iron-plate, iron-ore, iron-plate, angels-ore1-crushed-smelting, angels-iron-pebbles-smelting, angels-iron-nugget-smelting, angels-ore5-crushed-smelting, bob-lithium-chloride, bob-lithium, bob-lithium-cobalt-oxide, bob-lithium-water-electrolysis, processing-electronics, angels-wire-platinum, bob-silicon-wafer, bob-silicon-wafer, bob-silicon-powder, bob-silicon-nitride, bob-silicon-carbide, bob-silver-oxide, bob-electronic-components, angels-wire-silver, advanced-circuit, angels-wire-silver, plastic-bar, electronic-circuit, stone-brick, concrete, hazard-concrete, refined-concrete, hazard-refined-concrete, angels-ore3-crushed-smelting, angels-solid-cement, angels-stone-crushed, angels-solid-cement-2, angels-stone-crushed, angels-stone-crushed, angels-reinforced-concrete-brick, steel-plate, angels-plate-steel, angels-rod-steel, angels-ore6-crushed-smelting, angels-ore6-crushed-smelting, bob-tungsten-carbide, bob-tungsten-carbide-2, angels-solid-zinc-oxide-2, assembling-machine-1, assmach-1, t0-plate, t0-circuit, t0-gears, assembling-machine-2, assmach-2, t1-plate, t1-circuit, t1-gears, t1-pipe, assembling-machine-3, assmach-3, t3-plate, t3-circuit, t3-gears, t3-pipe, assembling-machine-4, assmach-4, t4-plate, t4-circuit, t4-gears, t4-pipe, assembling-machine-5, assmach-5, t5-plate, t5-circuit, t5-gears, t5-pipe, assembling-machine-6, assmach-6, t6-plate, t6-circuit, t6-gears, t6-pipe, bob-electronics-machine-1, elecmach-1, t0-plate, t0-circuit, t0-gears, bob-electronics-machine-2, elecmach-2, t3-plate, t3-circuit, t3-gears, t3-pipe, bob-electronics-machine-3, elecmach-3, t5-plate, t5-circuit, t5-gears, t5-pipe"}
angelsmods.functions.patch_recycling_recipes(patched_recipes)