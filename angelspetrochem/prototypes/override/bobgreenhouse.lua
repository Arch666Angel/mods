local OV = angelsmods.functions.OV

if mods["bobgreenhouse"] then
  OV.patch_recipes({
    {
      name = "bob-resin-wood",
      energy_required = 5,
      ingredients = { { name = "wood", type = "item", amount = "+4" } },
    },
  })
end
