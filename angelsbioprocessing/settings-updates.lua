if mods["bobenemies"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-enemies-enablenewartifacts", true) -- colored artifects (when regular artifact is enabled)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-enemies-enablesmallartifacts", true) -- small artifacts (when equivalent big version is enabled)
end
if mods["bobmodules"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-modules-transmitproductivity", false) -- productivity cannot be transmitted (due to agricultural modules)
end
