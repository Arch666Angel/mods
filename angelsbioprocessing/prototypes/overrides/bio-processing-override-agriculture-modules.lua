-- Disallow pollution modules from miners, labs, and furnaces
-- This will prevent agriculture modules being used where they shouldn't
--
-- Beacons will generally not be affected here as don't normally allow productivity
-- If productivity in beacons has been enabled, then beacons will not accept pollution modules
local categories = {"mining-drill", "lab", "furnace", "beacon"}

for _, category_name in pairs(categories) do
  local category = data.raw[category_name]
  if category then
    for entity_name, entity in pairs(category) do
      if entity.allowed_effects == nil then
        entity.allowed_effects = {"speed", "productivity", "consumption"}
      elseif type(entity.allowed_effects) == "table" then
        -- If effects includes pollution and productivity
        -- then remove pollution
        local allowPollution = false
        local allowProductivity = false
        for _, effect_name in pairs(entity.allowed_effects) do
          if effect_name == "pollution" then
            allowPollution = true
          elseif effect_name == "productivity" then
             allowProductivity = true
          end
        end
        if allowProductivity and allowPollution then
          for i = #entity.allowed_effects, 1, -1 do
            if entity.allowed_effects[i] == "pollution" then
              table.remove(entity.allowed_effects, i)
            end
          end
        end
      end
    end
  end
end

local modules = {
  "productivity-module",
  "productivity-module-2",
  "productivity-module-3",
  "productivity-module-4",
  "productivity-module-5",
  "productivity-module-6",
  "productivity-module-7",
  "productivity-module-8",
  "god-module-1",
  "god-module-2",
  "god-module-3",
  "god-module-4",
  "god-module-5"
}

for _, module_name in pairs(modules) do
  local module = data.raw["module"][module_name]
  if module then
    module.effect.pollution = nil
  end
end
