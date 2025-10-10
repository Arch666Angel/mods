-- EXECUTE OVERRIDES
if mods["boblibrary"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-library-recipe-cleanup", true)
end

if mods["bobplates"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-groundwater")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-vanillabarrelling")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-plates-purewater", true)
end

if mods["bobores"] then
  --ores
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablebauxite")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablecobaltore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablegemsore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablegoldore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enableleadore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablenickelore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablequartz")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablerutile")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablesilverore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablesulfur")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enabletinore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enabletungstenore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablezincore")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablethoriumore")

  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-enablewaterores")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-startinggroundwater")

  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-leadgivesnickel")
  angelsmods.settings.hide_setting("double-setting", "bobmods-ores-leadnickelratio")
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-nickelgivescobalt")
  angelsmods.settings.hide_setting("double-setting", "bobmods-ores-nickelcobaltratio")

  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-infiniteore", false)

  --gems
  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-unsortedgemore", false)
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-rubyratio")
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-sapphireratio")
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-emeraldratio")
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-amethystratio")
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-topazratio")
  angelsmods.settings.hide_setting("double-setting", "bobmods-gems-diamondratio")

  angelsmods.settings.hide_setting("bool-setting", "bobmods-ores-gemsfromotherores", false)
  angelsmods.settings.hide_setting("double-setting", "bobmods-ores-gemprobability")
end

if mods["bobassembly"] then
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-limits", false)
  angelsmods.settings.hide_setting("bool-setting", "bobmods-assembly-distilleries", false)
end

if mods["boblogistics"] then
  if mods["angelsindustries"] then
    angelsmods.settings.hide_setting("bool-setting", "bobmods-logistics-inserterrequireprevious")
  end
end
