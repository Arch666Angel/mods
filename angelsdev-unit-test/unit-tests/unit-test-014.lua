-- This unit test attempts to validates recycling recipes
local unit_test_functions = require("unit-test-functions")

-- These items recycle into the ingredients of their ingredients (one level deeper
-- than usual), rather than into their own direct ingredients.
local deep_recycling_items = {
  ["hazard-concrete"] = true,
  ["refined-hazard-concrete"] = true,
}

local function has_category(recipe, category_name)
  for _, category in pairs(recipe.categories) do
    if category == category_name then
      return true
    end
  end
  return false
end

local function find_base_recipe(item_name)
  local recipe = prototypes.recipe[item_name]

  if not recipe then
    local filters = {
      { filter = "hidden", invert = true, mode = "and" },
      { filter = "has-product-item", elem_filters = { { filter = "name", name = item_name } }, mode = "and" },
    }
    for _, test_recipe in pairs(prototypes.get_recipe_filtered(filters)) do
      if #test_recipe.ingredients == 1 or test_recipe.main_product == item_name then
        recipe = test_recipe
        break
      end
    end
  end

  return recipe
end

-- Returns the list of ingredients a recycling recipe's products should be checked against.
-- Normally this is simply the base recipe's own ingredients. For items in
-- deep_recycling_items, it instead returns the ingredients of each of the base
-- recipe's ingredients (i.e. one level deeper), falling back to the ingredient
-- itself if that ingredient has no recipe of its own to break down further.
local function get_expected_ingredients(item_name, recipe)
  if not deep_recycling_items[item_name] then
    return recipe.ingredients
  end

  local expected_ingredients = {}
  for _, ingredient in pairs(recipe.ingredients) do
    if ingredient.type == "item" then
      local sub_recipe = find_base_recipe(ingredient.name)
      if sub_recipe then
        for _, sub_ingredient in pairs(sub_recipe.ingredients) do
          table.insert(expected_ingredients, sub_ingredient)
        end
      else
        -- No recipe to break this ingredient down further (e.g. a raw/mined item);
        -- it remains itself as an expected recycling product.
        table.insert(expected_ingredients, ingredient)
      end
    else
      -- Fluid ingredients are never expected recycling products
      table.insert(expected_ingredients, ingredient)
    end
  end

  return expected_ingredients
end

local function check_recipe_products(item_name, recycing_recipe)
  if #recycing_recipe.products == 1 and (recycing_recipe.products[1].name == item_name) then
    return unit_test_functions.test_successful
  end

  -- Try find the base recipe
  local recipe = find_base_recipe(item_name)

  if not recipe then
    unit_test_functions.print_msg(string.format("Could not find original recipe for item %q.", item_name))
    return unit_test_functions.test_failed
  end

  local expected_ingredients = get_expected_ingredients(item_name, recipe)

  -- Check that all recycling products are (expected) ingredients
  for _, product in pairs(recycing_recipe.products) do
    local found = false
    for _, ingredient in pairs(expected_ingredients) do
      if ingredient.type == "item" and ingredient.name == product.name then
        found = true
        break
      end
    end
    if not found then
      unit_test_functions.print_msg(
        string.format(
          "Original and recycling recipes for item %q do not match. Missing product %q.",
          item_name,
          product.name
        )
      )
      return unit_test_functions.test_failed
    end
  end

  -- Check that all (expected) item ingredients are recycling products
  for _, ingredient in pairs(expected_ingredients) do
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
      unit_test_functions.print_msg(
        string.format(
          "Original and recycling recipes for item %q do not match. Missing ingredient %q.",
          item_name,
          ingredient.name
        )
      )
      return unit_test_functions.test_failed
    end
  end

  return unit_test_functions.test_successful
end

local unit_test_014 = function()
  if not script.active_mods["recycler"] then
    return unit_test_functions.test_successful
  end

  local unit_test_result = unit_test_functions.test_successful
  local filters = {
    { filter = "hidden", invert = true, mode = "and" },
    { filter = "is-parameter", invert = true, mode = "and" },
    { filter = "flag", invert = true, mode = "and", flag = "only-in-cursor" },
  }

  -- Check every item to see if it has a recycling recipe
  for item_name, item in pairs(prototypes.get_item_filtered(filters)) do
    local recipe = prototypes.recipe[item.name .. "-recycling"]
    if recipe and has_category(recipe, "recycling") then
      local result = check_recipe_products(item_name, recipe)
      if result ~= unit_test_functions.test_successful then
        unit_test_result = result
      end
    else
      unit_test_functions.print_msg(string.format("Item %q has no recycling recipe.", item_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_014
