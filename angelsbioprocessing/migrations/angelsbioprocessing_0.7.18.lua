for _, force in pairs(game.forces) do
  for newTech, existingTech in pairs({
    ["angels-bio-pressing-2"] = "angels-bio-pressing-1",
    ["angels-bio-pressing-fish-2"] = "angels-bio-pressing-fish-1",
  }) do
    if
      force.technologies[newTech]
      and force.technologies[newTech].prototype.enabled
      and force.technologies[existingTech]
      and force.technologies[existingTech].prototype.enabled
    then
      force.technologies[newTech].researched = force.technologies[existingTech].researched
    end
  end
end
