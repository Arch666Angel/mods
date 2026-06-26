local OV = angelsmods.functions.OV

if mods["bobtech"] then
  OV.patch_recipes({
    {
      name = "production-science-pack",
      ingredients = {
        { type = "item", name = "angels-chemical-plant-3", amount = "chemical-plant" },
      },
    },
  })
  OV.add_prereq("production-science-pack", "angels-advanced-chemistry-2")
end
