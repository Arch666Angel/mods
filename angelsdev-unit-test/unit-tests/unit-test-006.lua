-- TODO: unit test description
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_succesfull

local science_pack_level =
{
  -- level 0 = no science pack requirements

  -- vanilla science packs (priority range 100 - 999)
  ["automation-science-pack"] = 100,
  ["logistic-science-pack"] = 200,
  ["military-science-pack"] = 300,
  ["chemical-science-pack"] = 400,
  ["production-science-pack"] = 500,
  ["utility-science-pack"] = 600,
  ["space-science-pack"] = 700,

  -- bobs regular science packs (priority range similar to vanilla)
  ["advanced-logistic-science-pack"] = 450,

  -- bobs module science packs (priority range similar to vanilla)
  ["speed-processor"] = 250,
  ["effectivity-processor"] = 250,
  ["productivity-processor"] = 250,
  ["pollution-clean-processor"] = 250,
  ["pollution-create-processor"] = 250,
  ["module-circuit-board"] = 450,
  ["module-case"] = 550,

  -- bobs alien science packs (priority range similar to vanilla)
  ["science-pack-gold"] = 450,
  ["alien-science-pack"] = 450,
  ["alien-science-pack-blue"] = 450,
  ["alien-science-pack-orange"] = 450,
  ["alien-science-pack-purple"] = 450,
  ["alien-science-pack-yellow"] = 450,
  ["alien-science-pack-green"] = 450,
  ["alien-science-pack-red"] = 450,

  -- angels science packs (priority range 1 - 99)
  -- priorities set lower than vanilla science packs such that
  -- a prerequisite with regular packs will throw an error
  ["angels-science-pack-grey"] = 10,
  ["angels-science-pack-red"] = 20,
  ["angels-science-pack-green"] = 30,
  ["angels-science-pack-orange"] = 40,
  ["angels-science-pack-blue"] = 50,
  ["angels-science-pack-yellow"] = 60,
  ["angels-science-pack-white"] = 70,
  ["token-bio"] = 30,

  -- angels datacores (priority range similar to angels science packs)
  ["datacore-basic"] = 15,
  ["datacore-exploration-1"] = 25,
  ["datacore-exploration-2"] = 55,
  ["datacore-enhance-1"] = 25,
  ["datacore-enhance-2"] = 55,
  ["datacore-energy-1"] = 25,
  ["datacore-energy-2"] = 55,
  ["datacore-logistic-1"] = 25,
  ["datacore-logistic-2"] = 55,
  ["datacore-war-1"] = 25,
  ["datacore-war-2"] = 55,
  ["datacore-processing-1"] = 25,
  ["datacore-processing-2"] = 55,
  ["datacore-processing-3"] = nil, -- unused
  ["datacore-processing-4"] = nil, -- unused
  ["datacore-processing-5"] = nil, -- unused
  ["datacore-processing-6"] = nil, -- unused
}

local function tech_hidden(tech_prototype)
  return tech_prototype.hidden or (not (tech_prototype.enabled or tech_prototype.visible_when_disabled))
end

local function calculate_tech_level(technology_prototype)
  local tech_level = 0
  for _, tech_ingredient in pairs(technology_prototype.research_unit_ingredients) do
    local ingredient_level = science_pack_level[tech_ingredient.name]
    if ingredient_level then
      tech_level = tech_level < ingredient_level and ingredient_level or tech_level -- increase tech level
    else
      unit_test_functions.print_msg(string.format("No science level defined for %q.", tech_ingredient.name))
      return -1 -- invalid tech_level
    end
  end
  return tech_level
end

local unit_test_006 = function()
  local unit_test_result = unit_test_functions.test_succesfull

  local tech_prototypes = game.technology_prototypes
  local tech_levels = {}
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    if not tech_hidden(tech_prototype) then
      -- Calculate prereq_level, which is equal to the highest tech_level of all prereq technologies
      local prereq_level = 0
      for prereq_name, prereq_tech_prototype in pairs(tech_prototype.prerequisites) do
        -- calculate tech_level for prereq if not calculated yet
        if not tech_levels[prereq_name] then
          local prereq_tech_level = calculate_tech_level(prereq_tech_prototype)
          if prereq_tech_level < 0 then
            unit_test_functions.print_msg(string.format("Failed to determine technology level for %q.", prereq_name))
            return unit_test_functions.test_invalid
          else
            tech_levels[prereq_name] = prereq_tech_level
          end
        end

        -- update prereq_level for this prereq
        local prereq_tech_level = tech_levels[prereq_name]
        prereq_level = prereq_level < prereq_tech_level and prereq_tech_level or prereq_level
      end

      -- calculate tech_level for this technology if not calculated yet
      if not tech_levels[tech_name] then
        local tech_level = calculate_tech_level(tech_prototype)
        if tech_level < 0 then
          unit_test_functions.print_msg(string.format("Failed to determine technology level for %q.", tech_name))
          return unit_test_functions.test_invalid
        else
          tech_levels[tech_name] = tech_level
        end
      end

      -- calculate test result for this technology
      if tech_levels[tech_name] < prereq_level then
        unit_test_functions.print_msg(string.format("Technology %q requires higher tiered prerequisites.", tech_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_006