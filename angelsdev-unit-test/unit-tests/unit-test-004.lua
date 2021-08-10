-- This unit tests validate that each visible technology can be researched.
-- This means that all their prerequisites are visible and researchable.
local unit_test_functions = require("unit-test-functions")

local tech_unlocked_by_script =
{
  -- ["tech-name"] = true
}

local unit_test_004 = function()
  local tech_prototypes = game.technology_prototypes
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    if (not tech_prototype.enabled) and (not tech_prototype.hidden) and (not tech_unlocked_by_script[tech_name]) then
      -- tech depends on prerequisites
      for prereq_name, prereq_prototype in pairs(tech_prototype.prerequisites) do
        if prereq_prototype.hidden and (not tech_unlocked_by_script[prereq_name]) then -- tech cannot be researched
          unit_test_functions.print_msg(string.format("Technology %q depends on %q, which is hidden.", tech_name, prereq_name))
        end
      end
    end
  end
  return true
end

return unit_test_004