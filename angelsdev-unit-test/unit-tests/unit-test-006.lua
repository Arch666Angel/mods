-- This unit test checks that every technology contains no prerequisites of
-- higher tiered science packs. This unit test also validates that each
-- technology at least depends on one technology of the same science level, or
-- depends on a technology unlocking the required science level.
local unit_test_functions = require("unit-test-functions")

local technologies_to_ignore = {}

-- a list with all bonus upgrade technologies (this list is extended dynamically)
local bonus_upgrade_technologies = {}

local science_pack_level = {}
local function calculate_science_pack_level()
  local technology_overhaul = script.active_mods["angelsindustries"] and settings.startup["angels-enable-tech"].value
    or false

  if technology_overhaul then
    for pack_name, pack_level in pairs({
      -- angels science packs
      ["angels-science-pack-grey"] = 50,
      ["angels-science-pack-red"] = 100,
      ["angels-science-pack-green"] = 200,
      ["angels-science-pack-orange"] = 300,
      ["angels-science-pack-blue"] = 400,
      ["angels-science-pack-yellow"] = 600,
      ["angels-science-pack-white"] = 700,
    }) do
      science_pack_level[pack_name] = pack_level
    end

    for pack_name, pack_level in pairs({
      -- angels datacores
      ["datacore-basic"] = science_pack_level["angels-science-pack-grey"],
      ["datacore-exploration-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-exploration-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-enhance-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-enhance-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-energy-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-energy-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-logistic-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-logistic-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-war-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-war-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-processing-1"] = science_pack_level["angels-science-pack-red"],
      ["datacore-processing-2"] = science_pack_level["angels-science-pack-blue"],
      ["datacore-processing-3"] = nil, -- unused
      ["datacore-processing-4"] = nil, -- unused
      ["datacore-processing-5"] = nil, -- unused
      ["datacore-processing-6"] = nil, -- unused
    }) do
      science_pack_level[pack_name] = pack_level
    end
  elseif script.active_mods["space-age"] then
    for pack_name, pack_level in pairs({
      ["automation-science-pack"] = 100,
      ["logistic-science-pack"] = 200,
      ["military-science-pack"] = 300,
      ["chemical-science-pack"] = 400,
      ["space-science-pack"] = 600,
      ["agricultural-science-pack"] = 700,
      ["electromagnetic-science-pack"] = 700,
      ["metallurgic-science-pack"] = 700,
      ["production-science-pack"] = 700,
      ["utility-science-pack"] = 700,
      ["cryogenic-science-pack"] = 800,
      ["promethium-science-pack"] = 900,
    }) do
      science_pack_level[pack_name] = pack_level
    end
  else
    for pack_name, pack_level in pairs({
      -- vanilla science packs
      ["automation-science-pack"] = 100,
      ["logistic-science-pack"] = 200,
      ["military-science-pack"] = 300,
      ["chemical-science-pack"] = 400,
      ["production-science-pack"] = 500,
      ["utility-science-pack"] = 600,
      ["space-science-pack"] = 700,
    }) do
      science_pack_level[pack_name] = pack_level
    end
  end

  if script.active_mods["angelsbioprocessing"] then
    science_pack_level["angels-token-bio"] = science_pack_level["angels-science-pack-green"]
      or science_pack_level["logistic-science-pack"]
  end

  if script.active_mods["bobtech"] then
    -- bobs regular science packs
    for pack_name, pack_level in pairs({
      ["bob-advanced-logistic-science-pack"] = 50
        + (science_pack_level["angels-science-pack-blue"] or science_pack_level["chemical-science-pack"]),
    }) do
      science_pack_level[pack_name] = pack_level
    end

    if script.active_mods["bobenemies"] then
      -- bobs alien science packs
      for pack_name, pack_level in pairs({
        ["bob-science-pack-gold"] = 50
          + (science_pack_level["angels-science-pack-orange"] or science_pack_level["chemical-science-pack"]),
        ["bob-alien-science-pack"] = 50
          + (science_pack_level["angels-science-pack-yellow"] or science_pack_level["utility-science-pack"]),
        ["bob-alien-science-pack-blue"] = 50
          + (science_pack_level["angels-science-pack-orange"] or science_pack_level["chemical-science-pack"]),
        ["bob-alien-science-pack-orange"] = 50
          + (science_pack_level["angels-science-pack-yellow"] or science_pack_level["utility-science-pack"]),
        ["bob-alien-science-pack-purple"] = 50
          + (science_pack_level["angels-science-pack-yellow"] or science_pack_level["utility-science-pack"]),
        ["bob-alien-science-pack-yellow"] = 50
          + (science_pack_level["angels-science-pack-yellow"] or science_pack_level["utility-science-pack"]),
        ["bob-alien-science-pack-green"] = 50
          + (science_pack_level["angels-science-pack-yellow"] or science_pack_level["utility-science-pack"]),
        ["bob-alien-science-pack-red"] = 50
          + (science_pack_level["angels-science-pack-blue"] or science_pack_level["production-science-pack"]),
      }) do
        science_pack_level[pack_name] = pack_level
      end
    end
  end

  if script.active_mods["SeaBlock"] then
    for pack_name, pack_level in pairs({
      ["sb-angels-ore3-tool"] = 0,
      ["sb-algae-brown-tool"] = 0,
      ["sb-lab-tool"] = 0,
      ["sb-basic-circuit-board-tool"] = 0,
    }) do
      science_pack_level[pack_name] = pack_level
    end
  end

  if script.active_mods["ScienceCostTweakerM"] then
    science_pack_level["sct-bio-science-pack"] = science_pack_level["angels-token-bio"]
  end

  if script.active_mods["SpaceMod"] then
    technologies_to_ignore["space-assembly"] = true
    technologies_to_ignore["protection-fields"] = true
    technologies_to_ignore["fission-reactor"] = true
    technologies_to_ignore["fuel-cells"] = true
    technologies_to_ignore["habitation"] = true
    technologies_to_ignore["life-support-systems"] = true
    technologies_to_ignore["spaceship-command"] = true
    technologies_to_ignore["astrometrics"] = true
    technologies_to_ignore["ftl-theory-A"] = true
    technologies_to_ignore["ftl-propulsion"] = true
  end

  if script.active_mods["space-age"] then
    technologies_to_ignore["railgun-damage-1"] = true
  end
