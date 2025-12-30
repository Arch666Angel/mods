data:extend({
  --CHESTS
  {
    type = "recipe",
    name = "angels-big-chest",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-chest", amount = 1 },
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
    name = "angels-cargo-robot",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "engine-unit", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "angels-cargo-robot", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-cargo-robot-2",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "angels-cargo-robot", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
      { type = "item", name = "electric-engine-unit", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = {
      { type = "item", name = "angels-cargo-robot-2", amount = 1 },
    },
    icon_size = 32,
  },
  --ROBOPORT
  {
    type = "recipe",
    name = "angels-cargo-hub",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "processing-unit", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-cargo-hub", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-cargo-roboport",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "advanced-circuit", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-cargo-roboport", amount = 1 },
    },
    icon_size = 32,
  },
  {
    type = "recipe",
    name = "angels-cargo-box",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 60 },
      { type = "item", name = "stone-brick", amount = 40 },
      { type = "item", name = "iron-gear-wheel", amount = 60 },
      { type = "item", name = "electronic-circuit", amount = 60 },
    },
    results = {
      { type = "item", name = "angels-cargo-box", amount = 1 },
    },
    icon_size = 32,
  },
  --LOGISTIC ZONE EXPANDER
  {
    type = "recipe",
    name = "angels-zone-expander",
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
})
