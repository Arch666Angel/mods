angelsmods = angelsmods or {}
angelsmods.settings = angelsmods.settings or {}

function angelsmods.settings.hide_setting(setting_type, setting_name, forced_setting_value)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].hidden = true
    if forced_setting_value ~= nil then
      data.raw[setting_type][setting_name].forced_value = forced_setting_value
    else
      data.raw[setting_type][setting_name].forced_value = data.raw[setting_type][setting_name].default_value
    end
  else
    log("Could not find setting '" .. setting_name .. "'.")
  end
end

function angelsmods.settings.set_default(setting_type, setting_name, default_value)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].default_value = default_value
  else
    log("Could not find setting '" .. setting_name .. "'.")
  end
end
