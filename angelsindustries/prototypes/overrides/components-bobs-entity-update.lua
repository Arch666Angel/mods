local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS
if angelsmods.industries.components then
if mods["bobassembly"] then
  -- burner assemblers
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
end