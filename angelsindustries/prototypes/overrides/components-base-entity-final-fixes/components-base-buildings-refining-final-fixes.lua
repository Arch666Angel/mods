if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR ANGELS BUILDINGS which get overridden by AAI etc.

  OV.patch_recipes({
    -- Ore crushers
    {
      name = "angels-burner-ore-crusher",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-construction-1", amount = 2 },
        { type = "item", name = "block-mechanical-1", amount = 1 },
        mods["aai-industry"] and { type = "item", name = "motor", amount = 1 } or nil,
      },
    },
    {
      name = "angels-ore-crusher",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-production-1", amount = 1 },
        { type = "item", name = "block-construction-1", amount = 6 },
        { type = "item", name = "block-mechanical-1", amount = 2 },
        mods["aai-industry"] and { type = "item", name = "electric-motor", amount = 2 } or nil,
      },
    },
    -- Ore sorting facilities
    {
      name = "angels-ore-sorting-facility",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-production-1", amount = 1 },
        { type = "item", name = "block-construction-1", amount = 24 },
        { type = "item", name = "block-mechanical-1", amount = 8 },
        { type = "item", name = "block-electronics-0", amount = 12 },
        mods["aai-industry"] and { type = "item", name = "electric-motor", amount = 5 } or nil,
      },
    },
    -- Ore floatation cells
    {
      name = "angels-ore-floatation-cell",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-production-2", amount = 3 },
        { type = "item", name = "block-construction-2", amount = 12 },
        { type = "item", name = "block-fluidbox-1", amount = 4 },
        { type = "item", name = "block-electronics-2", amount = 8 },
        mods["aai-industry"] and { type = "item", name = "electric-motor", amount = 5 } or nil,
      },
    },
  })
  OV.execute()
end
