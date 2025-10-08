if angelsmods.industries.components then
  --[[--
  ---------------------------------------------------
      Rocket MK1 calculation:
  ---------------------------------------------------
                      amount:    lds    rcu    rf
    hull component    x30        25     1      0

    ion thruster      x5 (+5)    10     60     75
    ion booster       x1         30     40     250

    fusion reactor    x2         0      15     0

    shield array      x3         20     50     0
    laser array       x3         20     50     0
                                ----    ----   ----
                      total:    1000    1000   1000
  ---------------------------------------------------
  --]]
  --

  data:extend({
    {
      type = "recipe",
      name = "angels-rocket-hull",
      localised_name = { "item-name.angels-rocket-hull" },
      energy_required = 40,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 25 },
        { type = "item", name = "processing-unit", amount = 01 },
      },
      results = { { type = "item", name = "angels-rocket-hull", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-rocket-ion-thruster",
      localised_name = { "item-name.angels-rocket-ion-thruster" },
      energy_required = 120,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 10 },
        { type = "item", name = "rocket-fuel", amount = 75 },
        { type = "item", name = "processing-unit", amount = 60 },
      },
      results = { { type = "item", name = "angels-rocket-ion-thruster", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-rocket-ion-booster",
      localised_name = { "item-name.angels-rocket-ion-booster" },
      energy_required = 1200,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 30 },
        { type = "item", name = "angels-rocket-ion-thruster", amount = 5 },
        { type = "item", name = "rocket-fuel", amount = 250 },
        { type = "item", name = "processing-unit", amount = 40 },
      },
      results = { { type = "item", name = "angels-rocket-ion-booster", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-rocket-fusion-reactor",
      localised_name = { "item-name.angels-rocket-fusion-reactor" },
      energy_required = 600,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "fission-reactor-equipment", amount = 1 },
        { type = "item", name = "processing-unit", amount = 15 },
        { type = "item", name = "angels-deuterium-fuel-cell", amount = 1 },
      },
      results = { { type = "item", name = "angels-rocket-fusion-reactor", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-rocket-shield-array",
      localised_name = { "item-name.angels-rocket-shield-array" },
      energy_required = 400,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 20 },
        { type = "item", name = "processing-unit", amount = 50 },
        { type = "item", name = mods["angelsaddons-cab"] and "angels-heavy-energy-shield-vequip" or "energy-shield-mk2-equipment", amount = 5 },
        { type = "item", name = "radar", amount = 10 },
      },
      results = { { type = "item", name = "angels-rocket-shield-array", amount = 1 } },
    },
    {
      type = "recipe",
      name = "angels-rocket-laser-array",
      localised_name = { "item-name.angels-rocket-laser-array" },
      energy_required = 400,
      enabled = false,
      category = "advanced-crafting",
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 20 },
        { type = "item", name = "processing-unit", amount = 50 },
        { type = "item", name = "discharge-defense-equipment", amount = 5 },
        { type = "item", name = "radar", amount = 10 },
      },
      results = { { type = "item", name = "angels-rocket-laser-array", amount = 1 } },
    },
  })
end
