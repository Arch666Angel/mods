local function hide_setting(setting_type, setting_name, setting_default)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].hidden = true
    if setting_default ~= nil then
      data.raw[setting_type][setting_name].default_value = setting_default
    end
  end
end

if mods["angelsrefining"] then
  hide_setting("bool-setting", "angels-enable-biters")
end
