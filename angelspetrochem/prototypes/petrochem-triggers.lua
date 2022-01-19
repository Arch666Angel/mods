local AT = angelsmods.trigger
--Fluorite
if mods["bobplates"] then
  AT.ores["fluorite"] = true
elseif mods["angelsindustries"] then
  if -- overhaul enabled
    settings.startup["angels-enable-industries"].value or
    settings.startup["angels-enable-components"].value or
    settings.startup["angels-enable-tech"].value
  then
    AT.ores["fluorite"] = true
  end
end
--Plastics
AT.plastic_1 = true --Poly-Propylene (PP)
AT.plastic_2 = true --Poly-Ethylene-Napthalate (HDPE)
AT.plastic_3 = true --Bakalite (Plas)
AT.plastic_4 = false --Poly-Carbonate (PC)[PCP] --false
AT.plastic_5 = false --Poly-Methyl-Methacrylate (PMMA)[PCP] --false
AT.plastic_6 = false --Poly-Vinyl-Chloride (PVC)[PCP] --false
AT.plastic_7 = false --Acrylonitrile-Butadiene-Styrene (ABS)[PCP] --false
AT.plastic_b1 = false --Cellulose Acetate
AT.plastic_b2 = false --Propionic-Acid blended Cellulose Acetate
AT.plastic_b3 = false --Poly-lactic Acid (PLA)[PCP] --false

--Carbon Solids
AT.carbon = false --false
AT.charcoal = true --false

--Resin

--Glass
AT.artificial_glass = true

--Oils

--Gas

--Smelting Support

--Explosives

--Rubber

--Sulfurs

--Chlorides

--Acids

--Nitrates

--Fuels (rocket and solid fuel)
AT.rocket_booster = false
AT.solid_from_gas = false

--Nuclear support
AT.deuterium = true --mods["angelsindustries"] and settings.startup["angels-enable-industries"].value