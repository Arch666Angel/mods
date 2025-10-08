local OV = angelsmods.functions.OV

if angelsmods.industries and angelsmods.industries.components then
else
  OV.disable_recipe({
    "angels-gas-ethylene-oxide",
    "angels-liquid-ethylene-carbonate",
  })
  angelsmods.functions.hide({
    "angels-gas-ethylene-oxide",
    "angels-liquid-ethylene-carbonate",
  })
end
