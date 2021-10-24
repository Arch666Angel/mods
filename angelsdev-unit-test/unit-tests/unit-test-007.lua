-- This unit test checks for items and fluids that are unused
local unit_test_functions = require("unit-test-functions")

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

local unit_test_007 = function()
  local unit_test_result = unit_test_functions.test_successful

  -- Populate fluid_recipes_to_ignore with voiding and barreling recipes
  local recipe_filters = {}
  table.insert(recipe_filters, {filter = "has-product-item", invert = false, mode = "or", elem_filters = {{filter = "name", name = "chemical-void"}}})
  table.insert(recipe_filters, {filter = "has-product-item", invert = false, mode = "or", elem_filters = {{filter = "name", name = "water-void"}}})
  table.insert(recipe_filters, {filter = "category", invert = false, mode = "or", category = "barreling-pump"})

  local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)

  for recipe_name, recipe in pairs(recipe_prototypes) do
    fluid_recipes_to_ignore[recipe_name] = true
  end

  -- Check items
  local item_filters = {}
  table.insert(item_filters, {filter = "tool", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "selection-tool", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "fuel", invert = true, mode = "and", flag = "hidden"})
  table.insert(item_filters, {filter = "place-result", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "place-as-tile", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "placed-as-equipment-result", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
  table.insert(item_filters, {filter = "type", invert = false, mode = "and", type = "item"})
  table.insert(item_filters, {filter = "has-rocket-launch-products", invert = true, mode = "and"})
  table.insert(item_filters, {filter = "wire-count", invert = false, mode = "and", comparison = "=", value = 0})

  local item_prototypes = game.get_filtered_item_prototypes(item_filters)

  for item_name, item in pairs(item_prototypes) do
    local recipe_filters = {}
    table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
    table.insert(recipe_filters, {filter = "has-ingredient-item", invert = false, mode = "and", elem_filters = {{filter = "name", name = item_name}}})

    if not has_recipe(recipe_filters, item_recipes_to_ignore) then
      unit_test_functions.print_msg(string.format("No (useful) recipe is using item %q as an ingredient.", item_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  -- Check fluids
  local fluid_filters = {}
  table.insert(fluid_filters, {filter = "hidden", invert = true, mode = "and"})
  table.insert(fluid_filters, {filter = "fuel-value", invert = true, mode = "and", comparison = ">", value = 0.0})

  local fluid_prototypes = game.get_filtered_fluid_prototypes(fluid_filters)

  for fluid_name, fluid in pairs(fluid_prototypes) do
    local recipe_filters = {}
    table.insert(recipe_filters, {filter = "hidden", invert = true, mode = "and"})
    table.insert(recipe_filters, {filter = "has-ingredient-fluid", invert = false, mode = "and", elem_filters = {{filter = "name", name = fluid_name}}})

    if not has_recipe(recipe_filters, fluid_recipes_to_ignore) then
      unit_test_functions.print_msg(string.format("No (useful) recipe is using fluid %q as an ingredient.", fluid_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_007
