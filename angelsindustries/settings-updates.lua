if mods["bobplates"] then
  data.raw["bool-setting"]["angels-enable-industries"].default_value = true
end
if mods["bobassembly"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-centrifuge", true)
end
