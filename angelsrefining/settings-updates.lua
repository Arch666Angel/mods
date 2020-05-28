local function hide_setting(setting_type, setting_name)
  if data.raw[setting_type] and data.raw[setting_type][setting_name] then
    data.raw[setting_type][setting_name].hidden = true
  end
end

if mods["bobplates"] then
  hide_setting("bool-setting", "bobmods-plates-oreoverride")
  hide_setting("bool-setting", "bobmods-plates-groundwater")
  hide_setting("bool-setting", "bobmods-plates-vanillabarrelling")
  
  if mods["angelspetrochem"] then
    hide_setting("bool-setting", "bobmods-plates-purewater")
  end

  if mods["angelsindustries"] then
    hide_setting("bool-setting", "bobmods-plates-bluedeuterium")
    hide_setting("bool-setting", "bobmods-plates-nuclearupdate")
  end
end

if mods["bobores"] then
  --ores
  hide_setting("bool-setting", "bobmods-ores-enablebauxite")
  hide_setting("bool-setting", "bobmods-ores-enablecobaltore")
  hide_setting("bool-setting", "bobmods-ores-enablegemsore")
  hide_setting("bool-setting", "bobmods-ores-enablegoldore")
  hide_setting("bool-setting", "bobmods-ores-enableleadore")
  hide_setting("bool-setting", "bobmods-ores-enablenickelore")
  hide_setting("bool-setting", "bobmods-ores-enablequartz")
  hide_setting("bool-setting", "bobmods-ores-enablerutile")
  hide_setting("bool-setting", "bobmods-ores-enablesilverore")
  hide_setting("bool-setting", "bobmods-ores-enablesulfur")
  hide_setting("bool-setting", "bobmods-ores-enabletinore")
  hide_setting("bool-setting", "bobmods-ores-enabletungstenore")
  hide_setting("bool-setting", "bobmods-ores-enablezincore")
  --hide_setting("bool-setting", "bobmods-ores-enablewaterores")
  hide_setting("bool-setting", "bobmods-ores-enablethoriumore")

  hide_setting("bool-setting", "bobmods-ores-leadgivesnickel")
  hide_setting("double-setting", "bobmods-ores-leadnickelratio")
  hide_setting("bool-setting", "bobmods-ores-nickelgivescobalt")
  hide_setting("double-setting", "bobmods-ores-nickelcobaltratio")

  --gems
  hide_setting("bool-setting", "bobmods-ores-unsortedgemore")
  hide_setting("double-setting", "bobmods-gems-rubyratio")
  hide_setting("double-setting", "bobmods-gems-sapphireratio")
  hide_setting("double-setting", "bobmods-gems-emeraldratio")
  hide_setting("double-setting", "bobmods-gems-amethystratio")
  hide_setting("double-setting", "bobmods-gems-topazratio")
  hide_setting("double-setting", "bobmods-gems-diamondratio")

  hide_setting("bool-setting", "bobmods-ores-gemsfromotherores")
  hide_setting("double-setting", "bobmods-ores-gemprobability")
end

if mods["bobassembly"] then
  hide_setting("bool-setting", "bobmods-assembly-limits")
end

if mods["boblogistics"] then
  if mods["angelsindustries"] then
    hide_setting("bool-setting", "bobmods-logistics-inserterrequireprevious")
  end
end