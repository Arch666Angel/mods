-- This is a dummy unit test to test the unit testing behaviour. Each unit test
-- file shall return a function which takes no arguments and returns a boolean
-- value indicating if the test was successful or not. It is up to the function
-- to inform what part of the test failed by printing warnings and errors using
-- the unit test interface.
local unit_test_functions = require("unit-test-functions")

local unit_test_001 = function()
  unit_test_functions.print_msg("Unit testing mod configuration:")
  for mod_name, mod_version in pairs(game.active_mods) do
    unit_test_functions.print_msg(mod_name .. " version " .. mod_version)
  end
  return true
end

return unit_test_001