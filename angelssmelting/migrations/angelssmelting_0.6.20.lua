local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

for _, upgrade in pairs({
  { oldEntity = "angels-sintering-oven", newEntity = "angels-sintering-oven-4" },
  { oldEntity = "angels-sintering-oven-2", newEntity = "angels-sintering-oven-4" },
  { oldEntity = "angels-sintering-oven-3", newEntity = "angels-sintering-oven-4" },
  { oldEntity = "angels-chemical-furnace", newEntity = "angels-chemical-furnace-2" },
}) do
  local entity = prototypes.entity[upgrade.oldEntity]

  if entity and entity.hidden then
    for _, surface in pairs(game.surfaces) do
      for chunk in surface.get_chunks() do
        angelsmods.migration.replace_item(
          surface.find_entities(chunk.area),
          { [upgrade.oldEntity] = upgrade.newEntity }
        )
        local entities = surface.find_entities_filtered({ area = chunk.area, type = "assembling-machine" })
        angelsmods.migration.replace_recipes(entities, { { upgrade.oldEntity, nil } })
      end
    end
  end

  angelsmods.migration.replace_quick_bar_slot({ { upgrade.oldEntity, upgrade.newEntity } })
  angelsmods.migration.replace_logistics_slot({ { upgrade.oldEntity, upgrade.newEntity } })
end
