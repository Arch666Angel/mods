local angelsmods = require("__angelsrefining__/prototypes/migration-functions")

for _, surface in pairs(game.surfaces) do
  for chunk in surface.get_chunks() do
    angelsmods.migration.replace_item(surface.find_entities(chunk.area), {
      ["bob-cobalt-steel-gear-wheel"] = "bob-brass-gear-wheel",
      ["bob-cobalt-steel-bearing-ball"] = "bob-brass-bearing-ball",
      ["bob-cobalt-steel-bearing"] = "bob-brass-bearing",
    })
  end

  -- replace assembler recipes
  angelsmods.migration.replace_recipes(
    surface.find_entities_filtered({
      name = {
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        script.active_mods["bobassembly"] and "bob-assembling-machine-4",
        script.active_mods["bobassembly"] and "bob-assembling-machine-5",
        script.active_mods["bobassembly"] and "bob-assembling-machine-6",
      },
      type = "assembling-machine",
    }),
    {
      { "bob-cobalt-steel-gear-wheel", nil },
      { "bob-cobalt-steel-bearing-ball", nil },
      { "bob-cobalt-steel-bearing", nil },
    }
  )
end
