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
          {type = "item", name = "block-construction-3", amount = 2},
          {type = "item", name = "block-electronics-3", amount = 2},
          {type = "item", name = "block-energy-3", amount = 3},
          angelsmods.trigger.smelting_products["glass"].plate and {type = "item", name = "angels-plate-glass", amount = 5} or nil,
        }
      },
    }
  )

end
