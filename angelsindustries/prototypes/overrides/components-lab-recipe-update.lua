local labs = {
  ["angels-basic-lab-2"] = {"angels-basic-lab", 1},
  ["angels-basic-lab-3"] = {"angels-basic-lab-2", 1},
  ["angels-exploration-lab-2"] = {"angels-exploration-lab-1", 1},
  ["angels-exploration-lab-3"] = {"angels-exploration-lab-2", 1},
  ["angels-energy-lab-2"] = {"angels-energy-lab-1", 1},
  ["angels-energy-lab-3"] = {"angels-energy-lab-2", 1},
  ["angels-logistic-lab-2"] = {"angels-logistic-lab-1", 1},
  ["angels-logistic-lab-3"] = {"angels-logistic-lab-2", 1},
  ["angels-enhance-lab-2"] = {"angels-enhance-lab-1", 1},
  ["angels-enhance-lab-3"] = {"angels-enhance-lab-2", 1},
  ["angels-processing-lab-2"] = {"angels-processing-lab-1", 1},
  ["angels-processing-lab-3"] = {"angels-processing-lab-2", 1},
  ["angels-war-lab-2"] = {"angels-war-lab-1", 1},
  ["angels-war-lab-3"] = {"angels-war-lab-2", 1}
}
local OV = angelsmods.functions.OV
local patch_list = {}

for recipe_name, ingredient in pairs(labs) do
  table.insert(
    patch_list,
    {
      name = recipe_name,
      ingredients = {ingredient}
    }
  )
end
OV.patch_recipes(patch_list)
