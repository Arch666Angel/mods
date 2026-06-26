local OV = angelsmods.functions.OV

if mods["bobgreenhouse"] then
  OV.patch_recipes({
    {
      name = "bob-fertiliser",
      ingredients = {
        { name = "angels-gas-urea", type = "fluid", amount = 20 },
        { name = "angels-gas-methane", type = "fluid", amount = 0 },
        { name = "angels-gas-nitrogen", type = "fluid", amount = 0 },
      },
      category = "angels-advanced-chemistry",
      crafting_machine_tint = angelsmods.functions.get_recipe_tints({
        "angels-gas-urea",
        "angels-gas-methane",
        "angels-gas-nitrogen",
      }),
    },
  })

  OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
  OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-2")
end
