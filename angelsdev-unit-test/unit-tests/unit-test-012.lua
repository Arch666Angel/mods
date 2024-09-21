-- This unit test validates that recipes are not unlocked by both a technology and one of it's prerequite technologies
local unit_test_functions = require("unit-test-functions")

local starting_unlocks = { recipes = {} }
local processed_techs = {}
local unit_test_result = unit_test_functions.test_successful

local function process_tech(tech)
  local result = { name = tech.name, recipes = {} }

  -- Get unlocks from prerequisite techs
  for prereq_name, _ in pairs(tech.prerequisites) do
    local prereq = processed_techs[prereq_name]
    if prereq then
      for recipe_name, unlocked_by in pairs(prereq.recipes) do
        result.recipes[recipe_name] = unlocked_by
      end
    end
  end

  if #tech.prerequisites == 0 then
    for recipe_name, _ in pairs(starting_unlocks.recipes) do
      result.recipes[recipe_name] = "N/A"
    end
  end

  -- Build lists of recipes unlocked by this tech
  for _, modifier in pairs(tech.effects) do
    if modifier.type == "unlock-recipe" then
      local unlocked_by = result.recipes[modifier.recipe]
      if unlocked_by then
        unit_test_functions.print_msg(
          string.format(
            "Recipe %q is unlocked by Tech %q as well as prerequisite tech %q.",
            modifier.recipe,
            tech.name,
            unlocked_by
          )
        )
        unit_test_result = unit_test_functions.test_failed
      end
      result.recipes[modifier.recipe] = unlocked_by or tech.name
    end
  end

  return result
end

local function make_starting_unlocks()
  local starting_tech = { name = "starting", prerequisites = {}, effects = {} }

  local recipe_filters = {}
  table.insert(recipe_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(recipe_filters, { filter = "enabled", invert = false, mode = "and" })
  local recipe_prototypes = prototypes.get_recipe_filtered(recipe_filters)

  for _, recipe in pairs(recipe_prototypes) do
    table.insert(starting_tech.effects, { type = "unlock-recipe", recipe = recipe.name })
  end

  starting_unlocks = process_tech(starting_tech)
end

local unit_test_012 = function()
  -- Build lists recipes unlocked at the start of the game
  make_starting_unlocks()

  -- Build list of technologies with recipes

  local tech_filters = {}
  table.insert(tech_filters, { filter = "hidden", invert = true, mode = "and" })
  table.insert(tech_filters, { filter = "enabled", invert = false, mode = "and" })
  local tech_prototypes = prototypes.get_technology_filtered(tech_filters)

  local I = 0
  local escape = false

  while (#tech_prototypes > I) and (escape == false) do
    escape = true
    for tech_name, tech in pairs(tech_prototypes) do
      if not processed_techs[tech_name] then
        local all_prereqs_processed = true
        for prereq_name, prereq in pairs(tech.prerequisites) do
          if not processed_techs[prereq_name] then
            all_prereqs_processed = false
            break
          end
        end

        if all_prereqs_processed then
          processed_techs[tech_name] = process_tech(tech)
          I = I + 1
          escape = false
        end
      end
    end
  end

  if escape == true then
    unit_test_functions.print_msg("The following techs were not checked. Possibly due to hidden prerequisites")
    unit_test_result = unit_test_functions.test_failed
    for tech_name, tech in pairs(tech_prototypes) do
      if not processed_techs[tech_name] then
        unit_test_functions.print_msg(tech_name)
      end
    end
  end

  return unit_test_result
end

return unit_test_012
