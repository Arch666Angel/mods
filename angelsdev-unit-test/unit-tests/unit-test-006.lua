-- This unit test checks that every technology contains no prerequisites of
-- higher tiered science packs. This unit test also validates that each
-- technology at least depends on one technology of the same science level, or
-- depends on a technology unlocking the required science level.
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_succesfull

-- this unit test currently doesn't cover bobs technologies
local technologies_to_ignore =
{
}

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

local function calculate_tech_ingredient_level(technology_prototype)
  local tech_ingredient_level = 0
  for _, tech_ingredient in pairs(technology_prototype.research_unit_ingredients) do
    local ingredient_level = science_pack_level[tech_ingredient.name]
    if ingredient_level then
      tech_ingredient_level = math.max(tech_ingredient_level, ingredient_level) -- increase tech level
    else
      unit_test_functions.print_msg(string.format("No science level defined for %q.", tech_ingredient.name))
      return -1 -- invalid tech_ingredient_level
    end
  end
  return tech_ingredient_level
end

local function calculate_unlock_level_from_start()
  local effect_level_from_start = 0
  local recipe_prototypes = game.recipe_prototypes
  for _, recipe_prototype in pairs(recipe_prototypes) do
    if (not recipe_prototype.hidden) and recipe_prototype.enabled then
      for _, recipe_product in pairs(recipe_prototype.products) do
        local recipe_product_level = science_pack_level[recipe_product.name]
        if recipe_product_level then
          effect_level_from_start = math.max(effect_level_from_start, recipe_product_level)
        end
      end
    end
  end
  return effect_level_from_start
end

local function calculate_tech_unlock_level(technology_prototype, effect_level_from_start)
  local tech_effect_level = effect_level_from_start or 0
  local item_prototypes = game.item_prototypes
  local recipe_prototypes = game.recipe_prototypes
  for _, tech_effect in pairs(technology_prototype.effects) do
    if tech_effect.type == "unlock-recipe" then
      local recipe_prototype = recipe_prototypes[tech_effect.recipe]
      for _, recipe_product in pairs(recipe_prototype.products) do
        local recipe_product_level = science_pack_level[recipe_product.name]
        if recipe_product_level then
          tech_effect_level = math.max(tech_effect_level, recipe_product_level)
        end
        if recipe_product.type == 'item' then
          for _, rocket_launch_product in pairs(item_prototypes[recipe_product.name].rocket_launch_products) do
            local rocket_launch_product_level = science_pack_level[rocket_launch_product.name]
            if rocket_launch_product_level then
              tech_effect_level = math.max(tech_effect_level, rocket_launch_product_level)
            end
          end
        end
      end
    end
  end
  return tech_effect_level
end

local unit_test_006 = function()
  local unit_test_result = unit_test_functions.test_succesfull

  local tech_prototypes = game.technology_prototypes
  local tech_ingredient_levels = {} -- the technology level defined by the research ingredients
  local tech_unlock_levels = {} -- the technology level defined by the research effects
  local effect_level_from_start = calculate_unlock_level_from_start() -- the technology level unlocked at the start of a new game

  for tech_name, tech_prototype in pairs(tech_prototypes) do
    if not (technologies_to_ignore[tech_name] and true or tech_hidden(tech_prototype)) then
      -- calculate tech_ingredient_level for this technology if not calculated yet
      if not tech_ingredient_levels[tech_name] then
        local tech_ingredient_level = calculate_tech_ingredient_level(tech_prototype)
        if tech_ingredient_level < 0 then
          unit_test_functions.print_msg(string.format("Failed to determine technology ingredient level for %q.", tech_name))
          return unit_test_functions.test_invalid
        else
          tech_ingredient_levels[tech_name] = tech_ingredient_level
        end
      end

      -- calculate prereq_level, which is equal to the maximum of
      -- a) the highest tech_ingredient_level of all prereq technologies
      -- b) the highest tech_ingredient of all prereq recipe unlocks
      local prereq_ingredient_level = 0
      local prereq_unlock_level = effect_level_from_start
      for prereq_name, prereq_tech_prototype in pairs(tech_prototype.prerequisites) do
        -- a) calculate tech_ingredient_level for prereq if not calculated yet
        if not tech_ingredient_levels[prereq_name] then
          local prereq_tech_ingredient_level = calculate_tech_ingredient_level(prereq_tech_prototype)
          if prereq_tech_ingredient_level < 0 then
            unit_test_functions.print_msg(string.format("Failed to determine technology ingredient level for %q.", prereq_name))
            return unit_test_functions.test_invalid
          else
            tech_ingredient_levels[prereq_name] = prereq_tech_ingredient_level
          end
        end
        prereq_ingredient_level = math.max(prereq_ingredient_level, tech_ingredient_levels[prereq_name])

        -- b) calculate tech_unlock_level for prereq if not calculated yet
        if not tech_unlock_levels[prereq_name] then
          local prereq_tech_unlock_level = calculate_tech_unlock_level(prereq_tech_prototype, effect_level_from_start)
          if prereq_tech_unlock_level < 0 then
            unit_test_functions.print_msg(string.format("Failed to determine technology effect level for %q.", prereq_name))
            return unit_test_functions.test_invalid
          else
            tech_unlock_levels[prereq_name] = prereq_tech_unlock_level
          end
        end
        prereq_unlock_level = math.max(prereq_unlock_level, tech_unlock_levels[prereq_name])
      end

      -- calculate test result for this technology
      if tech_ingredient_levels[tech_name] < prereq_ingredient_level then
        unit_test_functions.print_msg(string.format("Technology %q requires prerequisites with higher science packs.", tech_name))
        unit_test_result = unit_test_functions.test_failed
      elseif tech_ingredient_levels[tech_name] > math.max(prereq_ingredient_level, prereq_unlock_level) then
        unit_test_functions.print_msg(string.format("Technology %q requires higher science packs than its prerequisites provide.", tech_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_006