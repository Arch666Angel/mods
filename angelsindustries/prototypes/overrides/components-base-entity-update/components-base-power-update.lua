if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE POWER
  
  OV.patch_recipes(
    {
      {
        name = "solar-panel",
        ingredients =
        {
          {"!!"},
          {type = "item", name = "glass", amount = 5},
          {type = "item", name = "block-construction-3", amount = 2},
          {type = "item", name = "block-electronic-3", amount = 2},
          {type = "item", name = "block-energy-3", amount = 3},
        }
      },
    }
  )

end
