local gathering_turret = require("src.gathering-turret")
local turbo_bike = require("src.turbo-bike")
local tips_and_tricks_triggers = require("src.tips-and-tricks-triggers")

return function(configuration_data)
  local mod_changes = configuration_data.mod_changes["angelsexploration"]
  if mod_changes and mod_changes.new_version ~= (mod_changes.old_version or "") then
    log(
      string.format(
        "Updating Angel's Exploration from version %q to version %q",
        mod_changes.old_version or "nil",
        mod_changes.new_version
      )
    )

    --------------------------------------------------
    -- Gathering turret script                      --
    --------------------------------------------------
    if not storage.GT_data then
      log("Updating gathering turret from version 0 to version 1.")
      gathering_turret:on_init()
    end

    --------------------------------------------------
    -- Turbo bike script                            --
    --------------------------------------------------
    if not storage.TB_data then
      log("Updating turbo bike from version 0 to version 1.")
      turbo_bike:on_init()
    end

    --------------------------------------------------
    -- Tips and tricks trigger script               --
    --------------------------------------------------
    if not storage.TNT_data then
      log("Updating tips and tricks triggers from version 0 to version 1.")
      tips_and_tricks_triggers:on_init()
    end
  end
end
