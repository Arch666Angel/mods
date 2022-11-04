local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

for _, surface in pairs(game.surfaces) do
  angelsmods.migration.replace_entity(
    surface.find_entities_filtered({ name = { "angels-air-filter", "angels-air-filter-2" } }),
    {
      ["angels-air-filter"] = "angels-air-filter-2",
      ["angels-air-filter-2"] = "angels-air-filter-3",
    }
  )
end
