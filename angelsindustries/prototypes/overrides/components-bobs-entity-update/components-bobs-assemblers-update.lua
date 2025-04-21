if angelsmods.industries.components then
  local OV = angelsmods.functions.OV
  -- CUSTOM FIXES FOR BOBS INSERTERS

  if mods["bobassembly"] then
    -- regular assemblers ingredient count
    if
      data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count
      and data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count < 4
    then -- required for tier 1 block automation
      data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 4
    end

    if
      data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count
      and data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count < 5
    then -- required for tier 2 block automation
      data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
    end

    OV.patch_recipes({
      {
        name = "assembling-machine-3",
        ingredients = {
          { type = "item", name = "block-construction-3", amount = "block-construction-4" },
          { type = "item", name = "block-enhancement-2", amount = "block-enhancement-4" },
          { type = "item", name = "block-mechanical-2", amount = "block-mechanical-2" },
          { type = "item", name = "block-fluidbox-2", amount = "block-fluidbox-2" },
        },
      },
      {
        name = "assembling-machine-4",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-construction-4", amount = 2 },
          { type = "item", name = "block-enhancement-3", amount = 3 },
          { type = "item", name = "block-mechanical-2", amount = 5 },
          { type = "item", name = "block-fluidbox-2", amount = 3 },
        },
      },
      {
        name = "assembling-machine-5",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-construction-5", amount = 2 },
          { type = "item", name = "block-enhancement-4", amount = 3 },
          { type = "item", name = "block-mechanical-2", amount = 5 },
          { type = "item", name = "block-fluidbox-2", amount = 3 },
        },
      },
      {
        name = "assembling-machine-6",
        ingredients = {
          { "!!" },
          { type = "item", name = "block-construction-5", amount = 2 },
          { type = "item", name = "block-enhancement-5", amount = 3 },
          { type = "item", name = "block-mechanical-2", amount = 5 },
          { type = "item", name = "block-fluidbox-2", amount = 3 },
        },
      },
    })

    angelsmods.industries.blocks.enhancement5 = true

    OV.remove_prereq("automation-2", "angels-components-construction-2")
    OV.remove_prereq("automation-3", "advanced-circuit")
    OV.remove_prereq("automation-5", "processing-unit")
    if angelsmods.industries.tech then
      OV.add_prereq("automation-2", "tech-specialised-labs-basic-enhance-1")
      OV.remove_prereq("automation-3", "tech-specialised-labs-advanced-enhance-1")
      OV.add_prereq("automation-3", "tech-specialised-labs-basic-enhance-2")
      OV.add_prereq("automation-4", "tech-specialised-labs-basic-enhance-3")
      OV.remove_prereq("automation-5", "production-science-pack")
      OV.add_prereq("automation-5", "tech-specialised-labs-advanced-enhance-1")
      OV.add_prereq("automation-6", "tech-specialised-labs-advanced-enhance-2")
    else
      OV.add_prereq("automation-2", "angels-basic-blocks-1")
      OV.remove_prereq("automation-3", "angels-advanced-blocks-1")
      OV.add_prereq("automation-3", "angels-basic-blocks-2")
      OV.add_prereq("automation-4", "angels-basic-blocks-3")
      OV.add_prereq("automation-5", "angels-advanced-blocks-1")
      OV.add_prereq("automation-6", "angels-advanced-blocks-2")
    end

    if settings.startup["bobmods-assembly-electronicmachines"].value then
      OV.patch_recipes({
        { -- corresponds to assembling machine 1.5
          name = "bob-electronics-machine-1",
          ingredients = {
            { "!!" },
            { type = "item", name = "block-construction-2", amount = 2 },
            { type = "item", name = "block-enhancement-1", amount = 3 },
            { type = "item", name = "block-mechanical-1", amount = 2 },
          },
        },
        { -- corresponds to assembling machine 3.5
          name = "bob-electronics-machine-2",
          ingredients = {
            { "!!" },
            { type = "item", name = "block-construction-4", amount = 2 },
            { type = "item", name = "block-enhancement-3", amount = 3 },
            { type = "item", name = "block-mechanical-2", amount = 3 },
            { type = "item", name = "block-fluidbox-2", amount = 1 },
          },
        },
        { -- corresponds to assembling machine 4.5
          name = "bob-electronics-machine-3",
          ingredients = {
            { "!!" },
            { type = "item", name = "block-construction-5", amount = 2 },
            { type = "item", name = "block-enhancement-5", amount = 3 },
            { type = "item", name = "block-mechanical-2", amount = 5 },
            { type = "item", name = "block-fluidbox-2", amount = 3 },
          },
        },
      })

      OV.add_prereq("bob-electronics-machine-1", "angels-components-construction-2")
      OV.add_prereq("bob-electronics-machine-1", "bob-electronics")
      OV.add_prereq("bob-electronics-machine-2", "angels-components-construction-4")
      OV.add_prereq("bob-electronics-machine-3", "angels-components-construction-5")
      if data.raw.technology["advanced-electronics-3"] then
        OV.add_prereq("bob-electronics-machine-3", "advanced-electronics-3")
      end
      OV.set_science_pack("bob-electronics-machine-3", "utility-science-pack")
      if angelsmods.industries.tech then
        OV.add_prereq("bob-electronics-machine-1", "tech-specialised-labs-basic-enhance-1")
        OV.add_prereq("bob-electronics-machine-2", "tech-specialised-labs-basic-enhance-2")
        OV.add_prereq("bob-electronics-machine-3", "tech-specialised-labs-advanced-enhance-1")
      else
        OV.add_prereq("bob-electronics-machine-1", "angels-basic-blocks-1")
        OV.add_prereq("bob-electronics-machine-2", "angels-basic-blocks-2")
        OV.add_prereq("bob-electronics-machine-3", "angels-advanced-blocks-1")
      end
    end
  end
end
