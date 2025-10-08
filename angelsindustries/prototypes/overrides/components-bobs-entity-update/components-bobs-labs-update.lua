if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["boblogistics"] then
    if not mods["bobelectronics"] then
      OV.patch_recipes({
        {
          name = "lab",
          ingredients = {
            { "block-electronics-0", "block-electronics-1" },
          },
        },
      })
    end
  end
end
