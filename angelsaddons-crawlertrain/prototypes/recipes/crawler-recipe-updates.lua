if angelsmods.industries and angelsmods.industries.components then
  local RB = angelsmods.functions.RB

  RB.build(
    {
      {
        type = "recipe",
        name = "crawler-locomotive",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-1", amount = 25},
          {type = "item", name = "circuit-red-loaded", amount = 20},
          {type = "item", name = "construction-frame-1", amount = 40},
          {type = "item", name = "angels-cabling", amount = 15}
        },
        result = "crawler-locomotive"
      },
      {
        type = "recipe",
        name = "crawler-locomotive-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-1", amount = 25},
          {type = "item", name = "circuit-red-loaded", amount = 15},
          {type = "item", name = "construction-frame-1", amount = 35},
          {type = "item", name = "angels-cabling", amount = 15}
        },
        result = "crawler-locomotive-wagon"
      },
      {
        type = "recipe",
        name = "crawler-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-1", amount = 10},
          {type = "item", name = "circuit-red-loaded", amount = 15},
          {type = "item", name = "construction-frame-1", amount = 20},
          {type = "item", name = "angels-big-chest", amount = 5}
        },
        result = "crawler-wagon"
      },
      {
        type = "recipe",
        name = "crawler-bot-wagon",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-1", amount = 10},
          {type = "item", name = "circuit-red-loaded", amount = 15},
          {type = "item", name = "construction-frame-1", amount = 20},
          {type = "item", name = "angels-big-chest", amount = 5}
        },
        result = "crawler-bot-wagon"
      }
    }
  )

  if angelsmods.addons.crawlertrain.tier_amount >= 2 then
    RB.build(
      {
        {
          type = "recipe",
          name = "crawler-locomotive-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-2", amount = 25},
            {type = "item", name = "circuit-green-loaded", amount = 20},
            {type = "item", name = "construction-frame-2", amount = 40},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive", amount = 1}
          },
          result = "crawler-locomotive-2"
        },
        {
          type = "recipe",
          name = "crawler-locomotive-wagon-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-2", amount = 25},
            {type = "item", name = "circuit-green-loaded", amount = 15},
            {type = "item", name = "construction-frame-2", amount = 35},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-wagon", amount = 1}
          },
          result = "crawler-locomotive-wagon-2"
        },
        {
          type = "recipe",
          name = "crawler-wagon-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-2", amount = 10},
            {type = "item", name = "circuit-green-loaded", amount = 15},
            {type = "item", name = "construction-frame-2", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-wagon", amount = 1}
          },
          result = "crawler-wagon-2"
        },
        {
          type = "recipe",
          name = "crawler-bot-wagon-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-2", amount = 10},
            {type = "item", name = "circuit-green-loaded", amount = 15},
            {type = "item", name = "construction-frame-2", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-bot-wagon", amount = 1}
          },
          result = "crawler-bot-wagon-2"
        }
      }
    )
  end

  if angelsmods.addons.crawlertrain.tier_amount >= 3 then
    RB.build(
      {
        {
          type = "recipe",
          name = "crawler-locomotive-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-3", amount = 25},
            {type = "item", name = "circuit-orange-loaded", amount = 20},
            {type = "item", name = "construction-frame-3", amount = 40},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-2", amount = 1}
          },
          result = "crawler-locomotive-3"
        },
        {
          type = "recipe",
          name = "crawler-locomotive-wagon-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-3", amount = 25},
            {type = "item", name = "circuit-orange-loaded", amount = 15},
            {type = "item", name = "construction-frame-3", amount = 35},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-wagon-2", amount = 1}
          },
          result = "crawler-locomotive-wagon-3"
        },
        {
          type = "recipe",
          name = "crawler-wagon-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-3", amount = 10},
            {type = "item", name = "circuit-orange-loaded", amount = 15},
            {type = "item", name = "construction-frame-3", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-wagon-2", amount = 1}
          },
          result = "crawler-wagon-3"
        },
        {
          type = "recipe",
          name = "crawler-bot-wagon-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-3", amount = 10},
            {type = "item", name = "circuit-orange-loaded", amount = 15},
            {type = "item", name = "construction-frame-3", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-bot-wagon-2", amount = 1}
          },
          result = "crawler-bot-wagon-3"
        }
      }
    )
  end

  if angelsmods.addons.crawlertrain.tier_amount >= 4 then
    RB.build(
      {
        {
          type = "recipe",
          name = "crawler-locomotive-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-4", amount = 25},
            {type = "item", name = "circuit-blue-loaded", amount = 20},
            {type = "item", name = "construction-frame-4", amount = 40},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-3", amount = 1}
          },
          result = "crawler-locomotive-4"
        },
        {
          type = "recipe",
          name = "crawler-locomotive-wagon-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-4", amount = 25},
            {type = "item", name = "circuit-blue-loaded", amount = 15},
            {type = "item", name = "construction-frame-4", amount = 35},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-wagon-3", amount = 1}
          },
          result = "crawler-locomotive-wagon-4"
        },
        {
          type = "recipe",
          name = "crawler-wagon-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-4", amount = 10},
            {type = "item", name = "circuit-blue-loaded", amount = 15},
            {type = "item", name = "construction-frame-4", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-wagon-3", amount = 1}
          },
          result = "crawler-wagon-4"
        },
        {
          type = "recipe",
          name = "crawler-bot-wagon-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-4", amount = 10},
            {type = "item", name = "circuit-blue-loaded", amount = 15},
            {type = "item", name = "construction-frame-4", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-bot-wagon-3", amount = 1}
          },
          result = "crawler-bot-wagon-4"
        }
      }
    )
  end

  if angelsmods.addons.crawlertrain.tier_amount >= 5 then
    RB.build(
      {
        {
          type = "recipe",
          name = "crawler-locomotive-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-5", amount = 25},
            {type = "item", name = "circuit-yellow-loaded", amount = 20},
            {type = "item", name = "construction-frame-5", amount = 40},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-4", amount = 1}
          },
          result = "crawler-locomotive-5"
        },
        {
          type = "recipe",
          name = "crawler-locomotive-wagon-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-5", amount = 25},
            {type = "item", name = "circuit-yellow-loaded", amount = 15},
            {type = "item", name = "construction-frame-5", amount = 35},
            {type = "item", name = "angels-cabling", amount = 15},
            {type = "item", name = "crawler-locomotive-wagon-4", amount = 1}
          },
          result = "crawler-locomotive-wagon-5"
        },
        {
          type = "recipe",
          name = "crawler-wagon-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-5", amount = 10},
            {type = "item", name = "circuit-yellow-loaded", amount = 15},
            {type = "item", name = "construction-frame-5", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-wagon-4", amount = 1}
          },
          result = "crawler-wagon-5"
        },
        {
          type = "recipe",
          name = "crawler-bot-wagon-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-5", amount = 10},
            {type = "item", name = "circuit-yellow-loaded", amount = 15},
            {type = "item", name = "construction-frame-5", amount = 20},
            {type = "item", name = "angels-big-chest", amount = 5},
            {type = "item", name = "crawler-bot-wagon-4", amount = 1}
          },
          result = "crawler-bot-wagon-5"
        }
      }
    )
  end
end
