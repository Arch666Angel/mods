angelsmods.trigger.petrochem = angelsmods.trigger.petrochem or {}
local ATP = angelsmods.trigger.petrochem

--Fluorite
if mods["bobplates"] then
  angelsmods.trigger.ores["fluorite"] = true
elseif mods["angelsindustries"] then
  if -- overhaul enabled
    settings.startup["angels-enable-industries"].value or
    settings.startup["angels-enable-components"].value or
    settings.startup["angels-enable-tech"].value
  then
    angelsmods.trigger.ores["fluorite"] = true
  end
end

--Plastics
ATP.plastic = true
ATP.plastic_1 = true --Poly-Propylene (PP)
ATP.plastic_2 = true --Poly-Ethylene-Napthalate (HDPE)
ATP.plastic_3 = true --Bakalite (Plas)
ATP.plastic_4 = false --Poly-Carbonate (PC)[PCP] --false
ATP.plastic_5 = false --Poly-Methyl-Methacrylate (PMMA)[PCP] --false
ATP.plastic_6 = false --Poly-Vinyl-Chloride (PVC)[PCP] --false
ATP.plastic_7 = false --Acrylonitrile-Butadiene-Styrene (ABS)[PCP] --false
ATP.plastic_b1 = false --Cellulose Acetate
ATP.plastic_b2 = false --Propionic-Acid blended Cellulose Acetate
ATP.plastic_b3 = false --Poly-lactic Acid (PLA)[PCP] --false

--Carbon Solids
ATP.carbon = false --false
ATP.charcoal = true --false

--Resin
ATP.resin = not (angelsmods.functions.is_special_vanilla() or (not mods["bobelectronics"]))

--Glass
ATP.artificial_glass = true

--Oils

--Gas

--Smelting Support

--Explosives

--Rubber
ATP.rubber = not (angelsmods.functions.is_special_vanilla() or (not mods["bobelectronics"]))

--Sulfurs

--Chlorides
ATP.liquid_ferric_chloride_solution = not angelsmods.functions.is_special_vanilla()
ATP.liquid_cupric_chloride_solution = not angelsmods.functions.is_special_vanilla()

--Acids
ATP.acids = {
  ["sulfuric"] = true, --always on
  ["fluoric"] = (angelsmods.trigger.enable_acids or angelsmods.bioprocessing) and true or false,
  ["nitric"] = (angelsmods.trigger.enable_acids or angelsmods.bioprocessing) and true or false,
  ["chloric"] = (angelsmods.trigger.enable_acids or angelsmods.bioprocessing) and true or false,
}

--Nitrates

--Fuels (rocket and solid fuel)
ATP.rocket_booster =  true -- would have to disable nukes/rockets at the control stage if biters are off...
ATP.solid_from_gas = false -- not sure this is even valuable

--Nuclear support
ATP.deuterium = true --mods["angelsindustries"] and settings.startup["angels-enable-industries"].value