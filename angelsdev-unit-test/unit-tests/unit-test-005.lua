-- This unit tests validate that each visible recipe can be unlocked by tech.
local unit_test_functions = require("unit-test-functions")

local recipes_to_ignore = {
  ["electric-energy-interface"] = true, -- base game
}

local tech_unlocked_by_script = {
  -- ["tech-name"] = true
}

local function get_researchable_recipes()
  local result = {}

  for recipe_name, _ in pairs(recipes_to_ignore) do
    result[recipe_name] = true
  end

  local tech_filters = {}
  table.insert(tech_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(tech_filters, { filter = "enabled", invert = false, mode = "and" })
  local tech_prototypes = prototypes.get_technology_filtered(tech_filters)

  for tech_name, tech_prototype in pairs(tech_prototypes) do
    for _, tech_effect in pairs(tech_prototype.effects) do
      if tech_effect.type == "unlock-recipe" then
        result[tech_effect.recipe] = true
      end
    end
  end

  return result
end

local unit_test_005 = function()
  local unit_test_result = unit_test_functions.test_successful
  local researchable_recipes = get_researchable_recipes()

  local recipe_prototypes = prototypes.recipe
  for recipe_name, recipe_prototype in pairs(recipe_prototypes) do
    if not recipe_prototype.enabled and not recipe_prototype.hidden then -- recipe must be researched
      if not researchable_recipes[recipe_name] then
        unit_test_functions.print_msg(string.format("Recipe %q cannot be unlocked by research.", recipe_name))
        unit_test_result = unit_test_functions.test_failed -- soft failure
      end
    end
  end
  return unit_test_result
end

return unit_test_005
