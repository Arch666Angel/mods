local OV = angelsmods.functions.OV

--add steel pre-reqs to things that formerly used electronics to req steel
OV.add_prereq("electric-energy-distribution-1", "steel-processing")
