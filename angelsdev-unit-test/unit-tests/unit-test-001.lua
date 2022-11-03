-- This is a dummy unit test to test the unit testing behaviour. Each unit test
-- file shall return a function which takes no arguments and returns a boolean
-- or nil. The function returns true if the unit tests succeeded, returns nil
-- if the unit test failed due to mod issues, or returns false if the unit test
-- itself contained an unhandled case or errors occured. It is up to the unit
-- test function to inform what part of the test failed by printing warnings
-- and errors using the unit test interface.
local unit_test_functions = require("unit-test-functions")

local unit_test_001 = function()
  unit_test_functions.print_msg("Unit testing mod configuration:")
  for mod_name, mod_version in pairs(game.active_mods) do
    unit_test_functions.print_msg(mod_name .. " version " .. mod_version)
  end
  return unit_test_functions.test_successful -- unit test succeeded.
  --return unit_test_functions.test_failed   -- unit test failed.
  --return unit_test_functions.test_invalid  -- unit testing structure failed.
end

return unit_test_001
