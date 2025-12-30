local OV = angelsmods.functions.OV

if angelsmods.refining then
  --ADD UNLOCK TO BARRELS
  OV.add_prereq("bob-fluid-barreling", "angels-fluid-control")

  --CREATE CONVERTER
  OV.converter_fluid("sulfuric-acid", "angels-liquid-sulfuric-acid")
  OV.converter_fluid("heavy-oil", "angels-liquid-naphtha")
  OV.converter_fluid("light-oil", "angels-liquid-fuel-oil")
  OV.converter_fluid("petroleum-gas", "angels-gas-methane")
  if bobmods then
    if bobmods.plates then
      OV.converter_fluid("bob-chlorine", "angels-gas-chlorine")
      OV.converter_fluid("bob-oxygen", "angels-gas-oxygen")
      OV.converter_fluid("bob-hydrogen", "angels-gas-hydrogen")
      OV.converter_fluid("bob-hydrogen-chloride", "angels-gas-hydrogen-chloride")
      OV.converter_fluid("bob-nitrogen", "angels-gas-nitrogen")
      OV.converter_fluid("bob-sulfur-dioxide", "angels-gas-sulfur-dioxide")
      OV.converter_fluid("bob-nitric-acid", "angels-liquid-nitric-acid")
      OV.converter_fluid("bob-nitrogen-dioxide", "angels-gas-nitrogen-dioxide")
      OV.converter_fluid("bob-liquid-air", "angels-gas-compressed-air")
      OV.converter_fluid("bob-ferric-chloride-solution", "angels-liquid-ferric-chloride-solution")
      OV.converter_fluid("bob-hydrogen-sulfide", "angels-gas-hydrogen-sulfide")
    end
  end

  --CREATE BARRELS
  angelsmods.functions.make_void("angels-gas-compressed-air", "chemical")
  angelsmods.functions.make_void("angels-gas-hydrogen", "chemical")
  --angelsmods.functions.make_void("angels-gas-deuterium", "chemical")
  angelsmods.functions.make_void("angels-gas-oxygen", "chemical")
  angelsmods.functions.make_void("angels-gas-carbon-monoxide", "chemical")
  angelsmods.functions.make_void("angels-gas-carbon-dioxide", "chemical")
  angelsmods.functions.make_void("angels-gas-hydrogen-fluoride", "chemical")
  angelsmods.functions.make_void("angels-liquid-hydrofluoric-acid", "chemical")

  angelsmods.functions.make_void("angels-liquid-aqueous-sodium-hydroxide", "water")

  angelsmods.functions.make_void("angels-gas-chlorine", "chemical")
  angelsmods.functions.make_void("angels-gas-hydrogen-chloride", "chemical")
  angelsmods.functions.make_void("angels-liquid-hydrochloric-acid", "chemical")
  angelsmods.functions.make_void("angels-gas-allylchlorid", "chemical")
  angelsmods.functions.make_void("angels-gas-epichlorohydrin", "chemical")
  angelsmods.functions.make_void("angels-gas-chlor-methane", "chemical")
  angelsmods.functions.make_void("angels-liquid-perchloric-acid", "chemical")
  angelsmods.functions.make_void("angels-liquid-ferric-chloride-solution", "chemical")
  angelsmods.functions.make_void("angels-liquid-cupric-chloride-solution", "chemical")

  angelsmods.functions.make_void("angels-gas-nitrogen", "chemical")
  angelsmods.functions.make_void("angels-gas-ammonia", "chemical")
  angelsmods.functions.make_void("angels-gas-nitrogen-dioxide", "chemical")
  angelsmods.functions.make_void("angels-gas-dinitrogen-tetroxide", "chemical")
  angelsmods.functions.make_void("angels-gas-nitrogen-monoxide", "chemical")
  angelsmods.functions.make_void("angels-gas-ammonium-chloride", "chemical")
  angelsmods.functions.make_void("angels-gas-urea", "chemical")
  angelsmods.functions.make_void("angels-gas-melamine", "chemical")
  angelsmods.functions.make_void("angels-liquid-nitric-acid", "chemical")
  angelsmods.functions.make_void("angels-gas-monochloramine", "chemical")
  angelsmods.functions.make_void("angels-gas-hydrazine", "chemical")

  angelsmods.functions.make_void("angels-gas-methylamine", "chemical")
  angelsmods.functions.make_void("angels-gas-dimethylamine", "chemical")
  angelsmods.functions.make_void("angels-gas-dimethylhydrazine", "chemical")

  angelsmods.functions.make_void("angels-gas-natural-1", "chemical")
  angelsmods.functions.make_void("angels-liquid-multi-phase-oil", "chemical")
  angelsmods.functions.make_void("crude-oil", "chemical")
  angelsmods.functions.make_void("angels-gas-raw-1", "chemical")
  angelsmods.functions.make_void("angels-liquid-condensates", "chemical")
  angelsmods.functions.make_void("angels-liquid-ngl", "chemical")
  angelsmods.functions.make_void("angels-gas-residual", "chemical")

  angelsmods.functions.make_void("angels-gas-methane", "chemical")
  angelsmods.functions.make_void("angels-gas-ethane", "chemical")
  angelsmods.functions.make_void("angels-gas-butane", "chemical")
  angelsmods.functions.make_void("angels-gas-propene", "chemical")
  angelsmods.functions.make_void("angels-liquid-naphtha", "chemical")
  angelsmods.functions.make_void("angels-liquid-mineral-oil", "chemical")
  angelsmods.functions.make_void("angels-liquid-fuel-oil", "chemical")
  angelsmods.functions.make_void("angels-gas-methanol", "chemical")
  angelsmods.functions.make_void("angels-gas-ethylene", "chemical")
  angelsmods.functions.make_void("angels-gas-benzene", "chemical")

  angelsmods.functions.make_void("angels-gas-synthesis", "chemical")
  angelsmods.functions.make_void("angels-gas-butadiene", "chemical")
  angelsmods.functions.make_void("angels-liquid-phenol", "chemical")
  angelsmods.functions.make_void("angels-liquid-ethylbenzene", "chemical")
  angelsmods.functions.make_void("angels-liquid-styrene", "chemical")
  angelsmods.functions.make_void("angels-gas-formaldehyde", "chemical")
  angelsmods.functions.make_void("angels-liquid-polyethylene", "chemical")
  angelsmods.functions.make_void("angels-liquid-glycerol", "chemical")
  angelsmods.functions.make_void("lubricant", "chemical")
  angelsmods.functions.make_void("angels-gas-acetone", "chemical")
  angelsmods.functions.make_void("angels-liquid-toluene", "chemical")
  angelsmods.functions.make_void("angels-liquid-bisphenol-a", "chemical")

  angelsmods.functions.make_void("angels-gas-acid", "chemical")
  angelsmods.functions.make_void("angels-gas-hydrogen-sulfide", "chemical")
  angelsmods.functions.make_void("angels-gas-sulfur-dioxide", "chemical")
  angelsmods.functions.make_void("angels-liquid-sulfuric-acid", "chemical")
end
