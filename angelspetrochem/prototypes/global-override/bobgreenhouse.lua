local OV = angelsmods.functions.OV

if mods["bobgreenhouse"] then
  OV.patch_recipes(
    {
      {
        name = "bob-fertiliser",
        ingredients = {
          {name = "gas-urea", type = "fluid", amount = 20},
          {name = "gas-methane", type = "fluid", amount = 0},
          {name = "gas-nitrogen", type = "fluid", amount = 0}
        }
      }
    }
  )

  OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
  OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-2")
end