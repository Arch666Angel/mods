-- This unit test attempts to validates recycling recipes
local unit_test_functions = require("unit-test-functions")

local function check_recipe_products(item_name, recycing_recipe)
  if #recycing_recipe.products == 1 and (recycing_recipe.products[1].name == item_name) then
    return unit_test_functions.test_successful
  end

  -- Try find the base recipe
  local recipe = prototypes.recipe[item_name]
  if not recipe then
    unit_test_functions.print_msg(string.format("Could not find original recipe for item %q.", item_name))
    return unit_test_functions.test_failed
  end

  -- Check that all recycling products are ingredients
  for _, product in pairs(recycing_recipe.products) do
    local found = false
    for _, ingredient in pairs(recipe.ingredients) do
      if ingredient.type == "item" and ingredient.name == product.name then
        found = true
        break
      end
    end
    if not found then
      unit_test_functions.print_msg(string.format("Original and recycling recipes for item %q do not match. Missing product %q.", item_name, product.name))
      return unit_test_functions.test_failed
    end
  end

  -- Check that all item ingredients are recycling products
  for _, ingredient in pairs(recipe.ingredients) do
    local found = false
    if ingredient.type == "item" then
      for _, product in pairs(recycing_recipe.products) do
        if product.name == ingredient.name then
          found = true
          break
        end
      end
    else
      found = true
    end
    if not found then
      unit_test_functions.print_msg(string.format("Original and recycling recipes for item %q do not match. Missing ingredient %q.", item_name, ingredient.name))
      return unit_test_functions.test_failed
    end
  end

  return unit_test_functions.test_successful
end

local unit_test_014 = function()
  if not script.active_mods["quality"] then
    return unit_test_functions.test_successful
  end

  local unit_test_result = unit_test_functions.test_successful

  -- Check every item to see if it has a recycling recipe
  for item_name, item in pairs(prototypes.item) do
    if (not item.hidden) and ((not item.flags) or (not item.flags["only-in-cursor"])) then
      local recipe = prototypes.recipe[item.name.."-recycling"]
      if recipe and recipe.category == "recycling" then
        unit_test_result = check_recipe_products(item_name, recipe)
      else
        unit_test_functions.print_msg(string.format("Item %q has no recycling recipe.", item_name))
        unit_test_result = unit_test_functions.test_failed
      end
    end
  end

  return unit_test_result
end

return unit_test_014
