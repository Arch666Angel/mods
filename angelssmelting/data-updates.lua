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

local patched_recipes = {
  "angels-anode-lead",
  "angels-casing-resin-mold",
  "angels-casting-powder-tungsten",
  "angels-casting-powder-tungsten-2",
  "angels-cathode-nickel",
  "angels-cathode-silver",
  "angels-cathode-zinc",
  "angels-coil-glass-fiber",
  "angels-coil-glass-fiber-2",
  "angels-gas-silane",
  "angels-glass-fiber-board",
  "angels-ingot-aluminium",
  "angels-ingot-chrome",
  "angels-ingot-chrome-2",
  "angels-ingot-chrome-3",
  "angels-ingot-cobalt",
  "angels-ingot-cobalt-2",
  "angels-ingot-gold",
  "angels-ingot-gold-2",
  "angels-ingot-lead",
  "angels-ingot-lead-2",
  "angels-ingot-lead-3",
  "angels-ingot-manganese",
  "angels-ingot-manganese-2",
  "angels-ingot-nickel",
  "angels-ingot-nickel-2",
  "angels-ingot-nickel-3",
  "angels-ingot-silicon",
  "angels-ingot-silicon-2",
  "angels-ingot-silicon-3",
  "angels-ingot-silver",
  "angels-ingot-silver-2",
  "angels-ingot-silver-3",
  "angels-ingot-steel",
  "angels-ingot-tin",
  "angels-ingot-tin-2",
  "angels-ingot-tin-3",
  "angels-ingot-titanium",
  "angels-ingot-titanium-2",
  "angels-ingot-zinc",
  "angels-ingot-zinc-2",
  "angels-ingot-zinc-3",
  "angels-liquid-hexachloroplatinic-acid-smelting",
  "angels-liquid-hexafluorosilicic-acid",
  "angels-liquid-molten-aluminium",
  "angels-liquid-molten-aluminium-2",
  "angels-liquid-molten-aluminium-3",
  "angels-liquid-molten-chrome",
  "angels-liquid-molten-cobalt",
  "angels-liquid-molten-glass",
  "angels-liquid-molten-gold",
  "angels-liquid-molten-iron-3",
  "angels-liquid-molten-lead",
  "angels-liquid-molten-manganese",
  "angels-liquid-molten-nickel",
  "angels-liquid-molten-platinum",
  "angels-liquid-molten-silicon",
  "angels-liquid-molten-silver",
  "angels-liquid-molten-solder",
  "angels-liquid-molten-steel-2",
  "angels-liquid-molten-tin",
  "angels-liquid-molten-titanium-4",
  "angels-liquid-molten-zinc",
  "angels-liquid-titanium-tetrachloride",
  "angels-liquid-titanium-tetrachloride-2",
  "angels-liquid-trichlorosilane",
  "angels-mold-expendable",
  "angels-mold-non-expendable",
  "angels-mold-non-expendable-wash",
  "angels-pellet-chrome",
  "angels-pellet-cobalt",
  "angels-pellet-gold",
  "angels-pellet-lead",
  "angels-pellet-manganese",
  "angels-pellet-nickel",
  "angels-pellet-platinum-smelting",
  "angels-pellet-silica",
  "angels-pellet-silver",
  "angels-pellet-tin",
  "angels-pellet-titanium",
  "angels-pellet-zinc",
  "angels-plate-aluminium",
  "angels-plate-aluminium-2",
  "angels-plate-chrome",
  "angels-plate-chrome-2",
  "angels-plate-cobalt",
  "angels-plate-cobalt-2",
  "angels-plate-glass",
  "angels-plate-glass-2",
  "angels-plate-glass-3",
  "angels-plate-gold",
  "angels-plate-gold-2",
  "angels-plate-lead",
  "angels-plate-lead-2",
  "angels-plate-manganese",
  "angels-plate-manganese-2",
  "angels-plate-nickel",
  "angels-plate-nickel-2",
  "angels-plate-platinum",
  "angels-plate-platinum-2",
  "angels-plate-silver",
  "angels-plate-silver-2",
  "angels-plate-steel",
  "angels-plate-steel-2",
  "angels-plate-tin",
  "angels-plate-tin-2",
  "angels-plate-titanium",
  "angels-plate-titanium-2",
  "angels-plate-tungsten",
  "angels-plate-zinc",
  "angels-plate-zinc-2",
  "angels-platinum-ore-processing",
  "angels-platinum-processed-processing",
  "angels-powder-aluminium",
  "angels-powder-chrome",
  "angels-powder-cobalt",
  "angels-powder-copper",
  "angels-powder-gold",
  "angels-powder-iron",
  "angels-powder-lead",
  "angels-powder-manganese",
  "angels-powder-nickel",
  "angels-powder-platinum",
  "angels-powder-silicon",
  "angels-powder-silver",
  "angels-powder-steel",
  "angels-powder-tin",
  "angels-powder-titanium",
  "angels-powder-tungsten",
  "angels-powder-zinc",
  "angels-processed-chrome",
  "angels-processed-cobalt",
  "angels-processed-gold",
  "angels-processed-lead",
  "angels-processed-manganese",
  "angels-processed-nickel",
  "angels-processed-silica",
  "angels-processed-silver",
  "angels-processed-tin",
  "angels-processed-titanium",
  "angels-processed-zinc",
  "angels-rod-iron",
  "angels-rod-iron-2",
  "angels-rod-stack-iron",
  "angels-rod-stack-iron-2",
  "angels-rod-stack-steel",
  "angels-rod-stack-steel-2",
  "angels-rod-steel",
  "angels-rod-steel-2",
  "angels-roll-aluminium",
  "angels-roll-aluminium-2",
  "angels-roll-chrome",
  "angels-roll-chrome-2",
  "angels-roll-cobalt",
  "angels-roll-cobalt-2",
  "angels-roll-gold",
  "angels-roll-gold-2",
  "angels-roll-lead",
  "angels-roll-lead-2",
  "angels-roll-manganese",
  "angels-roll-manganese-2",
  "angels-roll-nickel",
  "angels-roll-nickel-2",
  "angels-roll-platinum",
  "angels-roll-platinum-2",
  "angels-roll-silver",
  "angels-roll-silver-2",
  "angels-roll-solder",
  "angels-roll-solder-2",
  "angels-roll-steel",
  "angels-roll-steel-2",
  "angels-roll-tin",
  "angels-roll-tin-2",
  "angels-roll-titanium",
  "angels-roll-titanium-2",
  "angels-roll-zinc",
  "angels-roll-zinc-2",
  "angels-silicon-wafer",
  "angels-solder",
  "angels-solder-2",
  "angels-solder-mixture",
  "angels-solder-mixture-smelting",
  "angels-solid-aluminium-oxide",
  "angels-solid-chromate",
  "angels-solid-chrome-oxide",
  "angels-solid-cobalt-hydroxide",
  "angels-solid-cobalt-oxide",
  "angels-solid-cobalt-oxide-2",
  "angels-solid-cobalt-oxide-3",
  "angels-solid-dichromate",
  "angels-solid-glass-mixture",
  "angels-solid-glass-mixture-2",
  "angels-solid-glass-mixture-3",
  "angels-solid-glass-mixture-4",
  "angels-solid-iron-hydroxide-smelting",
  "angels-solid-lead-oxide",
  "angels-solid-manganese-oxide",
  "angels-solid-nickel-carbonyl",
  "angels-solid-silver-nitrate",
  "angels-solid-sodium-silver-cyanide",
  "angels-solid-tungsten-oxide",
  "angels-solid-zinc-oxide",
  "angels-solid-zinc-oxide-2",
  "angels-sponge-titanium",
  "angels-wire-coil-gold",
  "angels-wire-coil-gold-2",
  "angels-wire-coil-platinum",
  "angels-wire-coil-platinum-2",
  "angels-wire-coil-silver",
  "angels-wire-coil-silver-2",
  "angels-wire-coil-tin",
  "angels-wire-coil-tin-2",
  "angels-wire-copper-2",
  "angels-wire-gold",
  "angels-wire-gold-2",
  "angels-wire-platinum",
  "angels-wire-platinum-2",
  "angels-wire-silver",
  "angels-wire-silver-2",
  "angels-wire-tin",
  "angels-wire-tin-2",
  "bob-alumina",
  "bob-aluminium-plate",
  "bob-brass-alloy",
  "bob-bronze-alloy",
  "bob-cobalt-oxide",
  "bob-cobalt-oxide-from-copper",
  "bob-cobalt-plate",
  "bob-cobalt-steel-alloy",
  "bob-electric-chemical-furnace",
  "bob-electric-mixing-furnace",
  "bob-fibreglass-board",
  "bob-fluid-chemical-furnace",
  "bob-fluid-mixing-furnace",
  "bob-gilded-copper-cable",
  "bob-gold-plate",
  "bob-gunmetal-alloy",
  "bob-invar-alloy",
  "bob-lead-oxide",
  "bob-lead-oxide-2",
  "bob-lead-plate",
  "bob-lead-plate-2",
  "bob-nickel-plate",
  "bob-nitinol-alloy",
  "bob-powdered-tungsten",
  "bob-resin-wood",
  "bob-silicon-plate",
  "bob-silver-from-lead",
  "bob-silver-nitrate",
  "bob-silver-plate",
  "bob-solder",
  "bob-solder-alloy",
  "bob-solder-alloy-lead",
  "bob-steel-chemical-furnace",
  "bob-steel-mixing-furnace",
  "bob-stone-chemical-furnace",
  "bob-stone-mixing-furnace",
  "bob-tinned-copper-cable",
  "bob-tin-plate",
  "bob-titanium-plate",
  "bob-tungsten-oxide",
  "bob-tungsten-plate",
  "bob-tungstic-acid",
  "bob-zinc-plate",
  "copper-cable",
  "iron-stick",
}
angelsmods.functions.patch_recycling_recipes(patched_recipes)