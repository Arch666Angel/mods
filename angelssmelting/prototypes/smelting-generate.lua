if angelsmods.refining then
  if bobmods and bobmods.plates then
    angelsmods.functions.OV.converter_fluid("bob-tungstic-acid", "angels-liquid-tungstic-acid")
  end

  --CREATE BARRELS
  angelsmods.functions.make_void("angels-liquid-chlorauric-acid", "chemical")
  angelsmods.functions.make_void("angels-liquid-hexachloroplatinic-acid", "chemical")
  angelsmods.functions.make_void("angels-gas-silane", "chemical")
  angelsmods.functions.make_void("angels-liquid-trichlorosilane", "chemical")
  angelsmods.functions.make_void("angels-liquid-titanium-tetrachloride", "chemical")
  angelsmods.functions.make_void("angels-gas-tungsten-hexafluoride", "chemical")
  angelsmods.functions.make_void("angels-liquid-hexafluorosilicic-acid", "chemical")
  angelsmods.functions.make_void("angels-liquid-tungstic-acid", "chemical")
  angelsmods.functions.make_void("angels-liquid-coolant", "water")
end
