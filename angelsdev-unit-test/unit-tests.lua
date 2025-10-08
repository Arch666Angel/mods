local unit_tests = {
  require("unit-tests.unit-test-001"), -- this is an example of a unit test, look at it for more details!
  require("unit-tests.unit-test-002"),
  require("unit-tests.unit-test-003"),
  require("unit-tests.unit-test-004"),
  require("unit-tests.unit-test-005"),
  require("unit-tests.unit-test-006"),
  require("unit-tests.unit-test-007"),
  require("unit-tests.unit-test-008"),
  require("unit-tests.unit-test-009"),
  require("unit-tests.unit-test-010"),
  require("unit-tests.unit-test-011"),
  require("unit-tests.unit-test-012"),
  require("unit-tests.unit-test-013"),
  require("unit-tests.unit-test-014"),
}

local unit_test_functions = require("unit-test-functions")

local unit_tests_result = unit_test_functions.test_successful

local execute_unit_tests = function()
  unit_test_functions.print_msg("Starting " .. #unit_tests .. " unit tests...", 0)
  for unit_test_index, unit_test_func in pairs(unit_tests) do
    unit_test_functions.print_msg(string.format("Starting unit test %03d.", unit_test_index), 0)
    local unit_test_result = unit_test_func()
    if unit_test_result == unit_test_functions.test_successful then
      unit_test_functions.print_msg(string.format("Unit test %03d PASSED!", unit_test_index), 0)
    elseif unit_test_result == unit_test_functions.test_failed then -- soft failure
      unit_test_functions.print_msg(string.format("Unit test %03d FAILED!", unit_test_index), 0)
      if unit_tests_result == unit_test_functions.test_successful then
        unit_tests_result = unit_test_functions.test_failed
      end
    elseif unit_test_result == unit_test_functions.test_invalid then -- hard failure
      unit_test_functions.print_msg(
        string.format("Unit test %03d FAILED! Resolve issue(s) and rerun this test.", unit_test_index),
        0
      )
      unit_tests_result = unit_test_functions.test_invalid
      break
    else
      unit_test_functions.print_msg(string.format("Unexpected result for unit test %03d!", unit_test_index), 0)
      break
    end
  end
  if unit_tests_result == unit_test_functions.test_successful then
    unit_test_functions.print_msg("Finished testing! All unit tests passed!", 0)
  else
    unit_test_functions.print_msg("Finished testing! Some unit tests failed!", 0)
  end
end

return execute_unit_tests
