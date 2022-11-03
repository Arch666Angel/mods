game.reload_script()

-- Replace tutorialgrid tiles
for _, surface in pairs(game.surfaces) do
  local tiles = surface.find_tiles_filtered({ name = "tutorial-grid" })
  local replace = {}
  for _, tile in pairs(tiles) do
    if not tile.hidden_tile then
      table.insert(replace, { name = "grass-1", position = tile.position })
    end
    table.insert(replace, { name = "tile-concrete-brick", position = tile.position })
  end
  surface.set_tiles(replace)
end
-- Fix tech tree changes

local changed_tech = {
  "angels-steel-smelting-2",
  "angels-steel-smelting-3",
}

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
  force.reset_technology_effects()

  for _, tech_name in pairs(changed_tech) do
    local tech = force.technologies[tech_name]
    if tech and tech.enabled ~= tech.prototype.enabled then
      tech.enabled = tech.prototype.enabled
    end
  end
end
