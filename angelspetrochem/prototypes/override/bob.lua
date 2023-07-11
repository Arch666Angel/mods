local OV = angelsmods.functions.OV

if mods["bobelectronics"] or mods["boblogistics"] or mods["bobplates"] then
  OV.remove_unlock("flammables", "solid-fuel-from-petroleum-gas")
  OV.remove_unlock("flammables", "solid-fuel-from-light-oil")
  OV.remove_unlock("flammables", "solid-fuel-from-heavy-oil")
end