end

local tech_bonus_effects = {}
local function calculate_tech_bonus_effects()
  tech_bonus_effects = {
    -- inserter bonus
    ["inserter-stack-size-bonus"] = true,
    ["bulk-inserter-capacity-bonus"] = true,
    -- lab bonus
    ["laboratory-speed"] = true,
    ["laboratory-productivity"] = true,
    -- bot logistic bonus
    ["worker-robot-speed"] = true,
    ["worker-robot-storage"] = true,
    ["worker-robot-battery"] = true,
    -- bot building bonus
    ["ghost-time-to-live"] = true,
    ["deconstruction-time-to-live"] = true,
    ["max-failed-attempts-per-tick-per-construction-queue"] = true,
    ["max-successful-attempts-per-tick-per-construction-queue"] = true,
    -- military bonus
    ["turret-attack"] = true,
    ["gun-speed"] = true,
    ["ammo-damage"] = true,
    ["maximum-following-robots-count"] = true,
    ["follower-robot-lifetime"] = true,
    ["artillery-range"] = true,
    -- character bonus
    ["character-crafting-speed"] = true,
    ["character-mining-speed"] = true,
    ["character-running-speed"] = true,
    ["character-build-distance"] = true,
    ["character-item-drop-distance"] = true,
    ["character-reach-distance"] = true,
    ["character-resource-reach-distance"] = true,
    ["character-item-pickup-distance"] = true,
    ["character-loot-pickup-distance"] = true,
    ["character-inventory-slots-bonus"] = true,
    ["character-logistic-trash-slots"] = true,
    ["character-logistic-requests"] = true,
    ["character-health-bonus"] = true,
    ["character-additional-mining-categories"] = true,
    -- map view bonus
    ["zoom-to-world-enabled"] = true,
    ["zoom-to-world-ghost-building-enabled"] = true,
    ["zoom-to-world-blueprint-enabled"] = true,
    ["zoom-to-world-deconstruction-planner-enabled"] = true,
    ["zoom-to-world-upgrade-planner-enabled"] = true,
    ["zoom-to-world-selection-tool-enabled"] = true,
    -- mining drill bonus
    ["mining-drill-productivity-bonus"] = true,
    -- train bonus
    ["train-braking-force-bonus"] = true,
    -- non bonus
    ["nothing"] = false,
    ["give-item"] = false,
    ["unlock-recipe"] = false,
  }
end

local function tech_hidden(tech_prototype)
  return tech_prototype.hidden or not (tech_prototype.enabled or tech_prototype.visible_when_disabled)
end

local function tech_unlocks_only_bonus_upgrades(technology_prototype)
  for _, tech_effect in pairs(technology_prototype.effects) do
    if tech_bonus_effects[tech_effect.type] then
      -- continue
    else
      return false
    end
  end
  return true
end

local function calculate_tech_unlock_level(technology_prototype, effect_level_from_start)
  local tech_effect_level = effect_level_from_start or 0
  local item_prototypes = prototypes.item
  local recipe_prototypes = prototypes.recipe

  for _, tech_effect in pairs(technology_prototype.effects) do
    if tech_effect.type == "unlock-recipe" then
      local recipe_prototype = recipe_prototypes[tech_effect.recipe]
      for _, recipe_product in pairs(recipe_prototype.products) do
        local recipe_product_level = science_pack_level[recipe_product.name]
        if recipe_product_level then
          tech_effect_level = math.max(tech_effect_level, recipe_product_level)
        end
        if recipe_product.type == "item" then
          local item = item_prototypes[recipe_product.name]
          for _, rocket_launch_product in pairs(item.rocket_launch_products) do
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

