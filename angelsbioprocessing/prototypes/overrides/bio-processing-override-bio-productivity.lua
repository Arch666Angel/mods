local module_categories = {}
for _, category in pairs(data.raw["module-category"]) do
  if category.name ~= "angels-bio-yield" then
    table.insert(module_categories, category.name)
  end
end

local function add_module_category(entity, add_category_name)
  local found = false
  for _, category_name in pairs(entity.allowed_module_categories) do
    if category_name == add_category_name then
      found = true
      break
    end
  end
  if not found then
    table.insert(entity.allowed_module_categories, add_category_name)
  end
end

local function remove_module_category(entity, remove_category_name)
  for i, category_name in pairs(entity.allowed_module_categories) do
    if category_name == remove_category_name then
      table.remove(entity.allowed_module_categories, i)
      return
    end
  end
end

for _, entity_category in pairs({
  "assembling-machine",
  "beacon",
  "furnace",
  "mining-drill",
  "lab",
  "rocket-silo",
}) do
  for _, entity in pairs(data.raw[entity_category]) do
    if entity.allowed_module_categories then
      if angelsmods.refining.productivity_exception[entity.name] then
        add_module_category(entity, "angels-bio-yield")
      else
        remove_module_category(entity, "angels-bio-yield")
      end
    else
      entity.allowed_module_categories = table.deepcopy(module_categories)
      if angelsmods.refining.productivity_exception[entity.name] then
        table.insert(entity.allowed_module_categories, "angels-bio-yield")
      end
    end
  end
end
