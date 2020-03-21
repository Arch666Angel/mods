local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS

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
  OV.add_prereq("automation-2", "angels-components-construction-2")
end
