if mods["bobplates"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-bluedeuterium")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-expensive-electrolysis")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-nuclearupdate")
end
if mods["bobassembly"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-centrifuge", true)
  -- To avoid duplication
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-chemicalplants", false)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-electrolysers", false)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-oilrefineries", false)
end
if mods["bobrevamp"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-revamp-old-oil", false)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-revamp-oil", false)
end
