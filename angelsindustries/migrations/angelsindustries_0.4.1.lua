game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  if settings.startup["angels-enable-industries"].value then -- overhaul enabled
    for _, techname in pairs{
      "water-chemistry-1",
      "water-chemistry-2",
    } do
      force.technologies[techname].enabled = true
    end
  end
end
