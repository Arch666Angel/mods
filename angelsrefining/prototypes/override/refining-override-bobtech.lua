local OV = angelsmods.functions.OV

if mods["bobtech"] then
  if mods["bobplates"] then
    OV.remove_input("automation-science-pack", "bob-glass")
  end
end
