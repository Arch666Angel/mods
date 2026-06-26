if angelsmods.industries and angelsmods.industries.components then
  local RB = angelsmods.functions.RB
  --------------------------------------------------------------------------------------------------
  -- TRAIN recipes ---------------------------------------------------------------------------------
  --------------------------------------------------------------------------------------------------
  if angelsmods.addons.mobility.crawlertrain.enabled then
    RB.build({
      {
        type = "recipe",
        name = "angels-crawler-locomotive",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 25 },
          { type = "item", name = "circuit-red-loaded", amount = 20 },
          { type = "item", name = "construction-frame-1", amount = 40 },
          { type = "item", name = "angels-cabling", amount = 15 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-tender",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 25 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-tender", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-cargo-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
        },
        results = { { type = "item", name = "angels-crawler-cargo-wagon", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-robot-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
        },
        results = { { type = "item", name = "angels-crawler-robot-wagon", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.enabled then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
        },
        results = { { type = "item", name = "angels-petro-locomotive", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-gas-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
        },
        results = { { type = "item", name = "angels-petro-gas-wagon", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-oil-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
        },
        results = { { type = "item", name = "angels-petro-oil-wagon", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.enabled then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 15 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-locomotive-tender",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 15 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-tender", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-cargo-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 15 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
        },
        results = { { type = "item", name = "angels-smelting-cargo-wagon", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.crawlertrain.tier_amount >= 2 then
    RB.build({
      {
        type = "recipe",
        name = "angels-crawler-locomotive-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 25 },
          { type = "item", name = "circuit-green-loaded", amount = 20 },
          { type = "item", name = "construction-frame-2", amount = 40 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-tender-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 25 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-tender", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-tender-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-cargo-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-cargo-wagon", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-cargo-wagon-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-robot-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-robot-wagon", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-robot-wagon-2", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 2 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-locomotive-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-gas-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-gas-wagon", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-gas-wagon-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-oil-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-oil-wagon", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-oil-wagon-2", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 2 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 15 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-locomotive-tender-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 15 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-locomotive-tender", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-tender-2", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-cargo-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 15 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-cargo-wagon", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-cargo-wagon-2", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.crawlertrain.tier_amount >= 3 then
    RB.build({
      {
        type = "recipe",
        name = "angels-crawler-locomotive-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 25 },
          { type = "item", name = "circuit-orange-loaded", amount = 20 },
          { type = "item", name = "construction-frame-3", amount = 40 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-tender-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 25 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-tender-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-tender-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-cargo-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-cargo-wagon-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-cargo-wagon-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-robot-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-robot-wagon-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-robot-wagon-3", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 3 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-locomotive-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-gas-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-gas-wagon-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-gas-wagon-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-oil-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-oil-wagon-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-oil-wagon-3", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 3 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 15 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-locomotive-tender-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 15 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-locomotive-tender-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-tender-3", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-cargo-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 15 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-cargo-wagon-2", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-cargo-wagon-3", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.crawlertrain.tier_amount >= 4 then
    RB.build({
      {
        type = "recipe",
        name = "angels-crawler-locomotive-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 25 },
          { type = "item", name = "circuit-blue-loaded", amount = 20 },
          { type = "item", name = "construction-frame-4", amount = 40 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-tender-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 25 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-tender-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-tender-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-cargo-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-cargo-wagon-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-cargo-wagon-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-robot-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-robot-wagon-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-robot-wagon-4", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 4 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-locomotive-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-gas-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-gas-wagon-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-gas-wagon-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-oil-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-oil-wagon-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-oil-wagon-4", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 4 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 15 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-locomotive-tender-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 15 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-locomotive-tender-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-tender-4", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-cargo-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 15 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-cargo-wagon-3", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-cargo-wagon-4", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.crawlertrain.tier_amount >= 5 then
    RB.build({
      {
        type = "recipe",
        name = "angels-crawler-locomotive-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 25 },
          { type = "item", name = "circuit-yellow-loaded", amount = 20 },
          { type = "item", name = "construction-frame-5", amount = 40 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-tender-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 25 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-tender-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-locomotive-tender-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-cargo-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-cargo-wagon-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-cargo-wagon-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-crawler-robot-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-robot-wagon-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-crawler-robot-wagon-5", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 5 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-locomotive-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-gas-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-gas-wagon-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-gas-wagon-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-petro-oil-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-oil-wagon-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-petro-oil-wagon-5", amount = 1 } },
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 5 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 15 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-locomotive-tender-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 15 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-locomotive-tender-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-locomotive-tender-5", amount = 1 } },
      },
      {
        type = "recipe",
        name = "angels-smelting-cargo-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 15 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-cargo-wagon-4", amount = 1 },
        },
        results = { { type = "item", name = "angels-smelting-cargo-wagon-5", amount = 1 } },
      },
    })
  end
end
