data:extend({
  --CHESTS
  {
    type = "recipe",
    name = "angels-big-chest",
    localised_name = { "entity-name.angels-big-chest" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "iron-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {
      { type = "item", name = "angels-big-chest", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-logistic-chest-requester",
    localised_name = { "entity-name.angels-logistic-chest-requester" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-big-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-logistic-chest-requester", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-logistic-chest-passive-provider",
    localised_name = { "entity-name.angels-logistic-chest-passive-provider" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-big-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-logistic-chest-passive-provider", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-logistic-chest-active-provider",
    localised_name = { "entity-name.angels-logistic-chest-active-provider" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-big-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-logistic-chest-active-provider", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-logistic-chest-storage",
    localised_name = { "entity-name.angels-logistic-chest-storage" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-big-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-logistic-chest-storage", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-logistic-chest-buffer",
    localised_name = { "entity-name.angels-logistic-chest-buffer" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-big-chest", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-logistic-chest-buffer", amount = 1 },
    },
    icon_size = 32,
  },
  --ROBOTS
  {
    type = "recipe",
    name = "angels-construction-robot",
    localised_name = { "entity-name.angels-construction-robot" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "engine-unit", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-construction-robot", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "cargo-robot",
    localised_name = { "entity-name.cargo-robot" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "engine-unit", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "cargo-robot", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "cargo-robot-2",
    localised_name = { "entity-name.cargo-robot-2" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "cargo-robot", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "electric-engine-unit", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "cargo-robot-2", amount = 1 },
    },
    icon_size = 32,
  },
  --ROBOPORT
  {
    type = "recipe",
    name = "cargo-hub",
    localised_name = { "entity-name.cargo-hub" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "electronic-circuit", amount = 60 },
    },
    results = {
      { type = "item", name = "cargo-hub", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "cargo-roboport",
    localised_name = { "entity-name.cargo-roboport" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "electronic-circuit", amount = 60 },
    },
    results = {
      { type = "item", name = "cargo-roboport", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "cargo-box",
    localised_name = { "entity-name.cargo-box" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "electronic-circuit", amount = 60 },
    },
    results = {
      { type = "item", name = "cargo-box", amount = 1 },
    },
    icon_size = 32,
  },
  --LOGISTIC ZONE EXPANDER
  {
    type = "recipe",
    name = "angels-zone-expander",
    localised_name = { "entity-name.angels-zone-expander" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-zone-expander", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-zone-expander-2",
    localised_name = { "entity-name.angels-zone-expander-2" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-zone-expander", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-zone-expander-2", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-zone-expander-3",
    localised_name = { "entity-name.angels-zone-expander-3" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-zone-expander-2", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "low-density-structure", amount = 5 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-zone-expander-3", amount = 1 },
    },
    icon_size = 32,
  },
  --CONSTRUCTION ZONE EXPANDER
  {
    type = "recipe",
    name = "angels-construction-zone-expander",
    localised_name = { "entity-name.angels-construction-zone-expander" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-construction-zone-expander", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-construction-zone-expander-2",
    localised_name = { "entity-name.angels-construction-zone-expander-2" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-construction-zone-expander", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-construction-zone-expander-2", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-construction-zone-expander-3",
    localised_name = { "entity-name.angels-construction-zone-expander-3" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-construction-zone-expander-2", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "low-density-structure", amount = 5 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-construction-zone-expander-3", amount = 1 },
    },
    icon_size = 32,
  },
  --RELAY STATION
  {
    type = "recipe",
    name = "angels-relay-station",
    localised_name = { "entity-name.angels-relay-station" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-relay-station", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-relay-station-2",
    localised_name = { "entity-name.angels-relay-station-2" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-relay-station", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-relay-station-2", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-relay-station-3",
    localised_name = { "entity-name.angels-relay-station-3" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-relay-station-2", amount = 4 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "low-density-structure", amount = 5 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-relay-station-3", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-charging-station",
    localised_name = { "entity-name.angels-charging-station" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-relay-station-2", amount = 2 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-charging-station", amount = 1 },
    },
    icon_size = 32,
  },
  -- angels lamp
  {
    type = "recipe",
    name = "angels-lamp",
    localised_name = { "entity-name.angels-lamp" },
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = mods["bobelectronics"] and "bob-basic-circuit-board" or "electronic-circuit", amount = 1 },
      { type = "item", name = "copper-cable", amount = 3 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "angels-lamp", amount = 1 },
    },
    icon_size = 32,
  },
})
