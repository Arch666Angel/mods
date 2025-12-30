script.on_init(function()
  -- Disable cutscene
  if remote.interfaces["freeplay"] then
    remote.call("freeplay", "set_disable_crashsite", true)
    remote.call("freeplay", "set_skip_intro", true)
  end
end)

local execute_unit_tests = require("unit-tests")
script.on_event(defines.events.on_tick, function()
  if game.tick == 1 * 60 then
    execute_unit_tests()
  end
end)
