
if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS
  
  if mods["bobassembly"] then
    OV.patch_recipes(
      {
        {
          name = "assembling-machine-2",
          ingredients = {
            {"block-electronics-1", "block-electronics-2"}
          },
          minable = {
            results = {
              {"block-electronics-1", "block-electronics-2"}
            }
          }
        }
      }
    )
  end

  -- regular assemblers ingredient count
  if data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count and
     data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count < 4
  then -- required for tier 1 block automation
    data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 4
  end

  if data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count and
     data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count < 5
  then -- required for tier 2 block automation
    data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
  end

end