-- Computes the tech level of the science packs (ingredients) used to unlock a tech, or if the tech is unlocked by crafting 
-- or mining an item this function will return the tech level of the technology that unlocks that item
local function calculate_tech_ingredient_level(technology_prototype)
  local tech_ingredient_level = 0

  -- If this technology is unlocked by a trigger condition then use the max level of it's prerequisite techs
  if technology_prototype.research_trigger then
    for _, prerequisite in pairs(technology_prototype.prerequisites) do
      local prereq_level = calculate_tech_ingredient_level(prerequisite)
      tech_ingredient_level = math.max(tech_ingredient_level, prereq_level)
      -- If prereq unlocks a science pack, include that in this tech's level
      local prereq_level = calculate_tech_unlock_level(prerequisite)
      tech_ingredient_level = math.max(tech_ingredient_level, prereq_level)
    end
  -- If this technology is unlocked using research packs then check their tech levels
  else
    for _, tech_ingredient in pairs(technology_prototype.research_unit_ingredients) do
      local ingredient_level = science_pack_level[tech_ingredient.name]
      if ingredient_level then
        tech_ingredient_level = math.max(tech_ingredient_level, ingredient_level) -- increase tech level
      else
        unit_test_functions.print_msg(string.format("No science level defined for %q.", tech_ingredient.name))
        return -1 -- invalid tech_ingredient_level
      end
    end
  end
  return tech_ingredient_level
end

local function calculate_unlock_level_from_start()
  local effect_level_from_start = 0
  local recipe_prototypes = prototypes.recipe
  for _, recipe_prototype in pairs(recipe_prototypes) do
    if not recipe_prototype.hidden and recipe_prototype.enabled then
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

local unit_test_006 = function()
  local unit_test_result = unit_test_functions.test_successful
  calculate_tech_bonus_effects()
  calculate_science_pack_level()

  local tech_prototypes = prototypes.technology
  local tech_ingredient_levels = {} -- the technology level defined by the research ingredients
  local tech_unlock_levels = {} -- the technology level defined by the research effects
  local effect_level_from_start = calculate_unlock_level_from_start() -- the technology level unlocked at the start of a new game
  for tech_name, tech_prototype in pairs(tech_prototypes) do
    -- first calculate if this technology is a bonus technology
    if tech_unlocks_only_bonus_upgrades(tech_prototype) then
      local is_first_bonus_upgrade = true
      for tech_prereq_name, tech_prereq_prototype in pairs(tech_prototype.prerequisites) do
        if tech_unlocks_only_bonus_upgrades(tech_prereq_prototype) then
          is_first_bonus_upgrade = false
        end
      end

      if is_first_bonus_upgrade then
        -- still has to depend on the correct prerequisites, this case we ignore
      else
        -- these technologies can depend on lower tier science packs
        bonus_upgrade_technologies[tech_name] = true
      end
    end

    if not (technologies_to_ignore[tech_name] and true or tech_hidden(tech_prototype)) then
      -- calculate tech_ingredient_level for this technology if not calculated yet
      if not tech_ingredient_levels[tech_name] then
        local tech_ingredient_level = calculate_tech_ingredient_level(tech_prototype)
        if tech_ingredient_level < 0 then
          unit_test_functions.print_msg(
            string.format("Failed to determine technology ingredient level for %q.", tech_name)
          )
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
            unit_test_functions.print_msg(
              string.format("Failed to determine technology ingredient level for %q.", prereq_name)
            )
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
            unit_test_functions.print_msg(
              string.format("Failed to determine technology effect level for %q.", prereq_name)
            )
            return unit_test_functions.test_invalid
          else
            tech_unlock_levels[prereq_name] = prereq_tech_unlock_level
          end
        end
        prereq_unlock_level = math.max(prereq_unlock_level, tech_unlock_levels[prereq_name])
      end

      -- Calculate test result for this technology
      -- Check 1:
      -- If the ingredients to unlock this tech are of lower level than than those of its prereqs, then the test fails 
      -- (for example, if a tech requires green science but its prereqs require blue science)
      if tech_ingredient_levels[tech_name] < prereq_ingredient_level then
        unit_test_functions.print_msg(
          string.format("Technology %q requires prerequisites with higher science packs.", tech_name)
        )
        unit_test_result = unit_test_functions.test_failed
      
      -- Check 2:
      -- If the tech is not a bonus upgrade, and the max of:
      --    the level of the ingredients to unlock this tech's prereqs
      --    AND
      --    the tech level unlocked by this tech's prereqs
      -- Is less than the level of this tech's ingredients, then this tech does not depend on at least one tech of the same level
      -- or on the tech that unlocks this tech's level, which is not allowed. This would create a tech that, for example, requires blue
      -- science to unlock but doesn't list blue science or another blue-level tech as prereqs
      elseif
        (bonus_upgrade_technologies[tech_name] ~= true)
        and tech_ingredient_levels[tech_name] > math.max(prereq_ingredient_level, prereq_unlock_level)
      then
        unit_test_functions.print_msg(
          string.format("Technology %q requires higher science packs than its prerequisites provide.", tech_name)
        )
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_006
