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

    if not global.vehicleData then
      return
    end -- not initialized yet

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------

    if global.vehicleData.version == 1.0 then
      -- updating from mod version 0.1.3 (or lower)
      local oldVersion = global.vehicleData.version
      local newVersion = 1.1
      log(string.format("    Updating vehicleData from version '%.1f' to version '%.1f'.", oldVersion, newVersion))

      for deployedCabIndex, deployedCabData in pairs(global.vehicleData.deployedCabs or {}) do
        -- Migration of "angels-cab-energy-interface" -> "angels-cab-energy-interface-mk1"
        deployedCabData["angels-cab-energy-interface-mk1"] = deployedCabData["angels-cab-energy-interface"]
        deployedCabData["angels-cab-energy-interface"] = nil
      end

      log(string.format("    Finished updating vehicleData to version '%.1f'.", newVersion))
      global.vehicleData.version = newVersion
    end

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------

    if global.vehicleData.version == 1.1 then
      -- updating from mod version 0.1.4 (or lower)
      local oldVersion = global.vehicleData.version
      local newVersion = 1.2
      log(string.format("    Updating vehicleData from version '%.1f' to version '%.1f'.", oldVersion, newVersion))

      global.vehicleData.openedCabs = {}

      log(string.format("    Finished updating vehicleData to version '%.1f'.", newVersion))
      global.vehicleData.version = newVersion
    end

    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
    -------------------------------------------------------------------------------
  end
end
