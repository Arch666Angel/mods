local gathering_turret = require "src.gathering-turret"

return function(configuration_data)
  local mod_changes = configuration_data.mod_changes["angelsexploration"]
  if mod_changes and mod_changes.new_version ~= (mod_changes.old_version or "") then
    log(string.format("Updating Angel's Exploration from version %q to version %q", mod_changes.old_version or "nil", mod_changes.new_version))

    --------------------------------------------------
    -- Gathering turret script                      --
    --------------------------------------------------
    if not global.GT_data then
      log("Updating gathering turret from version 0 to version 1.")
      gathering_turret:on_init()
    end

  end
end