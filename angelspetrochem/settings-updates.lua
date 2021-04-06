if mods["bobplates"] then
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-vanilla-chemical-plants", true)
else
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-bobs-electrolysers", true)
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-bobs-chemical-plants", true)
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-bobs-distilleries", true)
end