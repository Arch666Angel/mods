-- This is for when the mod is added into an existing game or when the mod is updated.
return function(configurationData)
  local modChanges = configurationData.mod_changes["angelsaddons-cab"]
  if modChanges and modChanges.new_version ~= (modChanges.old_version or "") then
    log(
      string.format(
        "Updating 'angelsaddons-cab' from version %q to version %q",
        modChanges.old_version or "nil",
        modChanges.new_version
      )
    )

    if not storage.vehicleData then
      return
    end -- not initialized yet

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------

    if storage.vehicleData.version == 1.0 then
      -- updating from mod version 0.1.3 (or lower)
      local oldVersion = storage.vehicleData.version
      local newVersion = 1.1
      log(string.format("    Updating vehicleData from version '%.1f' to version '%.1f'.", oldVersion, newVersion))

      for deployedCabIndex, deployedCabData in pairs(storage.vehicleData.deployedCabs or {}) do
        -- Migration of "angels-cab-energy-interface" -> "angels-cab-energy-interface-mk1"
        deployedCabData["angels-cab-energy-interface-mk1"] = deployedCabData["angels-cab-energy-interface"]
        deployedCabData["angels-cab-energy-interface"] = nil
      end

      log(string.format("    Finished updating vehicleData to version '%.1f'.", newVersion))
      storage.vehicleData.version = newVersion
    end

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------

    if storage.vehicleData.version == 1.1 then
      -- updating from mod version 0.1.4 (or lower)
      local oldVersion = storage.vehicleData.version
      local newVersion = 1.2
      log(string.format("    Updating vehicleData from version '%.1f' to version '%.1f'.", oldVersion, newVersion))

      storage.vehicleData.openedCabs = {}

      log(string.format("    Finished updating vehicleData to version '%.1f'.", newVersion))
      storage.vehicleData.version = newVersion
    end

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
  end
end
