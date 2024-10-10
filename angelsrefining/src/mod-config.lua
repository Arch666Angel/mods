local sea_pump = require("src.sea-pump")

return function(configuration_data)
  local mod_changes = configuration_data.mod_changes["angelspump"]
  if mod_changes and mod_changes.new_version ~= (mod_changes.old_version or "") then
    log(
      string.format(
        "Updating angelspump from version %q to version %q",
        mod_changes.old_version or "nil",
        mod_changes.new_version
      )
    )

    --------------------------------------------------
    -- Sea pump script-----                         --
    --------------------------------------------------
    if not global.SP_data then
      log("Updating sea pump from version 0 to latest version.")
      sea_pump:on_init()
    end

    if global.SP_data.version == 1 then
      log("Updating sea pump from version 1 to version 2.")
      global.SP_data["entity_modules_data_tag"] = "sea-pump-modules_request" -- the tag name where the data is stored in the entity
      global.SP_data.version = 2
    end
  end
end
