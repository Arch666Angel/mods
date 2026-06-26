local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- WATER MINERS ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmining"] then
  angelsmods.functions.hide({
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",
    "bob-water-miner-5",
  })

  OV.disable_technology({
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",
    "bob-water-miner-5",
  })

  OV.hide_recipe({
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",
    "bob-water-miner-5",
  })
end
