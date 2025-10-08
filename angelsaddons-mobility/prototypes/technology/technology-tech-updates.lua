if angelsmods.industries and angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  --== CRAWLER ==--
  OV.remove_science_pack("angels-crawler-train-3", "automation-science-pack")
  OV.remove_science_pack("angels-crawler-train-3", "logistic-science-pack")
  OV.remove_science_pack("angels-crawler-train-3", "chemical-science-pack")
  OV.set_science_pack("angels-crawler-train-3", "angels-science-pack-orange", 1)

  OV.set_science_pack("angels-crawler-train-1", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-crawler-train-2", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-crawler-train-3", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-crawler-train-4", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-crawler-train-5", "datacore-logistic-1", 2)

  --== PETRO ==--
  OV.remove_science_pack("angels-petro-train-3", "automation-science-pack")
  OV.remove_science_pack("angels-petro-train-3", "logistic-science-pack")
  OV.remove_science_pack("angels-petro-train-3", "chemical-science-pack")
  OV.set_science_pack("angels-petro-train-3", "angels-science-pack-orange", 1)

  OV.set_science_pack("angels-petro-train-1", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-petro-train-2", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-petro-train-3", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-petro-train-4", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-petro-train-5", "datacore-logistic-1", 2)

  --== SMELTING ==--
  OV.remove_science_pack("angels-smelting-train-3", "automation-science-pack")
  OV.remove_science_pack("angels-smelting-train-3", "logistic-science-pack")
  OV.remove_science_pack("angels-smelting-train-3", "chemical-science-pack")
  OV.set_science_pack("angels-smelting-train-3", "angels-science-pack-orange", 1)

  OV.set_science_pack("angels-smelting-train-1", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-smelting-train-2", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-smelting-train-3", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-smelting-train-4", "datacore-logistic-1", 2)
  OV.set_science_pack("angels-smelting-train-5", "datacore-logistic-1", 2)
end
