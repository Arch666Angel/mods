local unit_test_functions = require("unit-test-functions")

local function expect_control(control_name, should_exist)
  local exists = prototypes.autoplace_control[control_name] ~= nil
  if exists == should_exist then
    return unit_test_functions.test_successful
  end

  unit_test_functions.print_msg(
    string.format(
      "Autoplace control %q %s.",
      control_name,
      should_exist and "does not exist" or "exists"
    )
  )
  return unit_test_functions.test_failed
end

local function check_control(control_name, should_exist, result)
  if expect_control(control_name, should_exist) ~= unit_test_functions.test_successful then
    return unit_test_functions.test_failed
  end
  return result
end

local unit_test_015 = function()
  if not script.active_mods["angelsrefining"] then
    return unit_test_functions.test_successful
  end

  local unit_test_result = unit_test_functions.test_successful
  local has_space_age = script.active_mods["space-age"] ~= nil
  local has_bobs_mci = script.active_mods["bobores"] and script.active_mods["bobplates"]

  unit_test_result = check_control("stone", false, unit_test_result)

  if script.active_mods["angelsinfiniteores"] then
    unit_test_result = check_control("infinite-stone", false, unit_test_result)
  end

  if has_space_age then
    unit_test_result = check_control("gleba_stone", true, unit_test_result)
    unit_test_result = check_control("tungsten_ore", true, unit_test_result)
  end

  if has_space_age and has_bobs_mci then
    unit_test_result = check_control("tungsten-ore", false, unit_test_result)
  end

  return unit_test_result
end

return unit_test_015
