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
        results = {{ type = "item", name = "angels-crawler-locomotive", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 25 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
        },
        results = {{ type = "item", name = "angels-crawler-locomotive-wagon", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
        },
        results = {{ type = "item", name = "angels-crawler-wagon", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-bot-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
        },
        results = {{ type = "item", name = "angels-crawler-bot-wagon", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.enabled then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
        },
        results = {{ type = "item", name = "angels-petro-locomotive-1", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
        },
        results = {{ type = "item", name = "angels-petro-tank1", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 10 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
        },
        results = {{ type = "item", name = "angels-petro-tank2", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.enabled then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-1", amount = 15 },
          { type = "item", name = "circuit-red-loaded", amount = 15 },
          { type = "item", name = "construction-frame-1", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
        },
        results = {{ type = "item", name = "angels-smelting-locomotive-1", amount = 1 }},
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
        results = {{ type = "item", name = "angels-smelting-locomotive-tender", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-smelting-wagon-1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-1", amount = 15 },
          { type = "item", name = "circuit-red-loaded", amount = 10 },
          { type = "item", name = "construction-frame-1", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
        },
        results = {{ type = "item", name = "angels-smelting-wagon-1", amount = 1 }},
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
        results = {{ type = "item", name = "angels-crawler-locomotive-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 25 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-wagon", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-locomotive-wagon-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-wagon", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-wagon-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-bot-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-bot-wagon", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-bot-wagon-2", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 2 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-1", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-locomotive-1-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank1", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank1-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank2-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 10 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank2-2", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 2 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-2", amount = 15 },
          { type = "item", name = "circuit-green-loaded", amount = 15 },
          { type = "item", name = "construction-frame-2", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-1", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-locomotive-1-2", amount = 1 }},
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
        results = {{ type = "item", name = "angels-smelting-locomotive-tender-2", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-smelting-wagon-1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-2", amount = 15 },
          { type = "item", name = "circuit-green-loaded", amount = 10 },
          { type = "item", name = "construction-frame-2", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-wagon-1", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-wagon-1-2", amount = 1 }},
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
        results = {{ type = "item", name = "angels-crawler-locomotive-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 25 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-wagon-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-locomotive-wagon-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-wagon-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-wagon-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-bot-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-bot-wagon-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-bot-wagon-3", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 3 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-1-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-locomotive-1-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank1-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank1-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank2-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 10 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank2-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank2-3", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 3 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-3", amount = 15 },
          { type = "item", name = "circuit-orange-loaded", amount = 15 },
          { type = "item", name = "construction-frame-3", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-1-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-locomotive-1-3", amount = 1 }},
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
        results = {{ type = "item", name = "angels-smelting-locomotive-tender-3", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-smelting-wagon-1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-3", amount = 15 },
          { type = "item", name = "circuit-orange-loaded", amount = 10 },
          { type = "item", name = "construction-frame-3", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-wagon-1-2", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-wagon-1-3", amount = 1 }},
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
        results = {{ type = "item", name = "angels-crawler-locomotive-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 25 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-wagon-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-locomotive-wagon-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-wagon-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-wagon-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-bot-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-bot-wagon-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-bot-wagon-4", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 4 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-1-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-locomotive-1-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank1-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank1-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank2-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 10 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank2-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank2-4", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 4 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-4", amount = 15 },
          { type = "item", name = "circuit-blue-loaded", amount = 15 },
          { type = "item", name = "construction-frame-4", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-1-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-locomotive-1-4", amount = 1 }},
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
        results = {{ type = "item", name = "angels-smelting-locomotive-tender-4", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-smelting-wagon-1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-4", amount = 15 },
          { type = "item", name = "circuit-blue-loaded", amount = 10 },
          { type = "item", name = "construction-frame-4", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-wagon-1-3", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-wagon-1-4", amount = 1 }},
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
        results = {{ type = "item", name = "angels-crawler-locomotive-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-locomotive-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 25 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 35 },
          { type = "item", name = "angels-cabling", amount = 15 },
          { type = "item", name = "angels-crawler-locomotive-wagon-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-locomotive-wagon-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-wagon-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-wagon-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-crawler-bot-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 20 },
          { type = "item", name = "angels-big-chest", amount = 5 },
          { type = "item", name = "angels-crawler-bot-wagon-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-crawler-bot-wagon-5", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.petrotrain.tier_amount >= 5 then
    RB.build({
      {
        type = "recipe",
        name = "angels-petro-locomotive-1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "angels-cabling", amount = 5 },
          { type = "item", name = "angels-petro-locomotive-1-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-locomotive-1-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank1-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank1-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-petro-tank2-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 10 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "construction-components", amount = 5 },
          { type = "item", name = "angels-petro-tank2-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-petro-tank2-5", amount = 1 }},
      },
    })
  end

  if angelsmods.addons.mobility.smeltingtrain.tier_amount >= 5 then
    RB.build({
      {
        type = "recipe",
        name = "angels-smelting-locomotive-1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "motor-5", amount = 15 },
          { type = "item", name = "circuit-yellow-loaded", amount = 15 },
          { type = "item", name = "construction-frame-5", amount = 10 },
          { type = "item", name = "mechanical-parts", amount = 10 },
          { type = "item", name = "angels-smelting-locomotive-1-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-locomotive-1-5", amount = 1 }},
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
        results = {{ type = "item", name = "angels-smelting-locomotive-tender-5", amount = 1 }},
      },
      {
        type = "recipe",
        name = "angels-smelting-wagon-1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "angels-servo-motor-5", amount = 15 },
          { type = "item", name = "circuit-yellow-loaded", amount = 10 },
          { type = "item", name = "construction-frame-5", amount = 5 },
          { type = "item", name = "mechanical-parts", amount = 5 },
          { type = "item", name = "angels-smelting-wagon-1-4", amount = 1 },
        },
        results = {{ type = "item", name = "angels-smelting-wagon-1-5", amount = 1 }},
      },
    })
  end
end
