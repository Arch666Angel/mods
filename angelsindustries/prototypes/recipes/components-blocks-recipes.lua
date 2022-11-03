if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- CONSTRUCTION BLOCKS ------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-construction-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "construction-frame-1", amount = 1 },
        { type = "item", name = "stone", amount = 3 },
      },
      results = {
        { type = "item", name = "block-construction-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-construction-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-construction-1", amount = 1 },
        { type = "item", name = "construction-frame-2", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-construction-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-construction-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-construction-2", amount = 1 },
        { type = "item", name = "construction-frame-3", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-construction-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-construction-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "construction-frame-4", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-construction-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-construction-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-construction-4", amount = 1 },
        { type = "item", name = "construction-frame-5", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-construction-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- ELECTRONICS BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-electronics-0",
      enabled = true,
      category = "crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "construction-frame-1", amount = 1 },
        { type = "item", name = "circuit-grey", amount = 3 },
      },
      results = {
        { type = "item", name = "block-electronics-0", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-electronics-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-0", amount = 1 },
        { type = "item", name = "construction-frame-1", amount = 1 },
        { type = "item", name = "circuit-red-loaded", amount = 3 },
        { type = "item", name = "cable-harness-1", amount = 1 },
      },
      results = {
        { type = "item", name = "block-electronics-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-electronics-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "construction-frame-2", amount = 1 },
        { type = "item", name = "circuit-green-loaded", amount = 3 },
        { type = "item", name = "battery-1", amount = 1 },
        { type = "item", name = "cable-harness-2", amount = 1 },
      },
      results = {
        { type = "item", name = "block-electronics-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-electronics-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "construction-frame-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 3 },
        { type = "item", name = "battery-2", amount = 1 },
        { type = "item", name = "cable-harness-3", amount = 1 },
      },
      results = {
        { type = "item", name = "block-electronics-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-electronics-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "construction-frame-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 3 },
        { type = "item", name = "battery-3", amount = 1 },
        { type = "item", name = "cable-harness-4", amount = 1 },
      },
      results = {
        { type = "item", name = "block-electronics-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-electronics-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "construction-frame-5", amount = 1 },
        { type = "item", name = "circuit-yellow-loaded", amount = 3 },
        { type = "item", name = "battery-4", amount = 1 },
        { type = "item", name = "cable-harness-5", amount = 1 },
      },
      results = {
        { type = "item", name = "block-electronics-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- FLUIDBOX BLOCKS ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-fluidbox-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "construction-frame-1", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-fluidbox-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-fluidbox-2",
      enabled = false, -- tier 2.5
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-fluidbox-1", amount = 1 },
        { type = "item", name = "construction-frame-3", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-fluidbox-2", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- MECHANICAL BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-mechanical-1",
      enabled = true,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "construction-frame-1", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 2 },
      },
      results = {
        { type = "item", name = "block-mechanical-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-mechanical-2",
      enabled = false, -- tier 2.5
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-mechanical-1", amount = 1 },
        { type = "item", name = "construction-frame-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 2 },
      },
      results = {
        { type = "item", name = "block-mechanical-2", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- ENHANCEMENT BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-enhancement-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-enhancement-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-enhancement-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-enhancement-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "angels-servo-motor-2", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-enhancement-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-enhancement-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-enhancement-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "angels-servo-motor-3", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-enhancement-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-enhancement-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-enhancement-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "angels-servo-motor-4", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-enhancement-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-enhancement-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-enhancement-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "angels-servo-motor-5", amount = 1 },
        { type = "item", name = "electronic-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-enhancement-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- ENERGY BLOCKS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-energy-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "cable-harness-1", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-energy-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-energy-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-energy-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "cable-harness-2", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-energy-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-energy-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-energy-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "cable-harness-3", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-energy-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-energy-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-energy-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "cable-harness-4", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-energy-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-energy-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-energy-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "cable-harness-5", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-energy-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- EXPLORATION BLOCKS -------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-exploration-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-exploration-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-exploration-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-exploration-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "angels-servo-motor-2", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-exploration-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-exploration-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-exploration-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "angels-servo-motor-3", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-exploration-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-exploration-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-exploration-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "angels-servo-motor-4", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-exploration-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-exploration-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-exploration-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "angels-servo-motor-5", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-exploration-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- LOGISTICS BLOCKS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-logistic-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "angels-servo-motor-1", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-logistic-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-logistic-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-logistic-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "angels-servo-motor-2", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-logistic-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-logistic-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-logistic-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "angels-servo-motor-3", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-logistic-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-logistic-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-logistic-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "angels-servo-motor-4", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-logistic-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-logistic-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-logistic-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "angels-servo-motor-5", amount = 1 },
        { type = "item", name = "angels-cabling", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-logistic-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- PRODUCTION BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-production-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "motor-1", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-production-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-production-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-production-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "motor-2", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-production-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-production-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-production-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "motor-3", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-production-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-production-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-production-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "motor-4", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-production-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-production-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-production-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "motor-5", amount = 1 },
        { type = "item", name = "mechanical-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-production-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- EXTRACTION BLOCKS --------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-extraction-3",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 3 },
        { type = "item", name = "motor-3", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-extraction-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-extraction-4",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-construction-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 3 },
        { type = "item", name = "motor-4", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-extraction-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-extraction-5",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-construction-5", amount = 1 },
        { type = "item", name = "circuit-yellow-loaded", amount = 3 },
        { type = "item", name = "motor-5", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-extraction-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CHEMICAL PROCESSING BLOCKS -----------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-cprocessing-3",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 3 },
        { type = "item", name = "concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-cprocessing-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-cprocessing-4",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-construction-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-cprocessing-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-cprocessing-5",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-construction-5", amount = 1 },
        { type = "item", name = "circuit-yellow-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = {
        { type = "item", name = "block-cprocessing-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- METAL PROCESSING BLOCKS --------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-mprocessing-3",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 3 },
        { type = "item", name = "concrete-brick", amount = 5 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-3", amount = 1 },
      },
      results = {
        { type = "item", name = "block-mprocessing-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-mprocessing-4",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-construction-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 4 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-4", amount = 1 },
      },
      results = {
        { type = "item", name = "block-mprocessing-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-mprocessing-5",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-construction-5", amount = 1 },
        { type = "item", name = "circuit-yellow-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 5 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-5", amount = 1 },
      },
      results = {
        { type = "item", name = "block-mprocessing-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- BIO PROCESSING BLOCKS ----------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-bprocessing-3",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-construction-3", amount = 1 },
        { type = "item", name = "circuit-orange-loaded", amount = 3 },
        { type = "item", name = "concrete-brick", amount = 5 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-3", amount = 1 },
      },
      results = {
        { type = "item", name = "block-bprocessing-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-bprocessing-4",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-construction-4", amount = 1 },
        { type = "item", name = "circuit-blue-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 5 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-4", amount = 1 },
      },
      results = {
        { type = "item", name = "block-bprocessing-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-bprocessing-5",
      enabled = true,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-construction-5", amount = 1 },
        { type = "item", name = "circuit-yellow-loaded", amount = 3 },
        { type = "item", name = "reinforced-concrete-brick", amount = 5 },
        { type = "item", name = "pipe", amount = 2 },
        { type = "item", name = "motor-5", amount = 1 },
      },
      results = {
        { type = "item", name = "block-bprocessing-5", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- WARFARE BLOCKS -----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "block-warfare-1",
      enabled = false,
      category = "crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "block-electronics-1", amount = 1 },
        { type = "item", name = "weapon-1", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "stone-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-warfare-1", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-warfare-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5,
      ingredients = {
        { type = "item", name = "block-warfare-1", amount = 1 },
        { type = "item", name = "block-electronics-2", amount = 1 },
        { type = "item", name = "weapon-2", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "clay-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-warfare-2", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-warfare-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 8,
      ingredients = {
        { type = "item", name = "block-warfare-2", amount = 1 },
        { type = "item", name = "block-electronics-3", amount = 1 },
        { type = "item", name = "weapon-3", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-warfare-3", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-warfare-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 15,
      ingredients = {
        { type = "item", name = "block-warfare-3", amount = 1 },
        { type = "item", name = "block-electronics-4", amount = 1 },
        { type = "item", name = "weapon-4", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-warfare-4", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "block-warfare-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 25,
      ingredients = {
        { type = "item", name = "block-warfare-4", amount = 1 },
        { type = "item", name = "block-electronics-5", amount = 1 },
        { type = "item", name = "weapon-5", amount = 1 },
        { type = "item", name = "weapon-parts", amount = 1 },
        { type = "item", name = "reinforced-concrete-brick", amount = 3 },
      },
      results = {
        { type = "item", name = "block-warfare-5", amount = 1 },
      },
      icon_size = 32,
    },
  })
end
