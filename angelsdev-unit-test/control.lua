local execute_unit_tests = require("unit-tests")
script.on_event(defines.events.on_tick, function()
  if game.tick == 1 * 60 then
    execute_unit_tests()
  end
end)
