if angelsmods.refining then
  if bobmods and bobmods.plates then
    angelsmods.functions.make_converter("tungstic-acid", "liquid-tungstic-acid")
  end

  --CREATE BARRELS
  angelsmods.functions.make_void("liquid-chlorauric-acid", "chemical")
  angelsmods.functions.make_void("liquid-hexachloroplatinic-acid", "chemical")
  angelsmods.functions.make_void("gas-silane", "chemical")
  angelsmods.functions.make_void("liquid-trichlorosilane", "chemical")
  angelsmods.functions.make_void("liquid-titanium-tetrachloride", "chemical")
  angelsmods.functions.make_void("gas-tungsten-hexafluoride", "chemical")
  angelsmods.functions.make_void("liquid-hexafluorosilicic-acid", "chemical")
  angelsmods.functions.make_void("liquid-tungstic-acid", "chemical")
  angelsmods.functions.make_void("liquid-coolant", "water")
end
