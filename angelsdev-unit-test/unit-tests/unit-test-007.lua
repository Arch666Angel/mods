-- This unit test checks for items that are unused
local unit_test_functions = require("unit-test-functions")

local unit_test_result = unit_test_functions.test_successful

local unit_test_007 = function()
  local unit_test_result = unit_test_functions.test_successful

  local filters = {}
  table.insert(filters, {filter = "tool", invert = true, mode = "and"})
  table.insert(filters, {filter = "selection-tool", invert = true, mode = "and"})
  table.insert(filters, {filter = "fuel", invert = true, mode = "and", flag = "hidden"})
  table.insert(filters, {filter = "place-result", invert = true, mode = "and"})
  table.insert(filters, {filter = "place-as-tile", invert = true, mode = "and"})
  table.insert(filters, {filter = "placed-as-equipment-result", invert = true, mode = "and"})
  table.insert(filters, {filter = "flag", invert = true, mode = "and", flag = "hidden"})
  table.insert(filters, {filter = "type", invert = false, mode = "and", type = "item"})
  table.insert(filters, {filter = "has-rocket-launch-products", invert = true, mode = "and"})
  table.insert(filters, {filter = "wire-count", invert = false, mode = "and", comparison = "=", value = 0})

  local prototypes = game.get_filtered_item_prototypes(filters)
  for item_name, item in pairs(prototypes) do
    filters = {}
    table.insert(filters, {filter = "hidden", invert = true, mode = "and"})
    table.insert(filters, {filter = "has-ingredient-item", invert = false, mode = "and", elem_filters = {{filter = "name", name = item_name}}})
    prototypes = game.get_filtered_recipe_prototypes(filters)
    if #prototypes == 0 then
      unit_test_functions.print_msg(string.format("Item %q is unused.", item_name))
      unit_test_result = unit_test_functions.test_failed
    end
  end

  return unit_test_result
end

return unit_test_007
