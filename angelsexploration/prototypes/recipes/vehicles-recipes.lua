data:extend(
{
  --VEHICLES
  {
    type = "recipe",
    name = "angels-heavy-tank",
    energy_required = 10,
    enabled = "false",
    ingredients = {
      {"steel-plate", 50},
      --{"titanium-plate", 20},
      {"advanced-circuit", 10},
      {"engine-unit", 20}
    },
    result = "angels-heavy-tank"
  },
  --TURRET
  {
    type = "recipe",
    name = "angels-cannon-turret",
    energy_required = 10,
    enabled = "false",
    ingredients = {
      {"steel-plate", 20},
      {"iron-plate", 10},
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10}
    },
    result = "angels-cannon-turret",
  },
  {
    type = "recipe",
    name = "angels-rocket-turret",
    energy_required = 10,
    enabled = "false",
    ingredients = {
      {"steel-plate", 20},
      {"iron-plate", 10},
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10}
    },
    result = "angels-rocket-turret",
  },

}
)
