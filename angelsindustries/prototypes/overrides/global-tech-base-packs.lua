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
  OV.remove_input("block-electronics-1", "battery-1")

  -------------------------------------------------------------------------------
  -- RED SCIENCE PACKS ----------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("armor-making-2", "green", "red") --move armour making down a tier
  log(serpent.block(data.raw.technology["automation-2"]))
  pack_replace("automation-2", "green", "red")
  OV.remove_prereq("automation-2", "tech-green-packs")
  -- SMELTING
  OV.remove_unlock("angels-stone-smelting-2", "angels-casing-resin-mold")
  OV.add_unlock("angels-stone-smelting-1", "angels-casing-resin-mold")
  OV.remove_unlock("angels-stone-smelting-2", "mold-expendable")
  OV.add_unlock("angels-stone-smelting-1", "mold-expendable")
  OV.remove_prereq("angels-stone-smelting-2", "bio-arboretum-1")
  OV.add_prereq("angels-stone-smelting-1", "bio-arboretum-1")
  pack_replace("angels-steel-smelting-1", "green", "red")
  pack_replace("powder-metallurgy-1", "green", "red")
  OV.add_prereq("powder-metallurgy-1", "angels-metallurgy-1")
  pack_replace("angels-glass-smelting-1", "green", "red")
  pack_replace("angels-zinc-smelting-1", "green", "red")
  pack_replace("angels-nickel-smelting-1", "green", "red")
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
  pack_replace("angels-components-construction-2", "green", "red")
  pack_replace("angels-components-cabling-2", "green", "red")
  pack_replace("angels-components-mechanical-2", "green", "red")
  OV.remove_prereq("angels-components-mechanical-2", "angels-stone-smelting-2")
  OV.add_prereq("angels-components-mechanical-2", "angels-stone-smelting-1")
  pack_replace("angels-components-batteries-2", "green", "red")

  -------------------------------------------------------------------------------
  -- GREEN SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  pack_replace("advanced-material-processing", "red", "green") --move advanced material processing up a tier
  pack_replace("lubricant", "blue", "green")
  OV.remove_prereq("lubricant", "angels-advanced-oil-processing")
  OV.add_prereq("lubricant", "angels-oil-processing")
  -- INDUSTRIES
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
  pack_replace("solar-energy", "green", "orange")
  pack_replace("electric-engine", "green", "orange")
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
  pack_replace("robotics", "green", "orange")
  OV.remove_science_pack("robotics", "angels-science-pack-blue")
  pack_replace("automated-construction", "green", "orange")
  OV.remove_science_pack("automated-construction", "angels-science-pack-blue")
  pack_replace("construction-robotics", "green", "orange")
  OV.remove_science_pack("construction-robotics", "angels-science-pack-blue")
  pack_replace("electric-energy-distribution-2", "blue", "orange")
  --REFINING
  pack_replace("water-treatment-3", "green", "orange")
  pack_replace("ore-leaching", "blue", "orange")
  --pack_replace("geode-processing-2", "green", "orange")
  pack_replace("advanced-ore-refining-2", "green", "orange")
  --SMELTING
  pack_replace("angels-stone-smelting-3", "blue", "orange")
  pack_replace("angels-manganese-smelting-2", "blue", "orange")
  --BIOPROCESSING
  pack_replace("bio-wood-processing-3", "green", "orange")
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
  pack_replace("angels-components-mechanical-4", "green", "orange")
  OV.add_prereq("angels-components-construction-4", "tech-orange-packs")
  pack_replace("angels-components-construction-4", "blue", "orange")
  OV.remove_prereq("angels-components-construction-4", "tech-blue-packs")
  pack_replace("angels-components-weapons-advanced", "green", "orange")
  pack_replace("angels-components-cabling-4", "blue", "orange")
  OV.remove_prereq("angels-components-cabling-4", "tech-blue-packs")
  pack_replace("cargo-robots-2", "green", "orange")
  pack_replace("angels-construction-robots-2", "green", "orange")
  pack_replace("angels-components-batteries-4", "blue", "orange")

  -------------------------------------------------------------------------------
  -- BLUE SCIENCE PACKS ---------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  OV.remove_science_pack("electric-engine", "angels-science-pack-blue")
  pack_replace("logistic-robotics", "green", "blue")
  pack_replace("electric-energy-distribution-2", "orange", "blue")
  -- INDUSTRIES
  pack_replace("angels-components-construction-5", "yellow", "blue")
  OV.remove_prereq("angels-components-construction-5", "tech-yellow-packs")
  pack_replace("angels-components-cabling-5", "yellow", "blue")
  OV.remove_prereq("angels-components-cabling-5", "tech-yellow-packs")
  pack_replace("tech-yellow-circuit", "yellow", "blue")
  pack_replace("angels-components-batteries-5", "yellow", "blue")

  -------------------------------------------------------------------------------
  -- YELOW SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  -- REFINING
  pack_replace("advanced-ore-refining-4", "blue", "yellow")
  -- ADDONS
  if mods["angelsaddons-warehouses"] then
    pack_replace("angels-logistic-warehouses", "blue", "yellow")
  end
  if mods["angelsaddons-oresilos"] then
    pack_replace("logistic-silos", "blue", "yellow")
  end

  -------------------------------------------------------------------------------
  -- WHITE SCIENCE PACKS --------------------------------------------------------
  -------------------------------------------------------------------------------
  -- BASE GAME
  OV.set_science_pack("rocket-silo", "angels-science-pack-grey")
  OV.set_science_pack("rocket-silo", "angels-science-pack-red")
  OV.set_science_pack("rocket-silo", "angels-science-pack-green")
  OV.set_science_pack("rocket-silo", "angels-science-pack-orange")
  OV.set_science_pack("rocket-silo", "angels-science-pack-blue")

  OV.execute()
end
