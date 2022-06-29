local OV = angelsmods.functions.OV

--BASE
data.raw["capsule"]["raw-fish"].subgroup = "bio-fish"
data.raw["capsule"]["raw-fish"].order = "aa"

data.raw["item"]["wood"].subgroup = "bio-processing-wood"
data.raw["item"]["wood"].order = "a[wood]"

OV.remove_prereq("plastics", "plastic-1")
OV.add_prereq("plastics", "angels-advanced-chemistry-1")
OV.add_prereq("plastic-1", "plastics")
