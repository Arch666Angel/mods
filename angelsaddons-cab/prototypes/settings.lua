return {
  ["equipment"] = {
    ["energy-interface"] = {
      name = "angels-cab-energy-interface%s",
      supplyArea = 11,
      transferRates = { -- in J/tick
        ["mk1"] = math.floor(settings.startup["angels-cab-energy-transfer-rate-mk1"].value / 60) + 1,
        --["mk2"] = math.floor(settings.startup["angels-cab-energy-transfer-rate-mk2"].value/60) + 1,
      },
    },
  },
}
