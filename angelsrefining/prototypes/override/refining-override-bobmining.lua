local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- WATER MINERS ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmining"] then
    angelsmods.functions.add_flag({
      "water-miner-1",
      "water-miner-2",
      "water-miner-3",
      "water-miner-4",
      "water-miner-5"
    }, "hidden")

    OV.disable_technology(
      {
        "water-miner-1",
        "water-miner-2",
        "water-miner-3",
        "water-miner-4",
        "water-miner-5"
      }
    )

    OV.hide_recipe(
      {
        "water-miner-1",
        "water-miner-2",
        "water-miner-3",
        "water-miner-4",
        "water-miner-5"
      }
    )
  end
  