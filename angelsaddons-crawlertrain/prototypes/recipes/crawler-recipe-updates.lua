local RB = angelsmods.functions.RB

RB.build(
  {
    {
      type = "recipe",
      name = "crawler-locomotive",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"motor-1", 25},
        {"circuit-red-loaded", 20},
        {"construction-frame-1", 40},
        {"angels-cabling", 15}
      },
      result = "crawler-locomotive"
    },
    {
      type = "recipe",
      name = "crawler-locomotive-wagon",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"motor-1", 25},
        {"circuit-red-loaded", 15},
        {"construction-frame-1", 35},
        {"angels-cabling", 15}
      },
      result = "crawler-locomotive-wagon"
    },
    {
      type = "recipe",
      name = "crawler-wagon",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"angels-servo-motor-1", 10},
        {"circuit-red-loaded", 15},
        {"construction-frame-1", 20},
        {"angels-big-chest", 5}
      },
      result = "crawler-wagon"
    },
    {
      type = "recipe",
      name = "crawler-bot-wagon",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"angels-servo-motor-1", 10},
        {"circuit-red-loaded", 15},
        {"construction-frame-1", 20},
        {"angels-big-chest", 5}
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
          {"motor-2", 25},
          {"circuit-green-loaded", 20},
          {"construction-frame-2", 40},
          {"angels-cabling", 15},
          {"crawler-locomotive", 1}
        },
        result = "crawler-locomotive-2"
      },
      {
        type = "recipe",
        name = "crawler-locomotive-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"motor-2", 25},
          {"circuit-green-loaded", 15},
          {"construction-frame-2", 35},
          {"angels-cabling", 15},
          {"crawler-locomotive-wagon", 1}
        },
        result = "crawler-locomotive-wagon-2"
      },
      {
        type = "recipe",
        name = "crawler-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-2", 10},
          {"circuit-green-loaded", 15},
          {"construction-frame-2", 20},
          {"angels-big-chest", 5},
          {"crawler-wagon", 1}
        },
        result = "crawler-wagon-2"
      },
      {
        type = "recipe",
        name = "crawler-bot-wagon-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-2", 10},
          {"circuit-green-loaded", 15},
          {"construction-frame-2", 20},
          {"angels-big-chest", 5},
          {"crawler-bot-wagon", 1}
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
          {"motor-3", 25},
          {"circuit-orange-loaded", 20},
          {"construction-frame-3", 40},
          {"angels-cabling", 15},
          {"crawler-locomotive-2", 1}
        },
        result = "crawler-locomotive-3"
      },
      {
        type = "recipe",
        name = "crawler-locomotive-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"motor-3", 25},
          {"circuit-orange-loaded", 15},
          {"construction-frame-3", 35},
          {"angels-cabling", 15},
          {"crawler-locomotive-wagon-2", 1}
        },
        result = "crawler-locomotive-wagon-3"
      },
      {
        type = "recipe",
        name = "crawler-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-3", 10},
          {"circuit-orange-loaded", 15},
          {"construction-frame-3", 20},
          {"angels-big-chest", 5},
          {"crawler-wagon-2", 1}
        },
        result = "crawler-wagon-3"
      },
      {
        type = "recipe",
        name = "crawler-bot-wagon-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-3", 10},
          {"circuit-orange-loaded", 15},
          {"construction-frame-3", 20},
          {"angels-big-chest", 5},
          {"crawler-bot-wagon-2", 1}
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
          {"motor-4", 25},
          {"circuit-blue-loaded", 20},
          {"construction-frame-4", 40},
          {"angels-cabling", 15},
          {"crawler-locomotive-3", 1}
        },
        result = "crawler-locomotive-4"
      },
      {
        type = "recipe",
        name = "crawler-locomotive-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"motor-4", 25},
          {"circuit-blue-loaded", 15},
          {"construction-frame-4", 35},
          {"angels-cabling", 15},
          {"crawler-locomotive-wagon-3", 1}
        },
        result = "crawler-locomotive-wagon-4"
      },
      {
        type = "recipe",
        name = "crawler-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-4", 10},
          {"circuit-blue-loaded", 15},
          {"construction-frame-4", 20},
          {"angels-big-chest", 5},
          {"crawler-wagon-3", 1}
        },
        result = "crawler-wagon-4"
      },
      {
        type = "recipe",
        name = "crawler-bot-wagon-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-4", 10},
          {"circuit-blue-loaded", 15},
          {"construction-frame-4", 20},
          {"angels-big-chest", 5},
          {"crawler-bot-wagon-3", 1}
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
          {"motor-5", 25},
          {"circuit-yellow-loaded", 20},
          {"construction-frame-5", 40},
          {"angels-cabling", 15},
          {"crawler-locomotive-4", 1}
        },
        result = "crawler-locomotive-5"
      },
      {
        type = "recipe",
        name = "crawler-locomotive-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"motor-5", 25},
          {"circuit-yellow-loaded", 15},
          {"construction-frame-5", 35},
          {"angels-cabling", 15},
          {"crawler-locomotive-wagon-4", 1}
        },
        result = "crawler-locomotive-wagon-5"
      },
      {
        type = "recipe",
        name = "crawler-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-5", 10},
          {"circuit-yellow-loaded", 15},
          {"construction-frame-5", 20},
          {"angels-big-chest", 5},
          {"crawler-wagon-4", 1}
        },
        result = "crawler-wagon-5"
      },
      {
        type = "recipe",
        name = "crawler-bot-wagon-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-5", 10},
          {"circuit-yellow-loaded", 15},
          {"construction-frame-5", 20},
          {"angels-big-chest", 5},
          {"crawler-bot-wagon-4", 1}
        },
        result = "crawler-bot-wagon-5"
      }
    }
  )
end
