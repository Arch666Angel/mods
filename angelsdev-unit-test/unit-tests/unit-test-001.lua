-- This is a dummy unit test to test the unit testing behaviour. Each unit test
-- file shall return a function which takes no arguments and returns a boolean
-- value indicating if the test was succesfull or not. It is up to the function
-- to inform what part of the test failed by printing warnings and errors using
-- the unit test interface.
local unit_test_functions = require("unit-test-functions")
local unit_test_001 = function()
  unit_test_functions.print_msg("This is a dummy output for testing...")
  return true
end
return unit_test_001