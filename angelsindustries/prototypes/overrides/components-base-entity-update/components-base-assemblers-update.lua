if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE GAME ASSEMBLERS (+ ANGELS)

  OV.patch_recipes({
    {
      name = "assembling-machine-1",
      ingredients = {
        { "!!" },
        { type = "item", name = "block-construction-1", amount = 2 },
        { type = "item", name = "block-electronics-0", amount = 3 },
        { type = "item", name = "block-mechanical-1", amount = 2 },
      },
    },
    {
      name = "assembling-machine-2",
      ingredients = angelsmods.functions.clean_ingredient_list({
        { "!!" },
        not angelsmods.industries.return_ingredients and { type = "item", name = "assembling-machine-1", amount = 1 }
          or nil,
        { type = "item", name = "block-construction-2", amount = 2 },
        { type = "item", name = "block-enhancement-1", amount = 3 },
        { type = "item", name = "block-mechanical-1", amount = 3 },
        { type = "item", name = "block-fluidbox-1", amount = 1 },
      }),
    },
    {
      name = "assembling-machine-3",
      ingredients = angelsmods.functions.clean_ingredient_list({
        { "!!" },
        not angelsmods.industries.return_ingredients and { type = "item", name = "assembling-machine-2", amount = 1 }
          or nil,
        { type = "item", name = "block-construction-4", amount = 2 },
        { type = "item", name = "block-enhancement-4", amount = 3 },
        { type = "item", name = "block-mechanical-2", amount = 5 },
        { type = "item", name = "block-fluidbox-2", amount = 3 },
      }),
    },
  })
  OV.remove_prereq("automation-3", "speed-module")
  if angelsmods.industries.tech then
    OV.add_prereq("automation-3", "tech-specialised-labs-advanced-enhance-1")
  else
    OV.add_prereq("automation-3", "angels-advanced-blocks-1")
  end
end
