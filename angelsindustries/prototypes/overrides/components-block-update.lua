local OV = angelsmods.functions.OV
if angelsmods.industries.components then
  -----------------------------------------------------------------------------
  -- PREREQUISITES FOR COMPONENTS TO WORK CORRECTLY ---------------------------
  -----------------------------------------------------------------------------
  -- move molds from stone 2 to stone 1 to be at green science
  OV.remove_prereq("angels-stone-smelting-2", "angels-bio-arboretum-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-bio-wood-processing-2")
  OV.add_prereq("angels-stone-smelting-1", "angels-components-mechanical-1")
  -- update depending technologies accordingly
  OV.remove_prereq("angels-iron-smelting-2", "angels-stone-smelting-2")
  OV.add_prereq("angels-iron-smelting-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-components-mechanical-2", "angels-stone-smelting-2")
  OV.add_prereq("angels-components-mechanical-2", "angels-stone-smelting-1")

  if angelsmods.industries.tech then
  else
    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 1 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend({
      {
        type = "technology",
        name = "angels-basic-blocks-1",
        icon = "__angelsindustriesgraphics__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "tech-red-circuit",
          "angels-components-mechanical-1",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-1",
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-1",
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-1",
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-1",
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-1",
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-1",
          },
        },
        unit = {
          count = 100,
          ingredients = {
            { "automation-science-pack", 1 },
          },
          time = 60,
        },
        order = "a-5",
      },
    })
    OV.add_prereq("angels-ore-crushing", "angels-basic-blocks-1")
    OV.add_prereq("angels-metallurgy-1", "angels-basic-blocks-1")

    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 2 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend({
      {
        type = "technology",
        name = "angels-basic-blocks-2",
        icon = "__angelsindustriesgraphics__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-1",
          "logistic-science-pack",
          "tech-green-circuit",
          "angels-components-mechanical-2",
          "angels-components-cabling-2",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-2",
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-2",
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-2",
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-2",
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-2",
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-2",
          },
        },
        unit = {
          count = 64,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 60,
        },
        order = "a-5",
      },
    })
    OV.add_prereq("angels-advanced-ore-refining-1", "angels-basic-blocks-2")
    OV.add_prereq("angels-ore-floatation", "angels-basic-blocks-2")
    OV.add_prereq("angels-metallurgy-2", "angels-basic-blocks-2")

    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 3 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend({
      {
        type = "technology",
        name = "angels-basic-blocks-3",
        icon = "__angelsindustriesgraphics__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-2",
          "military-science-pack",
          "tech-orange-circuit",
          "angels-components-mechanical-3",
          "angels-components-cabling-3",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-3",
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-3",
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-3",
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-3",
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-3",
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-3",
          },
        },
        unit = {
          count = 64,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 60,
        },
        order = "a-5",
      },
    })
    OV.add_unlock("military-science-pack", "block-fluidbox-2")
    OV.add_unlock("military-science-pack", "block-mechanical-2")
    OV.add_prereq("angels-ore-leaching", "angels-basic-blocks-3")
    OV.add_prereq("angels-advanced-ore-refining-2", "angels-basic-blocks-3")
    OV.add_prereq("angels-advanced-chemistry-2", "angels-basic-blocks-3")
    OV.add_prereq("angels-metallurgy-3", "angels-basic-blocks-3")

    -----------------------------------------------------------------------------
    -- ADVANCED BLOCKS 1 --------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend({
      {
        type = "technology",
        name = "angels-advanced-blocks-1",
        icon = "__angelsindustriesgraphics__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-basic-blocks-3",
          "chemical-science-pack",
          "tech-blue-circuit",
          "angels-components-mechanical-4",
          "angels-components-cabling-4",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-4",
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-4",
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-4",
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-4",
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-4",
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-4",
          },
        },
        unit = {
          count = 64,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 60,
        },
        order = "a-5",
      },
    })
    OV.add_prereq("angels-ore-refining", "angels-advanced-blocks-1")
    OV.add_prereq("angels-advanced-ore-refining-3", "angels-advanced-blocks-1")
    OV.add_prereq("angels-advanced-chemistry-4", "angels-advanced-blocks-1")
    OV.add_prereq("angels-metallurgy-4", "angels-advanced-blocks-1")
    OV.remove_prereq("angels-bio-refugium-biter-1", "stone-wall")
    OV.add_prereq("angels-bio-processing-blue", "angels-advanced-blocks-1")

    -----------------------------------------------------------------------------
    -- ADVANCED BLOCKS 2 --------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend({
      {
        type = "technology",
        name = "angels-advanced-blocks-2",
        icon = "__angelsindustriesgraphics__/graphics/technology/components-tech.png",
        icon_size = 64,
        prerequisites = {
          "angels-advanced-blocks-1",
          "utility-science-pack",
          "tech-yellow-circuit",
          "angels-components-mechanical-5",
          "angels-components-cabling-5",
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "block-enhancement-5",
          },
          {
            type = "unlock-recipe",
            recipe = "block-energy-5",
          },
          {
            type = "unlock-recipe",
            recipe = "block-exploration-5",
          },
          {
            type = "unlock-recipe",
            recipe = "block-logistic-5",
          },
          {
            type = "unlock-recipe",
            recipe = "block-production-5",
          },
          {
            type = "unlock-recipe",
            recipe = "block-warfare-5",
          },
        },
        unit = {
          count = 64,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "utility-science-pack", 1 },
          },
          time = 60,
        },
        order = "a-5",
      },
    })
    OV.add_prereq("angels-advanced-ore-refining-4", "angels-advanced-blocks-2")
    OV.set_science_pack("angels-advanced-ore-refining-4", "utility-science-pack", 1)
    OV.add_prereq("angels-advanced-chemistry-5", "angels-advanced-blocks-2")
    OV.add_prereq("angels-metallurgy-5", "angels-advanced-blocks-2")

    -- Disable unused blocks

    if angelsmods.industries.blocks.exploration == false then
      OV.disable_recipe({
        "block-exploration-1",
        "block-exploration-2",
        "block-exploration-3",
        "block-exploration-4",
        "block-exploration-5",
      })
      angelsmods.functions.hide({
        "block-exploration-1",
        "block-exploration-2",
        "block-exploration-3",
        "block-exploration-4",
        "block-exploration-5",
      })
    end
    if angelsmods.industries.blocks.logistic == false then
      OV.disable_recipe({
        "block-logistic-1",
        "block-logistic-2",
        "block-logistic-3",
        "block-logistic-4",
        "block-logistic-5",
      })
      angelsmods.functions.hide({
        "block-logistic-1",
        "block-logistic-2",
        "block-logistic-3",
        "block-logistic-4",
        "block-logistic-5",
      })
    end
    if angelsmods.industries.blocks.warfare == false then
      OV.disable_recipe({
        "block-warfare-1",
        "weapon-1",
        "body-1",
        "weapon-parts-trigger",
        "angels-trigger",
        "block-warfare-2",
        "weapon-2",
        "body-2",
        "weapon-parts-explosionchamber",
        "angels-explosionchamber",
        "block-warfare-3",
        "weapon-3",
        "body-3",
        "weapon-parts-fluidchamber",
        "angels-fluidchamber",
        "block-warfare-4",
        "weapon-4",
        "body-4",
        "weapon-parts-energycrystal",
        "angels-energycrystal",
        "block-warfare-5",
        "weapon-5",
        "body-5",
        "weapon-parts-acceleratorcoil",
        "angels-acceleratorcoil",
      })
      angelsmods.functions.hide({
        "block-warfare-1",
        "weapon-1",
        "body-1",
        "weapon-parts",
        "angels-trigger",
        "block-warfare-2",
        "weapon-2",
        "body-2",
        "angels-explosionchamber",
        "block-warfare-3",
        "weapon-3",
        "body-3",
        "angels-fluidchamber",
        "block-warfare-4",
        "weapon-4",
        "body-4",
        "angels-energycrystal",
        "block-warfare-5",
        "weapon-5",
        "body-5",
        "angels-acceleratorcoil",
      })
      OV.remove_prereq("military-3", "angels-tungsten-smelting-1")
    end
    if angelsmods.industries.blocks.enhancement5 == false then
      OV.disable_recipe("block-enhancement-5")
      angelsmods.functions.hide("block-enhancement-5")
    end
    if angelsmods.industries.blocks.energy5 == false then
      OV.disable_recipe("block-energy-5")
      angelsmods.functions.hide("block-energy-5")
    end
    if
      (angelsmods.industries.blocks.enhancement5 == false)
      and (angelsmods.industries.blocks.exploration == false)
      and (angelsmods.industries.blocks.logistic == false)
    then
      OV.disable_recipe("angels-servo-motor-5")
      angelsmods.functions.hide("angels-servo-motor-5")
    end

    if mods["bobmodules"] then
    else
      OV.set_science_pack("speed-module-3", "utility-science-pack", 1)
      OV.set_science_pack("productivity-module-3", "utility-science-pack", 1)
      OV.set_science_pack("efficiency-module-3", "utility-science-pack", 1)
      OV.set_science_pack("angels-bio-yield-module-3", "utility-science-pack", 1)
    end
  end
end
