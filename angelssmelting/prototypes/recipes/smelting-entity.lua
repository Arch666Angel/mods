data:extend({
  --ORE PROCESSING MACHINE
  {
    type = "recipe",
    name = "ore-processing-machine",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "ore-processing-machine", amount = 1 }},
  },
  {
    type = "recipe",
    name = "ore-processing-machine-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-processing-machine", amount = 1 },
    },
    results = {{ type = "item", name = "ore-processing-machine-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "ore-processing-machine-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-processing-machine-2", amount = 1 },
    },
    results = {{ type = "item", name = "ore-processing-machine-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "ore-processing-machine-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "ore-processing-machine-3", amount = 1 },
    },
    results = {{ type = "item", name = "ore-processing-machine-4", amount = 1 }},
  },
  --PELLET PRESS
  {
    type = "recipe",
    name = "pellet-press",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "pellet-press", amount = 1 }},
  },
  {
    type = "recipe",
    name = "pellet-press-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-press", amount = 1 },
    },
    results = {{ type = "item", name = "pellet-press-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "pellet-press-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-press-2", amount = 1 },
    },
    results = {{ type = "item", name = "pellet-press-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "pellet-press-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "pellet-press-3", amount = 1 },
    },
    results = {{ type = "item", name = "pellet-press-4", amount = 1 }},
  },
  --POWDER MIXER
  {
    type = "recipe",
    name = "powder-mixer",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "powder-mixer", amount = 1 }},
  },
  {
    type = "recipe",
    name = "powder-mixer-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "powder-mixer", amount = 1 },
    },
    results = {{ type = "item", name = "powder-mixer-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "powder-mixer-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "powder-mixer-2", amount = 1 },
    },
    results = {{ type = "item", name = "powder-mixer-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "powder-mixer-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "powder-mixer-3", amount = 1 },
    },
    results = {{ type = "item", name = "powder-mixer-4", amount = 1 }},
  },
  --BLAST FURNACE
  {
    type = "recipe",
    name = "blast-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "blast-furnace", amount = 1 }},
  },
  {
    type = "recipe",
    name = "blast-furnace-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "blast-furnace", amount = 1 },
    },
    results = {{ type = "item", name = "blast-furnace-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "blast-furnace-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "blast-furnace-2", amount = 1 },
    },
    results = {{ type = "item", name = "blast-furnace-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "blast-furnace-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "blast-furnace-3", amount = 1 },
    },
    results = {{ type = "item", name = "blast-furnace-4", amount = 1 }},
  },
  --CHEMICAL FURNACE
  {
    type = "recipe",
    name = "angels-chemical-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = {{ type = "item", name = "angels-chemical-furnace", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-furnace-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-furnace", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-furnace-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-furnace-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-furnace-2", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-furnace-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "angels-chemical-furnace-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "angels-chemical-furnace-3", amount = 1 },
    },
    results = {{ type = "item", name = "angels-chemical-furnace-4", amount = 1 }},
  },
  --ARC FURNACE
  {
    type = "recipe",
    name = "induction-furnace",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "induction-furnace", amount = 1 }},
  },
  {
    type = "recipe",
    name = "induction-furnace-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "induction-furnace", amount = 1 },
    },
    results = {{ type = "item", name = "induction-furnace-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "induction-furnace-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "induction-furnace-2", amount = 1 },
    },
    results = {{ type = "item", name = "induction-furnace-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "induction-furnace-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "induction-furnace-3", amount = 1 },
    },
    results = {{ type = "item", name = "induction-furnace-4", amount = 1 }},
  },
  --CASTING MACHINE
  {
    type = "recipe",
    name = "casting-machine",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "casting-machine", amount = 1 }},
  },
  {
    type = "recipe",
    name = "casting-machine-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "casting-machine", amount = 1 },
    },
    results = {{ type = "item", name = "casting-machine-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "casting-machine-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "casting-machine-2", amount = 1 },
    },
    results = {{ type = "item", name = "casting-machine-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "casting-machine-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "casting-machine-3", amount = 1 },
    },
    results = {{ type = "item", name = "casting-machine-4", amount = 1 }},
  },
  --SINTERING OVEN
  {
    type = "recipe",
    name = "sintering-oven",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "sintering-oven", amount = 1 }},
  },
  {
    type = "recipe",
    name = "sintering-oven-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sintering-oven", amount = 1 },
    },
    results = {{ type = "item", name = "sintering-oven-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "sintering-oven-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sintering-oven-2", amount = 1 },
    },
    results = {{ type = "item", name = "sintering-oven-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "sintering-oven-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sintering-oven-3", amount = 1 },
    },
    results = {{ type = "item", name = "sintering-oven-4", amount = 1 }},
  },
  {
    type = "recipe",
    name = "sintering-oven-5",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sintering-oven-4", amount = 1 },
    },
    results = {{ type = "item", name = "sintering-oven-5", amount = 1 }},
  },
  --STRAND CASTING MACHINE
  {
    type = "recipe",
    name = "strand-casting-machine",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "strand-casting-machine", amount = 1 }},
  },
  {
    type = "recipe",
    name = "strand-casting-machine-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "strand-casting-machine", amount = 1 },
    },
    results = {{ type = "item", name = "strand-casting-machine-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "strand-casting-machine-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "strand-casting-machine-2", amount = 1 },
    },
    results = {{ type = "item", name = "strand-casting-machine-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "strand-casting-machine-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "strand-casting-machine-3", amount = 1 },
    },
    results = {{ type = "item", name = "strand-casting-machine-4", amount = 1 }},
  },
  --COOLING TOWER
  {
    type = "recipe",
    name = "cooling-tower",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 10 },
    },
    results = {{ type = "item", name = "cooling-tower", amount = 1 }},
  },
})
