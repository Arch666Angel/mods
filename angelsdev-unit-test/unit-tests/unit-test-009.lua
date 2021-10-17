-- This unit test validates that each visible entity has at least one recipe available
-- and has an item to place it
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_successful

local entities_to_ignore_recipe = {
  ["rocket-silo"] = true,
}
local entities_to_ignore_item = {}

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
        unit_test_functions.print_msg(string.format("Entity %q has no recipes available.", entity_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check entities have an item to place them
  local entity_filters = {}
  table.insert(entity_filters, {filter = "item-to-place", invert = false, mode = "and"})
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})

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

  return unit_test_result
end

return unit_test_009
