-- This unit test validates that each visible item and fluid has a visible recipe
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_successful

local items_to_ignore = {}
local fluids_to_ignore = {}
local item_recipes_to_ignore = {}
local fluid_recipes_to_ignore = {}

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

local unit_test_008 = function()
  local unit_test_result = unit_test_functions.test_successful

  -- Populate items_to_ignore with burnt results
  local item_filters = {}
  table.insert(item_filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
  table.insert(item_filters, {filter = "burnt-result", invert = false, mode = "and", type = "item"})
  
  local item_prototypes = game.get_filtered_item_prototypes(item_filters)
  
  for item_name, item in pairs(item_prototypes) do
    items_to_ignore[item.burnt_result.name] = true
  end

  -- Populate items_to_ignore and fluids_to_ignore with mining results
  local entity_filters = {}
  table.insert(entity_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(entity_filters, {filter = "minable", invert = false, mode = "and"})

  local entity_prototypes = game.get_filtered_entity_prototypes(entity_filters)

  for entity_name, entity in pairs(entity_prototypes) do
    if entity.mineable_properties.products then
      for _, product in pairs(entity.mineable_properties.products) do
        if product.type == "item" then
          items_to_ignore[product.name] = true
        else
          fluids_to_ignore[product.name] = true
        end
      end
    end
  end

  -- Populate items_to_ignore with rocket launch products
  local item_filters = {}
  table.insert(item_filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
  table.insert(item_filters, {filter = "has-rocket-launch-products", invert = false, mode = "and"})

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    for _, product in pairs(item.rocket_launch_products) do
      if product.type == "item" then
        items_to_ignore[product.name] = true
      else
        fluids_to_ignore[product.name] = true
      end
    end
  end

  -- Populate fluid_recipes_to_ignore with unbarreling recipes
  local recipe_filters = {}
  table.insert(recipe_filters, {filter = "category", invert = false, mode = "or", category = "barreling-pump"})

  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  for recipe_name, recipe in pairs(recipe_prototypes) do
    fluid_recipes_to_ignore[recipe_name] = true
  end

  -- Check items
  local item_filters = {}
  table.insert(item_filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
  table.insert(item_filters, {filter = "type", invert = true, mode = "and", type = "blueprint"})
  table.insert(item_filters, {filter = "type", invert = true, mode = "and", type = "blueprint-book"})
  table.insert(item_filters, {filter = "type", invert = true, mode = "and", type = "deconstruction-item"})
  table.insert(item_filters, {filter = "type", invert = true, mode = "and", type = "upgrade-item"})

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    if not items_to_ignore[item_name] then
      local recipe_filters = {}
      table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
      table.insert(recipe_filters, {filter = "has-product-item", invert = false, mode = "and", elem_filters = {{filter = "name", name = item_name}}})

      if not has_recipe(recipe_filters, item_recipes_to_ignore) then
        unit_test_functions.print_msg(string.format("Item %q is not produced.", item_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  -- Check fluids
  local fluid_filters = {}
  table.insert(fluid_filters, {filter = "hidden", invert = true, mode = "and"})

  local fluid_prototypes = game.get_filtered_fluid_prototypes(fluid_filters)

  for fluid_name, fluid in pairs(fluid_prototypes) do
    if not fluids_to_ignore[fluid_name] then
      local recipe_filters = {}
      table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
      table.insert(recipe_filters, {filter = "has-product-fluid", invert = false, mode = "and", elem_filters = {{filter = "name", name = fluid_name}}})

      if not has_recipe(recipe_filters, fluid_recipes_to_ignore) then
        unit_test_functions.print_msg(string.format("Fluid %q is not produced.", fluid_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_008
