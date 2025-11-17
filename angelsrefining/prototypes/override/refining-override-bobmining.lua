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

  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-area-mining-drill-2",
        ingredients = {
          { name = "bob-invar-alloy", amount = "bob-cobalt-steel-alloy" },
        },
      },
      {
        name = "bob-mining-drill-2",
        ingredients = {
          { name = "bob-invar-alloy", amount = "bob-cobalt-steel-alloy" },
        },
      },
    })
    OV.add_prereq("bob-drills-3", "bob-invar-processing")
    OV.remove_prereq("bob-drills-3", "bob-cobalt-processing")
    OV.add_prereq("bob-area-drills-2", "bob-invar-processing")
    OV.remove_prereq("bob-area-drills-2", "bob-cobalt-processing")
  end
end
