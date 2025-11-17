local OV = angelsmods.functions.OV

-- Clay brick
OV.add_prereq({
  "angels-water-treatment-2",
  "angels-water-washing-2",
  "oil-gathering",  
}, "angels-stone-smelting-1")

-- Concrete brick
OV.add_prereq({
  "angels-advanced-chemistry-2",
  "angels-slag-processing-2",
  "angels-water-treatment-3",
}, "angels-stone-smelting-2")

-- Reinforced concrete brick
OV.add_prereq({
  "angels-advanced-chemistry-4",
  "angels-slag-processing-3",
  "angels-water-treatment-4",
}, "angels-stone-smelting-3")

-- Steel plate
OV.add_prereq({
  "angels-water-washing-2",
}, "angels-steel-smelting-1")

-- Aluminium plate
OV.add_prereq({
  "angels-water-treatment-3",
  "automation-3",
}, "angels-aluminium-smelting-1")

-- Titanium plate
OV.add_prereq({
  "angels-slag-processing-3",
  "angels-water-treatment-4",
}, "angels-titanium-smelting-1")

-- Tungsten plate
OV.add_prereq({
  "angels-advanced-ore-refining-4",
  "angels-thorium-power",
}, "angels-tungsten-smelting-1")

if mods["bobplates"] then
  -- Bronze plate
  OV.add_prereq({
    "angels-advanced-chemistry-1",
    "angels-cooling",
    "angels-ore-floatation",
    "angels-ore-processing-1",
    "angels-powder-metallurgy-2",
    "angels-strand-casting-1",
    "angels-thermal-water-extraction",
    "angels-water-washing-2",
    "bob-electronics-machine-1",
    "bob-electronics-machine-test",
  }, "angels-bronze-smelting-1")

  -- Brass pipe / gear
  OV.add_prereq({
    "angels-metallurgy-3",
    "automation-3",
  }, "bob-zinc-processing")

  -- Titanium pipe / gear
  OV.add_prereq({
    "angels-advanced-chemistry-4",
    "angels-metallurgy-4",
    "automation-4",
    "bob-electronics-machine-2",
  }, "bob-titanium-processing")

  -- Tungsten pipe / gear
  OV.add_prereq({
    "angels-advanced-chemistry-5",
    "angels-metallurgy-5",
    "angels-ore-processing-4",
    "automation-5",
  }, "bob-tungsten-processing")

  if mods["boblogistics"] then
    -- Bronze pipe
    OV.add_prereq({
      "angels-advanced-chemistry-5",
      "angels-cooling",
      "angels-ore-floatation",
      "angels-strand-casting-1",
      "angels-thermal-water-extraction",
      "angels-water-washing-2",
    }, "bob-alloy-processing")
  end
  
  -- Circuits
  OV.add_prereq({
    "angels-metallurgy-5",
  }, "bob-advanced-processing-unit")
end
