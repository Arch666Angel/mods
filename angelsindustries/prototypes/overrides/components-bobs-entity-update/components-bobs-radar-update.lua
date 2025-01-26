if angelsmods.industries.components then
  local OV = angelsmods.functions.OV

  if mods["bobwarfare"] then
    -- radar
    OV.patch_recipes({
      {
        name = "radar",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-electronics-1", amount = 2 },
          { type = "item", name = "block-construction-1", amount = 5 },
          { type = "item", name = "block-enhancement-1", amount = 1 },
          { type = "item", name = "block-mechanical-1", amount = 1 },
        },
      },
      {
        name = "radar-2",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-electronics-2", amount = 2 },
          { type = "item", name = "block-construction-2", amount = 5 },
          { type = "item", name = "block-enhancement-2", amount = 1 },
          { type = "item", name = "block-mechanical-1", amount = 1 },
        },
      },
      {
        name = "radar-3",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-electronics-3", amount = 2 },
          { type = "item", name = "block-construction-3", amount = 5 },
          { type = "item", name = "block-enhancement-3", amount = 1 },
          { type = "item", name = "block-mechanical-2", amount = 1 },
        },
      },
      {
        name = "radar-4",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-electronics-4", amount = 2 },
          { type = "item", name = "block-construction-4", amount = 5 },
          { type = "item", name = "block-enhancement-4", amount = 1 },
          { type = "item", name = "block-mechanical-2", amount = 1 },
        },
      },
      {
        name = "radar-5",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-electronics-5", amount = 2 },
          { type = "item", name = "block-construction-5", amount = 5 },
          { type = "item", name = "block-enhancement-5", amount = 1 },
          { type = "item", name = "block-mechanical-2", amount = 1 },
        },
      },
    })

    angelsmods.industries.blocks.enhancement5 = true

    if angelsmods.industries.tech then
      OV.add_prereq("radars-2", "tech-specialised-labs-basic-enhance-2")
      OV.add_prereq("radars-3", "tech-specialised-labs-basic-enhance-3")
      OV.add_prereq("radars-4", "tech-specialised-labs-advanced-enhance-1")
      OV.add_prereq("radars-5", "tech-specialised-labs-advanced-enhance-2")
    else
      OV.add_prereq("radars-1", "angels-basic-blocks-1")
      OV.add_prereq("radars-2", "angels-basic-blocks-2")
      OV.add_prereq("radars-3", "angels-components-weapons-advanced")
      OV.add_prereq("radars-4", "military-3")
      OV.add_prereq("radars-4", "angels-advanced-blocks-1")
      OV.add_prereq("radars-5", "angels-advanced-blocks-2")
    end

    OV.remove_prereq("radars-2", "electronics")
    OV.remove_prereq("radars-3", "military-3")
    OV.remove_prereq("radars-3", "bob-zinc-processing")
    OV.remove_prereq("radars-4", "titanium-processing")
    OV.remove_prereq("radars-5", "advanced-electronics-3")
    OV.remove_prereq("radars-4", "nitinol-processing")
  end
end
