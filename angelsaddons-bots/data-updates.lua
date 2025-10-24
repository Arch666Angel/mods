local function add_unlock(technology, recipe)
  local tech = data.raw.technology[technology]
  if tech then
    if not tech.effects then
      tech.effects = {}
    end
    table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe })
  end
end

add_unlock("steel-processing", "angels-big-chest")
add_unlock("logistic-system", "angels-logistic-chest-active-provider")
add_unlock("logistic-system", "angels-logistic-chest-requester")
add_unlock("logistic-system", "angels-logistic-chest-buffer")
