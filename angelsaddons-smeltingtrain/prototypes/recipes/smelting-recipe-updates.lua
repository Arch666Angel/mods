local RB = angelsmods.functions.RB
RB.build(
  {
    {
      type = "recipe",
      name = "smelting-locomotive-1",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"motor-1", 15},
        {"circuit-red-loaded", 15},
        {"construction-frame-1", 10},
        {"mechanical-parts", 10}
      },
      result = "smelting-locomotive-1"
    },
    {
      type = "recipe",
      name = "smelting-locomotive-tender",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"motor-1", 15},
        {"circuit-red-loaded", 10},
        {"construction-frame-1", 5},
        {"mechanical-parts", 5}
      },
      result = "smelting-locomotive-tender"
    },
    {
      type = "recipe",
      name = "smelting-wagon-1",
      energy_required = 10,
      enabled = "false",
      ingredients = {
        {"angels-servo-motor-1", 15},
        {"circuit-red-loaded", 10},
        {"construction-frame-1", 5},
        {"mechanical-parts", 5}
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
        enabled = "false",
        ingredients = {
          {"motor-2", 15},
          {"circuit-green-loaded", 15},
          {"construction-frame-2", 10},
          {"mechanical-parts", 10}
        },
        result = "smelting-locomotive-1-2"
      },
      {
        type = "recipe",
        name = "smelting-locomotive-tender-2",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"motor-2", 15},
          {"circuit-green-loaded", 10},
          {"construction-frame-2", 5},
          {"mechanical-parts", 5}
        },
        result = "smelting-locomotive-tender-2"
      },
      {
        type = "recipe",
        name = "smelting-wagon-1-2",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"angels-servo-motor-2", 15},
          {"circuit-green-loaded", 10},
          {"construction-frame-2", 5},
          {"mechanical-parts", 5}
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
        enabled = "false",
        ingredients = {
          {"motor-3", 15},
          {"circuit-orange-loaded", 15},
          {"construction-frame-3", 10},
          {"mechanical-parts", 10}
        },
        result = "smelting-locomotive-1-3"
      },
      {
        type = "recipe",
        name = "smelting-locomotive-tender-3",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"motor-3", 15},
          {"circuit-orange-loaded", 10},
          {"construction-frame-3", 5},
          {"mechanical-parts", 5}
        },
        result = "smelting-locomotive-tender-3"
      },
      {
        type = "recipe",
        name = "smelting-wagon-1-3",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"angels-servo-motor-3", 15},
          {"circuit-orange-loaded", 10},
          {"construction-frame-3", 5},
          {"mechanical-parts", 5}
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
        enabled = "false",
        ingredients = {
          {"motor-4", 15},
          {"circuit-blue-loaded", 15},
          {"construction-frame-4", 10},
          {"mechanical-parts", 10}
        },
        result = "smelting-locomotive-1-4"
      },
      {
        type = "recipe",
        name = "smelting-locomotive-tender-4",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"motor-4", 15},
          {"circuit-blue-loaded", 10},
          {"construction-frame-4", 5},
          {"mechanical-parts", 5}
        },
        result = "smelting-locomotive-tender-4"
      },
      {
        type = "recipe",
        name = "smelting-wagon-1-4",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"angels-servo-motor-4", 15},
          {"circuit-blue-loaded", 10},
          {"construction-frame-4", 5},
          {"mechanical-parts", 5}
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
        enabled = "false",
        ingredients = {
          {"motor-5", 15},
          {"circuit-yellow-loaded", 15},
          {"construction-frame-5", 10},
          {"mechanical-parts", 10}
        },
        result = "smelting-locomotive-1-5"
      },
      {
        type = "recipe",
        name = "smelting-locomotive-tender-5",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"motor-5", 15},
          {"circuit-yellow-loaded", 10},
          {"construction-frame-5", 5},
          {"mechanical-parts", 5}
        },
        result = "smelting-locomotive-tender-5"
      },
      {
        type = "recipe",
        name = "smelting-wagon-1-5",
        energy_required = 10,
        enabled = "false",
        ingredients = {
          {"angels-servo-motor-5", 15},
          {"circuit-yellow-loaded", 10},
          {"construction-frame-5", 5},
          {"mechanical-parts", 5}
        },
        result = "smelting-wagon-1-5"
      }
    }
  )
end
