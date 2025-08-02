if mods["bobclasses"] then
  local OV = angelsmods.functions.OV

  -----------------------------------------------------------------------------
  -- RUBBER -------------------------------------------------------------------
  -----------------------------------------------------------------------------
  if angelsmods.trigger.rubber then
    OV.add_prereq("bob-bodies", "angels-rubbers")
  end
end
