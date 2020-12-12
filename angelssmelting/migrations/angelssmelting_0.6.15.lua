for _, force in pairs(game.forces) do
  -- copper
  if force.technologies["angels-copper-casting-2"] and force.technologies["angels-copper-smelting-2"] then
    force.technologies["angels-copper-casting-2"].researched = force.technologies["angels-copper-smelting-2"].researched
  end
  if force.technologies["angels-copper-casting-3"] and force.technologies["angels-copper-smelting-3"] then
    force.technologies["angels-copper-casting-3"].researched = force.technologies["angels-copper-smelting-3"].researched
  end
  -- iron
  if force.technologies["angels-iron-casting-2"] and force.technologies["angels-iron-smelting-2"] then
    force.technologies["angels-iron-casting-2"].researched = force.technologies["angels-iron-smelting-2"].researched
  end
  if force.technologies["angels-iron-casting-3"] and force.technologies["angels-iron-smelting-3"] then
    force.technologies["angels-iron-casting-3"].researched = force.technologies["angels-iron-smelting-3"].researched
  end
  -- lead
  if force.technologies["angels-lead-casting-2"] and force.technologies["angels-lead-smelting-2"] then
    force.technologies["angels-lead-casting-2"].researched = force.technologies["angels-lead-smelting-2"].researched
  end
  if force.technologies["angels-lead-casting-3"] and force.technologies["angels-lead-smelting-3"] then
    force.technologies["angels-lead-casting-3"].researched = force.technologies["angels-lead-smelting-3"].researched
  end
  -- manganese
  if force.technologies["angels-manganese-casting-2"] and force.technologies["angels-manganese-smelting-2"] then
    force.technologies["angels-manganese-casting-2"].researched = force.technologies["angels-manganese-smelting-2"].researched
  end
  if force.technologies["angels-manganese-casting-3"] and force.technologies["angels-manganese-smelting-3"] then
    force.technologies["angels-manganese-casting-3"].researched = force.technologies["angels-manganese-smelting-3"].researched
  end
  -- nickel
  if force.technologies["angels-nickel-casting-2"] and force.technologies["angels-nickel-smelting-2"] then
    force.technologies["angels-nickel-casting-2"].researched = force.technologies["angels-nickel-smelting-2"].researched
  end
  if force.technologies["angels-nickel-casting-3"] and force.technologies["angels-nickel-smelting-3"] then
    force.technologies["angels-nickel-casting-3"].researched = force.technologies["angels-nickel-smelting-3"].researched
  end
  -- silicon
  if force.technologies["angels-silicon-casting-2"] and force.technologies["angels-silicon-smelting-3"] then
    force.technologies["angels-silicon-casting-2"].researched = force.technologies["angels-silicon-smelting-3"].researched
  end
  -- zinc
  if force.technologies["angels-zinc-casting-2"] and force.technologies["angels-zinc-smelting-2"] then
    force.technologies["angels-zinc-casting-2"].researched = force.technologies["angels-zinc-smelting-2"].researched
  end
  if force.technologies["angels-zinc-casting-3"] and force.technologies["angels-zinc-smelting-3"] then
    force.technologies["angels-zinc-casting-3"].researched = force.technologies["angels-zinc-smelting-3"].researched
  end
  force.reset_technology_effects()
end
