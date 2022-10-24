-- This unit test validates all science packs in industries science mode such
-- that all technologies can be researched in a lab.
local unit_test_functions = require("unit-test-functions")

local function log_invalid_science_configuration(tech_name, tech_analysers, tech_datacore_T1, tech_datacore_T2)
  unit_test_functions.print_msg(string.format("Technology %q has an invalid research pack configuration:", tech_name))
  unit_test_functions.print_msg(string.format("  Science analysers: %s", tech_analysers[1] or "None"))
  if #tech_analysers > 1 then
    for i = 2, #tech_analysers do
      unit_test_functions.print_msg(string.format("                     %s", tech_analysers[i]))
    end
  end
  unit_test_functions.print_msg(
    string.format("  Science datacores: %s", tech_datacore_T1[1] or tech_datacore_T2[1] or "None")
  )
  if #tech_datacore_T1 > 1 then
    for i = 2, #tech_datacore_T1 do
      unit_test_functions.print_msg(string.format("                     %s", tech_datacore_T1[i]))
    end
  end
  if #tech_datacore_T2 > 1 or (#tech_datacore_T1 > 0 and #tech_datacore_T2 > 0) then
    for i = #tech_datacore_T1 > 0 and 1 or 2, #tech_datacore_T2 do
      unit_test_functions.print_msg(string.format("                     %s", tech_datacore_T2[i]))
    end
  end
end

local unit_test_002 = function()
  local unit_test_result = unit_test_functions.test_successful

  if not game.active_mods["angelsindustries"] then
    return true
  end -- skip test
  local industries_tech_setting = settings.startup["angels-enable-tech"]
  if not industries_tech_setting or (industries_tech_setting.value == false) then
    return true
  end -- skip test

  local tech_prototypes = game.technology_prototypes
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    if tech_prototype.hidden == false then
      local tech_ingredients = tech_prototype.research_unit_ingredients
      local tech_packs = {}
      for _, tech_ingredient in pairs(tech_ingredients) do
        tech_packs[tech_ingredient.name] = tech_packs[tech_ingredient.name] or (tech_ingredient.amount > 0)
      end

      local tech_analysers = {}
      for _, analyser_name in pairs({
        "angels-science-pack-grey",
        "angels-science-pack-red",
        "angels-science-pack-green",
        "angels-science-pack-orange",
        "angels-science-pack-blue",
        "angels-science-pack-yellow",
        "angels-science-pack-white",
      }) do
        if tech_packs[analyser_name] then
          table.insert(tech_analysers, analyser_name)
        end
      end

      local tech_datacore_T1 = {}
      for _, datacore_name in pairs({
        "datacore-basic",
        "datacore-exploration-1",
        "datacore-enhance-1",
        "datacore-energy-1",
        "datacore-logistic-1",
        "datacore-war-1",
        "datacore-processing-1",
      }) do
        if tech_packs[datacore_name] then
          table.insert(tech_datacore_T1, datacore_name)
        end
      end

      local tech_datacore_T2 = {}
      for _, datacore_name in pairs({
        "datacore-exploration-2",
        "datacore-enhance-2",
        "datacore-energy-2",
        "datacore-logistic-2",
        "datacore-war-2",
        "datacore-processing-2",
        "datacore-processing-3",
        "datacore-processing-4",
        "datacore-processing-5",
        "datacore-processing-6",
      }) do
        if tech_packs[datacore_name] then
          table.insert(tech_datacore_T2, datacore_name)
        end
      end

      -- Key researches have (one or) more analysers but no datacores
      if #tech_analysers > 1 and (#tech_datacore_T1 + #tech_datacore_T2) > 0 then
        log_invalid_science_configuration(tech_name, tech_analysers, tech_datacore_T1, tech_datacore_T2)
        unit_test_result = unit_test_functions.test_failed -- soft failure
      end

      -- Other researches should only have one type of datacore
      if (#tech_datacore_T1 + #tech_datacore_T2) > 1 then
        log_invalid_science_configuration(tech_name, tech_analysers, tech_datacore_T1, tech_datacore_T2)
        unit_test_result = unit_test_functions.test_failed -- soft failure
      end

      -- Other researches should also have one type of analyser
      if (#tech_datacore_T1 + #tech_datacore_T2) == 1 and #tech_analysers ~= 1 then
        log_invalid_science_configuration(tech_name, tech_analysers, tech_datacore_T1, tech_datacore_T2)
        unit_test_result = unit_test_functions.test_failed -- soft failure
      end

      if (#tech_analysers + #tech_datacore_T1 + #tech_datacore_T2) == 0 then
        --unit_test_functions.print_msg(string.format("Technology %q has no analysers nor datacores set.", tech_name))
      end
    end
  end

  return unit_test_result
end

return unit_test_002
