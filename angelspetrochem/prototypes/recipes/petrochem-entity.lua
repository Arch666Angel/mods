data:extend({
  --SEPARATOR
  {
    type = "recipe",
    name = "separator",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "separator", amount = 1 }},
  },
  {
    type = "recipe",
    name = "separator-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "separator", amount = 1 },
    },
    results = {{ type = "item", name = "separator-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "separator-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "separator-2", amount = 1 },
    },
    results = {{ type = "item", name = "separator-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "separator-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "separator-3", amount = 1 },
    },
    results = {{ type = "item", name = "separator-4", amount = 1 }},
  },
  --GAS REFINERY SMALL
  {
    type = "recipe",
    name = "gas-refinery-small",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "gas-refinery-small", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-small-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery-small", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-small-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-small-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery-small-2", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-small-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-small-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery-small-3", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-small-4", amount = 1 }},
  },
  --GAS REFINERY
  {
    type = "recipe",
    name = "gas-refinery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "gas-refinery", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery-2", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "gas-refinery-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "gas-refinery-3", amount = 1 },
    },
    results = {{ type = "item", name = "gas-refinery-4", amount = 1 }},
  },
  --OIL REFINERY
  {
    type = "recipe",
    name = "oil-refinery-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery", amount = 1 },
    },
    results = {{ type = "item", name = "oil-refinery-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "oil-refinery-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery-2", amount = 1 },
    },
    results = {{ type = "item", name = "oil-refinery-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "oil-refinery-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery-3", amount = 1 },
    },
    results = {{ type = "item", name = "oil-refinery-4", amount = 1 }},
  },
  --STEAM CRACKER
  {
    type = "recipe",
    name = "steam-cracker",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "steam-cracker", amount = 1 }},
  },
  {
    type = "recipe",
    name = "steam-cracker-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steam-cracker", amount = 1 },
    },
    results = {{ type = "item", name = "steam-cracker-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "steam-cracker-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steam-cracker-2", amount = 1 },
    },
    results = {{ type = "item", name = "steam-cracker-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "steam-cracker-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steam-cracker-3", amount = 1 },
    },
    results = {{ type = "item", name = "steam-cracker-4", amount = 1 }},
  },
  --ADVANCED CHEMICAL PLANT
  {
    type = "recipe",
    name = "advanced-chemical-plant",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "advanced-chemical-plant", amount = 1 }},
  },
  {
    type = "recipe",
    name = "advanced-chemical-plant-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "advanced-chemical-plant", amount = 1 },
    },
    results = {{ type = "item", name = "advanced-chemical-plant-2", amount = 1 }},
  },
  --FLARE STACK
  {
    type = "recipe",
    name = "angels-flare-stack",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-flare-stack", amount = 1 }},
  },
  --VALVES
  {
    type = "recipe",
    name = "valve-inspector",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {{ type = "item", name = "valve-inspector", amount = 1 }},
  },
  {
    type = "recipe",
    name = "valve-overflow",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {{ type = "item", name = "valve-overflow", amount = 1 }},
  },
  {
    type = "recipe",
    name = "valve-return",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {{ type = "item", name = "valve-return", amount = 1 }},
  },
  {
    type = "recipe",
    name = "valve-underflow",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {{ type = "item", name = "valve-underflow", amount = 1 }},
  },
  {
    type = "recipe",
    name = "valve-converter",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {{ type = "item", name = "valve-converter", amount = 1 }},
  },
  --STORAGE TANKS
  {
    type = "recipe",
    name = "angels-storage-tank-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-storage-tank-1", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-storage-tank-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-storage-tank-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-storage-tank-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-storage-tank-3", amount = 1 }},
  },
  --FLUID SPLITTER
  -- {
  -- type = "recipe",
  -- name = "fluid-splitter-2-way",
  -- energy_required = 2,
  -- enabled = false,
  -- ingredients =
  -- {
  -- {type="item", name="steel-plate", amount = 1},
  -- },
  -- results = {{ type = "item", name = "angels-fluid-splitter-2-way", amount = 1 }},
  -- },
  -- {
  -- type = "recipe",
  -- name = "fluid-splitter-3-way",
  -- energy_required = 2,
  -- enabled = false,
  -- ingredients =
  -- {
  -- {type="item", name="steel-plate", amount = 1},
  -- },
  -- results = {{ type = "item", name = "angels-fluid-splitter-3-way", amount = 1 }},
  -- },

  --ELECTROLYSER
  {
    type = "recipe",
    name = "angels-electrolyser",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-electrolyser", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-electrolyser-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electrolyser", amount = 1 },
    },
    results = {{ type = "item", name = "angels-electrolyser-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-electrolyser-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electrolyser-2", amount = 1 },
    },
    results = {{ type = "item", name = "angels-electrolyser-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-electrolyser-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electrolyser-3", amount = 1 },
    },
    results = {{ type = "item", name = "angels-electrolyser-4", amount = 1 }},
  },

  --AIR FILTER
  {
    type = "recipe",
    name = "angels-air-filter",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-air-filter", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-air-filter-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-air-filter", amount = 1 },
    },
    results = {{ type = "item", name = "angels-air-filter-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-air-filter-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-air-filter-2", amount = 1 },
    },
    results = {{ type = "item", name = "angels-air-filter-3", amount = 1 }},
  },
  --OIL REFINERY
  {
    type = "recipe",
    name = "oil-refinery-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery", amount = 10 },
    },
    results = {{ type = "item", name = "oil-refinery-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "oil-refinery-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery-2", amount = 1 },
    },
    results = {{ type = "item", name = "oil-refinery-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "oil-refinery-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oil-refinery-3", amount = 1 },
    },
    results = {{ type = "item", name = "oil-refinery-4", amount = 1 }},
  },
  --CHEMICAL PLANT
  {
    type = "recipe",
    name = "angels-chemical-plant",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-plant", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-plant", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-plant-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-plant-2", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-plant-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-plant-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-plant-3", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-plant-4", amount = 4 }},
  },
  --ELECTRIC BOILER
  {
    type = "recipe",
    name = "angels-electric-boiler",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-electric-boiler", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-electric-boiler-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electric-boiler", amount = 1 },
    },
    results = {{ type = "item", name = "angels-electric-boiler-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-electric-boiler-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-electric-boiler-2", amount = 1 },
    },
    results = {{ type = "item", name = "angels-electric-boiler-3", amount = 1 }},
  },
})
