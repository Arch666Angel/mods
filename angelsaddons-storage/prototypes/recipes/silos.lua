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
      result = "silo",
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
      result = "silo-ore1",
    },
    {
      type = "recipe",
      name = "silo-ore2",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-ore2",
    },
    {
      type = "recipe",
      name = "silo-ore3",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-ore3",
    },
    {
      type = "recipe",
      name = "silo-ore4",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-ore4",
    },
    {
      type = "recipe",
      name = "silo-ore5",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-ore5",
    },
    {
      type = "recipe",
      name = "silo-ore6",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-ore6",
    },
    {
      type = "recipe",
      name = "silo-coal",
      energy_required = 0.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "silo", amount = 1 },
      },
      result = "silo-coal",
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
      result = "silo-passive-provider",
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
      result = "silo-active-provider",
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
      result = "silo-requester",
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
      result = "silo-storage",
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
      result = "silo-buffer",
    },
  })
end
