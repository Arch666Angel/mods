-- This audit writes the resolved Factorio 2.0 item weights and the recipe that
-- appears first under the documented automatic-weight recipe ordering.
-- Runtime prototypes expose the final item weight, but not whether that value
-- came from an explicit prototype field or the automatic algorithm, so this
-- report is intentionally informational rather than pass/fail.
local unit_test_functions = require("unit-test-functions")

local report_name = "angels-item-weight-audit.csv"

local function csv_escape(value)
  local text = tostring(value or "")
  if string.find(text, '[,"\n]') then
    text = '"' .. string.gsub(text, '"', '""') .. '"'
  end
  return text
end

local function recipe_contains_item(list, item_name)
  for _, stack in pairs(list or {}) do
    if stack.type == "item" and stack.name == item_name then
      return true
    end
  end
  return false
end

local function recipe_uses_item_as_catalyst(recipe, item_name)
  return recipe_contains_item(recipe.ingredients, item_name) and recipe_contains_item(recipe.products, item_name)
end

local function visible_decomposable_recipes_for_item(item_name)
  local recipes = {}
  local filters = {
    { filter = "hidden", invert = true, mode = "and" },
    { filter = "has-product-item", elem_filters = { { filter = "name", name = item_name } }, mode = "and" },
  }

  for _, recipe in pairs(prototypes.get_recipe_filtered(filters)) do
    -- The weight algorithm ignores hidden recipes and recipes that opt out of
    -- decomposition. The runtime API reports nil for some old/default fields,
    -- so only an explicit false value is treated as an opt-out.
    if recipe.allow_decomposition ~= false then
      table.insert(recipes, recipe)
    end
  end

  return recipes
end

local function category_name(recipe)
  return type(recipe.category) == "table" and recipe.category.name or recipe.category or ""
end

local function subgroup_name(prototype)
  return prototype.subgroup and prototype.subgroup.name or ""
end

local function recipe_sort_value(recipe, item_name)
  return {
    same_name = recipe.name == item_name and 0 or 1,
    catalyst = recipe_uses_item_as_catalyst(recipe, item_name) and 1 or 0,
    intermediate = recipe.allow_as_intermediate == false and 1 or 0,
    category = category_name(recipe),
    subgroup = subgroup_name(recipe),
    order = recipe.order or "",
    name = recipe.name,
  }
end

local function recipe_should_sort_before(left_recipe, right_recipe, item_name)
  local left = recipe_sort_value(left_recipe, item_name)
  local right = recipe_sort_value(right_recipe, item_name)

  for _, field in pairs({ "same_name", "catalyst", "intermediate", "category", "subgroup", "order", "name" }) do
    if left[field] ~= right[field] then
      return left[field] < right[field]
    end
  end

  return false
end

local function choose_weight_recipe(item_name)
  local recipes = visible_decomposable_recipes_for_item(item_name)
  table.sort(recipes, function(left, right)
    return recipe_should_sort_before(left, right, item_name)
  end)
  return recipes[1], #recipes
end

local function is_reportable_item(item)
  return item.stack_size and item.stack_size > 0
end

local function format_csv_row(values)
  local escaped = {}
  for _, value in pairs(values) do
    table.insert(escaped, csv_escape(value))
  end
  return table.concat(escaped, ",") .. "\n"
end

local unit_test_015 = function()
  helpers.write_file(report_name, "", false)
  helpers.write_file(
    report_name,
    format_csv_row({
      "item",
      "group",
      "subgroup",
      "weight",
      "stack_size",
      "candidate_recipe_count",
      "chosen_recipe",
      "chosen_recipe_category",
      "chosen_recipe_subgroup",
      "chosen_recipe_order",
    }),
    true
  )

  local item_count = 0
  local item_filters = {
    { filter = "hidden", invert = true, mode = "and" },
    { filter = "flag", invert = true, mode = "and", flag = "only-in-cursor" },
  }
  for _, item in pairs(prototypes.get_item_filtered(item_filters)) do
    if is_reportable_item(item) then
      local recipe, candidate_count = choose_weight_recipe(item.name)
      helpers.write_file(
        report_name,
        format_csv_row({
          item.name,
          item.group and item.group.name or "",
          subgroup_name(item),
          item.weight,
          item.stack_size,
          candidate_count,
          recipe and recipe.name or "",
          recipe and category_name(recipe) or "",
          recipe and subgroup_name(recipe) or "",
          recipe and recipe.order or "",
        }),
        true
      )
      item_count = item_count + 1
    end
  end

  unit_test_functions.print_msg(
    string.format("Wrote %d item weight rows to script-output/%s.", item_count, report_name)
  )
  return unit_test_functions.test_successful
end

return unit_test_015
