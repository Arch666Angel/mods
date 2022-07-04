-- This unit test validates that each visible entity has at least one recipe available
-- and has an item to place it
-- Also checks that each visible recipe has an entity or character that can craft it
local unit_test_functions = require("unit-test-functions")

local entities_to_ignore_recipe = {
  ["rocket-silo"] = true,
  ["valve-converter"] = true,
}
local entities_to_ignore_item = {
  ["simple-entity-with-force"] = true,
  ["simple-entity-with-owner"] = true,
  ["burner-generator"] = true,
  ["electric-energy-interface"] = true,
  ["heat-interface"] = true,
  ["linked-belt"] = true,
  ["linked-chest"] = true,
  ["infinity-chest"] = true,
  ["infinity-pipe"] = true,
}

local function has_recipe(recipe_filters, recipes_to_ignore)
  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  if #recipe_prototypes == 0 then
    return false
  else
    local used = false
    for recipe_name, recipe in pairs(recipe_prototypes) do
      if not recipes_to_ignore[recipe_name] then
        used = true
        break
      end
    end

    return used
  end
end

local function try_find_character_for(recipe)
  local entity_filters = {}
  table.insert(entity_filters, {filter = "name", name = "character", mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(entity_filters, {filter = "type", type = "character", mode = "and"})
  
  local entities = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entities) do
    for category_name, _ in pairs(entity.crafting_categories) do
      if recipe.category == category_name then
        return true
      end
    end
  end
end

local function try_find_entity_for(recipe)
  -- Count ingredients and products in recipe
  local item_ingredient_count = 0
  local fluid_ingredient_count = 0
  local fluid_product_count = 0

  for _, ingredient in pairs(recipe.ingredients) do
    if ingredient.type == "item" then
      item_ingredient_count = item_ingredient_count + 1
    elseif ingredient.type == "fluid" then
      fluid_ingredient_count = fluid_ingredient_count + 1
    end
  end

  for _, product in pairs(recipe.products) do
    if product.type == "fluid" then
      fluid_product_count = fluid_product_count + 1
    end
  end

  -- Try find an entity that can craft this recipe
  local entity_filters = {}
  table.insert(entity_filters, {filter = "type", type = "assembling-machine", mode = "or"})
  table.insert(entity_filters, {filter = "crafting-category", crafting_category = recipe.category, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  
  table.insert(entity_filters, {filter = "type", type = "furnace", mode = "or"})
  table.insert(entity_filters, {filter = "crafting-category", crafting_category = recipe.category, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})

  table.insert(entity_filters, {filter = "type", type = "rocket-silo", mode = "or"})
  table.insert(entity_filters, {filter = "crafting-category", crafting_category = recipe.category, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  
  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if ((not entity.fixed_recipe) or (entity.fixed_recipe == recipe.name)) and
        (entity.ingredient_count >= item_ingredient_count) then
      return true
    end
  end

  if (fluid_ingredient_count == 0) and (fluid_product_count == 0) then
    return try_find_character_for(recipe)
  else
    return false
  end
end

local unit_test_009 = function()
  local unit_test_result = unit_test_functions.test_successful

  -- Check entities have at least one recipe available
  local entity_filters = {}
  table.insert(entity_filters, {filter = "crafting-machine", invert = false, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if not entities_to_ignore_recipe[entity_name] then
      local recipe_filters = {}
      for category_name, _ in pairs(entity.crafting_categories) do
        table.insert(recipe_filters, {filter = "category", invert = false, mode = "or", category = category_name})
        table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
      end

      if not has_recipe(recipe_filters, {}) then
        unit_test_functions.print_msg(string.format("There are no available recipes that can be crafted in entity %q.", entity_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check entities have an item to place them
  local entity_filters = {}
  table.insert(entity_filters, {filter = "item-to-place", invert = false, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(entity_filters, {filter = "autoplace", invert = true, mode = "and"})

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if not entities_to_ignore_item[entity_name] then    
      local item_filters = {}
      for _, item in pairs(entity.items_to_place_this) do
        local item_name
        if type(item) == "string" then
          item_name = item
        else
          item_name = item.name
        end
        table.insert(item_filters, {filter = "name", invert = false, mode = "or", name = item_name})
        table.insert(item_filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
      end

      local item_prototypes = game.get_filtered_item_prototypes(item_filters)
      if #item_prototypes == 0 then
        unit_test_functions.print_msg(string.format("Entity %q has no item to place it.", entity_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check recipes have an entity to craft them
  local recipe_filters = {}
  table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})

  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  for recipe_name, recipe in pairs(recipe_prototypes) do
    if not try_find_entity_for(recipe) then
      unit_test_functions.print_msg(string.format("There is no suitable machine or character that can craft recipe %q (crafting category %q).", recipe_name, recipe.category))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_009
