local unit_tests =
{
  require("unit-tests.unit-test-001"),
  require("unit-tests.unit-test-002"),
  require("unit-tests.unit-test-002"),
}

local unit_test_functions = require("unit-test-functions")

local execute_unit_tests = function()
  unit_test_functions.print_msg("Starting " .. #unit_tests .. " unit tests...", 0)
  for unit_test_index, unit_test_func in pairs(unit_tests) do
    unit_test_functions.print_msg(string.format("Starting unit test %03d.", unit_test_index), 0)
    local unit_test_result = unit_test_func()
    if unit_test_result == true then
      unit_test_functions.print_msg(string.format("Unit test %03d PASSED!", unit_test_index), 0)
    elseif unit_test_result == false then
      unit_test_functions.print_msg(string.format("Unit test %03d FAILED!", unit_test_index), 0)
      break
    else
      unit_test_functions.print_msg(string.format("Unexpected result for unit test %03d!", unit_test_index), 0)
      break
    end
  end
  unit_test_functions.print_msg("Finished testing!", 0)
end

return execute_unit_tests