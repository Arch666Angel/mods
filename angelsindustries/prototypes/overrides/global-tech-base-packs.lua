if angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  local AI = angelsmods.functions.AI
  --require("prototypes.overrides.industries-override-functions")
  --this is where AI.pack_replace(techname,old_c,new_c),AI.core_replace(techname,old_c,new_c),AI.core_tier_up(techname,core_n) functions are stored
  --SET COLOURED PACKS BEFORE ADDING CORES

  -------------------------------------------------------------------------------
  -- GREY SCIENCE PACKS ---------------------------------------------------------
  -------------------------------------------------------------------------------
  --replace starting tech requirements to needing grey (not red)
  for _, tech_name in pairs({
    -- BASE GAME
    "automation",
    "logistics",
    "turrets",
    -- REFINING
    -- PETROCHEM
    "angels-basic-chemistry",
    -- SMELTING
    "angels-solder-smelting-basic",
    -- BIO PROCESSING
    "angels-bio-processing-brown",
    "angels-bio-paper-1",
    -- INDUSTRIES
    "tech-red-circuit",
    "angels-components-mechanical-1",
    "angels-components-weapons-basic",
  }) do
    AI.pack_replace(tech_name, "red", "grey")
  end
  -- BASE GAME
  OV.remove_prereq("turrets", "military")
  OV.add_prereq("turrets", "angels-components-weapons-basic")
  -- REFINING
  OV.remove_prereq("angels-water-treatment", "electronics")
  OV.remove_prereq("angels-water-treatment", "steel-processing")
  -- INDUSTRIES
  OV.remove_prereq("tech-red-circuit", "angels-components-batteries-1")

  -------------------------------------------------------------------------------
  -- RED SCIENCE PACKS ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.pack_replace("armor-making-2", "green", "red") --move armour making down a tier
  AI.pack_replace("automation-2", "green", "red")
  OV.remove_prereq("automation-2", "tech-green-packs")
  -- SMELTING
  OV.add_prereq("angels-metallurgy-1", "tech-specialised-labs-basic-processing-1")
  AI.pack_replace("angels-stone-smelting-1", "green", "red")
  -- BIO PROCESSING
  AI.pack_replace("angels-bio-farm-1", "green", "red")
  AI.pack_count_update("angels-bio-temperate-farming", "angels-science-pack-red", 4)
  AI.pack_replace("angels-bio-fermentation", "green", "red")
  OV.remove_prereq("angels-bio-fermentation", "tech-green-packs")
  OV.remove_science_pack("angels-bio-fermentation", "angels-token-bio")
  AI.pack_replace("angels-bio-arboretum-temperate-1", "green", "red")
  OV.remove_prereq("angels-bio-arboretum-temperate-1", "angels-resins")
  OV.remove_science_pack("angels-bio-arboretum-temperate-1", "angels-token-bio")
  OV.add_prereq("angels-bio-arboretum-temperate-2", "angels-resins")
  AI.pack_replace("angels-bio-desert-farming-1", "green", "red")
  AI.pack_replace("angels-bio-swamp-farming-1", "green", "red")
  AI.pack_replace("angels-bio-temperate-farming-1", "green", "red")
  AI.pack_replace("angels-gardens", "green", "red")
  -- INDUSTRIES
  AI.pack_replace("tech-green-circuit", "green", "red")
  OV.remove_prereq("tech-green-circuit", "angels-resins")
  OV.add_prereq("tech-green-circuit", "angels-bio-arboretum-temperate-1")
  OV.remove_prereq("tech-green-circuit", "angels-components-batteries-2")
  OV.add_prereq("tech-green-circuit", "angels-components-batteries-1")
  AI.pack_replace("angels-components-cabling-2", "green", "red")
  AI.pack_replace("angels-components-mechanical-2", "green", "red")

  -------------------------------------------------------------------------------
  -- GREEN SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.pack_replace("advanced-material-processing", "red", "green") --move advanced material processing up a tier
  AI.pack_replace("lubricant", "blue", "green")
  -- PETROCHEM
  AI.pack_replace("angels-sodium-processing-1", "blue", "green")
  -- SMELTING
  AI.pack_replace("angels-stone-smelting-2", "blue", "green")
  -- BIO PROCESSING
  OV.add_prereq("angels-bio-refugium-fish-1", "angels-water-treatment-2")
  AI.pack_replace("angels-bio-paper-2", "blue", "green")
  -- INDUSTRIES
  OV.remove_prereq("tech-orange-circuit", "angels-components-batteries-3")
  OV.add_prereq("tech-orange-circuit", "angels-components-batteries-2")
  OV.add_prereq("angels-components-construction-3", "tech-green-packs")
  AI.pack_replace("plastics", "orange", "green")
  AI.pack_replace("battery", "orange", "green")
  AI.pack_replace("circuit-network", "orange", "green")

  -------------------------------------------------------------------------------
  -- ORANGE SCIENCE PACKS -------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.pack_replace("bulk-inserter", "green", "orange")
  AI.pack_replace("inserter-capacity-bonus-1", "green", "orange")
  AI.pack_replace("inserter-capacity-bonus-2", "green", "orange")
  --AI.pack_replace("battery","green","orange")
  AI.pack_replace("oil-processing", "green", "orange")
  --AI.pack_replace("circuit-network","green","orange")
  AI.pack_replace("modular-armor", "green", "orange")
  AI.pack_replace("armor-making-3", "green", "orange")
  AI.pack_replace("belt-immunity-equipment", "green", "orange")
  AI.pack_replace("electric-engine", "blue", "orange")
  AI.pack_replace("electric-energy-accumulators", "green", "orange")
  AI.pack_replace("energy-shield-equipment", "green", "orange")
  AI.pack_replace("night-vision-equipment", "green", "orange")
  AI.pack_replace("battery-equipment", "blue", "orange")
  AI.pack_replace("solar-panel-equipment", "green", "orange")
  AI.pack_replace("sulfur-processing", "green", "orange")
  --AI.pack_replace("plastics","green","orange")
  AI.pack_replace("modules", "green", "orange")
  AI.pack_replace("speed-module", "green", "orange")
  AI.pack_replace("productivity-module", "green", "orange")
  AI.pack_replace("efficiency-module", "green", "orange")
  AI.pack_replace("combat-robotics", "green", "orange")
  AI.pack_replace("flamethrower-damage-1", "green", "orange")
  AI.pack_replace("bullet-damage-3", "green", "orange")
  AI.pack_replace("flying", "green", "orange")
  AI.pack_replace("robotics", "blue", "orange")
  AI.pack_replace("automated-construction", "blue", "orange")
  AI.pack_replace("construction-robotics", "blue", "orange")
  AI.pack_replace("electric-energy-distribution-2", "blue", "orange")
  AI.pack_replace("advanced-material-processing-2", "blue", "orange")
  --REFINING
  AI.pack_replace("angels-ore-leaching", "blue", "orange")
  OV.remove_prereq("angels-ore-leaching", "tech-blue-packs")
  AI.pack_replace("angels-geode-processing-2", "green", "orange")
  AI.pack_replace("angels-advanced-ore-refining-2", "blue", "orange")
  AI.pack_replace("angels-water-treatment-3", "blue", "orange")
  AI.pack_replace("angels-slag-processing-2", "blue", "orange")
  --SMELTING
  AI.pack_replace("angels-metallurgy-3", "blue", "orange")
  OV.remove_prereq("angels-metallurgy-3", "tech-blue-packs")
  AI.pack_replace("angels-powder-metallurgy-3", "blue", "orange")
  AI.pack_replace("angels-ore-processing-2", "blue", "orange")
  AI.pack_replace("angels-coolant-1", "blue", "orange")
  AI.pack_replace("angels-strand-casting-2", "blue", "orange")
  AI.pack_replace("angels-titanium-smelting-1", "blue", "orange")
  AI.pack_replace("angels-aluminium-smelting-2", "blue", "orange")
  AI.pack_replace("angels-aluminium-casting-2", "blue", "orange")
  AI.pack_replace("angels-cobalt-smelting-1", "blue", "orange")
  AI.pack_replace("angels-cobalt-steel-smelting-1", "blue", "orange")
  AI.pack_replace("angels-glass-smelting-2", "blue", "orange")
  AI.pack_replace("angels-gold-smelting-1", "blue", "orange")
  AI.pack_replace("angels-manganese-smelting-3", "blue", "orange")
  AI.pack_replace("angels-manganese-casting-3", "blue", "orange")
  AI.pack_replace("angels-silver-smelting-2", "blue", "orange")
  AI.pack_replace("angels-silver-casting-2", "blue", "orange")
  AI.pack_replace("angels-steel-smelting-3", "blue", "orange")
  AI.pack_replace("angels-zinc-smelting-2", "blue", "orange")
  AI.pack_replace("angels-zinc-casting-2", "blue", "orange")
  AI.pack_replace("angels-copper-smelting-3", "blue", "orange")
  AI.pack_replace("angels-copper-casting-3", "blue", "orange")
  AI.pack_replace("angels-lead-smelting-3", "blue", "orange")
  AI.pack_replace("angels-lead-casting-3", "blue", "orange")
  AI.pack_replace("angels-nickel-smelting-2", "blue", "orange")
  AI.pack_replace("angels-nickel-casting-2", "blue", "orange")
  AI.pack_replace("angels-silicon-smelting-2", "blue", "orange")
  AI.pack_replace("angels-silicon-casting-2", "blue", "orange")
  AI.pack_replace("angels-stone-smelting-3", "blue", "orange")
  OV.remove_prereq("angels-stone-smelting-3", "production-science-pack")
  AI.pack_replace("angels-tin-smelting-3", "blue", "orange")
  AI.pack_replace("angels-tin-casting-3", "blue", "orange")
  AI.pack_replace("angels-iron-smelting-3", "blue", "orange")
  AI.pack_replace("angels-iron-casting-3", "blue", "orange")
  AI.pack_replace("angels-solder-smelting-3", "blue", "orange")
  --BIOPROCESSING
  AI.pack_replace("angels-bio-yield-module", "green", "orange")
  AI.pack_replace("angels-bio-wood-processing-3", "green", "orange")
  AI.pack_replace("angels-bio-processing-alien-2", "green", "orange")
  AI.pack_replace("angels-bio-processing-alien-3", "green", "orange")
  AI.pack_replace("angels-geode-crystallization-1", "green", "orange")
  AI.pack_replace("angels-bio-processing-crystal-splinter-1", "green", "orange")
  AI.pack_replace("angels-bio-processing-crystal-splinter-2", "green", "orange")
  AI.pack_replace("angels-bio-processing-crystal-splinter-3", "green", "orange")
  AI.pack_replace("angels-bio-arboretum-2", "green", "orange")
  --PETROCHEM
  AI.pack_replace("angels-plastic-1", "green", "orange")
  --AI.pack_replace("angels-resin-2", "blue","orange") -- needs melamine, which is quite deep in the tree, leave as blue
  --AI.pack_replace("angels-rocket-booster-1", "green", "orange")
  AI.pack_replace("rocket-explosives-1", "green", "orange")
  --INDUSTRIES
  AI.pack_replace("tech-blue-circuit", "blue", "orange")
  OV.remove_science_pack("tech-blue-circuit", "tech-blue-packs")
  OV.remove_prereq("tech-blue-circuit", "angels-components-batteries-4")
  OV.add_prereq("tech-blue-circuit", "angels-components-batteries-3")
  AI.pack_replace("angels-components-mechanical-4", "blue", "orange")
  OV.add_prereq("angels-components-construction-4", "tech-orange-packs")
  AI.pack_replace("angels-components-construction-4", "blue", "orange")
  AI.pack_replace("angels-components-weapons-advanced", "blue", "orange")
  AI.pack_replace("angels-components-cabling-4", "blue", "orange")
  AI.pack_replace("cargo-robots-2", "green", "orange")
  AI.pack_replace("angels-construction-robots-2", "green", "orange")
  AI.pack_replace("angels-components-batteries-3", "blue", "orange")

  -------------------------------------------------------------------------------
  -- BLUE SCIENCE PACKS ---------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.pack_replace("logistic-robotics", "green", "blue")
  AI.pack_replace("electric-energy-distribution-2", "orange", "blue")
  OV.remove_prereq("automation-3", "production-science-pack")
  OV.remove_prereq("kovarex-enrichment-process", "production-science-pack")
  -- REFINING
  OV.remove_prereq("angels-ore-refining", "production-science-pack")
  OV.remove_prereq("angels-water-treatment-4", "production-science-pack")
  -- PETROCHEM
  OV.remove_prereq("angels-water-chemistry-1", "production-science-pack")
  OV.remove_prereq("angels-advanced-chemistry-4", "production-science-pack")
  OV.remove_prereq("angels-slag-processing-3", "production-science-pack")
  -- SMELTING
  OV.remove_prereq("angels-metallurgy-4", "production-science-pack")
  OV.remove_science_pack("angels-tungsten-smelting-2", "production-science-pack")
  -- BIOPROCESSING
  OV.remove_prereq("angels-bio-paper-3", "production-science-pack")
  -- INDUSTRIES
  AI.pack_replace("tech-yellow-circuit", "yellow", "blue")
  OV.remove_prereq("tech-yellow-circuit", "angels-components-batteries-5")
  OV.add_prereq("tech-yellow-circuit", "angels-components-batteries-4")
  AI.pack_replace("angels-components-construction-5", "yellow", "blue")
  AI.pack_replace("angels-components-cabling-5", "yellow", "blue")

  -------------------------------------------------------------------------------
  -- YELOW SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  AI.pack_replace("angels-bio-refugium-puffer-4", "blue", "yellow")
  AI.pack_replace("angels-bio-refugium-biter-3", "blue", "yellow")
  AI.pack_replace("angels-bio-processing-crystal-full", "blue", "yellow")
  AI.pack_replace("speed-module-3", "blue", "yellow")
  AI.pack_replace("productivity-module-3", "blue", "yellow")
  AI.pack_replace("efficiency-module-3", "blue", "yellow")
  AI.pack_replace("effect-transmission", "blue", "yellow")
  AI.pack_replace("inserter-capacity-bonus-6", "blue", "yellow")
  OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
  OV.set_science_pack("rocket-silo", "angels-science-pack-red")
  OV.set_science_pack("rocket-silo", "angels-science-pack-green")
  OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
  OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
  OV.set_special_technology_override("rocket-silo", "ignore_tech_cost_multiplier")
  -- REFINING
  AI.pack_replace("angels-advanced-ore-refining-4", "blue", "yellow")
  -- BIO PROCESSING
  AI.pack_replace("angels-bio-yield-module-3", "blue", "yellow")
  -- ADDONS
  if mods["angelsadons-storage"] then
    if angelsmods.addons.storage.warehouses then
      AI.pack_replace("angels-logistic-warehouses", "blue", "yellow")
    end
    if angelsmods.addons.storage.silos then
      AI.pack_replace("angels-logistic-silos", "blue", "yellow")
    end
  end

  -------------------------------------------------------------------------------
  -- WHITE SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- none

  OV.execute()
end
