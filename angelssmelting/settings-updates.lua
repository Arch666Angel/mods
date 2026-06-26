if mods["bobplates"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-cheapersteel", false)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-convert-recipes", false)
end
if mods["bobassembly"] then
  data.raw["bool-setting"]["bobmods-assembly-multipurposefurnaces"].localised_name =
    { "setting-name.bobmods-assembly-furnaces" }
  data.raw["bool-setting"]["bobmods-assembly-multipurposefurnaces"].localised_description =
    { "setting-description.bobmods-assembly-furnaces" }
end
