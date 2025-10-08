if mods["bobplates"] then
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-vanilla-chemical-plants", true)
else
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-bobs-electrolysers", true)
  angelsmods.settings.hide_setting("bool-setting", "angels-disable-bobs-chemical-plants", true)
end
if mods["bobassembly"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-centrifuge", true)
  -- To avoid duplication
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-oilrefineries", false)
end
