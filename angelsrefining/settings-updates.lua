if mods["bobplates"] then
  data.raw["bool-setting"]["bobmods-plates-oreoverride"].hidden = true
  data.raw["bool-setting"]["bobmods-plates-groundwater"].hidden = true
  data.raw["bool-setting"]["bobmods-plates-vanillabarrelling"].hidden = true
end

if mods["bobores"] then
  --ores
  data.raw["bool-setting"]["bobmods-ores-enablebauxite"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablecobaltore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablegemsore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablegoldore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enableleadore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablenickelore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablequartz"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablerutile"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablesilverore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablesulfur"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enabletinore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enabletungstenore"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablezincore"].hidden = true
  --data.raw["bool-setting"]["bobmods-ores-enablewaterores"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-enablethoriumore"].hidden = true

  data.raw["bool-setting"]["bobmods-ores-leadgivesnickel"].hidden = true
  data.raw["double-setting"]["bobmods-ores-leadnickelratio"].hidden = true
  data.raw["bool-setting"]["bobmods-ores-nickelgivescobalt"].hidden = true
  data.raw["double-setting"]["bobmods-ores-nickelcobaltratio"].hidden = true

  --gems
  data.raw["bool-setting"]["bobmods-ores-unsortedgemore"].hidden = true
  data.raw["double-setting"]["bobmods-gems-rubyratio"].hidden = true
  data.raw["double-setting"]["bobmods-gems-sapphireratio"].hidden = true
  data.raw["double-setting"]["bobmods-gems-emeraldratio"].hidden = true
  data.raw["double-setting"]["bobmods-gems-amethystratio"].hidden = true
  data.raw["double-setting"]["bobmods-gems-topazratio"].hidden = true
  data.raw["double-setting"]["bobmods-gems-diamondratio"].hidden = true

  data.raw["bool-setting"]["bobmods-ores-gemsfromotherores"].hidden = true
  data.raw["double-setting"]["bobmods-ores-gemprobability"].hidden = true
end