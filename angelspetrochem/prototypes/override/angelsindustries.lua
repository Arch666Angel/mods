local OV = angelsmods.functions.OV

if angelsmods.industries and angelsmods.industries.components then
else
  OV.disable_recipe({
    "gas-ethylene-oxide",
    "liquid-ethylene-carbonate",
  })
  angelsmods.functions.add_flag({
    "gas-ethylene-oxide",
    "liquid-ethylene-carbonate",
  }, "hidden")
end
