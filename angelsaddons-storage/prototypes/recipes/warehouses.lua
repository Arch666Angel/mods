if angelsmods.addons.storage.warehouses then
  -----------------------------------------------------------------------------
  -- REGULAR WAREHOUSE --------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "recipe",
      name = "angels-warehouse",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "iron-plate", amount = 100 },
        { type = "item", name = "stone-brick", amount = 100 },
      },
      result = "angels-warehouse",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "a",
    },
  })

  -----------------------------------------------------------------------------
  -- LOGISTIC WAREHOUSES ------------------------------------------------------
  -----------------------------------------------------------------------------
  data:extend({
    {
      type = "recipe",
      name = "angels-warehouse-passive-provider",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "angels-warehouse", amount = 1 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 20 },
      },
      result = "angels-warehouse-passive-provider",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "c",
    },
    {
      type = "recipe",
      name = "angels-warehouse-active-provider",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "angels-warehouse", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 20 },
      },
      result = "angels-warehouse-active-provider",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "b",
    },
    {
      type = "recipe",
      name = "angels-warehouse-storage",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "angels-warehouse", amount = 1 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 20 },
      },
      result = "angels-warehouse-storage",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "d",
    },
    {
      type = "recipe",
      name = "angels-warehouse-requester",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "angels-warehouse", amount = 1 },
        { type = "item", name = mods["angelsindustries"] and "electronic-circuit" or "advanced-circuit", amount = 20 },
      },
      result = "angels-warehouse-requester",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "f",
    },
    {
      type = "recipe",
      name = "angels-warehouse-buffer",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "angels-warehouse", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 20 },
      },
      result = "angels-warehouse-buffer",
      icon_size = 32,
      subgroup = "angels-warehouse",
      order = "e",
    },
  })
end
