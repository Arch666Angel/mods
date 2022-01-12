local AT = angelsmods.trigger
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
AT.plastic_1 = true --Poly-Propylene (PP)
AT.plastic_2 = true --Poly-Ethylene-Napthalate (HDPE)
AT.plastic_3 = true --Bakalite (Plas)
AT.plastic_4 = true --Poly-Carbonate (PC)
AT.plastic_5 = true --Poly-Methyl-Methacrylate (PMMA)
AT.plastic_6 = true --Poly-Vinyl-Chloride (PVC)
AT.plastic_7 = true --Acrylonitrile-Butadiene-Styrene (ABS)
AT.plastic_b1 = true --
AT.plastic_b2 = true
AT.plastic_b3 = true
AT.plastic_b4 = true --Poly-lactic Acid (PLA)

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

--Rocket Fuel

--Nuclear support
AT.deuterium = true --mods["angelsindustries"] and settings.startup["angels-enable-industries"].value