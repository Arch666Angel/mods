local OV = angelsmods.functions.OV

if mods["bobvehicleequipment"] then
  if mods["bobplates"] and data.raw.fluid["bob-deuterium"] then
    -- In Angel's mods Heavy water becomes available way later then in Bob's

    OV.remove_prereq("bob-vehicle-fission-reactor-equipment-2", "angels-water-chemistry-1")
    OV.remove_prereq("bob-vehicle-fission-cell-equipment-2", "angels-water-chemistry-1")

    OV.add_prereq("bob-vehicle-fission-reactor-equipment-4", "angels-water-chemistry-2")
    OV.add_prereq("bob-vehicle-fission-cell-equipment-4", "angels-water-chemistry-2")
    OV.add_prereq("bob-fission-reactor-equipment-3", "angels-water-chemistry-2")
    OV.patch_recipes({
      {
        name = "bob-vehicle-fission-reactor-equipment-2",
        category = "crafting",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 0 },
        },
      },
      {
        name = "bob-vehicle-fission-cell-equipment-2",
        category = "crafting",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 0 },
        },
      },
      {
        name = "fission-reactor-equipment",
        category = "crafting",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 0 },
        },
      },
      {
        name = "bob-vehicle-fission-reactor-equipment-4",
        category = "crafting-with-fluid",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 50 },
        },
      },
      {
        name = "bob-vehicle-fission-cell-equipment-4",
        category = "crafting-with-fluid",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 25 },
        },
      },
      {
        name = "fission-reactor-equipment-3",
        category = "crafting-with-fluid",
        ingredients = {
          { type = "fluid", name = "angels-liquid-water-heavy", amount = 50 },
        },
      },
    })
  end
end
