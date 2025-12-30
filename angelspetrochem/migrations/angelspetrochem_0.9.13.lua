game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technology_effects()

  for _, techToCheck in pairs({
    "angels-platinum-smelting-1",
    "angels-platinum-smelting-2",
    "angels-platinum-smelting-3",
  }) do
    if force.technologies[techToCheck] then
      local proto_data = prototypes.technology[techToCheck]
      if proto_data and (proto_data.hidden or proto_data.enabled == false) then
        force.technologies[techToCheck].enabled = false
        force.technologies[techToCheck].researched = false
      end
    end
  end
end
