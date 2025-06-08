game.reload_script()

for index, force in pairs(game.forces) do
  for techToResearch, techToCheck in pairs({
    ["resins"] = "resin-1",
    ["rubbers"] = "rubber",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
