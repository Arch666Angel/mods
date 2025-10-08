game.reload_script()

for index, force in pairs(game.forces) do
  for techToResearch, techToCheck in pairs({
    ["angels-resins"] = "angels-resin-1",
    ["angels-rubbers"] = "angels-rubber",
  }) do
    if force.technologies[techToResearch] and force.technologies[techToCheck] then
      force.technologies[techToResearch].researched = force.technologies[techToCheck].researched
        or force.technologies[techToResearch].researched
    end
  end
end
