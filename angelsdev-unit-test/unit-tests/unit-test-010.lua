-- This unit test validates that each ingredients for each visible recipe are
-- either unlocked at the same time or unlocked by a prerequisite technology
local unit_test_functions = require("unit-test-functions")

local starting_unlocks = {items = {}, fluids = {}}
local processed_techs = {}
local unit_test_result = unit_test_functions.test_successful

local function process_tech(tech)
  -- Build lists of items and fluids unlocked by this tech
  local result = {name = tech.name, items = {}, fluids = {}}
  local ingredients = {items = {}, fluids = {}}

  for _, modifier in pairs(tech.effects) do
    if modifier.type == "unlock-recipe" then
      local recipe = game.recipe_prototypes[modifier.recipe]

      for _, product in pairs(recipe.products) do
        if product.type == "item" then
          result.items[product.name] = true
        else
          result.fluids[product.name] = true
        end
      end

      -- Skip building recipes
      local skip = false
      if (#recipe.products == 1) and (recipe.products[1].type == "item") then
        local item = game.item_prototypes[recipe.products[1].name]
        if item.place_result then
          skip = true
        end
      end

      if not skip then
        for  _, ingredient in pairs(recipe.ingredients) do
          if ingredient.type == "item" then
            if not ingredients.items[ingredient.name] then
              ingredients.items[ingredient.name] = {}
            end
            ingredients.items[ingredient.name][recipe.name] = true
          else
            if not ingredients.fluids[ingredient.name] then
              ingredients.fluids[ingredient.name] = {}
            end
            ingredients.fluids[ingredient.name][recipe.name] = true
          end
        end
      end
    end
  end

  local item_names = {}
  for item_name, _ in pairs(result.items) do
    table.insert(item_names, item_name)
  end

  -- Items from Burnt Result

  local item_filters = {}
  table.insert(item_filters, {filter = "name", mode = "and", name = item_names})
  table.insert(item_filters, {filter = "burnt-result", mode = "and"})
  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for _, item in pairs(item_prototypes) do
    result.items[item.burnt_result.name] = true
  end

  -- Fluids from Boilers
  -- Fluids from Offshore Pumps

  local item_filters = {}
  table.insert(item_filters, {filter = "name", mode = "and", name = item_names})
  table.insert(item_filters, {filter = "place-result", mode = "and"})
  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for _, item in pairs(item_prototypes) do
    local entity = item.place_result
    if entity.type == "boiler" then
      for _, fluidbox in pairs(entity.fluidbox_prototypes) do
        if fluidbox.filter and fluidbox.production_type == "output" then
          result.fluids[fluidbox.filter.name] = true
        end
      end
    elseif entity.type == "offshore-pump" then
      result.fluids[entity.fluid.name] = true
    end
  end

  -- Combine unlocks with unlocks from prerequisite techs
  for prereq_name, _ in pairs(tech.prerequisites) do
    local prereq = processed_techs[prereq_name]
    if prereq then
      for item_name, _ in pairs(prereq.items) do
        result.items[item_name] = true
      end

      for fluid_name, _ in pairs(prereq.fluids) do
        result.fluids[fluid_name] = true
      end
    end
  end

  if #tech.prerequisites == 0 then
    for item_name, _ in pairs(starting_unlocks.items) do
      result.items[item_name] = true
    end

    for fluid_name, _ in pairs(starting_unlocks.fluids) do
      result.fluids[fluid_name] = true
    end
  end

  -- Check if any recipes unlocked by this tech use ingredients that are not available
  for item_name, recipe_names in pairs(ingredients.items) do
    if not result.items[item_name] then
      for recipe_name, _ in pairs(recipe_names) do
        unit_test_functions.print_msg(string.format("Recipe %q uses Item %q and is unlocked by Tech %q. None of the tech's prerequisites unlock this item", recipe_name, item_name, tech.name))
      end
      unit_test_result = unit_test_functions.test_failed
    end
  end
  for fluid_name, recipe_names in pairs(ingredients.fluids) do
    if not result.fluids[fluid_name] then
      for recipe_name, _ in pairs(recipe_names) do
        unit_test_functions.print_msg(string.format("Recipe %q uses Fluid %q and is unlocked by Tech %q. None of the tech's prerequisites unlock this fluid", fluid_name, recipe_name, tech.name))
      end
      unit_test_result = unit_test_functions.test_failed      
    end
  end
  return result
end

local function make_starting_unlocks()
  -- Populate starting_unlocks with enemy drops
  local entity_filters = {}
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    local loot = entity.loot
    if loot then
      for _, loot_item in pairs(loot) do
        if (loot_item.probability > 0) and (loot_item.count_max > 0) then
          starting_unlocks.items[loot_item.item] = true
        end
      end
    end
  end

  -- Populate starting_unlocks with mining results
  -- Mining fluid isn't checked here so (in vanilla) uranium will be marked as accessible from start of game
  local entity_filters = {}
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(entity_filters, {filter = "minable", invert = false, mode = "and"})
  table.insert(entity_filters, {filter = "autoplace", invert = false, mode = "and"})

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if entity.mineable_properties.products then
      for _, product in pairs(entity.mineable_properties.products) do
        if product.type == "item" then
          starting_unlocks.items[product.name] = true
        else
          starting_unlocks.fluids[product.name] = true
        end
      end
    end
  end

  local starting_tech = {name = "starting", prerequisites = {}, effects = {}}

  local recipe_filters = {}
  table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(recipe_filters, {filter = "enabled", invert = false, mode = "and"})
  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)
  
  for _, recipe in pairs(recipe_prototypes) do
    if recipe.hidden_from_player_crafting then
      for _, product in pairs(recipe.products) do
        if product.type == "item" then
          starting_unlocks.items[product.name] = true
        else
          starting_unlocks.fluids[product.name] = true
        end
      end
    else
      table.insert(starting_tech.effects, {type = "unlock-recipe", recipe = recipe.name})
    end
  end

  starting_unlocks = process_tech(starting_tech)
end

local unit_test_010 = function()
  -- Build lists of items and fluids unlocked at the start of the game
  make_starting_unlocks()
  
  -- Build list of technologies with the items and fluids unlocked by each

  local tech_filters = {}
  table.insert(tech_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(tech_filters, {filter = "enabled", invert = false, mode = "and"})
  local tech_prototypes = game.get_filtered_technology_prototypes(tech_filters)

  local I = 0
  
  while #tech_prototypes > I do
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
        end
      end
    end  
  end

  return unit_test_result
end

return unit_test_010
