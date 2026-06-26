if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BASE GAME INSERTERS (+ ANGELS)

  OV.patch_recipes({
    {
      name = "inserter",
      ingredients = {
        { "!!" },
        { type = "item", name = "circuit-grey", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
      },
    },
    {
      name = "long-handed-inserter",
      ingredients = {
        { "!!" },
        { type = "item", name = "inserter", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
      },
    },
    {
      name = "fast-inserter",
      ingredients = {
        { "!!" },
        { type = "item", name = "inserter", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 2 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
      },
    },
    {
      name = "bulk-inserter",
      ingredients = {
        { "!!" },
        { type = "item", name = "fast-inserter", amount = 1 },
        { type = "item", name = "circuit-green-loaded", amount = 4 },
        { type = "item", name = "circuit-orange-loaded", amount = 1 },
        { type = "item", name = "angels-servo-motor-2", amount = 2 },
      },
    },
  })
  OV.add_prereq("fast-inserter", "tech-red-circuit")
  OV.add_prereq("bulk-inserter", "tech-orange-circuit")
end
