if angelsmods.industries and angelsmods.industries.components then
  local RB = angelsmods.functions.RB
  RB.build(
    {
      {
        type = "recipe",
        name = "smelting-locomotive-1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-1", amount = 15},
          {type = "item", name = "circuit-red-loaded", amount = 15},
          {type = "item", name = "construction-frame-1", amount = 10},
          {type = "item", name = "mechanical-parts", amount = 10}
        },
        result = "smelting-locomotive-1"
      },
      {
        type = "recipe",
        name = "smelting-locomotive-tender",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "motor-1", amount = 15},
          {type = "item", name = "circuit-red-loaded", amount = 10},
          {type = "item", name = "construction-frame-1", amount = 5},
          {type = "item", name = "mechanical-parts", amount = 5}
        },
        result = "smelting-locomotive-tender"
      },
      {
        type = "recipe",
        name = "smelting-wagon-1",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {type = "item", name = "angels-servo-motor-1", amount = 15},
          {type = "item", name = "circuit-red-loaded", amount = 10},
          {type = "item", name = "construction-frame-1", amount = 5},
          {type = "item", name = "mechanical-parts", amount = 5}
        },
        result = "smelting-wagon-1"
      }
    }
  )

  if angelsmods.addons.smeltingtrain.tier_amount >= 2 then
    RB.build(
      {
        {
          type = "recipe",
          name = "smelting-locomotive-1-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-2", amount = 15},
            {type = "item", name = "circuit-green-loaded", amount = 15},
            {type = "item", name = "construction-frame-2", amount = 10},
            {type = "item", name = "mechanical-parts", amount = 10}
          },
          result = "smelting-locomotive-1-2"
        },
        {
          type = "recipe",
          name = "smelting-locomotive-tender-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-2", amount = 15},
            {type = "item", name = "circuit-green-loaded", amount = 10},
            {type = "item", name = "construction-frame-2", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-locomotive-tender-2"
        },
        {
          type = "recipe",
          name = "smelting-wagon-1-2",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-2", amount = 15},
            {type = "item", name = "circuit-green-loaded", amount = 10},
            {type = "item", name = "construction-frame-2", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-wagon-1-2"
        }
      }
    )
  end

  if angelsmods.addons.smeltingtrain.tier_amount >= 3 then
    RB.build(
      {
        {
          type = "recipe",
          name = "smelting-locomotive-1-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-3", amount = 15},
            {type = "item", name = "circuit-orange-loaded", amount = 15},
            {type = "item", name = "construction-frame-3", amount = 10},
            {type = "item", name = "mechanical-parts", amount = 10}
          },
          result = "smelting-locomotive-1-3"
        },
        {
          type = "recipe",
          name = "smelting-locomotive-tender-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-3", amount = 15},
            {type = "item", name = "circuit-orange-loaded", amount = 10},
            {type = "item", name = "construction-frame-3", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-locomotive-tender-3"
        },
        {
          type = "recipe",
          name = "smelting-wagon-1-3",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-3", amount = 15},
            {type = "item", name = "circuit-orange-loaded", amount = 10},
            {type = "item", name = "construction-frame-3", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-wagon-1-3"
        }
      }
    )
  end

  if angelsmods.addons.smeltingtrain.tier_amount >= 4 then
    RB.build(
      {
        {
          type = "recipe",
          name = "smelting-locomotive-1-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-4", amount = 15},
            {type = "item", name = "circuit-blue-loaded", amount = 15},
            {type = "item", name = "construction-frame-4", amount = 10},
            {type = "item", name = "mechanical-parts", amount = 10}
          },
          result = "smelting-locomotive-1-4"
        },
        {
          type = "recipe",
          name = "smelting-locomotive-tender-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-4", amount = 15},
            {type = "item", name = "circuit-blue-loaded", amount = 10},
            {type = "item", name = "construction-frame-4", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-locomotive-tender-4"
        },
        {
          type = "recipe",
          name = "smelting-wagon-1-4",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-4", amount = 15},
            {type = "item", name = "circuit-blue-loaded", amount = 10},
            {type = "item", name = "construction-frame-4", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-wagon-1-4"
        }
      }
    )
  end

  if angelsmods.addons.smeltingtrain.tier_amount >= 5 then
    RB.build(
      {
        {
          type = "recipe",
          name = "smelting-locomotive-1-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-5", amount = 15},
            {type = "item", name = "circuit-yellow-loaded", amount = 15},
            {type = "item", name = "construction-frame-5", amount = 10},
            {type = "item", name = "mechanical-parts", amount = 10}
          },
          result = "smelting-locomotive-1-5"
        },
        {
          type = "recipe",
          name = "smelting-locomotive-tender-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "motor-5", amount = 15},
            {type = "item", name = "circuit-yellow-loaded", amount = 10},
            {type = "item", name = "construction-frame-5", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-locomotive-tender-5"
        },
        {
          type = "recipe",
          name = "smelting-wagon-1-5",
          energy_required = 10,
          enabled = false,
          ingredients = {
            {type = "item", name = "angels-servo-motor-5", amount = 15},
            {type = "item", name = "circuit-yellow-loaded", amount = 10},
            {type = "item", name = "construction-frame-5", amount = 5},
            {type = "item", name = "mechanical-parts", amount = 5}
          },
          result = "smelting-wagon-1-5"
        }
      }
    )
  end
end
