-- This unit test validates that each visible technology only unlocks visible recipes that aren't enabled at the start of the game.
local unit_test_functions = require("unit-test-functions")

local recipes_to_ignore = {
  ["rocket-part"] = true, -- base game
}

local unit_test_011 = function()
  local unit_test_result = unit_test_functions.test_successful
  local recipe_prototypes = prototypes.recipe

  local tech_filters = {}
  table.insert(tech_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(tech_filters, { filter = "enabled", invert = false, mode = "and" })
  local tech_prototypes = prototypes.get_technology_filtered(tech_filters)

  for tech_name, tech_prototype in pairs(tech_prototypes) do
    for _, tech_effect in pairs(tech_prototype.effects) do
      if (tech_effect.type == "unlock-recipe") and not recipes_to_ignore[tech_effect.recipe] then
        local recipe_prototype = recipe_prototypes[tech_effect.recipe]
        if recipe_prototype.enabled then
          unit_test_functions.print_msg(
            string.format(
              "Tech %q unlocks recipe %q which is enabled at the beginning of the game.",
              tech_name,
              tech_effect.recipe
            )
          )
          unit_test_result = unit_test_functions.test_failed -- soft failure
        end
        if recipe_prototype.hidden then
          unit_test_functions.print_msg(
            string.format("Tech %q unlocks recipe %q which is hidden.", tech_name, tech_effect.recipe)
          )
          unit_test_result = unit_test_functions.test_failed -- soft failure
        end
      end
    end
  end

  return unit_test_result
end

return unit_test_011
