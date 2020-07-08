local function hide_setting(setting_type, setting_name, setting_default)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].hidden = true
    if setting_default ~= nil then
      data.raw[setting_type][setting_name].default_value = setting_default
    end
  end
end

if mods["bobplates"] then
  hide_setting("bool-setting", "angels-disable-vanilla-chemical-plants", false)
else
  hide_setting("bool-setting", "angels-disable-bobs-electrolysers", false)
  hide_setting("bool-setting", "angels-disable-bobs-chemical-plants", false)
  hide_setting("bool-setting", "angels-disable-bobs-distilleries", false)
end