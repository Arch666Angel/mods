local RB = angelsmods.functions.RB

RB.build(
  {
    {
      type = "recipe",
      name = "petro-locomotive-1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"motor-1", 10},
        {"circuit-red-loaded", 10},
        {"construction-frame-1", 5},
        {"angels-cabling", 5}
      },
      result = "petro-locomotive-1"
    },
    {
      type = "recipe",
      name = "petro-tank1",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"angels-servo-motor-1", 10},
        {"circuit-red-loaded", 10},
        {"construction-frame-1", 5},
        {"construction-components", 5}
      },
      result = "petro-tank1"
    },
    {
      type = "recipe",
      name = "petro-tank2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"angels-servo-motor-1", 10},
        {"circuit-red-loaded", 10},
        {"construction-frame-1", 5},
        {"construction-components", 5}
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
          {"motor-2", 10},
          {"circuit-green-loaded", 10},
          {"construction-frame-2", 5},
          {"angels-cabling", 5},
          {"petro-locomotive-1", 1}
        },
        result = "petro-locomotive-1-2"
      },
      {
        type = "recipe",
        name = "petro-tank1-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-2", 10},
          {"circuit-green-loaded", 10},
          {"construction-frame-2", 5},
          {"construction-components", 5},
          {"petro-tank1", 1}
        },
        result = "petro-tank1-2"
      },
      {
        type = "recipe",
        name = "petro-tank2-2",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-2", 10},
          {"circuit-green-loaded", 10},
          {"construction-frame-2", 5},
          {"construction-components", 5},
          {"petro-tank2", 1}
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
          {"motor-3", 10},
          {"circuit-orange-loaded", 10},
          {"construction-frame-3", 5},
          {"angels-cabling", 5},
          {"petro-locomotive-1-2", 1}
        },
        result = "petro-locomotive-1-3"
      },
      {
        type = "recipe",
        name = "petro-tank1-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-3", 10},
          {"circuit-orange-loaded", 10},
          {"construction-frame-3", 5},
          {"construction-components", 5},
          {"petro-tank1-2", 1}
        },
        result = "petro-tank1-3"
      },
      {
        type = "recipe",
        name = "petro-tank2-3",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-3", 10},
          {"circuit-orange-loaded", 10},
          {"construction-frame-3", 5},
          {"construction-components", 5},
          {"petro-tank2-2", 1}
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
          {"motor-4", 10},
          {"circuit-blue-loaded", 10},
          {"construction-frame-4", 5},
          {"angels-cabling", 5},
          {"petro-locomotive-1-3", 1}
        },
        result = "petro-locomotive-1-4"
      },
      {
        type = "recipe",
        name = "petro-tank1-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-4", 10},
          {"circuit-blue-loaded", 10},
          {"construction-frame-4", 5},
          {"construction-components", 5},
          {"petro-tank1-3", 1}
        },
        result = "petro-tank1-4"
      },
      {
        type = "recipe",
        name = "petro-tank2-4",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-4", 10},
          {"circuit-blue-loaded", 10},
          {"construction-frame-4", 5},
          {"construction-components", 5},
          {"petro-tank2-3", 1}
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
          {"motor-5", 10},
          {"circuit-yellow-loaded", 10},
          {"construction-frame-5", 5},
          {"angels-cabling", 5},
          {"petro-locomotive-1-4", 1}
        },
        result = "petro-locomotive-1-5"
      },
      {
        type = "recipe",
        name = "petro-tank1-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-5", 10},
          {"circuit-yellow-loaded", 10},
          {"construction-frame-5", 5},
          {"construction-components", 5},
          {"petro-tank1-4", 1}
        },
        result = "petro-tank1-5"
      },
      {
        type = "recipe",
        name = "petro-tank2-5",
        energy_required = 10,
        enabled = false,
        ingredients = {
          {"angels-servo-motor-5", 10},
          {"circuit-yellow-loaded", 10},
          {"construction-frame-5", 5},
          {"construction-components", 5},
          {"petro-tank2-4", 1}
        },
        result = "petro-tank2-5"
      }
    }
  )
end
