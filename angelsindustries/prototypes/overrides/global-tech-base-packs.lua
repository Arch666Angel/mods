if angelsmods.industries.tech then
  local OV = angelsmods.functions.OV
  --require("prototypes.overrides.industries-override-functions")
  --this is where pack_replace(techname,old_c,new_c),core_replace(techname,old_c,new_c),core_tier_up(techname,core_n) functions are stored
  --SET COLOURED PACKS BEFORE ADDING CORES

  -------------------------------------------------------------------------------
  -- GREY SCIENCE PACKS ---------------------------------------------------------
  -------------------------------------------------------------------------------
  --replace starting tech requirements to needing grey (not red)
  for _, tech_name in pairs(
    {
      -- BASE GAME
      "automation",
      "logistics",
      "turrets",
      -- REFINING
      "water-treatment",
      -- SMELTING
      "angels-solder-smelting-basic",
      -- BIO PROCESSING
      "bio-processing-brown",
      "bio-paper-1",
      -- INDUSTRIES
      "tech-red-circuit",
      "angels-components-mechanical-1",
      "angels-components-weapons-basic",
    }
  ) do
    pack_replace(tech_name, "red", "grey")
  end
  -- BASE GAME
  OV.remove_prereq("turrets", "military")
  OV.add_prereq("turrets", "angels-components-weapons-basic")
  -- REFINING
  OV.remove_prereq("water-treatment", "electronics")
  OV.remove_prereq("water-treatment", "steel-processing")
  -- INDUSTRIES
  OV.remove_prereq("tech-red-circuit", "angels-components-batteries-1")

  -------------------------------------------------------------------------------
  -- RED SCIENCE PACKS ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("armor-making-2", "green", "red") --move armour making down a tier
  pack_replace("automation-2", "green", "red")
  OV.remove_prereq("automation-2", "tech-green-packs")
  -- BIO PROCESSING
  pack_count_update("bio-temperate-farming", "angels-science-pack-red", 4)
  pack_replace("bio-fermentation", "green", "red")
  pack_replace("bio-arboretum-temperate-1", "green", "red")
  OV.remove_prereq("bio-arboretum-temperate-1", "resins")
  OV.add_prereq("bio-arboretum-temperate-2", "resins")
  -- INDUSTRIES
  pack_replace("tech-green-circuit", "green", "red")
  OV.remove_prereq("tech-green-circuit", "resins")
  OV.add_prereq("tech-green-circuit", "bio-arboretum-temperate-1")
  OV.remove_prereq("tech-green-circuit", "angels-components-batteries-2")
  OV.add_prereq("tech-green-circuit", "angels-components-batteries-1")
  pack_replace("angels-components-construction-2", "green", "red")
  pack_replace("angels-components-cabling-2", "green", "red")
  pack_replace("angels-components-mechanical-2", "green", "red")

  -------------------------------------------------------------------------------
  -- GREEN SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("advanced-material-processing", "red", "green") --move advanced material processing up a tier
  pack_replace("lubricant", "blue", "green")
  -- BIO PROCESSING
  OV.remove_prereq("bio-refugium-fish-1", "water-treatment-3")
  OV.add_prereq("bio-refugium-fish-1", "water-treatment-2")
  -- INDUSTRIES
  OV.remove_prereq("tech-orange-circuit", "angels-components-batteries-3")
  OV.add_prereq("tech-orange-circuit", "angels-components-batteries-2")
  OV.add_prereq("angels-components-construction-3", "tech-green-packs")
  pack_replace("plastics", "orange", "green")
  pack_replace("battery", "orange", "green")
  pack_replace("circuit-network", "orange", "green")

  -------------------------------------------------------------------------------
  -- ORANGE SCIENCE PACKS -------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("stack-inserter", "green", "orange")
  pack_replace("inserter-capacity-bonus-1", "green", "orange")
  pack_replace("inserter-capacity-bonus-2", "green", "orange")
  --pack_replace("battery","green","orange")
  pack_replace("oil-processing", "green", "orange")
  --pack_replace("circuit-network","green","orange")
  pack_replace("modular-armor", "green", "orange")
  pack_replace("armor-making-3", "green", "orange")
  pack_replace("belt-immunity-equipment", "green", "orange")
  OV.remove_prereq("electric-engine", "angels-advanced-oil-processing")
  pack_replace("electric-engine", "blue", "orange")
  pack_replace("electric-energy-accumulators", "green", "orange")
  pack_replace("energy-shield-equipment", "green", "orange")
  pack_replace("night-vision-equipment", "green", "orange")
  pack_replace("battery-equipment", "green", "orange")
  pack_replace("solar-panel-equipment", "green", "orange")
  pack_replace("sulfur-processing", "green", "orange")
  --pack_replace("plastics","green","orange")
  pack_replace("modules", "green", "orange")
  pack_replace("speed-module", "green", "orange")
  pack_replace("productivity-module", "green", "orange")
  pack_replace("effectivity-module", "green", "orange")
  pack_replace("combat-robotics", "green", "orange")
  pack_replace("flamethrower-damage-1", "green", "orange")
  pack_replace("bullet-damage-3", "green", "orange")
  pack_replace("flying", "green", "orange")
  pack_replace("robotics", "blue", "orange")
  pack_replace("automated-construction", "blue", "orange")
  pack_replace("construction-robotics", "blue", "orange")
  pack_replace("electric-energy-distribution-2", "blue", "orange")
  --REFINING
  pack_replace("water-treatment-3", "green", "orange")
  pack_replace("ore-leaching", "blue", "orange")
  pack_replace("geode-processing-2", "green", "orange")
  pack_replace("advanced-ore-refining-2", "green", "orange")
  --SMELTING
  pack_replace("angels-metallurgy-3", "blue", "orange")
  OV.remove_prereq("angels-metallurgy-3", "tech-blue-packs")
  pack_replace("powder-metallurgy-2", "blue", "orange")
  pack_replace("ore-processing-2", "blue", "orange")
  pack_replace("angels-coolant-1", "blue", "orange")
  pack_replace("strand-casting-2", "blue", "orange")
  pack_replace("angels-titanium-smelting-1", "blue", "orange")
  pack_replace("angels-tungsten-smelting-1", "blue", "orange")
  pack_replace("angels-aluminium-smelting-2", "blue", "orange")
  pack_replace("angels-cobalt-smelting-2", "blue", "orange")
  pack_replace("angels-glass-smelting-2", "blue", "orange")
  pack_replace("angels-gold-smelting-2", "blue", "orange")
  pack_replace("angels-manganese-smelting-2", "blue", "orange")
  pack_replace("angels-silver-smelting-2", "blue", "orange")
  pack_replace("angels-steel-smelting-2", "blue", "orange")
  pack_replace("angels-zinc-smelting-2", "blue", "orange")
  pack_replace("angels-copper-smelting-3", "blue", "orange")
  pack_replace("angels-lead-smelting-3", "blue", "orange")
  pack_replace("angels-nickel-smelting-3", "blue", "orange")
  pack_replace("angels-silicon-smelting-3", "blue", "orange")
  pack_replace("angels-stone-smelting-3", "blue", "orange")
  pack_replace("angels-tin-smelting-3", "blue", "orange")
  pack_replace("angels-iron-smelting-3", "blue", "orange")
  OV.remove_prereq("angels-iron-smelting-3", "angels-chrome-smelting-1")
  --BIOPROCESSING
  pack_replace("angels-bio-yield-module", "green", "orange")
  pack_replace("bio-wood-processing-3", "green", "orange")
  pack_replace("bio-processing-alien-2", "green", "orange")
  pack_replace("bio-processing-alien-3", "green", "orange")
  pack_replace("geode-crystallization-1", "green", "orange")
  pack_replace("bio-processing-crystal-splinter-1", "green", "orange")
  pack_replace("bio-processing-crystal-splinter-2", "green", "orange")
  pack_replace("bio-processing-crystal-splinter-3", "green", "orange")
  --PETROCHEM
  pack_replace("angels-advanced-chemistry-2", "green", "orange")
  pack_replace("plastic-1", "green", "orange")
  pack_replace("resin-3", "blue", "yellow")
  --pack_replace("resin-2", "blue","orange") -- needs melamine, which is quite deep in the tree, leave as blue
  pack_replace("rubber", "green", "orange")
  --pack_replace("rocket-booster-1", "green", "orange")
  pack_replace("rocket-explosives-1", "green", "orange")
  pack_replace("angels-advanced-chemistry-2", "green", "orange")
  pack_replace("angels-advanced-chemistry-2", "green", "orange")
  --INDUSTRIES
  pack_replace("tech-blue-circuit", "blue", "orange")
  OV.remove_science_pack("tech-blue-circuit", "tech-blue-packs")
  OV.remove_prereq("tech-blue-circuit", "angels-components-batteries-4")
  OV.add_prereq("tech-blue-circuit", "angels-components-batteries-3")
  pack_replace("angels-components-mechanical-4", "green", "orange")
  OV.add_prereq("angels-components-construction-4", "tech-orange-packs")
  pack_replace("angels-components-construction-4", "blue", "orange")
  OV.remove_prereq("angels-components-construction-4", "tech-blue-packs")
  pack_replace("angels-components-weapons-advanced", "green", "orange")
  pack_replace("angels-components-cabling-4", "blue", "orange")
  OV.remove_prereq("angels-components-cabling-4", "tech-blue-packs")
  pack_replace("cargo-robots-2", "green", "orange")
  pack_replace("angels-construction-robots-2", "green", "orange")
  pack_replace("angels-components-batteries-3", "green", "orange")

  -------------------------------------------------------------------------------
  -- BLUE SCIENCE PACKS ---------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("logistic-robotics", "green", "blue")
  pack_replace("electric-energy-distribution-2", "orange", "blue")
  OV.remove_prereq("automation-3", "production-science-pack")
  -- INDUSTRIES
  pack_replace("tech-yellow-circuit", "yellow", "blue")
  OV.remove_prereq("tech-yellow-circuit", "angels-components-batteries-5")
  OV.add_prereq("tech-yellow-circuit", "angels-components-batteries-4")
  pack_replace("angels-components-construction-5", "yellow", "blue")
  OV.remove_prereq("angels-components-construction-5", "tech-yellow-packs")
  pack_replace("angels-components-cabling-5", "yellow", "blue")
  OV.remove_prereq("angels-components-cabling-5", "tech-yellow-packs")

  -------------------------------------------------------------------------------
  -- YELOW SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("bio-refugium-puffer-4", "blue", "yellow")
  pack_replace("bio-refugium-biter-3", "blue", "yellow")
  pack_replace("bio-processing-crystal-full", "blue", "yellow")
  pack_replace("speed-module-3", "blue", "yellow")
  pack_replace("productivity-module-3", "blue", "yellow")
  pack_replace("effectivity-module-3", "blue", "yellow")
  pack_replace("effect-transmission", "blue", "yellow")
  OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
  OV.set_science_pack("rocket-silo", "angels-science-pack-red")
  OV.set_science_pack("rocket-silo", "angels-science-pack-green")
  OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
  OV.set_science_pack("rocket-silo", "angels-science-pack-blue")
  -- REFINING
  pack_replace("advanced-ore-refining-4", "blue", "yellow")
  -- BIO PROCESSING
  pack_replace("angels-bio-yield-module-3", "blue", "yellow")
  -- ADDONS
  if mods["angelsadons-storage"] then
    if angelsmods.addons.storage.warehouses then
      pack_replace("angels-logistic-warehouses", "blue", "yellow")
    end
    if angelsmods.addons.storage.silos then
      pack_replace("logistic-silos", "blue", "yellow")
    end
  end

  -------------------------------------------------------------------------------
  -- WHITE SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- none

  OV.execute()
end
