local angelsmods = require "__angelsrefining__/prototypes/migration-functions"

for _, upgrade in pairs(
  {
    {oldEntity = "sintering-oven", newEntity = "sintering-oven-4"},
    {oldEntity = "sintering-oven-2", newEntity = "sintering-oven-4"},
    {oldEntity = "sintering-oven-3", newEntity = "sintering-oven-4"},
    {oldEntity = "angels-chemical-furnace", newEntity = "angels-chemical-furnace-2"}
  }
) do
  local entity = game.entity_prototypes[upgrade.oldEntity]

  if entity and entity.has_flag("hidden") then
    for _, surface in pairs(game.surfaces) do
      for chunk in surface.get_chunks() do
        angelsmods.migration.replace_item(
          surface.find_entities(chunk.area),
          {[upgrade.oldEntity] = upgrade.newEntity}
        )
        local entities = surface.find_entities_filtered({area = chunk.area, type = "assembling-machine"})
        angelsmods.migration.replace_recipes(entities, {{upgrade.oldEntity, nil}})
      end
    end
  end
  
  angelsmods.migration.replace_quick_bar_slot({{upgrade.oldEntity, upgrade.newEntity}})
  angelsmods.migration.clear_logistics_slot({upgrade.oldEntity})
end
