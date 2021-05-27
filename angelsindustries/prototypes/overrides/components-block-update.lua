local OV = angelsmods.functions.OV
if angelsmods.industries.components then

  -----------------------------------------------------------------------------
  -- PREREQUISITES FOR COMPONENTS TO WORK CORRECTLY ---------------------------
  -----------------------------------------------------------------------------
  -- move molds from stone 2 to stone 1 to be at red science
  OV.remove_unlock("angels-stone-smelting-2", "angels-casing-resin-mold")
  OV.add_unlock("angels-stone-smelting-1", "angels-casing-resin-mold")
  OV.remove_unlock("angels-stone-smelting-2", "mold-expendable")
  OV.add_unlock("angels-stone-smelting-1", "mold-expendable")
  OV.remove_prereq("angels-stone-smelting-2", "bio-arboretum-1")
  OV.add_prereq("angels-stone-smelting-1", "bio-arboretum-1")
  OV.add_prereq("angels-stone-smelting-1", "angels-components-mechanical-1")
  OV.add_prereq("angels-stone-smelting-1", "powder-metallurgy-1")
  -- update depending technologies accordingly
  OV.remove_science_pack("powder-metallurgy-1", "logistic-science-pack")
  OV.remove_prereq("powder-metallurgy-1", "angels-metallurgy-2")
  OV.add_prereq("powder-metallurgy-1", "angels-metallurgy-1")
  OV.add_prereq("angels-aluminium-smelting-1", "angels-metallurgy-2")
  OV.remove_prereq("angels-iron-smelting-2", "angels-stone-smelting-2")
  OV.add_prereq("angels-iron-smelting-2", "angels-stone-smelting-1")
  OV.remove_prereq("angels-components-mechanical-2", "angels-stone-smelting-2")
  OV.add_prereq("angels-components-mechanical-2", "angels-stone-smelting-1")

  -- move steel smelting 1 from green to red science
  OV.remove_science_pack("angels-steel-smelting-1", "logistic-science-pack")
  OV.remove_prereq("angels-steel-smelting-1", "angels-metallurgy-2")
  OV.add_prereq("angels-steel-smelting-1", "angels-metallurgy-1")

  -----------------------------------------------------------------------------
  -- ADD ELECTRONIC RECIPES TO ELECTRONIC ASSMBLY -----------------------------
  -----------------------------------------------------------------------------
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value == true then
    --create list of recipes to add to the electronicmachines
    for _, elec in pairs(
      {
        -- todo: move cables and coils to smelting!
        "copper-cable",
        "angels-wire-coil-copper-converting",
        "angels-wire-gold",
        "angels-wire-coil-gold-converting",
        "basic-platinated-copper-wire",
        "angels-wire-coil-platinum-converting",
        "basic-silvered-copper-wire",
        "angels-wire-coil-silver-converting",
        "basic-tinned-copper-wire",
        "angels-wire-coil-tin-converting",
        "angels-roll-solder-converting",
        "circuit-red-board",
        "circuit-green-board",
        "circuit-orange-board",
        "circuit-blue-board",
        --"circuit-yellow-board" --crafted with 2 fluids
        "circuit-grey-board",
        "circuit-grey-board-alternative",
        "circuit-red",
        "circuit-green",
        "circuit-orange",
        "circuit-blue",
        "circuit-yellow",
        "circuit-grey",
        "circuit-red-loaded",
        "circuit-green-loaded",
        "circuit-orange-loaded",
        "circuit-blue-loaded",
        "circuit-yellow-loaded",
        "circuit-resistor",
        "circuit-transistor",
        "circuit-microchip",
        "circuit-transformer",
        "circuit-cpu"
      }
    ) do
      data.raw.recipe[elec].category = "electronics"
    end
  end

  if angelsmods.industries.tech then
  else
    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 1 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend(
      {
        {
          type = "technology",
          name = "angels-basic-blocks-1",
          icon = "__angelsindustries__/graphics/technology/components-tech.png",
          icon_size = 64,
          prerequisites = {
            "tech-red-circuit",
            "angels-components-mechanical-1"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "block-enhancement-1"
            },
            {
              type = "unlock-recipe",
              recipe = "block-energy-1"
            },
            {
              type = "unlock-recipe",
              recipe = "block-exploration-1"
            },
            {
              type = "unlock-recipe",
              recipe = "block-logistic-1"
            },
            {
              type = "unlock-recipe",
              recipe = "block-production-1"
            },
            {
              type = "unlock-recipe",
              recipe = "block-warfare-1"
            }
          },
          unit = {
            count = 100,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1}
            },
            time = 60
          },
          order = "a-5"
        }
      }
    )
    OV.add_prereq("ore-crushing", "angels-basic-blocks-1")
    OV.add_prereq("angels-metallurgy-1", "angels-basic-blocks-1")

    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 2 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend(
      {
        {
          type = "technology",
          name = "angels-basic-blocks-2",
          icon = "__angelsindustries__/graphics/technology/components-tech.png",
          icon_size = 64,
          prerequisites = {
            "angels-basic-blocks-1",
            "logistic-science-pack",
            "tech-green-circuit",
            "angels-components-mechanical-2",
            "angels-components-cabling-2"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "block-enhancement-2"
            },
            {
              type = "unlock-recipe",
              recipe = "block-energy-2"
            },
            {
              type = "unlock-recipe",
              recipe = "block-exploration-2"
            },
            {
              type = "unlock-recipe",
              recipe = "block-logistic-2"
            },
            {
              type = "unlock-recipe",
              recipe = "block-production-2"
            },
            {
              type = "unlock-recipe",
              recipe = "block-warfare-2"
            }
          },
          unit = {
            count = 64,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1}
            },
            time = 60
          },
          order = "a-5"
        }
      }
    )
    OV.add_prereq("advanced-ore-refining-1", "angels-basic-blocks-2")
    OV.add_prereq("ore-floatation", "angels-basic-blocks-2")
    OV.add_prereq("angels-metallurgy-2", "angels-basic-blocks-2")

    -----------------------------------------------------------------------------
    -- BASIC BLOCKS 3 -----------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend(
      {
        {
          type = "technology",
          name = "angels-basic-blocks-3",
          icon = "__angelsindustries__/graphics/technology/components-tech.png",
          icon_size = 64,
          prerequisites = {
            "angels-basic-blocks-2",
            "military-science-pack",
            "tech-orange-circuit",
            "angels-components-mechanical-3",
            "angels-components-cabling-3"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "block-enhancement-3"
            },
            {
              type = "unlock-recipe",
              recipe = "block-energy-3"
            },
            {
              type = "unlock-recipe",
              recipe = "block-exploration-3"
            },
            {
              type = "unlock-recipe",
              recipe = "block-logistic-3"
            },
            {
              type = "unlock-recipe",
              recipe = "block-production-3"
            },
            {
              type = "unlock-recipe",
              recipe = "block-warfare-3"
            }
          },
          unit = {
            count = 64,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1}
            },
            time = 60
          },
          order = "a-5"
        }
      }
    )
    OV.add_unlock("military-science-pack", "block-fluidbox-2")
    OV.add_unlock("military-science-pack", "block-mechanical-2")
    OV.add_prereq("ore-leaching", "angels-basic-blocks-3")
    OV.add_prereq("advanced-ore-refining-2", "angels-basic-blocks-3")
    OV.add_prereq("ore-electro-whinning-cell", "angels-basic-blocks-3")
    OV.add_prereq("angels-advanced-chemistry-2", "angels-basic-blocks-3")
    OV.add_prereq("angels-metallurgy-3", "angels-basic-blocks-3")

    -----------------------------------------------------------------------------
    -- ADVANCED BLOCKS 1 --------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend(
      {
        {
          type = "technology",
          name = "angels-advanced-blocks-1",
          icon = "__angelsindustries__/graphics/technology/components-tech.png",
          icon_size = 64,
          prerequisites = {
            "angels-basic-blocks-3",
            "chemical-science-pack",
            "tech-blue-circuit",
            "angels-components-mechanical-4",
            "angels-components-cabling-4"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "block-enhancement-4"
            },
            {
              type = "unlock-recipe",
              recipe = "block-energy-4"
            },
            {
              type = "unlock-recipe",
              recipe = "block-exploration-4"
            },
            {
              type = "unlock-recipe",
              recipe = "block-logistic-4"
            },
            {
              type = "unlock-recipe",
              recipe = "block-production-4"
            },
            {
              type = "unlock-recipe",
              recipe = "block-warfare-4"
            }
          },
          unit = {
            count = 64,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1},
              {type = "item", name = "chemical-science-pack", amount = 1}
            },
            time = 60
          },
          order = "a-5"
        }
      }
    )
    OV.add_prereq("ore-refining", "angels-advanced-blocks-1")
    OV.add_prereq("advanced-ore-refining-3", "angels-advanced-blocks-1")
    OV.add_prereq("angels-advanced-chemistry-3", "angels-advanced-blocks-1")
    OV.add_prereq("angels-metallurgy-4", "angels-advanced-blocks-1")
    OV.remove_prereq("bio-refugium-biter-1", "stone-wall")

    -----------------------------------------------------------------------------
    -- ADVANCED BLOCKS 2 --------------------------------------------------------
    -----------------------------------------------------------------------------
    data:extend(
      {
        {
          type = "technology",
          name = "angels-advanced-blocks-2",
          icon = "__angelsindustries__/graphics/technology/components-tech.png",
          icon_size = 64,
          prerequisites = {
            "angels-advanced-blocks-1",
            "utility-science-pack",
            "tech-yellow-circuit",
            "angels-components-mechanical-5",
            "angels-components-cabling-5"
          },
          effects = {
            {
              type = "unlock-recipe",
              recipe = "block-enhancement-5"
            },
            {
              type = "unlock-recipe",
              recipe = "block-energy-5"
            },
            {
              type = "unlock-recipe",
              recipe = "block-exploration-5"
            },
            {
              type = "unlock-recipe",
              recipe = "block-logistic-5"
            },
            {
              type = "unlock-recipe",
              recipe = "block-production-5"
            },
            {
              type = "unlock-recipe",
              recipe = "block-warfare-5"
            }
          },
          unit = {
            count = 64,
            ingredients = {
              {type = "item", name = "automation-science-pack", amount = 1},
              {type = "item", name = "logistic-science-pack", amount = 1},
              {type = "item", name = "chemical-science-pack", amount = 1},
              {type = "item", name = "utility-science-pack", amount = 1}
            },
            time = 60
          },
          order = "a-5"
        }
      }
    )
    OV.add_prereq("advanced-ore-refining-4", "angels-advanced-blocks-2")
    OV.add_prereq("angels-advanced-chemistry-4", "angels-advanced-blocks-2")
    OV.add_prereq("angels-metallurgy-5", "angels-advanced-blocks-2")
  end
end