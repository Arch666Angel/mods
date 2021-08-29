-- This unit tests validate that each visible technology can be researched.
-- This means that all their prerequisites are visible and researchable.
local unit_test_functions = require("unit-test-functions")

local tech_unlocked_by_script =
{
  -- ["tech-name"] = true
}

local tech_hidden = function(tech_prototype)
  return tech_prototype.hidden or (not (tech_prototype.enabled or tech_prototype.visible_when_disabled))
end

local unit_test_004 = function()
  local unit_test_result = unit_test_functions.test_succesfull
  
  local tech_prototypes = game.technology_prototypes
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    if (not tech_hidden(tech_prototype)) and (not tech_unlocked_by_script[tech_name]) then
      -- tech visible and might depends on prerequisites
      for prereq_name, prereq_prototype in pairs(tech_prototype.prerequisites) do
        if tech_hidden(prereq_prototype) and (not tech_unlocked_by_script[prereq_name]) then -- tech cannot be researched
          unit_test_functions.print_msg(string.format("Technology %q depends on %q, which is hidden.", tech_name, prereq_name))
          unit_test_result = unit_test_functions.test_failed -- soft failure
        end
      end
    end
  end
  return unit_test_result
end

return unit_test_004