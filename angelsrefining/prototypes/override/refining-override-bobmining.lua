local OV = angelsmods.functions.OV

-------------------------------------------------------------------------------
-- WATER MINERS ---------------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobmining"] then
  angelsmods.functions.hide({
    "water-miner-1",
    "water-miner-2",
    "water-miner-3",
    "water-miner-4",
    "water-miner-5",
  })

  OV.disable_technology({
    "water-miner-1",
    "water-miner-2",
    "water-miner-3",
    "water-miner-4",
    "water-miner-5",
  })

  OV.hide_recipe({
    "water-miner-1",
    "water-miner-2",
    "water-miner-3",
    "water-miner-4",
    "water-miner-5",
  })

  if mods["bobplates"] then
    OV.patch_recipes({
      {
        name = "bob-area-mining-drill-2",
        ingredients = {
          { name = "invar-alloy", amount = "cobalt-steel-alloy" },
        },
      },
      {
        name = "bob-mining-drill-2",
        ingredients = {
          { name = "invar-alloy", amount = "cobalt-steel-alloy" },
        },
      },
    })
    OV.add_prereq("bob-drills-2", "bob-invar-processing")
    OV.remove_prereq("bob-drills-2", "cobalt-processing")
    OV.add_prereq("bob-area-drills-2", "bob-invar-processing")
    OV.remove_prereq("bob-area-drills-2", "cobalt-processing")
  end
end
