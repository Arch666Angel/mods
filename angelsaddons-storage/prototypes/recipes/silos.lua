if angelsmods.addons.storage.silos or angelsmods.addons.storage.oresilos then
  -----------------------------------------------------------------------------
  -- REGULAR SILO -------------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "recipe",
      name = "silo",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 20 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "stone-brick", amount = 20 },
      },
      results = { { type = "item", name = "silo", amount = 1 } },
    },
  })
end

if angelsmods.addons.storage.oresilos then
  -----------------------------------------------------------------------------
  -- ORE SILOS ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "recipe",
      name = "silo-ore1",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore1", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-ore2",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore2", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-ore3",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-ore4",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore4", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-ore5",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore5", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-ore6",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-ore6", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-coal",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      results = { { type = "item", name = "silo-coal", amount = 1 } },
    },
  })
end

if angelsmods.addons.storage.silos then
  -----------------------------------------------------------------------------
  -- LOGISTIC SILOS -----------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "recipe",
      name = "silo-passive-provider",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 10 },
      },
      results = { { type = "item", name = "silo-passive-provider", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-active-provider",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 10 },
      },
      results = { { type = "item", name = "silo-active-provider", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-requester",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 10 },
      },
      results = { { type = "item", name = "silo-requester", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-storage",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 10 },
      },
      results = { { type = "item", name = "silo-storage", amount = 1 } },
    },
    {
      type = "recipe",
      name = "silo-buffer",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
        { type = "item", name = "steel-plate", amount = 10 },
        { type = "item", name = "advanced-circuit", amount = 10 },
      },
      results = { { type = "item", name = "silo-buffer", amount = 1 } },
    },
  })
end
