--FALLBACKS
--CIRCUITS
angelsmods.functions.RB.set_fallback(
  "item",
  "t0-circuit",
  { { "block-electronics-0" }, { "bob-basic-circuit-board" }, { "electronic-circuit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t1-circuit",
  { { "block-electronics-1" }, { "electronic-circuit" }, { "electronic-circuit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t2-circuit",
  { { "block-electronics-2" }, { "electronic-circuit" }, { "electronic-circuit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t3-circuit",
  { { "block-electronics-3" }, { "advanced-circuit" }, { "advanced-circuit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-circuit",
  { { "block-electronics-4" }, { "processing-unit" }, { "advanced-circuit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-circuit",
  { { "block-electronics-5" }, { "bob-advanced-processing-unit" }, { "processing-unit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-circuit",
  { { "block-electronics-5" }, { "bob-advanced-processing-unit" }, { "processing-unit" } }
)

--PLATES
angelsmods.functions.RB.set_fallback("item", "t0-plate", { { "block-construction-1" }, { "iron-plate", 3 } })
angelsmods.functions.RB.set_fallback("item", "t1-plate", { { "block-construction-1" }, { "steel-plate", 3 } })
angelsmods.functions.RB.set_fallback("item", "t2-plate", {
  { "block-construction-2" },
  {
    "bob-bronze-alloy",
    3,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["bronze"].plate or false
    end,
  },
  { "steel-plate", 5 },
})
angelsmods.functions.RB.set_fallback("item", "t3-plate", {
  { "block-construction-3" },
  { "bob-aluminium-plate", 4 },
  {
    "angels-plate-aluminium",
    4,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["aluminium"].plate or false
    end,
  },
  { "steel-plate", 7 },
})
angelsmods.functions.RB.set_fallback("item", "t4-plate", {
  { "block-construction-4" },
  { "bob-titanium-plate", 4 },
  {
    "angels-plate-titanium",
    4,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["titanium"].plate or false
    end,
  },
  { "steel-plate", 9 },
})
angelsmods.functions.RB.set_fallback("item", "t5-plate", {
  { "block-construction-5" },
  { "bob-tungsten-plate", 4 },
  {
    "angels-plate-tungsten",
    4,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["tungsten"].plate or false
    end,
  },
  { "steel-plate", 11 },
})
angelsmods.functions.RB.set_fallback("item", "t6-plate", {
  { "block-construction-5" },
  {
    "bob-tungsten-carbide",
    4,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["tungsten"].plate or false
    end,
  },
  {
    "angels-plate-tungsten",
    4,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["tungsten"].plate or false
    end,
  },
  { "steel-plate", 13 },
})

--BRICK
angelsmods.functions.RB.set_fallback("item", "t0-brick", { { "block-construction-1" }, { "stone-brick", 5 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "t1-brick",
  { { "block-construction-1" }, { "angels-clay-brick", 5 }, { "stone-brick", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t2-brick",
  { { "block-construction-2" }, { "angels-clay-brick", 5 }, { "stone-brick", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t3-brick",
  { { "block-construction-3" }, { "angels-concrete-brick", 5 }, { "stone-brick", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-brick",
  { { "block-construction-4" }, { "angels-reinforced-concrete-brick", 5 }, { "stone-brick", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-brick",
  { { "block-construction-5" }, { "angels-reinforced-concrete-brick", 5 }, { "stone-brick", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-brick",
  { { "block-construction-5" }, { "angels-reinforced-concrete-brick", 5 }, { "stone-brick", 5 } }
)

--GEARS
angelsmods.functions.RB.set_fallback("item", "t0-gears", { { "block-mechanical-1" }, { "iron-gear-wheel", 3 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "t1-gears",
  { { "block-mechanical-1" }, { "bob-steel-gear-wheel", 3 }, { "iron-gear-wheel", 5 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t2-gears",
  { { "block-mechanical-1" }, { "bob-steel-gear-wheel", 3 }, { "iron-gear-wheel", 6 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t3-gears",
  { { "block-mechanical-2" }, { "bob-brass-gear-wheel", 3 }, { "iron-gear-wheel", 7 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-gears",
  { { "block-mechanical-2" }, { "bob-titanium-gear-wheel", 3 }, { "iron-gear-wheel", 8 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-gears",
  { { "block-mechanical-2" }, { "bob-tungsten-gear-wheel", 3 }, { "iron-gear-wheel", 9 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-gears",
  { { "block-mechanical-2" }, { "bob-nitinol-gear-wheel", 3 }, { "iron-gear-wheel", 9 } }
)

--PIPES
angelsmods.functions.RB.set_fallback("item", "t0-pipe", { { "block-fluidbox-1" }, { "pipe", 3 } })
angelsmods.functions.RB.set_fallback("item", "t1-pipe", { { "block-fluidbox-1" }, { "bob-steel-pipe", 3 }, { "pipe", 5 } })
angelsmods.functions.RB.set_fallback("item", "t2-pipe", { { "block-fluidbox-1" }, { "bob-bronze-pipe", 3 }, { "pipe", 6 } })
angelsmods.functions.RB.set_fallback("item", "t3-pipe", { { "block-fluidbox-2" }, { "bob-brass-pipe", 3 }, { "pipe", 7 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-pipe",
  { { "block-fluidbox-2" }, { "bob-titanium-pipe", 3 }, { "pipe", 8 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-pipe",
  { { "block-fluidbox-2" }, { "bob-tungsten-pipe", 3 }, { "pipe", 9 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-pipe",
  { { "block-fluidbox-2" }, { "bob-copper-tungsten-pipe", 3 }, { "pipe", 10 } }
)

--BIO
angelsmods.functions.RB.set_fallback("item", "t1-bio", { { "block-production-1" } })
angelsmods.functions.RB.set_fallback("item", "t2-bio", { { "block-production-2" } })
angelsmods.functions.RB.set_fallback("item", "t3-bio", { { "block-bprocessing-3" } })
angelsmods.functions.RB.set_fallback("item", "t4-bio", { { "block-bprocessing-4" } })
angelsmods.functions.RB.set_fallback("item", "t5-bio", { { "block-bprocessing-5" } })

--BUILDINGS
--REFINING
angelsmods.functions.RB.set_fallback("item", "crusher-0", { { "block-construction-1" }, { "stone", 5 } })
angelsmods.functions.RB.set_fallback("item", "crusher-1", { { "block-production-1" }, { "angels-burner-ore-crusher" } })
angelsmods.functions.RB.set_fallback("item", "crusher-2", { { "block-production-2" }, { "angels-ore-crusher" } })
angelsmods.functions.RB.set_fallback("item", "crusher-3", { { "block-mprocessing-3" }, { "angels-ore-crusher-2" } })

angelsmods.functions.RB.set_fallback("item", "cell-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "cell-2", { { "block-mprocessing-3", 3 }, { "angels-ore-floatation-cell" } })
angelsmods.functions.RB.set_fallback("item", "cell-3", { { "block-mprocessing-4", 3 }, { "angels-ore-floatation-cell-2" } })

angelsmods.functions.RB.set_fallback("item", "leach-1", { { "block-mprocessing-3", 3 } })
angelsmods.functions.RB.set_fallback("item", "leach-2", { { "block-mprocessing-4", 3 }, { "angels-ore-leaching-plant" } })
angelsmods.functions.RB.set_fallback("item", "leach-3", { { "block-mprocessing-5", 3 }, { "angels-ore-leaching-plant-2" } })

angelsmods.functions.RB.set_fallback("item", "oreref-1", { { "block-mprocessing-4", 5 } })
angelsmods.functions.RB.set_fallback("item", "oreref-2", { { "block-mprocessing-5", 5 }, { "angels-ore-refinery" } })

angelsmods.functions.RB.set_fallback("item", "sorter-1", { { "block-production-1", 5 } })
angelsmods.functions.RB.set_fallback("item", "sorter-2", { { "block-production-2", 5 }, { "angels-ore-sorting-facility" } })
angelsmods.functions.RB.set_fallback("item", "sorter-3", { { "block-mprocessing-3", 5 }, { "angels-ore-sorting-facility-2" } })
angelsmods.functions.RB.set_fallback("item", "sorter-4", { { "block-mprocessing-4", 5 }, { "angels-ore-sorting-facility-3" } })
angelsmods.functions.RB.set_fallback("item", "sorter-5", { { "block-mprocessing-5", 5 }, { "angels-ore-sorting-facility-4" } })

angelsmods.functions.RB.set_fallback("item", "filter-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "filter-2", { { "block-production-3", 3 }, { "angels-filtration-unit" } })
angelsmods.functions.RB.set_fallback("item", "filter-3", { { "block-production-4", 3 }, { "angels-filtration-unit-2" } })

angelsmods.functions.RB.set_fallback("item", "cryst-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "cryst-2", { { "block-mprocessing-3", 3 }, { "angels-crystallizer" } })
angelsmods.functions.RB.set_fallback("item", "cryst-3", { { "block-mprocessing-4", 3 }, { "angels-crystallizer-2" } })

angelsmods.functions.RB.set_fallback("item", "liqui-1", { { "block-production-1", 1 } })
angelsmods.functions.RB.set_fallback("item", "liqui-2", { { "block-production-2", 1 }, { "angels-liquifier" } })
angelsmods.functions.RB.set_fallback("item", "liqui-3", { { "block-cprocessing-3", 1 }, { "angels-liquifier-2" } })
angelsmods.functions.RB.set_fallback("item", "liqui-4", { { "block-cprocessing-4", 1 }, { "angels-liquifier-3" } })

angelsmods.functions.RB.set_fallback("item", "thermal-1", { { "block-production-2", 5 } })
angelsmods.functions.RB.set_fallback("item", "thermal-2", { { "block-extraction-4", 5 } })

angelsmods.functions.RB.set_fallback("item", "salination-1", { { "block-production-3", 5 } })
angelsmods.functions.RB.set_fallback("item", "salination-2", { { "block-production-4", 5 }, { "angels-salination-plant" } })

angelsmods.functions.RB.set_fallback("item", "treatment-1", { { "block-production-2", 5 }, { "angels-hydro-plant" } })
angelsmods.functions.RB.set_fallback("item", "treatment-2", { { "block-production-3", 5 }, { "angels-hydro-plant-2" } })

angelsmods.functions.RB.set_fallback("item", "wash-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "wash-2", { { "block-production-2", 3 }, { "angels-washing-plant" } })

angelsmods.functions.RB.set_fallback("item", "orepowder-1", { { "block-production-2", 1 } })
angelsmods.functions.RB.set_fallback("item", "orepowder-2", { { "block-mprocessing-3", 1 }, { "angels-ore-powderizer" } })
angelsmods.functions.RB.set_fallback("item", "orepowder-3", { { "block-mprocessing-4", 1 }, { "angels-ore-powderizer-2" } })

angelsmods.functions.RB.set_fallback("item", "oreelectro-1", { { "block-mprocessing-4", 3 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "oreelectro-2",
  { { "block-mprocessing-5", 3 }, { "angels-electro-whinning-cell" } }
)

angelsmods.functions.RB.set_fallback("item", "waterpump-2", { { "block-production-2", 3 }, { "offshore-pump", 1 } })

--PETROCHEM
angelsmods.functions.RB.set_fallback("item", "ogseparat-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "ogseparat-2", { { "block-cprocessing-3", 3 }, { "angels-separator" } })
angelsmods.functions.RB.set_fallback("item", "ogseparat-3", { { "block-cprocessing-4", 3 }, { "angels-separator-2" } })
angelsmods.functions.RB.set_fallback("item", "ogseparat-4", { { "block-cprocessing-5", 3 }, { "angels-separator-3" } })

angelsmods.functions.RB.set_fallback("item", "gasrefsm-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "gasrefsm-2", { { "block-cprocessing-3", 3 }, { "angels-gas-refinery-small" } })
angelsmods.functions.RB.set_fallback("item", "gasrefsm-3", { { "block-cprocessing-4", 3 }, { "angels-gas-refinery-small-2" } })
angelsmods.functions.RB.set_fallback("item", "gasrefsm-4", { { "block-cprocessing-5", 3 }, { "angels-gas-refinery-small-3" } })

angelsmods.functions.RB.set_fallback("item", "gasref-1", { { "block-cprocessing-3", 5 } })
angelsmods.functions.RB.set_fallback("item", "gasref-2", { { "block-cprocessing-4", 5 }, { "angels-gas-refinery" } })
angelsmods.functions.RB.set_fallback("item", "gasref-3", { { "block-cprocessing-5", 5 }, { "angels-gas-refinery-2" } })
angelsmods.functions.RB.set_fallback("item", "gasref-4", { { "block-cprocessing-5", 10 }, { "angels-gas-refinery-3" } })

angelsmods.functions.RB.set_fallback("item", "cracker-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "cracker-2", { { "block-cprocessing-3", 3 }, { "angels-steam-cracker" } })
angelsmods.functions.RB.set_fallback("item", "cracker-3", { { "block-cprocessing-4", 3 }, { "angels-steam-cracker-2" } })
angelsmods.functions.RB.set_fallback("item", "cracker-4", { { "block-cprocessing-5", 3 }, { "angels-steam-cracker-3" } })

angelsmods.functions.RB.set_fallback("item", "advchem-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "advchem-2",
  { { "block-cprocessing-4", 3 }, { "angels-advanced-chemical-plant" } }
)

angelsmods.functions.RB.set_fallback("item", "electrol-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "electrol-2", { { "block-production-2", 3 }, { "angels-electrolyser" } })
angelsmods.functions.RB.set_fallback(
  "item",
  "electrol-3",
  { { "block-cprocessing-3", 3 }, { "angels-electrolyser-2" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "electrol-4",
  { { "block-cprocessing-4", 3 }, { "angels-electrolyser-3" } }
)

angelsmods.functions.RB.set_fallback("item", "airfilter-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "airfilter-2", { { "block-production-2", 3 }, { "angels-air-filter" } })
angelsmods.functions.RB.set_fallback("item", "airfilter-3", { { "block-production-3", 3 }, { "angels-air-filter-2" } })

angelsmods.functions.RB.set_fallback("item", "oilref-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "oilref-2", { { "block-cprocessing-3", 3 }, { "angels-oil-refinery" } })
angelsmods.functions.RB.set_fallback("item", "oilref-3", { { "block-cprocessing-4", 3 }, { "angels-oil-refinery-2" } })
angelsmods.functions.RB.set_fallback("item", "oilref-4", { { "block-cprocessing-5", 3 }, { "angels-oil-refinery-3" } })

angelsmods.functions.RB.set_fallback("item", "chem-1", { { "block-production-1", 1 } })
angelsmods.functions.RB.set_fallback("item", "chem-2", { { "block-production-2", 1 }, { "angels-chemical-plant" } })
angelsmods.functions.RB.set_fallback("item", "chem-3", { { "block-cprocessing-3", 1 }, { "angels-chemical-plant-2" } })
angelsmods.functions.RB.set_fallback("item", "chem-4", { { "block-cprocessing-4", 1 }, { "angels-chemical-plant-3" } })

angelsmods.functions.RB.set_fallback("item", "elec-boil-1", { { "block-energy-3", 1 }, { "angels-electric-boiler" } })
angelsmods.functions.RB.set_fallback("item", "elec-boil-2", { { "block-energy-4", 1 }, { "angels-electric-boiler-2" } })

--SMELTING
angelsmods.functions.RB.set_fallback("item", "orepro-1", { { "block-production-2", 1 } })
angelsmods.functions.RB.set_fallback("item", "orepro-2", { { "block-mprocessing-3", 1 }, { "angels-ore-processing-machine" } })
angelsmods.functions.RB.set_fallback(
  "item",
  "orepro-3",
  { { "block-mprocessing-4", 1 }, { "angels-ore-processing-machine-2" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "orepro-4",
  { { "block-mprocessing-5", 1 }, { "angels-ore-processing-machine-3" } }
)

angelsmods.functions.RB.set_fallback("item", "pelletpre-1", { { "block-mprocessing-3", 1 } })
angelsmods.functions.RB.set_fallback("item", "pelletpre-2", { { "block-mprocessing-4", 1 }, { "angels-pellet-press" } })
angelsmods.functions.RB.set_fallback("item", "pelletpre-3", { { "block-mprocessing-5", 1 }, { "angels-pellet-press-2" } })
angelsmods.functions.RB.set_fallback("item", "pelletpre-4", { { "block-mprocessing-5", 5 }, { "angels-pellet-press-3" } })

angelsmods.functions.RB.set_fallback("item", "powdermix-1", { { "block-production-2", 1 } })
angelsmods.functions.RB.set_fallback("item", "powdermix-2", { { "block-mprocessing-3", 1 }, { "angels-powder-mixer" } })
angelsmods.functions.RB.set_fallback("item", "powdermix-3", { { "block-mprocessing-4", 1 }, { "angels-powder-mixer-2" } })
angelsmods.functions.RB.set_fallback("item", "powdermix-4", { { "block-mprocessing-5", 1 }, { "angels-powder-mixer-3" } })

angelsmods.functions.RB.set_fallback("item", "blastfur-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "blastfur-2", { { "block-production-2", 3 }, { "angels-blast-furnace" } })
angelsmods.functions.RB.set_fallback("item", "blastfur-3", { { "block-mprocessing-3", 3 }, { "angels-blast-furnace-2" } })
angelsmods.functions.RB.set_fallback("item", "blastfur-4", { { "block-mprocessing-4", 3 }, { "angels-blast-furnace-3" } })

angelsmods.functions.RB.set_fallback("item", "chemfur-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback("item", "chemfur-2", { { "block-production-3", 3 }, { "angels-chemical-furnace" } })
angelsmods.functions.RB.set_fallback("item", "chemfur-3", { { "block-mprocessing-4", 3 }, { "angels-chemical-furnace-2" } })
angelsmods.functions.RB.set_fallback("item", "chemfur-4", { { "block-mprocessing-5", 3 }, { "angels-chemical-furnace-3" } })

angelsmods.functions.RB.set_fallback("item", "indufur-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "indufur-2", { { "block-production-2", 3 }, { "angels-induction-furnace" } })
angelsmods.functions.RB.set_fallback("item", "indufur-3", { { "block-mprocessing-3", 3 }, { "angels-induction-furnace-2" } })
angelsmods.functions.RB.set_fallback("item", "indufur-4", { { "block-mprocessing-4", 3 }, { "angels-induction-furnace-3" } })

angelsmods.functions.RB.set_fallback("item", "castingm-1", { { "block-production-1", 1 } })
angelsmods.functions.RB.set_fallback("item", "castingm-2", { { "block-production-2", 1 }, { "angels-casting-machine" } })
angelsmods.functions.RB.set_fallback("item", "castingm-3", { { "block-mprocessing-3", 1 }, { "angels-casting-machine-2" } })
angelsmods.functions.RB.set_fallback("item", "castingm-4", { { "block-mprocessing-4", 1 }, { "angels-casting-machine-3" } })

angelsmods.functions.RB.set_fallback("item", "sinteringo-1", { { "block-production-1", 3 } })
angelsmods.functions.RB.set_fallback("item", "sinteringo-2", { { "block-production-2", 3 }, { "angels-sintering-oven" } })
angelsmods.functions.RB.set_fallback("item", "sinteringo-3", { { "block-mprocessing-3", 3 }, { "angels-sintering-oven-2" } })
angelsmods.functions.RB.set_fallback("item", "sinteringo-4", {
  { "block-mprocessing-4", 3 },
  {
    "angels-sintering-oven-3",
    1,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.early_sintering_oven or false
    end,
  },
})
angelsmods.functions.RB.set_fallback("item", "sinteringo-5", { { "block-mprocessing-5", 3 }, { "angels-sintering-oven-4" } })

angelsmods.functions.RB.set_fallback("item", "strandcast-1", { { "block-production-2", 3 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "strandcast-2",
  { { "block-mprocessing-3", 3 }, { "angels-strand-casting-machine" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "strandcast-3",
  { { "block-mprocessing-4", 3 }, { "angels-strand-casting-machine-2" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "strandcast-4",
  { { "block-mprocessing-5", 3 }, { "angels-strand-casting-machine-3" } }
)

angelsmods.functions.RB.set_fallback("item", "coolingt-1", { { "block-production-2", 1 } })

--BIO PROCESSING
angelsmods.functions.RB.set_fallback("item", "algaefarm-1", { { "block-electronics-0", 5 } })
angelsmods.functions.RB.set_fallback("item", "algaefarm-2", { { "block-production-1", 5 }, { "angels-algae-farm" } }) --block-bprocessing-1 does not exist
angelsmods.functions.RB.set_fallback("item", "algaefarm-3", { { "block-production-2", 5 }, { "angels-algae-farm-2" } }) --block-bprocessing-2 does not exist
angelsmods.functions.RB.set_fallback("item", "algaefarm-4", { { "block-bprocessing-3", 5 }, { "angels-algae-farm-3" } })

angelsmods.functions.RB.set_fallback("item", "cropfarm-1", { { "block-production-1", 3 }, { "angels-solid-soil", 15 } })
angelsmods.functions.RB.set_fallback("item", "cropfarm-2", { { "block-bprocessing-3", 3 }, { "angels-crop-farm" } })

if angelsmods.industries and angelsmods.industries.components then
  angelsmods.functions.RB.set_fallback("item", "compo-1", {})
else
  angelsmods.functions.RB.set_fallback("item", "compo-1", { { "wooden-chest", 1 } })
end
angelsmods.functions.RB.set_fallback("item", "seedex-1", { { "block-production-1", 1 } })
angelsmods.functions.RB.set_fallback("item", "biopress-1", { { "block-production-2", 1 } })
angelsmods.functions.RB.set_fallback("item", "biopro-1", { { "block-production-1", 1 } })
angelsmods.functions.RB.set_fallback("item", "nutrientex-1", { { "block-production-2", 1 } })
angelsmods.functions.RB.set_fallback("item", "arboretum-1", {})

angelsmods.functions.RB.set_fallback("item", "puffer-1", {
  { "block-bprocessing-3", 2 },
  { "bob-glass", 5 },
  {
    "angels-plate-glass",
    5,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["glass"].plate or false
    end,
  },
})

angelsmods.functions.RB.set_fallback("item", "fish-1", {
  { "block-production-2", 1 },
  { "bob-glass", 10 },
  {
    "angels-plate-glass",
    10,
    function(t, n)
      return mods["angelssmelting"] and angelsmods.trigger.smelting_products["glass"].plate or false
    end,
  },
})

angelsmods.functions.RB.set_fallback("item", "biter-1", { { "block-bprocessing-4", 3 }, { "stone-wall", 4 } })

angelsmods.functions.RB.set_fallback("item", "hatch-1", { { "block-bprocessing-3", 1 }, { "small-lamp", 3 } })

angelsmods.functions.RB.set_fallback("item", "butch-1", { { "block-production-2", 1 } })
