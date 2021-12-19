-- This unit tests validate that each visible recipe can be unlocked by tech.
local unit_test_functions = require("unit-test-functions")

local recipes_to_ignore =
{
  ["electric-energy-interface"] = true, -- base game
}

local tech_unlocked_by_script =
{
  -- ["tech-name"] = true
}

local function can_be_researched(recipe_name)
  if recipes_to_ignore[recipe_name] then return true end
  local tech_prototypes = game.technology_prototypes
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    for _, tech_effect in pairs(tech_prototype.effects) do
      if tech_effect.type == "unlock-recipe" and tech_effect.recipe == recipe_name then
        return true
      end
    end
  end
  return false
end

local unit_test_005 = function()
  local unit_test_result = unit_test_functions.test_successful

  local recipe_prototypes = game.recipe_prototypes
  for recipe_name, recipe_prototype in pairs(recipe_prototypes) do
    if (not recipe_prototype.enabled) and (not recipe_prototype.hidden) then -- recipe must be researched
      if not can_be_researched(recipe_name) then
        unit_test_functions.print_msg(string.format("Recipe %q cannot be unlocked by research.", recipe_name))
        unit_test_result = unit_test_functions.test_failed -- soft failure
      end
    end
  end
  return unit_test_result
end

return unit_test_005