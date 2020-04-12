local OV = angelsmods.functions.OV

-- For some reason, it won't remove the effectivity modules from the tech if
-- I don't place the OV.execute() next to each line...

OV.remove_prereq("angels-crawler-train-2", "speed-module")
OV.remove_prereq("angels-crawler-train-2", "effectivity-module")
OV.add_prereq("angels-crawler-train-2", "tech-green-circuit")
OV.add_prereq("angels-crawler-train-2", "angels-components-mechanical-2")
OV.add_prereq("angels-crawler-train-2", "angels-components-cabling-2")
OV.add_prereq("angels-crawler-train-2", "angels-components-construction-2")

OV.remove_prereq("angels-crawler-train-3", "speed-module-2")
OV.remove_prereq("angels-crawler-train-3", "effectivity-module-2")
OV.remove_prereq("angels-crawler-train-3", "low-density-structure")
OV.remove_prereq("angels-crawler-train-3", "electric-engine")
OV.add_prereq("angels-crawler-train-3", "tech-orange-circuit")
OV.add_prereq("angels-crawler-train-3", "angels-components-mechanical-3")
OV.add_prereq("angels-crawler-train-3", "angels-components-cabling-3")
OV.add_prereq("angels-crawler-train-3", "angels-components-construction-3")

OV.remove_prereq("angels-crawler-train-4", "speed-module-3")
OV.remove_prereq("angels-crawler-train-4", "effectivity-module-3")
OV.remove_prereq("angels-crawler-train-4", "construction-robotics")
OV.add_prereq("angels-crawler-train-4", "tech-blue-circuit")
OV.add_prereq("angels-crawler-train-4", "angels-components-mechanical-4")
OV.add_prereq("angels-crawler-train-4", "angels-components-cabling-4")
OV.add_prereq("angels-crawler-train-4", "angels-components-construction-4")

OV.remove_prereq("angels-crawler-train-5", "rocket-control-unit")
OV.remove_prereq("angels-crawler-train-5", "logistic-system")
OV.add_prereq("angels-crawler-train-5", "tech-yellow-circuit")
OV.add_prereq("angels-crawler-train-5", "angels-components-mechanical-5")
OV.add_prereq("angels-crawler-train-5", "angels-components-cabling-5")
OV.add_prereq("angels-crawler-train-5", "angels-components-construction-5")

OV.execute()
