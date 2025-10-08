local module_categories = {}
for _, category in pairs(data.raw["module-category"]) do
  table.insert(module_categories, category.name)
end

-- Bio Productivity
data:extend({
  {
    type = "module-category",
    name = "angels-bio-yield",
  },
})

for _, entity_category in pairs({
  "assembling-machine",
  "furnace",
  "mining-drill",
  "lab",
  "rocket-silo",
}) do
  for _, entity in pairs(data.raw[entity_category]) do
    if not angelsmods.refining.productivity_exception[entity.name] and not entity.allowed_module_categories then
      entity.allowed_module_categories = table.deepcopy(module_categories)
    end
  end
end
