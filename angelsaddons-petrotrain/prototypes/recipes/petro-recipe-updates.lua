local RB = angelsmods.functions.RB

RB.build(
  {
    {
      type = "recipe",
      name = "petro-locomotive-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "motor-1", amount = 10},
        {type = "item", name = "circuit-red-loaded", amount = 10},
        {type = "item", name = "construction-frame-1", amount = 5},
        {type = "item", name = "angels-cabling", amount = 5}
      },
      result = "petro-locomotive-1"
    },
    {
      type = "recipe",
      name = "petro-tank1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-servo-motor-1", amount = 10},
        {type = "item", name = "circuit-red-loaded", amount = 10},
        {type = "item", name = "construction-frame-1", amount = 5},
        {type = "item", name = "construction-components", amount = 5}
      },
      result = "petro-tank1"
    },
    {
      type = "recipe",
      name = "petro-tank2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-servo-motor-1", amount = 10},
        {type = "item", name = "circuit-red-loaded", amount = 10},
        {type = "item", name = "construction-frame-1", amount = 5},
        {type = "item", name = "construction-components", amount = 5}
      },
      result = "petro-tank2"
    }
  }
)

if angelsmods.addons.petrotrain.tier_amount >= 2 then
  RB.build(
    {
      {
        type = "recipe",
        name = "petro-locomotive-1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-2", amount = 10},
          {type = "item", name = "circuit-green-loaded", amount = 10},
          {type = "item", name = "construction-frame-2", amount = 5},
          {type = "item", name = "angels-cabling", amount = 5},
          {type = "item", name = "petro-locomotive-1", amount = 1}
        },
        result = "petro-locomotive-1-2"
      },
      {
        type = "recipe",
        name = "petro-tank1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-2", amount = 10},
          {type = "item", name = "circuit-green-loaded", amount = 10},
          {type = "item", name = "construction-frame-2", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank1", amount = 1}
        },
        result = "petro-tank1-2"
      },
      {
        type = "recipe",
        name = "petro-tank2-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-2", amount = 10},
          {type = "item", name = "circuit-green-loaded", amount = 10},
          {type = "item", name = "construction-frame-2", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank2", amount = 1}
        },
        result = "petro-tank2-2"
      }
    }
  )
end

if angelsmods.addons.petrotrain.tier_amount >= 3 then
  RB.build(
    {
      {
        type = "recipe",
        name = "petro-locomotive-1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-3", amount = 10},
          {type = "item", name = "circuit-orange-loaded", amount = 10},
          {type = "item", name = "construction-frame-3", amount = 5},
          {type = "item", name = "angels-cabling", amount = 5},
          {type = "item", name = "petro-locomotive-1-2", amount = 1}
        },
        result = "petro-locomotive-1-3"
      },
      {
        type = "recipe",
        name = "petro-tank1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-3", amount = 10},
          {type = "item", name = "circuit-orange-loaded", amount = 10},
          {type = "item", name = "construction-frame-3", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank1-2", amount = 1}
        },
        result = "petro-tank1-3"
      },
      {
        type = "recipe",
        name = "petro-tank2-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-3", amount = 10},
          {type = "item", name = "circuit-orange-loaded", amount = 10},
          {type = "item", name = "construction-frame-3", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank2-2", amount = 1}
        },
        result = "petro-tank2-3"
      }
    }
  )
end

if angelsmods.addons.petrotrain.tier_amount >= 4 then
  RB.build(
    {
      {
        type = "recipe",
        name = "petro-locomotive-1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-4", amount = 10},
          {type = "item", name = "circuit-blue-loaded", amount = 10},
          {type = "item", name = "construction-frame-4", amount = 5},
          {type = "item", name = "angels-cabling", amount = 5},
          {type = "item", name = "petro-locomotive-1-3", amount = 1}
        },
        result = "petro-locomotive-1-4"
      },
      {
        type = "recipe",
        name = "petro-tank1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-4", amount = 10},
          {type = "item", name = "circuit-blue-loaded", amount = 10},
          {type = "item", name = "construction-frame-4", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank1-3", amount = 1}
        },
        result = "petro-tank1-4"
      },
      {
        type = "recipe",
        name = "petro-tank2-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-4", amount = 10},
          {type = "item", name = "circuit-blue-loaded", amount = 10},
          {type = "item", name = "construction-frame-4", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank2-3", amount = 1}
        },
        result = "petro-tank2-4"
      }
    }
  )
end

if angelsmods.addons.petrotrain.tier_amount >= 5 then
  RB.build(
    {
      {
        type = "recipe",
        name = "petro-locomotive-1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-5", amount = 10},
          {type = "item", name = "circuit-yellow-loaded", amount = 10},
          {type = "item", name = "construction-frame-5", amount = 5},
          {type = "item", name = "angels-cabling", amount = 5},
          {type = "item", name = "petro-locomotive-1-4", amount = 1}
        },
        result = "petro-locomotive-1-5"
      },
      {
        type = "recipe",
        name = "petro-tank1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-5", amount = 10},
          {type = "item", name = "circuit-yellow-loaded", amount = 10},
          {type = "item", name = "construction-frame-5", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank1-4", amount = 1}
        },
        result = "petro-tank1-5"
      },
      {
        type = "recipe",
        name = "petro-tank2-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-5", amount = 10},
          {type = "item", name = "circuit-yellow-loaded", amount = 10},
          {type = "item", name = "construction-frame-5", amount = 5},
          {type = "item", name = "construction-components", amount = 5},
          {type = "item", name = "petro-tank2-4", amount = 1}
        },
        result = "petro-tank2-5"
      }
    }
  )
end
