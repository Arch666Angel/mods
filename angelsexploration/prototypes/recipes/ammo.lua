data:extend({
  -- CANNON TURRET SHELL
  {
    type = "recipe",
    name = "angels-cannon-turret-shell-1",
    localised_name = { "item-name.angels-cannon-turret-shell-1" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "shotgun-shell", amount = 1 },
      { type = "item", name = "coal", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-cannon-turret-shell-1", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "angels-cannon-turret-shell-2",
    localised_name = { "item-name.angels-cannon-turret-shell-2" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "piercing-shotgun-shell", amount = 1 },
      { type = "item", name = "coal", amount = 4 },
    },
    results = {
      { type = "item", name = "angels-cannon-turret-shell-2", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "angels-cannon-turret-shell-3",
    localised_name = { "item-name.angels-cannon-turret-shell-3" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-cannon-turret-shell-2", amount = 1 },
      { type = "item", name = "coal", amount = 4 },
      { type = "item", name = "uranium-238", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-cannon-turret-shell-3", amount = 1 },
    },
  },
  -- HEAVY CANNON SHELL
  {
    type = "recipe",
    name = "angels-heavy-cannon-shell",
    localised_name = { "item-name.angels-heavy-cannon-shell" },
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "cannon-shell", amount = 3 },
      --{type="item", name="lead-plate", amount = 3},
    },
    results = {
      { type = "item", name = "angels-heavy-cannon-shell", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "angels-heavy-explosive-cannon-shell",
    localised_name = { "item-name.angels-heavy-explosive-cannon-shell" },
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "explosive-cannon-shell", amount = 3 },
      --{type="item", name="lead-plate", amount = 3},
    },
    results = {
      { type = "item", name = "angels-heavy-explosive-cannon-shell", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "angels-heavy-uranium-cannon-shell",
    localised_name = { "item-name.angels-heavy-uranium-cannon-shell" },
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "uranium-cannon-shell", amount = 3 },
      --{type="item", name="lead-plate", amount = 3},
    },
    results = {
      { type = "item", name = "angels-heavy-uranium-cannon-shell", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "angels-heavy-explosive-uranium-cannon-shell",
    localised_name = { "item-name.angels-heavy-explosive-uranium-cannon-shell" },
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "explosive-uranium-cannon-shell", amount = 3 },
      --{type="item", name="lead-plate", amount = 3},
    },
    results = {
      { type = "item", name = "angels-heavy-explosive-uranium-cannon-shell", amount = 1 },
    },
  },
})
