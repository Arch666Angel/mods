-- This unit test checks for items that are unused
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_successful

local unit_test_007 = function()
  local unit_test_result = unit_test_functions.test_successful

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
    local recipe_prototypes = game.get_filtered_recipe_prototypes(recipe_filters)
    if #recipe_prototypes == 0 then
      unit_test_functions.print_msg(string.format("Item %q is unused.", item_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_007
