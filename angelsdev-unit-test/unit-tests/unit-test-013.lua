-- This unit test validates that there are no missing locale entries
local unit_test_functions = require("unit-test-functions")

local unit_test_013 = function()
  -- Currently there doesn't seem to be any way to check the result of this
  -- It will at least log any errors
  helpers.check_prototype_translations()

  return unit_test_functions.test_successful
end

return unit_test_013
