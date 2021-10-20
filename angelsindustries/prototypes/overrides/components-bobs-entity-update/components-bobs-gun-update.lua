if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  -- flamethrower
  OV.patch_recipes(
    {
      {
        name = "flamethrower",
        ingredients =
        {
          { type = "item", name = "circuit-red-loaded", amount = 2 }
        },
      },
      {
        name = "rocket-launcher",
        ingredients =
        {
          { type = "item", name = "circuit-green-loaded", amount = "circuit-red-loaded" }
        },
      },
    }
  )

end